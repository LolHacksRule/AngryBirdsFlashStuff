package §8T§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import § $§.RetryingURLLoaderErrorEvent;
   import §#!2§.StateFacebookPlay;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §'N§.Base64;
   import §-!>§.§4!T§;
   import §0!=§.SHA1;
   import §9!!§.Integer;
   import §9v§.§4!c§;
   import §9v§.ErrorPopup;
   import §?!f§.§]!f§;
   import §?A§.ScoreCollector;
   import §@Q§.FacebookLeveLMain;
   import §^!i§.UserProgress;
   import §^!i§.UserProgressEvent;
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
       
      
      protected var §&!S§:Dictionary;
      
      private var §6@§:Dictionary;
      
      private var §'!?§:Dictionary;
      
      protected var §!! §:String;
      
      protected var §7!e§:String;
      
      protected var § P§:String;
      
      private var §%!§:Array;
      
      private var §2!5§:Array;
      
      private var §&!V§:Array;
      
      private var §5U§:Array;
      
      private var §&!B§:Array;
      
      private var §9]§:Array;
      
      private var §!!&§:Array;
      
      private var §-[§:Array;
      
      private var mName:Array;
      
      private var §#5§:Array;
      
      private var §,!I§:Array;
      
      private var §2!h§:Array;
      
      private var §=!U§:Array;
      
      private var §4d§:§1!6§;
      
      private var §12§:Array;
      
      private var §]O§:§1!6§;
      
      private var §'2§:Array;
      
      public function FacebookUserProgress(serverRoot:String)
      {
         this.§%!§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§2!5§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§&!V§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§5U§ = [101,112,105,115,111,100,101];
         this.§&!B§ = [108,101,118,101,108];
         this.§9]§ = [112,111,105,110,116,115];
         this.§!!&§ = [115,116,97,114,115];
         this.§-[§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§#5§ = [115,101,99,117,114,105,116,121];
         this.§,!I§ = [98,108,111,99,107,115];
         this.§2!h§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§=!U§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(serverRoot);
         this.§&!S§ = new Dictionary();
         this.§12§ = [];
         this.§6@§ = new Dictionary();
         this.§'!?§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var chapter:ChapterModel = null;
         var chapterStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < LevelManager.§8H§(); )
         {
            chapter = LevelManager.§ m§(i);
            if(chapter.name != "2000")
            {
               trace("chapter!",chapter.name);
               chapterStars = §8!2§(chapter);
               total += chapterStars;
            }
            i++;
         }
         return total;
      }
      
      public function §5T§(levelId:String) : int
      {
         var scoreInteger:Integer = null;
         if(this.§'!?§[levelId])
         {
            scoreInteger = this.§'!?§[levelId];
            return scoreInteger.getValue();
         }
         return 0;
      }
      
      public function §7!Z§(levelId:String) : int
      {
         if(this.§6@§[levelId])
         {
            return this.§6@§[levelId];
         }
         return 0;
      }
      
      public function §3n§(levelId:String, rank:int) : void
      {
         this.§6@§[levelId] = rank;
      }
      
      public function §8!E§(levelId:String, score:int) : void
      {
         var scoreInteger:Integer = new Integer(score);
         this.§'!?§[levelId] = scoreInteger;
      }
      
      public function §"!d§(levelId:String) : int
      {
         if(this.§&!S§[levelId])
         {
            return this.§&!S§[levelId];
         }
         return 0;
      }
      
      public function §38§(levelId:String, rank:int) : void
      {
         this.§&!S§[levelId] = rank;
      }
      
      public function §^!a§(tournamentScores:Array) : void
      {
         var levelScore:Object = null;
         this.§6@§ = new Dictionary();
         this.§'!?§ = new Dictionary();
         for each(levelScore in tournamentScores)
         {
            if(levelScore.p)
            {
               this.§8!E§(levelScore.l,levelScore.p);
            }
            if(levelScore.r)
            {
               this.§3n§(levelScore.l,levelScore.r);
            }
         }
      }
      
      public function § N§(dataObject:Array, userName:String, avatar:String, userId:String, unlockedEggs:Array, tutorials:Array) : void
      {
         var levelProgress:Object = null;
         this.§!! § = userName;
         this.§7!e§ = avatar;
         this.§ P§ = userId;
         this.§'2§ = tutorials;
         if(unlockedEggs != null)
         {
            this.§12§ = unlockedEggs;
         }
         for each(levelProgress in dataObject)
         {
            if(levelProgress.p)
            {
               §,g§(levelProgress.l,levelProgress.p);
            }
            if(levelProgress.me)
            {
               §;!+§(levelProgress.l,levelProgress.me);
            }
            if(levelProgress.r)
            {
               this.§38§(levelProgress.l,levelProgress.r);
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
      
      private function §%!X§(levelId:String) : String
      {
         var episode:ChapterModel = LevelManager.§'!7§(levelId);
         return SHA1.§-!<§([Boolean(episode) ? episode.name : this.§0O§(),levelId,§4!T§.controller.getScore(),getStarsForLevel(levelId,§4!T§.controller.getScore()),§4!T§.controller.getEagleScore(),this.§1O§()].join("|"));
      }
      
      private function §5!!§(data:Array) : String
      {
         var i:int = 0;
         var name:String = "";
         for each(i in data)
         {
            name += String.fromCharCode(i);
         }
         return name;
      }
      
      private function §1O§() : String
      {
         return this.§5!!§(this.mName);
      }
      
      private function §4!j§() : String
      {
         return this.§5!!§(this.§%!§);
      }
      
      private function §0O§() : String
      {
         return this.§5!!§(this.§2!5§);
      }
      
      private function §8!3§() : String
      {
         return this.§5!!§(this.§&!V§);
      }
      
      override public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         if(this.§'2§.indexOf(tutorialId) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(tutorialIds:String) : void
      {
         var tutorialString:String = null;
         var urlRequest:URLRequest = null;
         var tutorialSavingUrlLoader:§1!6§ = null;
         var tutorialsInside:Array = tutorialIds.split(",");
         for each(tutorialString in tutorialsInside)
         {
            this.§'2§.push(tutorialString);
         }
         urlRequest = §-!Q§.§<!%§(§6![§ + "/tutorialshown/" + tutorialIds);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§8!3§();
         tutorialSavingUrlLoader = new §1!6§(null,2);
         tutorialSavingUrlLoader.addEventListener(Event.COMPLETE,this.§,q§);
         tutorialSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§#E§);
         tutorialSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#E§);
         tutorialSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         tutorialSavingUrlLoader.load(urlRequest);
      }
      
      private function §,q§(e:Event) : void
      {
         var tutorialSavingUrlLoader:§1!6§ = null;
         if(e.currentTarget is §1!6§)
         {
            tutorialSavingUrlLoader = e.currentTarget as §1!6§;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§,q§);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §#E§(e:Event) : void
      {
         var tutorialSavingUrlLoader:§1!6§ = null;
         if(e.currentTarget is §1!6§)
         {
            tutorialSavingUrlLoader = e.currentTarget as §1!6§;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§,q§);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(levelId:String, meInUse:Boolean = false, tournamentScore:Boolean = false) : void
      {
         if(this.§0x§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + levelId + ", ME: " + meInUse.toString());
         }
         var urlRequest:URLRequest = §-!Q§.§<!%§(§6![§ + this.§4!j§() + "/" + tournamentScore.toString());
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§8!3§();
         var episode:ChapterModel = LevelManager.§'!7§(levelId);
         var newPoints:int = §4!T§.controller.getScore();
         var newStars:int = getStarsForLevel(levelId,§4!T§.controller.getScore());
         var object:Object = {};
         object[this.§5!!§(this.§5U§)] = Boolean(episode) ? episode.name : this.§0O§();
         object[this.§5!!§(this.§&!B§)] = levelId;
         object[this.§5!!§(this.§9]§)] = newPoints;
         object[this.§5!!§(this.§!!&§)] = newStars;
         object[this.§5!!§(this.§-[§)] = §4!T§.controller.getEagleScore();
         object[this.§5!!§(this.§#5§)] = this.§%!X§(levelId);
         object[this.§5!!§(this.§,!I§)] = ScoreCollector.§=!4§();
         object[this.§5!!§(this.§2!h§)] = StateFacebookPlay.sPlaySessionToken;
         object[this.§5!!§(this.§=!U§)] = (§4!T§.§1t§ as FacebookLeveLMain).§<!B§();
         urlRequest.data = Base64.encode(§]!f§.encode(object));
         this.§4d§ = new §1!6§();
         this.§4d§.addEventListener(Event.COMPLETE,this.§%Y§);
         this.§4d§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4d§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4d§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§4d§.load(urlRequest);
      }
      
      private function §%Y§(e:Event) : void
      {
         this.§4d§ = null;
         var userProgressEvent:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§>?§);
         userProgressEvent.data = e.currentTarget.data;
         dispatchEvent(userProgressEvent);
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§9#§)
         {
            §4!c§.§?!U§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §4!c§.§?!U§();
         }
         this.§4d§ = null;
      }
      
      public function isEggUnlocked(eggId:String) : Boolean
      {
         if(this.§12§ != null)
         {
            if(this.§12§.indexOf(eggId) != -1)
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
         §4!c§.§[]§(eggId);
         this.§12§.push(eggId);
         var urlRequest:URLRequest = §-!Q§.§<!%§(§6![§ + "/eggfound/" + eggId);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§8!3§();
         this.§]O§ = new §1!6§(null,2);
         this.§]O§.addEventListener(Event.COMPLETE,this.§>p§);
         this.§]O§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]O§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]O§.load(urlRequest);
      }
      
      private function §>p§(e:Event) : void
      {
         trace("complete!");
      }
      
      public function get §0x§() : Boolean
      {
         return this.§4d§ != null;
      }
      
      public function get userName() : String
      {
         return this.§!! §;
      }
      
      public function get avatarString() : String
      {
         return this.§7!e§;
      }
      
      public function set avatarString(value:String) : void
      {
         this.§7!e§ = value;
      }
      
      public function get userID() : String
      {
         return this.§ P§;
      }
   }
}
