package §8" §
{
   import §%_§.§4m§;
   import §'i§.§6-§;
   import §+h§.§^!]§;
   import §=!M§.§9!P§;
   import §@"5§.§1k§;
   import §]!+§.§ 1§;
   import §^!y§.§'"#§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §,!q§ extends EventDispatcher
   {
      
      private static var §extends§:Class = §4m§;
      
      private static const §7!!§:String = "NextQuest";
      
      private static const §%?§:XML = null;
      
      private static var §8!L§:§,!q§;
       
      
      private var §1`§:XML;
      
      private var §-<§:URLLoader;
      
      private var §"l§:XML;
      
      private var §7C§:Object;
      
      private var §?!5§:String;
      
      private var §!!P§:Vector.<Object>;
      
      private var §0!A§:Boolean = false;
      
      private var §7!;§:String;
      
      private var §,8§:Object;
      
      private var §"!B§:String;
      
      public function §,!q§()
      {
         super();
      }
      
      public static function get §2=§() : §,!q§
      {
         if(§8!L§ == null)
         {
            §8!L§ = new §,!q§();
         }
         return §8!L§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §extends§ = §6<§;
         }
         this.§?!5§ = param1;
         §extends§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §extends§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §extends§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§-<§ = new URLLoader();
         if(this.§?!5§ == "")
         {
            this.§2"1§();
         }
         else
         {
            this.§1`§ = new XML();
         }
      }
      
      private function §2"1§() : void
      {
         this.§-<§.addEventListener(Event.COMPLETE,this.§6V§);
         this.§-<§.load(new URLRequest(this.§?!5§ + "external_assets/quest_list.xml"));
      }
      
      private function §6V§(param1:Event) : void
      {
         §9!P§.log("onListLoadComplete: Quest list loaded.");
         this.§-<§.removeEventListener(Event.COMPLETE,this.§6V§);
         this.§1`§ = new XML(param1.target.data);
         if(this.§7C§)
         {
            this.§-E§(this.§7C§);
         }
      }
      
      public function §[!K§() : Object
      {
         return this.§,8§;
      }
      
      public function §>!9§() : Object
      {
         var _loc1_:int = 0;
         if(this.§!!P§ == null)
         {
            §9!P§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§7!!§};
         }
         if(this.§?!5§ == "")
         {
            _loc1_ = (AngryBirdsFP11.§>" § as §'"#§).completedQuests.length;
            return this.§!!P§[_loc1_];
         }
         return this.§!!P§[0];
      }
      
      public function completeQuest(param1:String) : void
      {
         if(!this.§0!A§)
         {
            this.§0!A§ = true;
            §extends§["doJsCall"]("completeQuest",JSON.stringify(this.§[!K§()),param1);
            §9!P§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §9!P§.log("Completed quest but we were already fetching quests. How did this happen?");
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
         this.§7C§ = null;
         try
         {
            §9!P§.log("onQuestComplete: new quests are fetched.");
            (AngryBirdsFP11.§>" § as §'"#§).§^e§(JSON.parse(completedQuestDataJSON));
            this.onQuestsFetched(questListJSON,"",isSandboxOpen);
            data = JSON.parse(levelUpInfo);
            if(data.error === true)
            {
               §6-§.showError(data.reason);
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
            profileInfo[§'"#§.XP] = xp;
            profileInfo[§'"#§.COINS] = coins;
            profileInfo[§'"#§.BLOCKS] = data.maxNewBlocks;
            profileInfo[§'"#§.BOLTS] = bolts;
            profileInfo[§'"#§.§"2§] = boltsMax;
            profileInfo[§'"#§.ISLEVELUP] = data.oldXpLevel != data.newXpLevel;
            profileInfo[§'"#§.OLDXP] = data.oldXp;
            profileInfo[§'"#§.NEWXP] = data.newXp;
            profileInfo[§'"#§.MINXP] = data.minXp;
            profileInfo[§'"#§.MAXXP] = data.maxXp;
            profileInfo[§'"#§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§'"#§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§'"#§.§>m§] = data.maxOldBlocks;
            profileInfo[§'"#§.§<I§] = data.maxNewBlocks;
            profileInfo[§'"#§.§[",§] = data.newItems;
            profileInfo[§'"#§.§?c§] = bolts;
            profileInfo[§'"#§.§0v§] = data.oldCoins;
            profileInfo[§'"#§.§&"7§] = data.newCoins;
            if(data.oldXpLevel != data.newXpLevel)
            {
               profileInfo[§'"#§.§?c§] = data.newBolts["currentBolts"] - data.oldBolts["currentBolts"];
            }
            if(data.items)
            {
               profileInfo[§'"#§.§5!5§] = data.items;
            }
            (AngryBirdsFP11.§>" § as §'"#§).§5u§(profileInfo);
         }
         catch(e:Error)
         {
            §^!]§.§7m§(e.message);
            §9!P§.log("Error parsing ");
            return;
         }
         dispatchEvent(new §1k§(§1k§.§-V§));
      }
      
      public function fetchQuests() : void
      {
         if(!this.§0!A§)
         {
            this.§0!A§ = true;
            §extends§["doJsCall"]("fetchQuests");
         }
         else
         {
            §9!P§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
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
            §9!P§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§0!A§ = false;
            (AngryBirdsFP11.§>" § as §'"#§).sandboxAvailable = isSandboxOpen;
            this.§!!P§ = new Vector.<Object>();
            fetchedQuests = JSON.parse(questListJSON);
            if(completedQuestsJSON && completedQuestsJSON.length > 0)
            {
               completedQuests = JSON.parse(completedQuestsJSON);
               for each(questObject in completedQuests)
               {
                  (AngryBirdsFP11.§>" § as §'"#§).§^e§(questObject);
               }
            }
            if(fetchedQuests.error === true)
            {
               §6-§.showError(fetchedQuests.reason);
               return;
            }
            i = 0;
            §9!P§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               this.§!!P§.push(fetchedQuests[key]);
               §9!P§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§7C§ && this.§7C§.id == §7!!§)
            {
               §9!P§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.§-E§(this.§>!9§());
            }
            dispatchEvent(new §1k§(§1k§.§"!'§));
         }
         catch(e:Error)
         {
            §^!]§.§7m§(e.message);
         }
      }
      
      public function §3!8§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function §-E§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §9!P§.log("loadQuest: id = " + param1.id);
         this.§,8§ = param1;
         if(this.§7C§ != null && this.§7C§.id != §7!!§)
         {
            §9!P§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§7C§ = param1;
         if(this.§7C§.id == §7!!§)
         {
            §9!P§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§1`§)
         {
            §9!P§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§7C§.id || this.§7C§.id == "" || this.§7C§.id == "sandbox")
         {
            this.§"l§ = §%?§;
            §9!P§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §1k§(§1k§.§=!P§));
            return;
         }
         §9!P§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§7C§.id);
         §9!P§.log("loadQuest: Quest list looks like this: " + this.§1`§);
         if(this.§?!5§ == "")
         {
            for each(_loc3_ in this.§1`§.quest)
            {
               if(_loc3_.@id.toString() == this.§7C§.id)
               {
                  §9!P§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§-<§.addEventListener(Event.COMPLETE,this.§?!P§);
         this.§-<§.load(new URLRequest(this.§?!5§ + "external_assets/" + _loc2_));
         § 1§.§?_§ = _loc2_;
         if(param1.name)
         {
            § 1§.§=!-§ = param1.name;
         }
         dispatchEvent(new §1k§(§1k§.§]!]§));
      }
      
      private function §?!P§(param1:Event) : void
      {
         this.§-<§.removeEventListener(Event.COMPLETE,this.§?!P§);
         §9!P§.log("onQuestLoadComplete: Quest data loaded");
         this.§"l§ = new XML(param1.target.data);
         §extends§["doJsCall"]("startQuest",JSON.stringify(this.§7C§));
         this.§7C§ = null;
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
            this.§"l§ = §%?§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               i = 0;
               while(i < this.§!!P§.length)
               {
                  if(this.§!!P§[i].id == questData.id)
                  {
                     this.§!!P§[i] = questData;
                     break;
                  }
                  i++;
               }
               this.§7!;§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§"!B§ = levelDataJSON;
               }
               else
               {
                  this.§"!B§ = null;
               }
               if(questData.error === true)
               {
                  §6-§.showError(questData.reason);
                  return;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§>"§.§>3§ && §7!;§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  §^!]§.§7m§(e.message);
                  return;
               }
               §9!P§.log(e.message);
               §9!P§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §1k§(§1k§.§=!P§));
         this.§7C§ = null;
      }
      
      public function §?j§(param1:XML) : void
      {
         dispatchEvent(new §1k§(§1k§.§]!]§));
         this.§"l§ = param1;
         dispatchEvent(new §1k§(§1k§.§=!P§));
      }
      
      public function get questData() : XML
      {
         return this.§"l§;
      }
      
      public function get §;!6§() : String
      {
         return this.§"!B§;
      }
      
      public function § !f§() : Vector.<Object>
      {
         return this.§!!P§;
      }
      
      public function get §6'§() : String
      {
         return this.§7!;§;
      }
   }
}
