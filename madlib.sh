#!/bin/bash


clear
echo "Let's build a mad-lib!"

read -p "1. Name a silly made-up name: " NOUN1
read -p "2. Name a silly sport: " NOUN2
read -p "3. Name your favorite food: " NOUN3
read -p "4. Name an adjective: " ADJECTIVE1
read -p "5. Name a verb: " VERB1
read -p "6. Name an adverb: " ADVERB1
read -p "7. Name a unique animal: " NOUN4
read -p "8. Name an adverb: " ADVERB2
read -p "9. Name a fantasy-related character: " NOUN5

echo "Once a upon a time, $NOUN1 was a professional $NOUN2 player and loved to eat $NOUN3. They were $ADJECTIVE1 and always $VERB1."
echo "$ADVERB1, they had a pet $NOUN4 and loved to play catch with them. However, they $ADVERB2 did not live like $NOUN5 like they wanted to." 
