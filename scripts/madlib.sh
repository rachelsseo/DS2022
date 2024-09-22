#!/bin/bash


clear
echo "Let's build a mad-lib!"


read -p "1. Name a silly name: " NOUN1
read -p "2. Name an adjective: " ADJ1
read -p "3. Name another adjective: " ADJ2
read -p "4. Name an adverb: " ADVERB1
read -p "5. Name a team sport: " NOUN2
read -p "6. Name an adjective: " ADJ3
read -p "7. Name something that shows evidence (noun): " NOUN3
read -p "8. Name a verb: " VERB1
read -p "9. Name a title (noun): " NOUN4

echo "Once upon a time, there was a prince named $NOUN1. He was incredibly $ADJ1 and $ADJ2."
echo "$ADVERB1, he played $NOUN2 very well but hated the coach. So, he planned to prank them by pouring $ADJ3 cheese on them."
echo "There were many silly $NOUN3 circulating through the school after. They say he is now the $VERB1 $NOUN4." 

