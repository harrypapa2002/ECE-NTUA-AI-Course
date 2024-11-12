# ECE NTUA AI Course - 6th Semester

This repository contains assignments for the AI course at NTUA, each focusing on various AI and machine learning techniques for solving search, recommendation, and classification tasks.

---

## Table of Contents
1. [Project 1: Search Algorithms and Pathfinding](#project-1-search-algorithms-and-pathfinding)
2. [Project 2: Prolog-based Movie Recommendation System](#project-2-prolog-based-movie-recommendation-system)
3. [Project 3: Machine Learning-based Movie Recommendation System](#project-3-machine-learning-based-movie-recommendation-system)

---

## Project 1: Search Algorithms and Pathfinding
### Overview
The first project involves implementing search algorithms to solve an N x N maze problem, focusing on:
- Maze generation with varying densities of obstacles.
- Implementation of pathfinding algorithms (like A*, Greedy Best-First, etc.) to find the shortest path.
- Comparative analysis of pathfinding algorithms on maze dimensions and obstacle density.

### Files
- **`search_algorithms/Maze_SearchAlgorithms.ipynb`**: Contains all implementations, analysis, and visualizations for the pathfinding algorithms.

---

## Project 2: Prolog-based Movie Recommendation System
### Overview
This project implements a rule-based movie recommendation system in Prolog. Recommendations are based on:
- Movie metadata, including genres, director, cast, and other features.
- A multi-level similarity measure that categorizes movies into highly similar to somewhat similar categories.

### Files
- **`prolog_recommender/PrologRecommender.ipynb`**: Contains all implementations and analysis for the movie recommender.
- **`prolog_recommender/predicates.pl`**: Defines rules for movie attributes (e.g., genre, director) extracted from `movies_metadata.csv` and Prolog queries to identify similar movies.
- **`prolog_recommender/data/`**: Includes datasets such as `movies_metadata.csv`, `train_ratings.csv`, and `test_ratings.csv`.

---

## Project 3: Machine Learning-based Movie Recommendation System
### Overview
This project uses machine learning techniques to construct a movie recommendation system, utilizing:
1. **Decision Tree Classifier**: Custom CART algorithm implementation for predicting if a movie will be liked by a user.
2. **Random Forest Classifier**: Implemented with scikit-learn for comparison and performance benchmarking.

### Files
- **`decision_tree_recommender/DecisionTree_Recommender.ipynb`**: Contains code for data preprocessing, training, and evaluating the recommendation system.
- **`decision_tree_recommender/data/`**: Includes `movies_metadata.csv` and `ratings.csv` for analysis and training.

---

## License
This repository is intended for educational purposes. All dataset sources and other materials are provided for non-commercial use.

---

## Authors
Created by Charidimos Papadakis, harrypapadakis02@gmail.com and Antonios Alexiadis, antonis7polo@gmail.com.
