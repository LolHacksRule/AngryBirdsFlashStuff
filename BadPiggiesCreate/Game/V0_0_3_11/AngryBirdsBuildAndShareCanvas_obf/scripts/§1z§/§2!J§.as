package §1z§
{
   import § !i§.§>!H§;
   import §"!2§.§>9§;
   import §""6§.§1f§;
   import §#V§.§7b§;
   import §,Q§.§="2§;
   import §;X§.§ do§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §2!J§ extends EventDispatcher
   {
      
      private static var §?!p§:Class = §="2§;
      
      private static const §%"&§:String = "NextQuest";
      
      private static const §"!3§:XML = null;
      
      private static var §+!x§:§2!J§;
       
      
      private var §<!m§:XML;
      
      private var §[!b§:URLLoader;
      
      private var §53§:XML;
      
      private var §6!G§:Object;
      
      private var §7X§:String;
      
      private var § ^§:Object;
      
      private var §1!E§:Boolean = false;
      
      private var §9b§:String;
      
      private var §,e§:int = 0;
      
      private var §?B§:Object;
      
      private var §"!e§:String;
      
      public function §2!J§()
      {
         super();
      }
      
      public static function get §if §() : §2!J§
      {
         if(§+!x§ == null)
         {
            §+!x§ = new §2!J§();
         }
         return §+!x§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §1f§.§;!b§ = true;
            §?!p§ = §?"8§;
         }
         this.§7X§ = param1;
         §?!p§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §?!p§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §?!p§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§[!b§ = new URLLoader();
         if(this.§7X§ == "")
         {
            this.§0"5§();
         }
         else
         {
            this.§<!m§ = new XML();
         }
      }
      
      private function §0"5§() : void
      {
         this.§[!b§.addEventListener(Event.COMPLETE,this.§[!6§);
         this.§[!b§.addEventListener(ErrorEvent.ERROR,this.§@"#§);
         this.§[!b§.load(new URLRequest(this.§7X§ + "external_assets/quest_list.xml"));
      }
      
      private function §[!6§(param1:Event) : void
      {
         § do§.log("onListLoadComplete: Quest list loaded.");
         this.§[!b§.removeEventListener(Event.COMPLETE,this.§[!6§);
         this.§[!b§.removeEventListener(ErrorEvent.ERROR,this.§@"#§);
         this.§<!m§ = new XML(param1.target.data);
         if(this.§6!G§)
         {
            this.§#z§(this.§6!G§);
         }
      }
      
      private function §@"#§(param1:ErrorEvent) : void
      {
         § do§.log("onListLoadError: Failed to load quest list.");
         this.§[!b§.removeEventListener(Event.COMPLETE,this.§[!6§);
         this.§[!b§.removeEventListener(ErrorEvent.ERROR,this.§@"#§);
      }
      
      public function §"" §() : Object
      {
         return this.§?B§;
      }
      
      public function §+!?§() : Object
      {
         if(this.§ ^§ == null)
         {
            § do§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§%"&§};
         }
         if(this.§7X§ == "")
         {
            ++this.§,e§;
            return this.§ ^§[this.§,e§ - 1];
         }
         return this.§ ^§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§1!E§)
         {
            this.§1!E§ = true;
            §?!p§["doJsCall"]("completeQuest",JSON.stringify(this.§"" §()),param1);
            § do§.log("Waiting for onQuestCompleted");
         }
         else
         {
            § do§.log("Completed quest but we were already fetching quests. How did this happen?");
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
         this.§6!G§ = null;
         try
         {
            § do§.log("onQuestComplete: new quests are fetched.");
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
            profileInfo[§>9§.XP] = xp;
            profileInfo[§>9§.§^"2§] = coins;
            profileInfo[§>9§.§0"!§] = data.newBlocks;
            profileInfo[§>9§.§7R§] = bolts;
            profileInfo[§>9§.§%!0§] = boltsMax;
            profileInfo[§>9§.ISLEVELUP] = data.newIsLevelUp;
            profileInfo[§>9§.OLDXP] = data.oldXp;
            profileInfo[§>9§.NEWXP] = data.newXp;
            profileInfo[§>9§.MINXP] = data.minXp;
            profileInfo[§>9§.MAXXP] = data.maxXp;
            profileInfo[§>9§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§>9§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§>9§.BLOCKSNEW] = data.newBlocks;
            profileInfo[§>9§.BLOCKSMAX] = data.maxNewBlocks;
            profileInfo[§>9§.§?!U§] = data.newItems;
            if(data.items)
            {
               profileInfo[§>9§.§?A§] = data.items;
            }
            (AngryBirdsFP11.§8!I§ as §>9§).§<""§(profileInfo);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
            § do§.log("Error parsing ");
         }
         dispatchEvent(new §>!H§(§>!H§.§4l§));
      }
      
      private function fetchQuests() : void
      {
         if(!this.§1!E§)
         {
            this.§1!E§ = true;
            §?!p§["doJsCall"]("fetchQuests");
         }
         else
         {
            § do§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
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
            § do§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§1!E§ = false;
            this.§ ^§ = new Object();
            fetchedQuests = JSON.parse(questListJSON);
            i = 0;
            § do§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               var _loc5_:*;
               this.§ ^§[_loc5_ = i++] = fetchedQuests[key];
               § do§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§6!G§ && this.§6!G§.id == §%"&§)
            {
               § do§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§#z§(this.§+!?§());
            }
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
         }
      }
      
      public function §'C§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §#z§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         § do§.log("loadQuest: id = " + param1.id);
         this.§?B§ = param1;
         if(this.§6!G§ != null && this.§6!G§.id != §%"&§)
         {
            § do§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§6!G§ = param1;
         if(this.§6!G§.id == §%"&§)
         {
            § do§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§<!m§)
         {
            § do§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§6!G§.id || this.§6!G§.id == "" || this.§6!G§.id == "sandbox")
         {
            this.§53§ = §"!3§;
            § do§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §>!H§(§>!H§.§7Z§));
            return;
         }
         § do§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§6!G§.id);
         § do§.log("loadQuest: Quest list looks like this: " + this.§<!m§);
         this.§,e§ = 0;
         if(this.§7X§ == "")
         {
            for each(_loc3_ in this.§<!m§.quest)
            {
               ++this.§,e§;
               if(_loc3_.@id.toString() == this.§6!G§.id)
               {
                  § do§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§[!b§.addEventListener(Event.COMPLETE,this.§,!_§);
         this.§[!b§.addEventListener(ErrorEvent.ERROR,this.§ !Q§);
         this.§[!b§.load(new URLRequest(this.§7X§ + "external_assets/" + _loc2_));
         §7b§.§>N§ = _loc2_;
         if(param1.name)
         {
            §7b§.§=!n§ = param1.name;
         }
         dispatchEvent(new §>!H§(§>!H§.§'! §));
      }
      
      private function §,!_§(param1:Event) : void
      {
         this.§[!b§.removeEventListener(Event.COMPLETE,this.§,!_§);
         this.§[!b§.removeEventListener(ErrorEvent.ERROR,this.§ !Q§);
         § do§.log("onQuestLoadComplete: Quest data loaded");
         this.§53§ = new XML(param1.target.data);
         §?!p§["doJsCall"]("startQuest",JSON.stringify(this.§6!G§));
         this.§6!G§ = null;
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var questData:Object = null;
         var showError:Boolean = false;
         var questDataJSON:String = param1;
         var levelDataJSON:String = param2;
         if(questDataJSON == null || questDataJSON == "")
         {
            this.§53§ = §"!3§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               this.§9b§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§"!e§ = levelDataJSON;
               }
               else
               {
                  this.§"!e§ = null;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§'N§.§8&§ && §9b§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message + questDataJSON));
               }
               § do§.log(e.message);
               § do§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §>!H§(§>!H§.§7Z§));
         this.§6!G§ = null;
      }
      
      public function §3!0§(param1:XML) : void
      {
         dispatchEvent(new §>!H§(§>!H§.§'! §));
         this.§53§ = param1;
         dispatchEvent(new §>!H§(§>!H§.§7Z§));
      }
      
      private function § !Q§(param1:ErrorEvent) : void
      {
         this.§[!b§.removeEventListener(Event.COMPLETE,this.§,!_§);
         this.§[!b§.removeEventListener(ErrorEvent.ERROR,this.§ !Q§);
      }
      
      public function get questData() : XML
      {
         return this.§53§;
      }
      
      public function get §7!m§() : String
      {
         return this.§"!e§;
      }
      
      public function §,=§() : Object
      {
         return this.§ ^§;
      }
      
      public function get §5v§() : String
      {
         return this.§9b§;
      }
   }
}
