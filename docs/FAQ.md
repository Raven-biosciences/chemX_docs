
## Basics

`I can't remember my password`
: You can reset your password by clicking "reset password" on the login screen. 

`I got an error I don't understand and need help`
: Please send the error message and a short description of what you were doing/trying to do when the error occured to chemx-support@ravenbiosciences.com

`I have a feature request, where should I send it?`
: We love feature requests and feedback! Please send a brief description of the feature you want and why you need it to chemx-support@ravenbiosciences.com

`I emailed support with a question - when can I expect to hear back?`
: We always get back to you as soon as possible and strive to do so within 24 hours.

`Can I try out ChemX before buying it?`
: Yes, it is possible to get access to a trial version of ChemX. The trial version is fully funtional except for the option to upload your own dataset. You can only test on pre-linked datasets from MoleculeNet.

## Technical issues

`How do I reverse a transformation on my screening results so I can interpret my results?`
: You don't have to! We realize that data transformations are sometimes unkown territory for our users, so we have applied a de-transformation step before you see any of the results - for MAE's, counterfactuals etc during modelling, and in your screening results later on.

`How are the molecules sanitized?`
: Sanitization includes checking the valence state of all atoms, standardization of tautomers, neutralization of molecules (if possible), and removal of hydrogen atoms unless they have an explicitly set isotope, are attached to a chiral atom, or attached to an atom with unusual valence state. If salts or solvents are present in your dataset, the salts will be removed by the sanitizer, and the parent molecule remains. If a molecule fails sanitization it is removed from the dataset.

`I don't understand the UMAPs. How do they work?`
: It can be tough to build intuition around dimensionality reduction techniques, but don't worry, with practice you will get there. To get you started, here is a link to a [great video by StatQuest](https://www.youtube.com/watch?v=eN0wFzBA4Sc) that has a great visualization during the explanation of the UMAP concept. 

`My counterfactuals are so different from my representative molecule that I can't derive a structure-property relationship`
: Good counterfactuals can be made if the dataset contains many similar molecules, but this is not always the case. Try looking for additional representative molecules that may have more similar molecules in your dataset or have a look at the feature importance plots instead.

`None of my features in the feature importance plot are significant`
: Unfortunately, not all datasets can be explained well by feature importance. If your target data is a physical property then feature importance is often a good tool, but if the target parameter is an affinity or a potency then a counterfactual analysis might be more helpful.

## Feature requests

`I like using ChemX, but I wish it had a python API. Can you make one?`
: Yes, a python API is being built for ChemX and is expected to be included in the next release of ChemX.

`I know some of my molecules are (de)protonated at the pH I run my experiment, but sanitization removes all changes I make in my csv-file. What do I do?`
: If you expect the protonation state to be important for predicting your target paramater, then you have to edit your SMILES accordingly and deselect sanitization upon upload to ChemX.
: However, we are building an addition to ChemX that will adjust protonation states accoring to a user-set pH. We expect to include it in the next release of ChemX.

`Can ChemX help with outlier detection?`
: No, ChemX cannot directly help you identify outliers as it is very difficult to know if a molecule is an outlier or e.g. an important activity cliff.
: However, we are working on different ways of helping users find and assess potential outliers, and expect to include it in the next release of ChemX.