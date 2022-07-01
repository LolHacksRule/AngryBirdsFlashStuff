package §var§
{
   import §!!T§.§"!S§;
   import §,!$§.§`!z§;
   import §-P§.§1Z§;
   import §4u§.§<!L§;
   import §9e§.§"!e§;
   import §9u§.§"![§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §,"1§ extends EventDispatcher
   {
      
      private static var §5!3§:Class = §"!S§;
      
      private static const §7! §:String = "NextQuest";
      
      private static const §@X§:XML = null;
      
      private static var §!!>§:§,"1§;
       
      
      private var §"U§:XML;
      
      private var §5L§:URLLoader;
      
      private var §^""§:XML;
      
      private var §3!x§:Object;
      
      private var §=!h§:String;
      
      private var §76§:Object;
      
      private var §@" §:Boolean = false;
      
      private var §,!M§:String;
      
      private var §%!s§:int = 0;
      
      private var §[0§:Object;
      
      private var §[!T§:String;
      
      public function §,"1§()
      {
         super();
      }
      
      public static function get §9j§() : §,"1§
      {
         if(§!!>§ == null)
         {
            §!!>§ = new §,"1§();
         }
         return §!!>§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §1Z§.§&s§ = true;
            §5!3§ = §7!M§;
         }
         this.§=!h§ = param1;
         §5!3§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §5!3§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §5!3§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§5L§ = new URLLoader();
         if(this.§=!h§ == "")
         {
            this.§]@§();
         }
         else
         {
            this.§"U§ = new XML();
         }
      }
      
      private function §]@§() : void
      {
         this.§5L§.addEventListener(Event.COMPLETE,this.§%!%§);
         this.§5L§.addEventListener(ErrorEvent.ERROR,this.§>!d§);
         this.§5L§.load(new URLRequest(this.§=!h§ + "external_assets/quest_list.xml"));
      }
      
      private function §%!%§(param1:Event) : void
      {
         §<!L§.log("onListLoadComplete: Quest list loaded.");
         this.§5L§.removeEventListener(Event.COMPLETE,this.§%!%§);
         this.§5L§.removeEventListener(ErrorEvent.ERROR,this.§>!d§);
         this.§"U§ = new XML(param1.target.data);
         if(this.§3!x§)
         {
            this.§8S§(this.§3!x§);
         }
      }
      
      private function §>!d§(param1:ErrorEvent) : void
      {
         §<!L§.log("onListLoadError: Failed to load quest list.");
         this.§5L§.removeEventListener(Event.COMPLETE,this.§%!%§);
         this.§5L§.removeEventListener(ErrorEvent.ERROR,this.§>!d§);
      }
      
      public function §;!7§() : Object
      {
         return this.§[0§;
      }
      
      public function §^!L§() : Object
      {
         if(this.§76§ == null)
         {
            §<!L§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§7! §};
         }
         if(this.§=!h§ == "")
         {
            ++this.§%!s§;
            return this.§76§[this.§%!s§ - 1];
         }
         return this.§76§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§@" §)
         {
            this.§@" § = true;
            §5!3§["doJsCall"]("completeQuest",JSON.stringify(this.§;!7§()),param1);
            §<!L§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §<!L§.log("Completed quest but we were already fetching quests. How did this happen?");
         }
      }
      
      private function onQuestCompleted(param1:String, param2:String) : void
      {
         var data:Object = null;
         var xp:Number = NaN;
         var bolts:Number = NaN;
         var boltsMax:Number = NaN;
         var coins:Number = NaN;
         var profileInfo:Object = null;
         var questListJSON:String = param1;
         var levelUpInfo:String = param2;
         this.§3!x§ = null;
         try
         {
            §<!L§.log("onQuestComplete: new quests are fetched.");
            this.onQuestsFetched(questListJSON);
            data = JSON.parse(levelUpInfo);
            xp = data.newXp - data.oldXp;
            bolts = 0;
            boltsMax = 0;
            if(data.newIsLevelUp)
            {
               bolts = data.oldBolts["currentBolts"];
               boltsMax = data.oldBolts["maxBolts"];
            }
            else
            {
               bolts = data.newBolts["currentBolts"];
               boltsMax = data.newBolts["maxBolts"];
            }
            coins = data.newCoins - data.oldCoins;
            profileInfo = new Object();
            profileInfo[§"!e§.XP] = xp;
            profileInfo[§"!e§.§8" §] = coins;
            profileInfo[§"!e§.§]z§] = data.newBlocks;
            profileInfo[§"!e§.§^o§] = bolts;
            profileInfo[§"!e§.§!!c§] = boltsMax;
            profileInfo[§"!e§.ISLEVELUP] = data.newIsLevelUp;
            profileInfo[§"!e§.OLDXP] = data.oldXp;
            profileInfo[§"!e§.NEWXP] = data.newXp;
            profileInfo[§"!e§.MINXP] = data.minXp;
            profileInfo[§"!e§.MAXXP] = data.maxXp;
            profileInfo[§"!e§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§"!e§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§"!e§.BLOCKSNEW] = data.newBlocks;
            profileInfo[§"!e§.BLOCKSMAX] = data.maxNewBlocks;
            profileInfo[§"!e§.§7!w§] = data.newItems;
            if(data.items)
            {
               profileInfo[§"!e§.§[8§] = data.items;
            }
            (AngryBirdsFP11.§8!v§ as §"!e§).§[!K§(profileInfo);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
            §<!L§.log("Error parsing ");
         }
         dispatchEvent(new §`!z§(§`!z§.§^n§));
      }
      
      private function fetchQuests() : void
      {
         if(!this.§@" §)
         {
            this.§@" § = true;
            §5!3§["doJsCall"]("fetchQuests");
         }
         else
         {
            §<!L§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
         }
      }
      
      private function onQuestsFetched(param1:String) : void
      {
         var fetchedQuests:Object = null;
         var i:int = 0;
         var key:String = null;
         var questListJSON:String = param1;
         try
         {
            §<!L§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§@" § = false;
            this.§76§ = new Object();
            fetchedQuests = JSON.parse(questListJSON);
            i = 0;
            §<!L§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               var _loc5_:*;
               this.§76§[_loc5_ = i++] = fetchedQuests[key];
               §<!L§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§3!x§ && this.§3!x§.id == §7! §)
            {
               §<!L§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§8S§(this.§^!L§());
            }
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
         }
      }
      
      public function §1_§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §8S§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §<!L§.log("loadQuest: id = " + param1.id);
         this.§[0§ = param1;
         if(this.§3!x§ != null && this.§3!x§.id != §7! §)
         {
            §<!L§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§3!x§ = param1;
         if(this.§3!x§.id == §7! §)
         {
            §<!L§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§"U§)
         {
            §<!L§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§3!x§.id || this.§3!x§.id == "" || this.§3!x§.id == "sandbox")
         {
            this.§^""§ = §@X§;
            §<!L§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §`!z§(§`!z§.§+!8§));
            return;
         }
         §<!L§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§3!x§.id);
         §<!L§.log("loadQuest: Quest list looks like this: " + this.§"U§);
         this.§%!s§ = 0;
         if(this.§=!h§ == "")
         {
            for each(_loc3_ in this.§"U§.quest)
            {
               ++this.§%!s§;
               if(_loc3_.@id.toString() == this.§3!x§.id)
               {
                  §<!L§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§5L§.addEventListener(Event.COMPLETE,this.§2`§);
         this.§5L§.addEventListener(ErrorEvent.ERROR,this.§4!2§);
         this.§5L§.load(new URLRequest(this.§=!h§ + "external_assets/" + _loc2_));
         §"![§.§0"#§ = _loc2_;
         if(param1.name)
         {
            §"![§.§@&§ = param1.name;
         }
         dispatchEvent(new §`!z§(§`!z§.§'<§));
      }
      
      private function §2`§(param1:Event) : void
      {
         this.§5L§.removeEventListener(Event.COMPLETE,this.§2`§);
         this.§5L§.removeEventListener(ErrorEvent.ERROR,this.§4!2§);
         §<!L§.log("onQuestLoadComplete: Quest data loaded");
         this.§^""§ = new XML(param1.target.data);
         §5!3§["doJsCall"]("startQuest",JSON.stringify(this.§3!x§));
         this.§3!x§ = null;
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var questData:Object = null;
         var showError:Boolean = false;
         var questDataJSON:String = param1;
         var levelDataJSON:String = param2;
         if(questDataJSON == null || questDataJSON == "")
         {
            this.§^""§ = §@X§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               this.§,!M§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§[!T§ = levelDataJSON;
               }
               else
               {
                  this.§[!T§ = null;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§3!P§.§`"&§ && §,!M§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message + questDataJSON));
               }
               §<!L§.log(e.message);
               §<!L§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §`!z§(§`!z§.§+!8§));
         this.§3!x§ = null;
      }
      
      public function §`-§(param1:XML) : void
      {
         dispatchEvent(new §`!z§(§`!z§.§'<§));
         this.§^""§ = param1;
         dispatchEvent(new §`!z§(§`!z§.§+!8§));
      }
      
      private function §4!2§(param1:ErrorEvent) : void
      {
         this.§5L§.removeEventListener(Event.COMPLETE,this.§2`§);
         this.§5L§.removeEventListener(ErrorEvent.ERROR,this.§4!2§);
      }
      
      public function get questData() : XML
      {
         return this.§^""§;
      }
      
      public function get §7z§() : String
      {
         return this.§[!T§;
      }
      
      public function §,"5§() : Object
      {
         return this.§76§;
      }
      
      public function get §#!Y§() : String
      {
         return this.§,!M§;
      }
   }
}
