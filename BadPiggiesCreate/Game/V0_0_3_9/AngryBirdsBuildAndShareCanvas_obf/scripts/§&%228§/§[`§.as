package §&"8§
{
   import § !%§.§^2§;
   import §&"&§.§8!"§;
   import §9!#§.§?w§;
   import §;!A§.§9!U§;
   import §@!;§.§&F§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import §try§.§6>§;
   
   public class §[`§ extends EventDispatcher
   {
      
      private static var §[!X§:Class = §8!"§;
      
      private static const §%!i§:String = "NextQuest";
      
      private static const §#+§:XML = null;
      
      private static var §[v§:§[`§;
       
      
      private var §[%§:XML;
      
      private var §"!§:URLLoader;
      
      private var § n§:XML;
      
      private var §%!=§:Object;
      
      private var §+!k§:String;
      
      private var §"!S§:Object;
      
      private var §'f§:Boolean = false;
      
      private var §@e§:String;
      
      private var §^!6§:int = 0;
      
      private var §?"!§:Object;
      
      private var §8!E§:String;
      
      public function §[`§()
      {
         super();
      }
      
      public static function get §'!o§() : §[`§
      {
         if(§[v§ == null)
         {
            §[v§ = new §[`§();
         }
         return §[v§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §?w§.§8!j§ = true;
            §[!X§ = §9!0§;
         }
         this.§+!k§ = param1;
         §[!X§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §[!X§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §[!X§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§"!§ = new URLLoader();
         if(this.§+!k§ == "")
         {
            this.§<"'§();
         }
         else
         {
            this.§[%§ = new XML();
         }
      }
      
      private function §<"'§() : void
      {
         this.§"!§.addEventListener(Event.COMPLETE,this.§@!7§);
         this.§"!§.addEventListener(ErrorEvent.ERROR,this.§'>§);
         this.§"!§.load(new URLRequest(this.§+!k§ + "external_assets/quest_list.xml"));
      }
      
      private function §@!7§(param1:Event) : void
      {
         §&F§.log("onListLoadComplete: Quest list loaded.");
         this.§"!§.removeEventListener(Event.COMPLETE,this.§@!7§);
         this.§"!§.removeEventListener(ErrorEvent.ERROR,this.§'>§);
         this.§[%§ = new XML(param1.target.data);
         if(this.§%!=§)
         {
            this.§#!v§(this.§%!=§);
         }
      }
      
      private function §'>§(param1:ErrorEvent) : void
      {
         §&F§.log("onListLoadError: Failed to load quest list.");
         this.§"!§.removeEventListener(Event.COMPLETE,this.§@!7§);
         this.§"!§.removeEventListener(ErrorEvent.ERROR,this.§'>§);
      }
      
      public function §78§() : Object
      {
         return this.§?"!§;
      }
      
      public function § !>§() : Object
      {
         if(this.§"!S§ == null)
         {
            §&F§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§%!i§};
         }
         if(this.§+!k§ == "")
         {
            ++this.§^!6§;
            return this.§"!S§[this.§^!6§ - 1];
         }
         return this.§"!S§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§'f§)
         {
            this.§'f§ = true;
            §[!X§["doJsCall"]("completeQuest",JSON.stringify(this.§78§()),param1);
            §&F§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §&F§.log("Completed quest but we were already fetching quests. How did this happen?");
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
         this.§%!=§ = null;
         try
         {
            §&F§.log("onQuestComplete: new quests are fetched.");
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
            profileInfo[§^2§.XP] = xp;
            profileInfo[§^2§.§,2§] = coins;
            profileInfo[§^2§.§ !K§] = data.newBlocks;
            profileInfo[§^2§.§'!1§] = bolts;
            profileInfo[§^2§.§4R§] = boltsMax;
            profileInfo[§^2§.ISLEVELUP] = data.newIsLevelUp;
            profileInfo[§^2§.OLDXP] = data.oldXp;
            profileInfo[§^2§.NEWXP] = data.newXp;
            profileInfo[§^2§.MINXP] = data.minXp;
            profileInfo[§^2§.MAXXP] = data.maxXp;
            profileInfo[§^2§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§^2§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§^2§.BLOCKSNEW] = data.newBlocks;
            profileInfo[§^2§.BLOCKSMAX] = data.maxNewBlocks;
            profileInfo[§^2§.§!!U§] = data.newItems;
            if(data.items)
            {
               profileInfo[§^2§.§4!'§] = data.items;
            }
            (AngryBirdsFP11.§5!c§ as §^2§).§[!A§(profileInfo);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
            §&F§.log("Error parsing ");
         }
         dispatchEvent(new §9!U§(§9!U§.§`!_§));
      }
      
      private function fetchQuests() : void
      {
         if(!this.§'f§)
         {
            this.§'f§ = true;
            §[!X§["doJsCall"]("fetchQuests");
         }
         else
         {
            §&F§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
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
            §&F§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§'f§ = false;
            this.§"!S§ = new Object();
            fetchedQuests = JSON.parse(questListJSON);
            i = 0;
            §&F§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               var _loc5_:*;
               this.§"!S§[_loc5_ = i++] = fetchedQuests[key];
               §&F§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§%!=§ && this.§%!=§.id == §%!i§)
            {
               §&F§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§#!v§(this.§ !>§());
            }
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message));
         }
      }
      
      public function §6,§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §#!v§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §&F§.log("loadQuest: id = " + param1.id);
         this.§?"!§ = param1;
         if(this.§%!=§ != null && this.§%!=§.id != §%!i§)
         {
            §&F§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§%!=§ = param1;
         if(this.§%!=§.id == §%!i§)
         {
            §&F§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§[%§)
         {
            §&F§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§%!=§.id || this.§%!=§.id == "" || this.§%!=§.id == "sandbox")
         {
            this.§ n§ = §#+§;
            §&F§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §9!U§(§9!U§.§%G§));
            return;
         }
         §&F§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§%!=§.id);
         §&F§.log("loadQuest: Quest list looks like this: " + this.§[%§);
         this.§^!6§ = 0;
         if(this.§+!k§ == "")
         {
            for each(_loc3_ in this.§[%§.quest)
            {
               ++this.§^!6§;
               if(_loc3_.@id.toString() == this.§%!=§.id)
               {
                  §&F§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§"!§.addEventListener(Event.COMPLETE,this.§9Y§);
         this.§"!§.addEventListener(ErrorEvent.ERROR,this.§finally§);
         this.§"!§.load(new URLRequest(this.§+!k§ + "external_assets/" + _loc2_));
         §6>§.§@!_§ = _loc2_;
         if(param1.name)
         {
            §6>§.§#m§ = param1.name;
         }
         dispatchEvent(new §9!U§(§9!U§.§>!7§));
      }
      
      private function §9Y§(param1:Event) : void
      {
         this.§"!§.removeEventListener(Event.COMPLETE,this.§9Y§);
         this.§"!§.removeEventListener(ErrorEvent.ERROR,this.§finally§);
         §&F§.log("onQuestLoadComplete: Quest data loaded");
         this.§ n§ = new XML(param1.target.data);
         §[!X§["doJsCall"]("startQuest",JSON.stringify(this.§%!=§));
         this.§%!=§ = null;
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var questData:Object = null;
         var showError:Boolean = false;
         var questDataJSON:String = param1;
         var levelDataJSON:String = param2;
         if(questDataJSON == null || questDataJSON == "")
         {
            this.§ n§ = §#+§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               this.§@e§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§8!E§ = levelDataJSON;
               }
               else
               {
                  this.§8!E§ = null;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§1+§.§3'§ && §@e§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message + questDataJSON));
               }
               §&F§.log(e.message);
               §&F§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §9!U§(§9!U§.§%G§));
         this.§%!=§ = null;
      }
      
      public function §^!<§(param1:XML) : void
      {
         dispatchEvent(new §9!U§(§9!U§.§>!7§));
         this.§ n§ = param1;
         dispatchEvent(new §9!U§(§9!U§.§%G§));
      }
      
      private function §finally§(param1:ErrorEvent) : void
      {
         this.§"!§.removeEventListener(Event.COMPLETE,this.§9Y§);
         this.§"!§.removeEventListener(ErrorEvent.ERROR,this.§finally§);
      }
      
      public function get questData() : XML
      {
         return this.§ n§;
      }
      
      public function get §@O§() : String
      {
         return this.§8!E§;
      }
      
      public function §,!O§() : Object
      {
         return this.§"!S§;
      }
      
      public function get §=!E§() : String
      {
         return this.§@e§;
      }
   }
}
