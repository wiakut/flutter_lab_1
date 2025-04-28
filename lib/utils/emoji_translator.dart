class EmojiTranslator {
  static final Map<String, List<String>> _emojiAssociations = {
    '😊': ['happy', 'joy', 'smile', 'bright', 'cheerful', 'delight', 'pleased',
    'content', 'grin', 'good', 'sunny', 'shine', 'lucky', 'enjoy', 'optimistic',
    'sweet', 'yay', 'positive', 'laugh', 'amused',],
    '😢': ['sad', 'cry', 'tears', 'upset', 'sorrow', 'pain', 'hurt',
    'heartbroken', 'regret', 'depressed', 'loss', 'down', 'gloom', 'blue',
    'broken', 'grief', 'weep', 'lament', 'anguish', 'misery',],
    '😍': ['love', 'adorable', 'sweetheart', 'crush', 'kiss', 'lovely',
    'darling', 'cute', 'romantic', 'passion', 'flirt', 'desire', 'sweet', 'fond',
    'infatuation', 'affection', 'beauty', 'treasure', 'hearts', 'sparkle',],
    '😡': ['angry', 'rage', 'mad', 'furious', 'irritated', 'annoyed', 'grumpy',
    'pissed', 'temper', 'stormy', 'wrath', 'frown', 'explosive', 'boil',
    'disgusted', 'resent', 'offended', 'hate', 'jealous', 'hostile',],
    '😎': ['cool', 'awesome', 'swag', 'chill', 'smooth', 'relax', 'fashion', 
    'boss', 'stylish', 'confidence', 'winner', 'attitude', 'swagger', 'dope', 
    'legend', 'famous', 'breezy', 'shine', 'popular', 'brilliant',],
    '🤔': ['think', 'wonder', 'ponder', 'question', 'curious', 'doubt', 'guess',
    'consider', 'analyze', 'thoughtful', 'debate', 'brainstorm',
    'reflect', 'mystery', 'confused', 'uncertain', 'decide', 
    'philosophy', 'idea', 'hypothesis',],
    '😴': ['sleep', 'nap', 'snore', 'tired', 'exhausted', 'dream', 'bed', 
    'lazy', 'rest', 'relax', 'doze', 'slumber', 'snooze', 'coma', 'fatigue', 
    'snug', 'goodnight', 'night', 'cozy', 'hibernate',],
    '🤗': ['hug', 'embrace', 'care', 'warm', 'comfort', 'cuddle', 'love', 
    'welcome', 'hold', 'support', 'affection', 'friendly', 'invite', 'kindness',
    'family', 'accept', 'compassion', 'appreciate', 'gentle', 'trust',],
    '🤩': ['star', 'shine', 'amazing', 'wow', 'great', 'awesome', 'cool', 
    'outstanding', 'superb', 'fantastic', 'famous', 'brilliant', 'dazzling', 
    'genius', 'glow', 'marvel', 'thrill', 'cheer', 'bright', 'admire',],
    '😇': ['angel', 'pure', 'good', 'innocent', 'holy', 'kind', 'divine', 
    'blessed', 'grace', 'heaven', 'halo', 'mercy', 'forgive', 'gentle', 'light',
     'soft', 'guardian', 'virtue', 'chaste', 'saint',],
    '🥳': ['party', 'celebrate', 'birthday', 'fun', 'festive', 'dance', 'cake',
    'cheer', 'music', 'happy', 'laugh', 'crazy', 'gathering', 'friends', 'joy',
    'festival', 'event', 'toast', 'newyear', 'holiday',],
    '🤯': ['mind', 'blown', 'shock', 'wow', 'unbelievable', 'stunned',
    'amazed', 'speechless', 'incredible', 'epic', 'legendary', 'crazy',
    'awesome', 'unexpected', 'wild', 'dramatic', 'thrill',
    'insane', 'intense', 'jawdrop',],
    '🤬': ['curse', 'swear', 'rage', 'mad', 'furious', 'insult', 'angry',
    'foul', 'offend', 'fight', 'badword', 'rude', 'temper', 'fury', 'grumpy',
    'blast', 'irritated', 'cursing', 'abuse', 'roast',],
    '🤤': ['drool', 'hungry', 'food', 'yum', 'crave', 'tasty', 'delicious',
    'feast', 'snack', 'meal', 'cook', 'mouthwatering', 'eat', 'gourmet',
    'dessert', 'tempt', 'salivate', 'bite', 'chef', 'buffet',],
    '🥺': ['please', 'beg', 'cute', 'adorable', 'sad', 'hope', 'innocent',
    'tiny', 'sweet', 'soft', 'heart', 'emotional', 'tender', 'blush',
    'longing', 'bambi', 'angel', 'tiny', 'shy', 'yearn',],
    '😱': ['scare', 'fear', 'shock', 'horror', 'panic', 'terror', 'fright',
    'surprise', 'nightmare', 'ghost', 'zombie', 'ghoul', 'shiver', 'scream',
    'haunt', 'spooky', 'dark', 'haunted', 'dread', 'fearful',],
    '😆': ['laugh', 'funny', 'hilarious', 'giggle', 'joke', 'comedy', 'lol',
    'haha', 'rofl', 'lmao', 'fun', 'joy', 'silly', 'gag', 'prank', 'meme',
    'crazy', 'party', 'hysteria', 'amuse',],
    '😬': ['awkward', 'nervous', 'cringe', 'oops', 'tension', 'weird',
    'uncomfortable', 'blush', 'eek', 'strange', 'guilty', 'sweat', 'uneasy',
    'fumble', 'oopsie', 'dorky', 'mess', 'tight', 'silent', 'yikes',],
    '🥰': ['love', 'affection', 'heart', 'romance', 'cute', 'adorable',
    'sweet', 'hug', 'kisses', 'caring', 'cherish', 'fond', 'sweetheart',
    'bliss', 'warm', 'dream', 'beauty', 'soulmate', 'partner', 'dear',],
    '😈': ['evil', 'devil', 'naughty', 'mischief', 'wicked', 'trouble', 'sin',
    'dark', 'bad', 'danger', 'sneaky', 'devious', 'villain', 'grin', 'tricky',
    'prank', 'joke', 'fun', 'cheeky', 'wild',],
    '👻': ['ghost', 'spooky', 'haunt', 'spirit', 'phantom', 'invisible',
    'mystery', 'eerie', 'chill', 'fright', 'scare', 'costume', 'Halloween',
    'creepy', 'boo', 'trick', 'treat', 'scary', 'shade', 'fog',],
    '🧠': ['brain', 'smart', 'think', 'genius', 'mind', 'clever', 'logic',
    'memory', 'intelligence', 'IQ', 'study', 'learn', 'education', 'puzzle',
    'solve', 'plan', 'analyze', 'nerd', 'geek', 'science',],
    '💪': ['strong', 'muscle', 'power', 'fit', 'workout', 'lift', 'gym',
    'train', 'endurance', 'athlete', 'energy', 'body', 'sport', 'tough',
    'resilient', 'victory', 'challenge', 'force', 'punch', 'hero',],
    '🙌': ['yay', 'celebrate', 'highfive', 'cheer', 'joy', 'happy', 'success',
    'accomplish', 'goal', 'excited', 'party', 'goodjob', 'achievement',
    'victory', 'bravo', 'applaud', 'dance', 'hurray', 'awesome', 'vibe',],
    '🥶': ['cold', 'freeze', 'snow', 'winter', 'ice', 'chill', 'blizzard',
    'frost', 'shiver', 'icy', 'glacier', 'cool', 'frigid', 'wind', 'hail',
    'frozen', 'numb', 'arctic', 'shudder', 'hypothermia',],
    '🥵': ['hot', 'burn', 'heat', 'summer', 'fire', 'sweat', 'scorch', 
    'blaze', 'sizzle', 'sunny', 'overheat', 'boil', 'roast', 'humid', 'oven',
    'sauna', 'tropical', 'melting', 'desert', 'flame',],
    '🧡': ['heart', 'warm', 'kind', 'love', 'affection', 'care', 'sweet',
    'soft', 'emotion', 'tender', 'trust', 'hug', 'cheer', 'passion', 'happy',
    'smile', 'brave', 'support', 'loyal', 'sunshine',],
    '💔': ['broken', 'sad', 'loss', 'pain', 'breakup', 'hurt', 'sorrow',
    'depressed', 'tears', 'betray', 'cry', 'regret', 'gloom', 'anguish',
    'despair', 'alone', 'abandon', 'grief', 'lonely', 'wound',],
    '🎉': ['party', 'celebrate', 'fun', 'happy', 'event', 'success',
    'achievement', 'win', 'festival', 'birthday', 'newyear', 'gather',
    'friends', 'cheer', 'dance', 'joy', 'music', 'awesome', 'yay', 'blast',],
    '🎶': ['music', 'song', 'melody', 'tune', 'rhythm', 'sound', 'beat',
    'guitar', 'sing', 'dance', 'lyrics', 'concert', 'band', 'radio', 'vibe',
    'jam', 'note', 'orchestra', 'choir', 'instrument',],
    '🎯': ['goal', 'target', 'focus', 'success', 'aim', 'win', 'plan',
    'objective', 'achieve', 'score', 'mission', 'direction', 'ambition',
    'challenge', 'strike', 'hit', 'perfect', 'bullseye', 'intent', 'mark',],
  };

  static final List<String> _punctuations = [',', '.', '!', '?', ';', ':',];

  static String translate(String input) {
    final words = input.split(RegExp(r'(\s+)'));
    final StringBuffer output = StringBuffer();

    for (final word in  words) {
      String current = word;
      String punctuation = '';
      for (final p in _punctuations) {
        if (word.endsWith(p)) {
          punctuation = p;
          current = word.substring(0, word.length - p.length);
          break;
        }
      }

      final cleanedWord = current.trim().toLowerCase();

      bool replaced = false;
      for (final entry in _emojiAssociations.entries) {
        if (entry.value.contains(cleanedWord)) {
          output.write(entry.key);
          replaced = true;
          break;
        }
      }

      if (!replaced) {
        output.write(word);
      }

      if (punctuation.isNotEmpty) {
        output.write(punctuation);
      }

      output.write(' ');
    }

    return output.toString();
  }
}
