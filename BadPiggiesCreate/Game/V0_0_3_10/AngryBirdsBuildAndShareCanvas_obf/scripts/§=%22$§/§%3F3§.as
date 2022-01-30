package §="$§
{
   import §#L§.§!!Q§;
   import §,i§.§8!0§;
   import §1!p§.§`!#§;
   import §6`§.§`!e§;
   import §8"'§.§?!`§;
   import §9!G§.§]!e§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §?3§ extends EventDispatcher
   {
      
      private static var §+!s§:Class = §?!`§;
      
      private static const §[!O§:String = "NextQuest";
      
      private static const §0[§:XML = null;
      
      private static var §1q§:§?3§;
       
      
      private var §"!5§:XML;
      
      private var §?Q§:URLLoader;
      
      private var §1"#§:XML;
      
      private var §-!Z§:Object;
      
      private var §@!5§:String;
      
      private var § "#§:Object;
      
      private var §,!W§:Boolean = false;
      
      private var §switch§:String;
      
      private var §5!N§:int = 0;
      
      private var §6G§:Object;
      
      private var §6!n§:String;
      
      public function §?3§()
      {
         super();
      }
      
      public static function get §,l§() : §?3§
      {
         if(§1q§ == null)
         {
            §1q§ = new §?3§();
         }
         return §1q§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §8!0§.§9!O§ = true;
            §+!s§ = §%§;
         }
         this.§@!5§ = param1;
         §+!s§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §+!s§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §+!s§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§?Q§ = new URLLoader();
         if(this.§@!5§ == "")
         {
            this.§!3§();
         }
         else
         {
            this.§"!5§ = new XML();
         }
      }
      
      private function §!3§() : void
      {
         this.§?Q§.addEventListener(Event.COMPLETE,this.§#"2§);
         this.§?Q§.addEventListener(ErrorEvent.ERROR,this.§`!V§);
         this.§?Q§.load(new URLRequest(this.§@!5§ + "external_assets/quest_list.xml"));
      }
      
      private function §#"2§(param1:Event) : void
      {
         §]!e§.log("onListLoadComplete: Quest list loaded.");
         this.§?Q§.removeEventListener(Event.COMPLETE,this.§#"2§);
         this.§?Q§.removeEventListener(ErrorEvent.ERROR,this.§`!V§);
         this.§"!5§ = new XML(param1.target.data);
         if(this.§-!Z§)
         {
            this.§&!I§(this.§-!Z§);
         }
      }
      
      private function §`!V§(param1:ErrorEvent) : void
      {
         §]!e§.log("onListLoadError: Failed to load quest list.");
         this.§?Q§.removeEventListener(Event.COMPLETE,this.§#"2§);
         this.§?Q§.removeEventListener(ErrorEvent.ERROR,this.§`!V§);
      }
      
      public function §@!B§() : Object
      {
         return this.§6G§;
      }
      
      public function §&!§() : Object
      {
         if(this.§ "#§ == null)
         {
            §]!e§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§[!O§};
         }
         if(this.§@!5§ == "")
         {
            ++this.§5!N§;
            return this.§ "#§[this.§5!N§ - 1];
         }
         return this.§ "#§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§,!W§)
         {
            this.§,!W§ = true;
            §+!s§["doJsCall"]("completeQuest",JSON.stringify(this.§@!B§()),param1);
            §]!e§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §]!e§.log("Completed quest but we were already fetching quests. How did this happen?");
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
         this.§-!Z§ = null;
         try
         {
            §]!e§.log("onQuestComplete: new quests are fetched.");
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
            profileInfo[§`!#§.XP] = xp;
            profileInfo[§`!#§.§%?§] = coins;
            profileInfo[§`!#§.§"!]§] = data.newBlocks;
            profileInfo[§`!#§.§8i§] = bolts;
            profileInfo[§`!#§.§[!v§] = boltsMax;
            profileInfo[§`!#§.ISLEVELUP] = data.newIsLevelUp;
            profileInfo[§`!#§.OLDXP] = data.oldXp;
            profileInfo[§`!#§.NEWXP] = data.newXp;
            profileInfo[§`!#§.MINXP] = data.minXp;
            profileInfo[§`!#§.MAXXP] = data.maxXp;
            profileInfo[§`!#§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§`!#§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§`!#§.BLOCKSNEW] = data.newBlocks;
            profileInfo[§`!#§.BLOCKSMAX] = data.maxNewBlocks;
            profileInfo[§`!#§.§7z§] = data.newItems;
            if(data.items)
            {
               profileInfo[§`!#§.§`!M§] = data.items;
            }
            (AngryBirdsFP11.§<U§ as §`!#§).§,X§(profileInfo);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
            §]!e§.log("Error parsing ");
         }
         dispatchEvent(new §!!Q§(§!!Q§.§=§));
      }
      
      private function fetchQuests() : void
      {
         if(!this.§,!W§)
         {
            this.§,!W§ = true;
            §+!s§["doJsCall"]("fetchQuests");
         }
         else
         {
            §]!e§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
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
            §]!e§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§,!W§ = false;
            this.§ "#§ = new Object();
            fetchedQuests = JSON.parse(questListJSON);
            i = 0;
            §]!e§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               var _loc5_:*;
               this.§ "#§[_loc5_ = i++] = fetchedQuests[key];
               §]!e§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§-!Z§ && this.§-!Z§.id == §[!O§)
            {
               §]!e§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§&!I§(this.§&!§());
            }
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
         }
      }
      
      public function §@!9§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §&!I§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §]!e§.log("loadQuest: id = " + param1.id);
         this.§6G§ = param1;
         if(this.§-!Z§ != null && this.§-!Z§.id != §[!O§)
         {
            §]!e§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§-!Z§ = param1;
         if(this.§-!Z§.id == §[!O§)
         {
            §]!e§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§"!5§)
         {
            §]!e§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§-!Z§.id || this.§-!Z§.id == "" || this.§-!Z§.id == "sandbox")
         {
            this.§1"#§ = §0[§;
            §]!e§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §!!Q§(§!!Q§.§1I§));
            return;
         }
         §]!e§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§-!Z§.id);
         §]!e§.log("loadQuest: Quest list looks like this: " + this.§"!5§);
         this.§5!N§ = 0;
         if(this.§@!5§ == "")
         {
            for each(_loc3_ in this.§"!5§.quest)
            {
               ++this.§5!N§;
               if(_loc3_.@id.toString() == this.§-!Z§.id)
               {
                  §]!e§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§?Q§.addEventListener(Event.COMPLETE,this.§8[§);
         this.§?Q§.addEventListener(ErrorEvent.ERROR,this.§2e§);
         this.§?Q§.load(new URLRequest(this.§@!5§ + "external_assets/" + _loc2_));
         §`!e§.§@!§ = _loc2_;
         if(param1.name)
         {
            §`!e§.§&O§ = param1.name;
         }
         dispatchEvent(new §!!Q§(§!!Q§.§7!Y§));
      }
      
      private function §8[§(param1:Event) : void
      {
         this.§?Q§.removeEventListener(Event.COMPLETE,this.§8[§);
         this.§?Q§.removeEventListener(ErrorEvent.ERROR,this.§2e§);
         §]!e§.log("onQuestLoadComplete: Quest data loaded");
         this.§1"#§ = new XML(param1.target.data);
         §+!s§["doJsCall"]("startQuest",JSON.stringify(this.§-!Z§));
         this.§-!Z§ = null;
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var questData:Object = null;
         var showError:Boolean = false;
         var questDataJSON:String = param1;
         var levelDataJSON:String = param2;
         if(questDataJSON == null || questDataJSON == "")
         {
            this.§1"#§ = §0[§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               this.§switch§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§6!n§ = levelDataJSON;
               }
               else
               {
                  this.§6!n§ = null;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§7"$§.§2!_§ && §switch§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message + questDataJSON));
               }
               §]!e§.log(e.message);
               §]!e§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §!!Q§(§!!Q§.§1I§));
         this.§-!Z§ = null;
      }
      
      public function §5@§(param1:XML) : void
      {
         dispatchEvent(new §!!Q§(§!!Q§.§7!Y§));
         this.§1"#§ = param1;
         dispatchEvent(new §!!Q§(§!!Q§.§1I§));
      }
      
      private function §2e§(param1:ErrorEvent) : void
      {
         this.§?Q§.removeEventListener(Event.COMPLETE,this.§8[§);
         this.§?Q§.removeEventListener(ErrorEvent.ERROR,this.§2e§);
      }
      
      public function get questData() : XML
      {
         return this.§1"#§;
      }
      
      public function get §=!%§() : String
      {
         return this.§6!n§;
      }
      
      public function §#§() : Object
      {
         return this.§ "#§;
      }
      
      public function get §+t§() : String
      {
         return this.§switch§;
      }
   }
}
