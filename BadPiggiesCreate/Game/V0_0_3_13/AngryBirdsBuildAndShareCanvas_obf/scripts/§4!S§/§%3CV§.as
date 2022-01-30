package §4!S§
{
   import § ^§.§>M§;
   import §""§.§]!^§;
   import §#!8§.§&!'§;
   import §&W§.§7L§;
   import §-!H§.§0!]§;
   import §3c§.§2A§;
   import §=!D§.§<]§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §<V§ extends EventDispatcher
   {
      
      private static var §3!d§:Class = §&!'§;
      
      private static const §6!t§:String = "NextQuest";
      
      private static const §,"7§:XML = null;
      
      private static var §#>§:§<V§;
       
      
      private var §%!I§:XML;
      
      private var §+!v§:URLLoader;
      
      private var § 8§:XML;
      
      private var §;a§:Object;
      
      private var §;!§:String;
      
      private var §"""§:Vector.<Object>;
      
      private var §7p§:Boolean = false;
      
      private var §7!h§:String;
      
      private var §1!X§:Object;
      
      private var §#!j§:String;
      
      public function §<V§()
      {
         super();
      }
      
      public static function get §7!?§() : §<V§
      {
         if(§#>§ == null)
         {
            §#>§ = new §<V§();
         }
         return §#>§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §3!d§ = §+!6§;
         }
         this.§;!§ = param1;
         §3!d§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §3!d§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §3!d§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§+!v§ = new URLLoader();
         if(this.§;!§ == "")
         {
            this.§+!&§();
         }
         else
         {
            this.§%!I§ = new XML();
         }
      }
      
      private function §+!&§() : void
      {
         this.§+!v§.addEventListener(Event.COMPLETE,this.§3!B§);
         this.§+!v§.load(new URLRequest(this.§;!§ + "external_assets/quest_list.xml"));
      }
      
      private function §3!B§(param1:Event) : void
      {
         §7L§.log("onListLoadComplete: Quest list loaded.");
         this.§+!v§.removeEventListener(Event.COMPLETE,this.§3!B§);
         this.§%!I§ = new XML(param1.target.data);
         if(this.§;a§)
         {
            this.§0l§(this.§;a§);
         }
      }
      
      public function §;! §() : Object
      {
         return this.§1!X§;
      }
      
      public function §9!R§() : Object
      {
         var _loc1_:int = 0;
         if(this.§"""§ == null)
         {
            §7L§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§6!t§};
         }
         if(this.§;!§ == "")
         {
            _loc1_ = (AngryBirdsFP11.§"!c§ as §0!]§).completedQuests.length;
            return this.§"""§[_loc1_];
         }
         return this.§"""§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§7p§)
         {
            this.§7p§ = true;
            §3!d§["doJsCall"]("completeQuest",JSON.stringify(this.§;! §()),param1);
            §7L§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §7L§.log("Completed quest but we were already fetching quests. How did this happen?");
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
         this.§;a§ = null;
         try
         {
            §7L§.log("onQuestComplete: new quests are fetched.");
            (AngryBirdsFP11.§"!c§ as §0!]§).§8"9§(JSON.parse(completedQuestDataJSON));
            this.onQuestsFetched(questListJSON,"",isSandboxOpen);
            data = JSON.parse(levelUpInfo);
            if(data.error === true)
            {
               §>M§.showError(data.reason);
               return;
            }
            xp = data.newXp - data.oldXp;
            bolts = 0;
            boltsMax = 0;
            if(data.oldXpLevel == data.newXpLevel)
            {
               bolts = data.oldBolts["currentBolts"];
               boltsMax = data.oldBolts["maxBolts"];
            }
            else
            {
               bolts = data.newBolts["currentBolts"];
               boltsMax = data.newBolts["maxBolts"];
            }
            coins = data.newCoins;
            profileInfo = new Object();
            profileInfo[§0!]§.XP] = xp;
            profileInfo[§0!]§.COINS] = coins;
            profileInfo[§0!]§.BLOCKS] = data.maxNewBlocks;
            profileInfo[§0!]§.BOLTS] = bolts;
            profileInfo[§0!]§.§%"§] = boltsMax;
            profileInfo[§0!]§.ISLEVELUP] = data.oldXpLevel != data.newXpLevel;
            profileInfo[§0!]§.OLDXP] = data.oldXp;
            profileInfo[§0!]§.NEWXP] = data.newXp;
            profileInfo[§0!]§.MINXP] = data.minXp;
            profileInfo[§0!]§.MAXXP] = data.maxXp;
            profileInfo[§0!]§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§0!]§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§0!]§.§;"?§] = data.maxOldBlocks;
            profileInfo[§0!]§.§&"#§] = data.maxNewBlocks;
            profileInfo[§0!]§.§<!o§] = data.newItems;
            profileInfo[§0!]§.§"r§] = bolts;
            profileInfo[§0!]§.§2!§] = data.oldCoins;
            profileInfo[§0!]§.§&z§] = data.newCoins;
            if(data.oldXpLevel != data.newXpLevel)
            {
               profileInfo[§0!]§.§"r§] = data.newBolts["currentBolts"] - data.oldBolts["currentBolts"];
            }
            if(data.items)
            {
               profileInfo[§0!]§.§%"8§] = data.items;
            }
            (AngryBirdsFP11.§"!c§ as §0!]§).§&Y§(profileInfo);
         }
         catch(e:Error)
         {
            §]!^§.§5I§(e.message);
            §7L§.log("Error parsing ");
            return;
         }
         dispatchEvent(new §<]§(§<]§.§=!_§));
      }
      
      public function fetchQuests() : void
      {
         if(!this.§7p§)
         {
            this.§7p§ = true;
            §3!d§["doJsCall"]("fetchQuests");
         }
         else
         {
            §7L§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
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
            §7L§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§7p§ = false;
            (AngryBirdsFP11.§"!c§ as §0!]§).sandboxAvailable = isSandboxOpen;
            this.§"""§ = new Vector.<Object>();
            fetchedQuests = JSON.parse(questListJSON);
            if(completedQuestsJSON && completedQuestsJSON.length > 0)
            {
               completedQuests = JSON.parse(completedQuestsJSON);
               for each(questObject in completedQuests)
               {
                  (AngryBirdsFP11.§"!c§ as §0!]§).§8"9§(questObject);
               }
            }
            if(fetchedQuests.error === true)
            {
               §>M§.showError(fetchedQuests.reason);
               return;
            }
            i = 0;
            §7L§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               this.§"""§.push(fetchedQuests[key]);
               §7L§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§;a§ && this.§;a§.id == §6!t§)
            {
               §7L§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§0l§(this.§9!R§());
            }
            dispatchEvent(new §<]§(§<]§.§`"0§));
         }
         catch(e:Error)
         {
            §]!^§.§5I§(e.message);
         }
      }
      
      public function §]!g§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §0l§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §7L§.log("loadQuest: id = " + param1.id);
         this.§1!X§ = param1;
         if(this.§;a§ != null && this.§;a§.id != §6!t§)
         {
            §7L§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§;a§ = param1;
         if(this.§;a§.id == §6!t§)
         {
            §7L§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§%!I§)
         {
            §7L§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§;a§.id || this.§;a§.id == "" || this.§;a§.id == "sandbox")
         {
            this.§ 8§ = §,"7§;
            §7L§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §<]§(§<]§.§7!X§));
            return;
         }
         §7L§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§;a§.id);
         §7L§.log("loadQuest: Quest list looks like this: " + this.§%!I§);
         if(this.§;!§ == "")
         {
            for each(_loc3_ in this.§%!I§.quest)
            {
               if(_loc3_.@id.toString() == this.§;a§.id)
               {
                  §7L§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§+!v§.addEventListener(Event.COMPLETE,this.§+[§);
         this.§+!v§.load(new URLRequest(this.§;!§ + "external_assets/" + _loc2_));
         §2A§.§6u§ = _loc2_;
         if(param1.name)
         {
            §2A§.§-5§ = param1.name;
         }
         dispatchEvent(new §<]§(§<]§.§+G§));
      }
      
      private function §+[§(param1:Event) : void
      {
         this.§+!v§.removeEventListener(Event.COMPLETE,this.§+[§);
         §7L§.log("onQuestLoadComplete: Quest data loaded");
         this.§ 8§ = new XML(param1.target.data);
         §3!d§["doJsCall"]("startQuest",JSON.stringify(this.§;a§));
         this.§;a§ = null;
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var questData:Object = null;
         var i:int = 0;
         var showError:Boolean = false;
         var questDataJSON:String = param1;
         var levelDataJSON:String = param2;
         if(questDataJSON == null || questDataJSON == "")
         {
            this.§ 8§ = §,"7§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               i = 0;
               while(i < this.§"""§.length)
               {
                  if(this.§"""§[i].id == questData.id)
                  {
                     this.§"""§[i] = questData;
                     break;
                  }
                  i++;
               }
               this.§7!h§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§#!j§ = levelDataJSON;
               }
               else
               {
                  this.§#!j§ = null;
               }
               if(questData.error === true)
               {
                  §>M§.showError(questData.reason);
                  return;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§@=§.§1D§ && §7!h§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  §]!^§.§5I§(e.message);
                  return;
               }
               §7L§.log(e.message);
               §7L§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §<]§(§<]§.§7!X§));
         this.§;a§ = null;
      }
      
      public function §0!2§(param1:XML) : void
      {
         dispatchEvent(new §<]§(§<]§.§+G§));
         this.§ 8§ = param1;
         dispatchEvent(new §<]§(§<]§.§7!X§));
      }
      
      public function get questData() : XML
      {
         return this.§ 8§;
      }
      
      public function get §>!r§() : String
      {
         return this.§#!j§;
      }
      
      public function §'!S§() : Vector.<Object>
      {
         return this.§"""§;
      }
      
      public function get §=!1§() : String
      {
         return this.§7!h§;
      }
   }
}
