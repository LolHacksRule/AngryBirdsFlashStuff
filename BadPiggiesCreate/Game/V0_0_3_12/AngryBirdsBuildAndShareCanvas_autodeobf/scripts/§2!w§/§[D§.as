package §2!w§
{
   import §"p§.§@8§;
   import §,!x§.§ !a§;
   import §-!@§.§6P§;
   import §0"7§.§ !2§;
   import §=e§.§1!@§;
   import §>";§.§#§;
   import §>P§.§%t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §[D§ extends EventDispatcher
   {
      
      private static var §?!B§:Class = §1!@§;
      
      private static const §return§:String = "NextQuest";
      
      private static const §3"$§:XML = null;
      
      private static var §&!Z§:§[D§;
       
      
      private var §`'§:XML;
      
      private var §>!+§:URLLoader;
      
      private var §];§:XML;
      
      private var §<!j§:Object;
      
      private var §+!l§:String;
      
      private var §#!6§:Object;
      
      private var §!!>§:Boolean = false;
      
      private var §7!!§:String;
      
      private var §@!6§:Object;
      
      private var §8Q§:String;
      
      public function §[D§()
      {
         super();
      }
      
      public static function get § "!§() : §[D§
      {
         if(§&!Z§ == null)
         {
            §&!Z§ = new §[D§();
         }
         return §&!Z§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §?!B§ = §>!k§;
         }
         this.§+!l§ = param1;
         §?!B§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §?!B§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §?!B§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§>!+§ = new URLLoader();
         if(this.§+!l§ == "")
         {
            this.§4!m§();
         }
         else
         {
            this.§`'§ = new XML();
         }
      }
      
      private function §4!m§() : void
      {
         this.§>!+§.addEventListener(Event.COMPLETE,this.§<!R§);
         this.§>!+§.load(new URLRequest(this.§+!l§ + "external_assets/quest_list.xml"));
      }
      
      private function §<!R§(param1:Event) : void
      {
         §@8§.log("onListLoadComplete: Quest list loaded.");
         this.§>!+§.removeEventListener(Event.COMPLETE,this.§<!R§);
         this.§`'§ = new XML(param1.target.data);
         if(this.§<!j§)
         {
            this.§>"9§(this.§<!j§);
         }
      }
      
      public function §4"5§() : Object
      {
         return this.§@!6§;
      }
      
      public function §26§() : Object
      {
         var _loc1_:int = 0;
         if(this.§#!6§ == null)
         {
            §@8§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§return§};
         }
         if(this.§+!l§ == "")
         {
            _loc1_ = (AngryBirdsFP11.§`!j§ as §#§).completedQuests.length;
            return this.§#!6§[_loc1_];
         }
         return this.§#!6§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§!!>§)
         {
            this.§!!>§ = true;
            §?!B§["doJsCall"]("completeQuest",JSON.stringify(this.§4"5§()),param1);
            §@8§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §@8§.log("Completed quest but we were already fetching quests. How did this happen?");
         }
      }
      
      private function onQuestCompleted(param1:String, param2:String, param3:String = "", param4:Boolean = false) : void
      {
         var data:Object = null;
         var xp:Number = NaN;
         var bolts:Number = NaN;
         var boltsMax:Number = NaN;
         var coins:Number = NaN;
         var profileInfo:Object = null;
         var questListJSON:String = param1;
         var levelUpInfo:String = param2;
         var completedQuestDataJSON:String = param3;
         var isSandboxOpen:Boolean = param4;
         this.§<!j§ = null;
         try
         {
            §@8§.log("onQuestComplete: new quests are fetched.");
            (AngryBirdsFP11.§`!j§ as §#§).§-![§(JSON.parse(completedQuestDataJSON));
            this.onQuestsFetched(questListJSON,"",isSandboxOpen);
            data = JSON.parse(levelUpInfo);
            if(data.error === true)
            {
               § !a§.showError(data.reason);
               return;
            }
            xp = data.newXp - data.oldXp;
            bolts = 0;
            boltsMax = 0;
            if(data.oldXpLevel != data.newXpLevel)
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
            profileInfo[§#§.XP] = xp;
            profileInfo[§#§.COINS] = coins;
            profileInfo[§#§.BLOCKS] = data.newBlocks;
            profileInfo[§#§.BOLTS] = bolts;
            profileInfo[§#§.§&W§] = boltsMax;
            profileInfo[§#§.ISLEVELUP] = data.oldXpLevel != data.newXpLevel;
            profileInfo[§#§.OLDXP] = data.oldXp;
            profileInfo[§#§.NEWXP] = data.newXp;
            profileInfo[§#§.MINXP] = data.minXp;
            profileInfo[§#§.MAXXP] = data.maxXp;
            profileInfo[§#§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§#§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§#§.BLOCKSNEW] = data.newBlocks;
            profileInfo[§#§.BLOCKSMAX] = data.maxNewBlocks;
            profileInfo[§#§.§`w§] = data.newItems;
            profileInfo[§#§.§40§] = boltsMax - bolts;
            if(data.items)
            {
               profileInfo[§#§.§6u§] = data.items;
            }
            (AngryBirdsFP11.§`!j§ as §#§).§3!e§(profileInfo);
         }
         catch(e:Error)
         {
            §6P§.§5m§(e.message);
            §@8§.log("Error parsing ");
            return;
         }
         dispatchEvent(new § !2§(§ !2§.§^$§));
      }
      
      public function fetchQuests() : void
      {
         if(!this.§!!>§)
         {
            this.§!!>§ = true;
            §?!B§["doJsCall"]("fetchQuests");
         }
         else
         {
            §@8§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
         }
      }
      
      private function onQuestsFetched(param1:String, param2:String = "", param3:Boolean = true) : void
      {
         var fetchedQuests:Object = null;
         var i:int = 0;
         var key:String = null;
         var completedQuests:Object = null;
         var questObject:Object = null;
         var questListJSON:String = param1;
         var completedQuestsJSON:String = param2;
         var isSandboxOpen:Boolean = param3;
         try
         {
            §@8§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§!!>§ = false;
            (AngryBirdsFP11.§`!j§ as §#§).sandboxAvailable = isSandboxOpen;
            this.§#!6§ = new Object();
            fetchedQuests = JSON.parse(questListJSON);
            if(completedQuestsJSON && completedQuestsJSON.length > 0)
            {
               completedQuests = JSON.parse(completedQuestsJSON);
               for each(questObject in completedQuests)
               {
                  (AngryBirdsFP11.§`!j§ as §#§).§-![§(questObject);
               }
            }
            if(fetchedQuests.error === true)
            {
               § !a§.showError(fetchedQuests.reason);
               return;
            }
            i = 0;
            §@8§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               var _loc7_:*;
               this.§#!6§[_loc7_ = i++] = fetchedQuests[key];
               §@8§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§<!j§ && this.§<!j§.id == §return§)
            {
               §@8§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§>"9§(this.§26§());
            }
            dispatchEvent(new § !2§(§ !2§.§4]§));
         }
         catch(e:Error)
         {
            §6P§.§5m§(e.message);
         }
      }
      
      public function §^!Y§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §>"9§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §@8§.log("loadQuest: id = " + param1.id);
         this.§@!6§ = param1;
         if(this.§<!j§ != null && this.§<!j§.id != §return§)
         {
            §@8§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§<!j§ = param1;
         if(this.§<!j§.id == §return§)
         {
            §@8§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§`'§)
         {
            §@8§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§<!j§.id || this.§<!j§.id == "" || this.§<!j§.id == "sandbox")
         {
            this.§];§ = §3"$§;
            §@8§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new § !2§(§ !2§.§#"0§));
            return;
         }
         §@8§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§<!j§.id);
         §@8§.log("loadQuest: Quest list looks like this: " + this.§`'§);
         if(this.§+!l§ == "")
         {
            for each(_loc3_ in this.§`'§.quest)
            {
               if(_loc3_.@id.toString() == this.§<!j§.id)
               {
                  §@8§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§>!+§.addEventListener(Event.COMPLETE,this.§9x§);
         this.§>!+§.load(new URLRequest(this.§+!l§ + "external_assets/" + _loc2_));
         §%t§.§&!P§ = _loc2_;
         if(param1.name)
         {
            §%t§.§=Q§ = param1.name;
         }
         dispatchEvent(new § !2§(§ !2§.§%";§));
      }
      
      private function §9x§(param1:Event) : void
      {
         this.§>!+§.removeEventListener(Event.COMPLETE,this.§9x§);
         §@8§.log("onQuestLoadComplete: Quest data loaded");
         this.§];§ = new XML(param1.target.data);
         §?!B§["doJsCall"]("startQuest",JSON.stringify(this.§<!j§));
         this.§<!j§ = null;
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var questData:Object = null;
         var showError:Boolean = false;
         var questDataJSON:String = param1;
         var levelDataJSON:String = param2;
         if(questDataJSON == null || questDataJSON == "")
         {
            this.§];§ = §3"$§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               this.§7!!§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§8Q§ = levelDataJSON;
               }
               else
               {
                  this.§8Q§ = null;
               }
               if(questData.error === true)
               {
                  § !a§.showError(questData.reason);
                  return;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§%"$§.§;[§ && §7!!§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  §6P§.§5m§(e.message);
                  return;
               }
               §@8§.log(e.message);
               §@8§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new § !2§(§ !2§.§#"0§));
         this.§<!j§ = null;
      }
      
      public function §&!m§(param1:XML) : void
      {
         dispatchEvent(new § !2§(§ !2§.§%";§));
         this.§];§ = param1;
         dispatchEvent(new § !2§(§ !2§.§#"0§));
      }
      
      public function get questData() : XML
      {
         return this.§];§;
      }
      
      public function get §!§() : String
      {
         return this.§8Q§;
      }
      
      public function §%!#§() : Object
      {
         return this.§#!6§;
      }
      
      public function get §#!1§() : String
      {
         return this.§7!!§;
      }
   }
}
