package § 3§
{
   import §,!J§.UserProgress;
   import §,!J§.UserProgressEvent;
   import §5=§.Integer;
   import §7!A§.SHA1;
   import §;!1§.§9u§;
   import §;!1§.ErrorPopup;
   import §;+§.FacebookLeveLMain;
   import §<u§.Base64;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §>o§.§7b§;
   import §?!Y§.§`S§;
   import §[!$§.StateFacebookPlay;
   import §]!@§.ScoreCollector;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
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
       
      
      protected var §2!e§:Dictionary;
      
      private var §8![§:Dictionary;
      
      private var §!O§:Dictionary;
      
      protected var §3=§:String;
      
      protected var §-!%§:String;
      
      protected var §?!f§:String;
      
      private var §4B§:Array;
      
      private var §'!N§:Array;
      
      private var §'!S§:Array;
      
      private var §#$§:Array;
      
      private var §6<§:Array;
      
      private var §`1§:Array;
      
      private var §'J§:Array;
      
      private var §<!V§:Array;
      
      private var mName:Array;
      
      private var §@B§:Array;
      
      private var §#b§:Array;
      
      private var §8^§:Array;
      
      private var §@c§:Array;
      
      private var §&!§:§[!<§;
      
      private var §8p§:Array;
      
      private var §#!6§:§[!<§;
      
      private var §"!%§:Array;
      
      public function FacebookUserProgress(serverRoot:String)
      {
         this.§4B§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§'!N§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§'!S§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§#$§ = [101,112,105,115,111,100,101];
         this.§6<§ = [108,101,118,101,108];
         this.§`1§ = [112,111,105,110,116,115];
         this.§'J§ = [115,116,97,114,115];
         this.§<!V§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§@B§ = [115,101,99,117,114,105,116,121];
         this.§#b§ = [98,108,111,99,107,115];
         this.§8^§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§@c§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(serverRoot);
         this.§2!e§ = new Dictionary();
         this.§8p§ = [];
         this.§8![§ = new Dictionary();
         this.§!O§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var chapter:ChapterModel = null;
         var chapterStars:int = 0;
         var total:int = 0;
         for(var i:int = 0; i < LevelManager.§3!3§(); )
         {
            chapter = LevelManager.§7Z§(i);
            if(chapter.name != "2000")
            {
               trace("chapter!",chapter.name);
               chapterStars = §]J§(chapter);
               total += chapterStars;
            }
            i++;
         }
         return total;
      }
      
      public function §8n§(levelId:String) : int
      {
         var scoreInteger:Integer = null;
         if(this.§!O§[levelId])
         {
            scoreInteger = this.§!O§[levelId];
            return scoreInteger.getValue();
         }
         return 0;
      }
      
      public function §9!e§(levelId:String) : int
      {
         if(this.§8![§[levelId])
         {
            return this.§8![§[levelId];
         }
         return 0;
      }
      
      public function §4!Y§(levelId:String, rank:int) : void
      {
         this.§8![§[levelId] = rank;
      }
      
      public function §3K§(levelId:String, score:int) : void
      {
         var scoreInteger:Integer = new Integer(score);
         this.§!O§[levelId] = scoreInteger;
      }
      
      public function §"8§(levelId:String) : int
      {
         if(this.§2!e§[levelId])
         {
            return this.§2!e§[levelId];
         }
         return 0;
      }
      
      public function §!!F§(levelId:String, rank:int) : void
      {
         this.§2!e§[levelId] = rank;
      }
      
      public function include(tournamentScores:Array) : void
      {
         var levelScore:Object = null;
         this.§8![§ = new Dictionary();
         this.§!O§ = new Dictionary();
         for each(levelScore in tournamentScores)
         {
            if(levelScore.p)
            {
               this.§3K§(levelScore.l,levelScore.p);
            }
            if(levelScore.r)
            {
               this.§4!Y§(levelScore.l,levelScore.r);
            }
         }
      }
      
      public function §?!7§(dataObject:Array, userName:String, avatar:String, userId:String, unlockedEggs:Array, tutorials:Array) : void
      {
         var levelProgress:Object = null;
         this.§3=§ = userName;
         this.§-!%§ = avatar;
         this.§?!f§ = userId;
         this.§"!%§ = tutorials;
         if(unlockedEggs != null)
         {
            this.§8p§ = unlockedEggs;
         }
         for each(levelProgress in dataObject)
         {
            if(levelProgress.p)
            {
               §6s§(levelProgress.l,levelProgress.p);
            }
            if(levelProgress.me)
            {
               §3!Z§(levelProgress.l,levelProgress.me);
            }
            if(levelProgress.r)
            {
               this.§!!F§(levelProgress.l,levelProgress.r);
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
      
      private function §+K§(levelId:String) : String
      {
         var episode:ChapterModel = LevelManager.§6X§(levelId);
         return SHA1.§+=§([Boolean(episode) ? episode.name : this.§`!§(),levelId,§`S§.controller.getScore(),getStarsForLevel(levelId,§`S§.controller.getScore()),§`S§.controller.getEagleScore(),this.§[!!§()].join("|"));
      }
      
      private function §+b§(data:Array) : String
      {
         var i:int = 0;
         var name:String = "";
         for each(i in data)
         {
            name += String.fromCharCode(i);
         }
         return name;
      }
      
      private function §[!!§() : String
      {
         return this.§+b§(this.mName);
      }
      
      private function §]m§() : String
      {
         return this.§+b§(this.§4B§);
      }
      
      private function §`!§() : String
      {
         return this.§+b§(this.§'!N§);
      }
      
      private function §%!H§() : String
      {
         return this.§+b§(this.§'!S§);
      }
      
      override public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         if(this.§"!%§.indexOf(tutorialId) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(tutorialIds:String) : void
      {
         var tutorialString:String = null;
         var urlRequest:URLRequest = null;
         var tutorialSavingUrlLoader:§[!<§ = null;
         var tutorialsInside:Array = tutorialIds.split(",");
         for each(tutorialString in tutorialsInside)
         {
            this.§"!%§.push(tutorialString);
         }
         urlRequest = §+!I§.§[O§(§ l§ + "/tutorialshown/" + tutorialIds);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§%!H§();
         tutorialSavingUrlLoader = new §[!<§(null,2);
         tutorialSavingUrlLoader.addEventListener(Event.COMPLETE,this.§1J§);
         tutorialSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§`f§);
         tutorialSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`f§);
         tutorialSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         tutorialSavingUrlLoader.load(urlRequest);
      }
      
      private function §1J§(e:Event) : void
      {
         var tutorialSavingUrlLoader:§[!<§ = null;
         if(e.currentTarget is §[!<§)
         {
            tutorialSavingUrlLoader = e.currentTarget as §[!<§;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§1J§);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §`f§(e:Event) : void
      {
         var tutorialSavingUrlLoader:§[!<§ = null;
         if(e.currentTarget is §[!<§)
         {
            tutorialSavingUrlLoader = e.currentTarget as §[!<§;
            tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§1J§);
            tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(levelId:String, meInUse:Boolean = false, tournamentScore:Boolean = false) : void
      {
         if(this.§1U§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + levelId + ", ME: " + meInUse.toString());
         }
         var urlRequest:URLRequest = §+!I§.§[O§(§ l§ + this.§]m§() + "/" + tournamentScore.toString());
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§%!H§();
         var episode:ChapterModel = LevelManager.§6X§(levelId);
         var newPoints:int = §`S§.controller.getScore();
         var newStars:int = getStarsForLevel(levelId,§`S§.controller.getScore());
         var object:Object = {};
         object[this.§+b§(this.§#$§)] = Boolean(episode) ? episode.name : this.§`!§();
         object[this.§+b§(this.§6<§)] = levelId;
         object[this.§+b§(this.§`1§)] = newPoints;
         object[this.§+b§(this.§'J§)] = newStars;
         object[this.§+b§(this.§<!V§)] = §`S§.controller.getEagleScore();
         object[this.§+b§(this.§@B§)] = this.§+K§(levelId);
         object[this.§+b§(this.§#b§)] = ScoreCollector.§>t§();
         object[this.§+b§(this.§8^§)] = StateFacebookPlay.sPlaySessionToken;
         object[this.§+b§(this.§@c§)] = (§`S§.§[o§ as FacebookLeveLMain).§@n§();
         urlRequest.data = Base64.encode(§7b§.encode(object));
         this.§&!§ = new §[!<§();
         this.§&!§.addEventListener(Event.COMPLETE,this.§&E§);
         this.§&!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&!§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&!§.load(urlRequest);
      }
      
      private function §&E§(e:Event) : void
      {
         this.§&!§ = null;
         var userProgressEvent:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§[Y§);
         userProgressEvent.data = e.currentTarget.data;
         dispatchEvent(userProgressEvent);
      }
      
      private function onError(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§6!O§)
         {
            §9u§.§4!L§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §9u§.§4!L§();
         }
         this.§&!§ = null;
      }
      
      public function isEggUnlocked(eggId:String) : Boolean
      {
         if(this.§8p§ != null)
         {
            if(this.§8p§.indexOf(eggId) != -1)
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
         §9u§.§'W§(eggId);
         this.§8p§.push(eggId);
         var urlRequest:URLRequest = §+!I§.§[O§(§ l§ + "/eggfound/" + eggId);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = this.§%!H§();
         this.§#!6§ = new §[!<§(null,2);
         this.§#!6§.addEventListener(Event.COMPLETE,this.§each §);
         this.§#!6§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!6§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!6§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§#!6§.load(urlRequest);
      }
      
      private function §each §(e:Event) : void
      {
         trace("complete!");
      }
      
      public function get §1U§() : Boolean
      {
         return this.§&!§ != null;
      }
      
      public function get userName() : String
      {
         return this.§3=§;
      }
      
      public function get avatarString() : String
      {
         return this.§-!%§;
      }
      
      public function set avatarString(value:String) : void
      {
         this.§-!%§ = value;
      }
      
      public function get userID() : String
      {
         return this.§?!f§;
      }
   }
}
