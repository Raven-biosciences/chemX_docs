## I can't get my target data normally distributed. Can I still train a regression model?

Yes, even though you don't have normally distributed target data, it is still possible to train a regression model using a subset of the machine learning algorithms that chemX employs under the hood. 

## All my models have R² below 0.5. What am I doing wrong?

If all you models have poor predictive power, then you should go back to check the data. Check if the molecules are missing important information for predicting the target data, e.g. chirality annotation or protonation state. Also check the target data - is it (near)normally distributed? If none of the available transformations improve your dataset, then you should consider changing to a categorical approach instead. This can happen if your data is highly zero-spiked or unbalanced. 

The best way forward could be to train a categorical model on the whole dataset that can predict if a molecule is good or poor overall, and then train a regression model on the good subset of the data that can be used to rank the molecules found to be good by the categorical model.

## I am getting negative R² values for my models. What is happening?

The R² metric used in chemX is calculated as one minus the ratio of the mean squared error (MSE) of the model predictions over the MSE of the trivial model predictions (constant number). The reported R² is therefore not the classic R² many of us have learned in school when learning to fit regression models.

A value of 1 indicates perfect predictions, while values around 0 indicate that the regression results are no different than the trivial approach of constantly predicting the average value of the outcome. Negative values indicate that the model is worse than the trivial approach.

## I have multiple equally good models. How do I know which one is best?

The best regression model may not be the model with the highest R². Here are a few things to consider:

1. When models are trained multiple times using different data splits for training and testing sets the calculated performance varies to some extent. Therefore, when comparing model performance, the variation should be considered too to assess if two models actually perform differently. Use the reported 95% confidence interval for each model; if the intervals of the models do not overlap their performances are significantly different. Be aware that the opposite is not necessarily the case!
2. Two models with significantly different R² values may not have significantly different MAE and vice versa.
3. Consider how you intend to use the model down the line. Will it be used as a quick filter on large molecule libraries? If so, then it might be best to choose a slightly less predictive model that uses a quicker featurizert and is much faster to screen with.
4. Ensure that the model didn’t pick up on random correlations between target parameter and features e.g. when training a model that predicts orbital energies, a simple featurizer like RDKit descriptors does not encode the chemical complexity necessary to predict quantum mechanical properties. For more information on how to assess this, go to the “Probing the model” section of this tutorial.

## I used a transformation on my data and now I don't know how to interpret my screening results.

We realize that data transformations are sometimes unkown territory for our users, so we have applied a de-transformation step before you see any of the results - for counterfactuals etc during modelling, and in your screening results later on. The only place you will see data on the transformed scale is for the MAEs reported in the performance heatmap so don't conpare MAE's between transformations, only between featurizations.

## I want to use a model on a screening library. How do I know if the model is applicable to the new chemistry?

After you have applied a model to a screening library, you can see a UMAP of both the training and screening data. If there is good overlap between the training and sceening library, then you can assume that the predictions are good (assuming the model has good predictive power). If there are a lot of molecules from the screening library that is far from the training data, then the chemistry in the screening library is unknown to the model and you should proceed with caution and ensure external validation of the predictions.

## I know some of my molecules are (de)protonated at the pH I run my experiment, but sanitization removes all changes I make in my csv-file. What do I do?

If you expect the protonation state to be important for predicting your target paramater, then you have to edit your SMILES accordingly and deselect sanitization upon upload to chemX.


