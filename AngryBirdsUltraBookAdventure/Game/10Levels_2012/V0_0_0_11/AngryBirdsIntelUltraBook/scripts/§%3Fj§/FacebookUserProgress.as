package §?j§
{
   import § 2§.SHA1;
   import § D§.§]!B§;
   import §![§.FacebookLeveLMain;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §%!4§.ErrorPopup;
   import §%!4§.§]!e§;
   import §2!H§.ScoreCollector;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §6b§.Base64;
   import §7p§.Integer;
   import §?!G§.§8!-§;
   import §?!O§.UserProgress;
   import §?!O§.UserProgressEvent;
   import §@z§.StateFacebookPlay;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class FacebookUserProgress extends UserProgress
   {
      
      public static const TOURNAMENT_TUTORIAL:String = "tt";
       
      
      protected var §@! §:Dictionary;
      
      private var §`0§:Dictionary;
      
      private var §<B§:Dictionary;
      
      protected var §2'§:String;
      
      protected var §[5§:String;
      
      protected var §;4§:String;
      
      private var § do§:Array;
      
      private var §%_§:Array;
      
      private var §%!K§:Array;
      
      private var §!'§:Array;
      
      private var §7F§:Array;
      
      private var §"!S§:Array;
      
      private var §91§:Array;
      
      private var §`!i§:Array;
      
      private var mName:Array;
      
      private var §2!Y§:Array;
      
      private var §-0§:Array;
      
      private var §9U§:Array;
      
      private var §9!?§:Array;
      
      private var §[X§:§>!K§;
      
      private var §?§:Array;
      
      private var §9!F§:§>!K§;
      
      private var §[!"§:Array;
      
      public function FacebookUserProgress(serverRoot:String)
      {
         this.§ do§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§%_§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§%!K§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§!'§ = [101,112,105,115,111,100,101];
         this.§7F§ = [108,101,118,101,108];
         this.§"!S§ = [112,111,105,110,116,115];
         this.§91§ = [115,116,97,114,115];
         this.§`!i§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§2!Y§ = [115,101,99,117,114,105,116,121];
         this.§-0§ = [98,108,111,99,107,115];
         this.§9U§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§9!?§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(serverRoot);
         this.§@! § = new Dictionary();
         this.§?§ = [];
         this.§`0§ = new Dictionary();
         this.§<B§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var chapter:ChapterModel = null;
         var chapterStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < LevelManager.§??§(); )
         {
            chapter = LevelManager.§;![§(i);
            if(chapter.name != "2000")
            {
               trace("chapter!",chapter.name);
               chapterStars = §,l§(chapter);
               total += chapterStars;
            }
            i++;
         }
         return total;
      }
      
      public function §'j§(levelId:String) : int
      {
         var scoreInteger:Integer = null;
         if(this.§<B§[levelId])
         {
            scoreInteger = this.§<B§[levelId];
            return scoreInteger.getValue();
         }
         return 0;
      }
      
      public function §6!"§(levelId:String) : int
      {
         if(this.§`0§[levelId])
         {
            return this.§`0§[levelId];
         }
         return 0;
      }
      
      public function §?!c§(levelId:String, rank:int) : void
      {
         this.§`0§[levelId] = rank;
      }
      
      public function §?=§(levelId:String, score:int) : void
      {
         var scoreInteger:Integer = new Integer(score);
         this.§<B§[levelId] = scoreInteger;
      }
      
      public function §`q§(levelId:String) : int
      {
         if(this.§@! §[levelId])
         {
            return this.§@! §[levelId];
         }
         return 0;
      }
      
      public function §5Q§(levelId:String, rank:int) : void
      {
         this.§@! §[levelId] = rank;
      }
      
      public function §9A§(tournamentScores:Array) : void
      {
         var levelScore:Object = null;
         this.§`0§ = new Dictionary();
         this.§<B§ = new Dictionary();
         for each(levelScore in tournamentScores)
         {
            if(levelScore.p)
            {
               this.§?=§(levelScore.l,levelScore.p);
            }
            if(levelScore.r)
            {
               this.§?!c§(levelScore.l,levelScore.r);
            }
         }
      }
      
      public function §=d§(dataObject:Array, userName:String, avatar:String, userId:String, unlockedEggs:Array, tutorials:Array) : void
      {
         var levelProgress:Object = null;
         this.§2'§ = userName;
         this.§[5§ = avatar;
         this.§;4§ = userId;
         this.§[!"§ = tutorials;
         if(unlockedEggs != null)
         {
            this.§?§ = unlockedEggs;
         }
         for each(levelProgress in dataObject)
         {
            if(levelProgress.p)
            {
               §@!f§(levelProgress.l,levelProgress.p);
            }
            if(levelProgress.me)
            {
               §&t§(levelProgress.l,levelProgress.me);
            }
            if(levelProgress.r)
            {
               this.§5Q§(levelProgress.l,levelProgress.r);
            }
         }
      }
      
      override public function isLevelOpen(levelId:String) : Boolean
      {
         if(levelId == "10-1" || levelId == "11-1")
         {
            return true;
         }
         if(levelId.split("-")[0] == "1000")
         {
            return this.isEggUnlocked(levelId);
         }
         return super.isLevelOpen(levelId);
      }
      
      private function §'e§(levelId:String) : String
      {
         var episode:ChapterModel = LevelManager.§;<§(levelId);
         return SHA1.§>y§([Boolean(episode) ? episode.name : this.§"B§(),levelId,§]!B§.controller.getScore(),getStarsForLevel(levelId,§]!B§.controller.getScore()),§]!B§.controller.getEagleScore(),this.§ !;§()].join("|"));
      }
      
      private function §8"§(data:Array) : String
      {
         var i:int = 0;
         var name:String = "";
         for each(i in data)
         {
            name += String.fromCharCode(i);
         }
         return name;
      }
      
      private function § !;§() : String
      {
         return this.§8"§(this.mName);
      }
      
      private function §]T§() : String
      {
         return this.§8"§(this.§ do§);
      }
      
      private function §"B§() : String
      {
         return this.§8"§(this.§%_§);
      }
      
      private function §>§() : String
      {
         return this.§8"§(this.§%!K§);
      }
      
      override public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         if(this.§[!"§.indexOf(tutorialId) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(tutorialIds:String) : void
      {
         var tutorialString:String = null;
         var urlRequest:URLRequest = null;
         var tutorialSavingUrlLoader:§>!K§ = null;
         var tutorialsInside:Array = tutorialIds.split(",");
         for each(tutorialString in tutorialsInside)
         {
            this.§[!"§.push(tutorialString);
         }
         urlRequest = §"!F§.§=i§(§9<§ + "/tutorialshown/" + tutorialIds);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§>§();
         tutorialSavingUrlLoader = new §>!K§(null,2);
         tutorialSavingUrlLoader.addEventListener(Event.COMPLETE,this.§"k§);
         tutorialSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§-#§);
         tutorialSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-#§);
         tutorialSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         tutorialSavingUrlLoader.load(urlRequest);
      }
      
      private function §"k§(e:Event) : void
      {
         var tutorialSavingUrlLoader:§>!K§ = null;
         if(e.currentTarget is §>!K§)
         {
            tutorialSavingUrlLoader = e.currentTarget as §>!K§;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§"k§);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §-#§(e:Event) : void
      {
         var tutorialSavingUrlLoader:§>!K§ = null;
         if(e.currentTarget is §>!K§)
         {
            tutorialSavingUrlLoader = e.currentTarget as §>!K§;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§"k§);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(levelId:String, meInUse:Boolean = false, tournamentScore:Boolean = false) : void
      {
         if(this.§`! §)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + levelId + ", ME: " + meInUse.toString());
         }
         var urlRequest:URLRequest = §"!F§.§=i§(§9<§ + this.§]T§() + "/" + tournamentScore.toString());
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§>§();
         var episode:ChapterModel = LevelManager.§;<§(levelId);
         var newPoints:int = §]!B§.controller.getScore();
         var newStars:int = getStarsForLevel(levelId,§]!B§.controller.getScore());
         var object:Object = {};
         object[this.§8"§(this.§!'§)] = Boolean(episode) ? episode.name : this.§"B§();
         object[this.§8"§(this.§7F§)] = levelId;
         object[this.§8"§(this.§"!S§)] = newPoints;
         object[this.§8"§(this.§91§)] = newStars;
         object[this.§8"§(this.§`!i§)] = §]!B§.controller.getEagleScore();
         object[this.§8"§(this.§2!Y§)] = this.§'e§(levelId);
         object[this.§8"§(this.§-0§)] = ScoreCollector.§@!^§();
         object[this.§8"§(this.§9U§)] = StateFacebookPlay.sPlaySessionToken;
         object[this.§8"§(this.§9!?§)] = (§]!B§.§>F§ as FacebookLeveLMain).§6!8§();
         urlRequest.data = Base64.encode(§8!-§.encode(object));
         this.§[X§ = new §>!K§();
         this.§[X§.addEventListener(Event.COMPLETE,this.§0_§);
         this.§[X§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[X§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[X§.load(urlRequest);
      }
      
      private function §0_§(e:Event) : void
      {
         this.§[X§ = null;
         var userProgressEvent:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§7o§);
         userProgressEvent.data = e.currentTarget.data;
         dispatchEvent(userProgressEvent);
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§3Y§)
         {
            §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §]!e§.§3!T§();
         }
         this.§[X§ = null;
      }
      
      public function isEggUnlocked(eggId:String) : Boolean
      {
         if(this.§?§ != null)
         {
            if(this.§?§.indexOf(eggId) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function setEggUnlocked(eggId:String) : void
      {
         if(this.isEggUnlocked(eggId))
         {
            return;
         }
         §]!e§.§?!K§(eggId);
         this.§?§.push(eggId);
         var urlRequest:URLRequest = §"!F§.§=i§(§9<§ + "/eggfound/" + eggId);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§>§();
         this.§9!F§ = new §>!K§(null,2);
         this.§9!F§.addEventListener(Event.COMPLETE,this.§!!X§);
         this.§9!F§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9!F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9!F§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§9!F§.load(urlRequest);
      }
      
      private function §!!X§(e:Event) : void
      {
         trace("complete!");
      }
      
      public function get §`! §() : Boolean
      {
         return this.§[X§ != null;
      }
      
      public function get userName() : String
      {
         return this.§2'§;
      }
      
      public function get avatarString() : String
      {
         return this.§[5§;
      }
      
      public function set avatarString(value:String) : void
      {
         this.§[5§ = value;
      }
      
      public function get userID() : String
      {
         return this.§;4§;
      }
   }
}
