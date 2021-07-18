package §;" §
{
   import §05§.§?s§;
   import §1" §.§#!j§;
   import §1" §.§@"?§;
   import §6]§.§,"0§;
   import §7!@§.§+`§;
   import §?!'§.§]!]§;
   import §]" §.§?"-§;
   import §`!,§.§[!&§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.FileReference;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §5L§ extends EventDispatcher
   {
      
      private static var §<"!§:Class = §?s§;
      
      private static const §]!b§:String = "NextQuest";
      
      private static const §3"&§:XML = null;
      
      private static var §#!V§:§5L§;
       
      
      private var §`P§:XML;
      
      private var §5$§:URLLoader;
      
      private var §5B§:XML;
      
      private var §4n§:Object;
      
      private var §?" §:String;
      
      private var §;q§:Vector.<Object>;
      
      private var §""6§:Boolean = false;
      
      private var §6!f§:String;
      
      private var §]!V§:Object;
      
      private var §[!6§:String;
      
      public function §5L§()
      {
         super();
      }
      
      public static function get §[E§() : §5L§
      {
         if(§#!V§ == null)
         {
            §#!V§ = new §5L§();
         }
         return §#!V§;
      }
      
      public function init(param1:String) : void
      {
         if(param1 == "")
         {
            §<"!§ = §!H§;
         }
         this.§?" § = param1;
         §<"!§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
         §<"!§["registerMethod"]("onQuestStarted",this.onQuestStarted);
         §<"!§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
         this.§5$§ = new URLLoader();
         if(this.§?" § == "")
         {
            this.§,[§();
         }
         else
         {
            this.§`P§ = new XML();
         }
      }
      
      private function §,[§() : void
      {
         this.§5$§.addEventListener(Event.COMPLETE,this.§%"=§);
         this.§5$§.load(new URLRequest(this.§?" § + "external_assets/quest_list.xml"));
      }
      
      private function §%"=§(param1:Event) : void
      {
         §,"0§.log("onListLoadComplete: Quest list loaded.");
         this.§5$§.removeEventListener(Event.COMPLETE,this.§%"=§);
         this.§`P§ = new XML(param1.target.data);
         if(this.§4n§)
         {
            this.each(this.§4n§);
         }
      }
      
      public function § q§() : Object
      {
         return this.§]!V§;
      }
      
      public function §#!b§() : Object
      {
         var _loc1_:int = 0;
         if(this.§;q§ == null)
         {
            §,"0§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§]!b§};
         }
         if(this.§?" § == "")
         {
            _loc1_ = (AngryBirdsFP11.§>!7§ as §+`§).completedQuests.length;
            return this.§;q§[_loc1_];
         }
         return this.§;q§[0];
      }
      
      public function §2!q§() : void
      {
         var _loc1_:String = JSON.stringify(§#!j§.§[E§.§0"!§.§9!h§());
         if(this.§ q§() == null)
         {
            §?s§.doJsCall("saveSandbox",_loc1_);
         }
         else
         {
            §?s§.doJsCall("save",JSON.stringify(this.§ q§()),_loc1_);
         }
         var _loc2_:FileReference = new FileReference();
         _loc2_.save(_loc1_.toString(),"quest.xml");
      }
      
      public function publishSandbox(param1:Object) : void
      {
         this.§""6§ = true;
         §<"!§["doJsCall"]("publishSandbox",JSON.stringify(this.§ q§()),JSON.stringify(param1));
      }
      
      public function completeQuest(param1:Object) : void
      {
         if(!this.§""6§)
         {
            this.§""6§ = true;
            §<"!§["doJsCall"]("completeQuest",JSON.stringify(this.§ q§()),JSON.stringify(param1));
            §,"0§.log("Waiting for onQuestCompleted");
         }
         else
         {
            §,"0§.log("Completed quest but we were already fetching quests. How did this happen?");
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
         this.§4n§ = null;
         try
         {
            §,"0§.log("onQuestComplete: new quests are fetched.");
            (AngryBirdsFP11.§>!7§ as §+`§).§7"8§(JSON.parse(completedQuestDataJSON));
            this.onQuestsFetched(questListJSON,"",isSandboxOpen);
            data = JSON.parse(levelUpInfo);
            if(data.error === true)
            {
               §@"?§.showError(data.reason);
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
            profileInfo[§+`§.XP] = xp;
            profileInfo[§+`§.COINS] = coins;
            profileInfo[§+`§.BLOCKS] = data.maxNewBlocks;
            profileInfo[§+`§.BOLTS] = bolts;
            profileInfo[§+`§.§2!$§] = boltsMax;
            profileInfo[§+`§.ISLEVELUP] = data.oldXpLevel != data.newXpLevel;
            profileInfo[§+`§.OLDXP] = data.oldXp;
            profileInfo[§+`§.NEWXP] = data.newXp;
            profileInfo[§+`§.MINXP] = data.minXp;
            profileInfo[§+`§.MAXXP] = data.maxXp;
            profileInfo[§+`§.OLDXPLEVEL] = data.oldXpLevel;
            profileInfo[§+`§.NEWXPLEVEL] = data.newXpLevel;
            profileInfo[§+`§.§'b§] = data.maxOldBlocks;
            profileInfo[§+`§.§3!r§] = data.maxNewBlocks;
            profileInfo[§+`§.§-!l§] = data.newItems;
            profileInfo[§+`§.§^!p§] = bolts;
            profileInfo[§+`§.§]!P§] = data.oldCoins;
            profileInfo[§+`§.§4!=§] = data.newCoins;
            if(data.oldXpLevel != data.newXpLevel)
            {
               profileInfo[§+`§.§^!p§] = data.newBolts["currentBolts"] - data.oldBolts["currentBolts"];
            }
            if(data.items)
            {
               profileInfo[§+`§.§2!k§] = data.items;
            }
            (AngryBirdsFP11.§>!7§ as §+`§).§#H§(profileInfo);
         }
         catch(e:Error)
         {
            §]!]§.§-!H§(e.message);
            §,"0§.log("Error parsing ");
            return;
         }
         dispatchEvent(new §[!&§(§[!&§.§#"5§));
      }
      
      public function fetchQuests() : void
      {
         if(!this.§""6§)
         {
            this.§""6§ = true;
            §<"!§["doJsCall"]("fetchQuests");
         }
         else
         {
            §,"0§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
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
            §,"0§.log("onQUestsFetched: Quests fetched: " + questListJSON);
            this.§""6§ = false;
            (AngryBirdsFP11.§>!7§ as §+`§).sandboxAvailable = isSandboxOpen;
            this.§;q§ = new Vector.<Object>();
            fetchedQuests = JSON.parse(questListJSON);
            if(completedQuestsJSON && completedQuestsJSON.length > 0)
            {
               completedQuests = JSON.parse(completedQuestsJSON);
               for each(questObject in completedQuests)
               {
                  (AngryBirdsFP11.§>!7§ as §+`§).§7"8§(questObject);
               }
            }
            if(fetchedQuests.error === true)
            {
               §@"?§.showError(fetchedQuests.reason);
               return;
            }
            i = 0;
            §,"0§.log("Parsed quest (should be object): " + fetchedQuests);
            for(key in fetchedQuests)
            {
               this.§;q§.push(fetchedQuests[key]);
               §,"0§.log(i.toString() + ": " + fetchedQuests[key]);
            }
            if(this.§4n§ && this.§4n§.id == §]!b§)
            {
               §,"0§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
               this.each(this.§#!b§());
            }
            dispatchEvent(new §[!&§(§[!&§.§>""§));
         }
         catch(e:Error)
         {
            §]!]§.§-!H§(e.message);
         }
      }
      
      public function §,!;§(param1:String) : void
      {
         this.onQuestsFetched(param1);
      }
      
      public function each(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:XML = null;
         §,"0§.log("loadQuest: id = " + param1.id);
         this.§]!V§ = param1;
         if(this.§4n§ != null && this.§4n§.id != §]!b§)
         {
            §,"0§.log("loadQuest: Tried to load quest while another one was loading");
            return;
         }
         this.§4n§ = param1;
         if(this.§4n§.id == §]!b§)
         {
            §,"0§.log("loadQuest: Tried to load unknown next quest.");
            this.fetchQuests();
            return;
         }
         if(!this.§`P§)
         {
            §,"0§.log("loadQuest: Quest list not yet loaded.");
            return;
         }
         if(!this.§4n§.id || this.§4n§.id == "" || this.§4n§.id == "sandbox")
         {
            this.§5B§ = §3"&§;
            §,"0§.log("loadQuest: Sandbox selected.");
            dispatchEvent(new §[!&§(§[!&§.§in§));
            return;
         }
         §,"0§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§4n§.id);
         §,"0§.log("loadQuest: Quest list looks like this: " + this.§`P§);
         if(this.§?" § == "")
         {
            for each(_loc3_ in this.§`P§.quest)
            {
               if(_loc3_.@id.toString() == this.§4n§.id)
               {
                  §,"0§.log("loadQuest: Found quest: " + _loc3_);
                  _loc2_ = _loc3_.toString();
                  break;
               }
            }
         }
         else
         {
            _loc2_ = param1.id + ".xml";
         }
         this.§5$§.addEventListener(Event.COMPLETE,this.§7!1§);
         this.§5$§.load(new URLRequest(this.§?" § + "external_assets/" + _loc2_));
         §?"-§.§>!`§ = _loc2_;
         if(param1.name)
         {
            §?"-§.§7"0§ = param1.name;
         }
         dispatchEvent(new §[!&§(§[!&§.§>!0§));
      }
      
      private function §7!1§(param1:Event) : void
      {
         this.§5$§.removeEventListener(Event.COMPLETE,this.§7!1§);
         §,"0§.log("onQuestLoadComplete: Quest data loaded");
         this.§5B§ = new XML(param1.target.data);
         §<"!§["doJsCall"]("startQuest",JSON.stringify(this.§4n§));
         this.§4n§ = null;
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
            this.§5B§ = §3"&§;
         }
         else
         {
            try
            {
               questData = JSON.parse(questDataJSON);
               i = 0;
               while(i < this.§;q§.length)
               {
                  if(this.§;q§[i].id == questData.id)
                  {
                     this.§;q§[i] = questData;
                     break;
                  }
                  i++;
               }
               this.§6!f§ = questData.token;
               if(levelDataJSON && levelDataJSON.length > 0)
               {
                  this.§[!6§ = levelDataJSON;
               }
               else
               {
                  this.§[!6§ = null;
               }
               if(questData.error === true)
               {
                  §@"?§.showError(questData.reason);
                  return;
               }
            }
            catch(e:Error)
            {
               showError = true;
               if(§[!^§.§^q§ && §6!f§ == "DummyToken")
               {
                  showError = false;
               }
               if(showError)
               {
                  §]!]§.§-!H§(e.message);
                  return;
               }
               §,"0§.log(e.message);
               §,"0§.log("onQuestStarted: Error with the received token.");
            }
         }
         dispatchEvent(new §[!&§(§[!&§.§in§));
         this.§4n§ = null;
      }
      
      public function §["%§(param1:XML) : void
      {
         dispatchEvent(new §[!&§(§[!&§.§>!0§));
         this.§5B§ = param1;
         if(param1 == null)
         {
            §?"-§.§7"0§ = "Sandbox";
            §<"!§["doJsCall"]("startSandbox");
         }
         else if(param1.hasOwnProperty("@name"))
         {
            §?"-§.§7"0§ = param1.@name;
         }
         dispatchEvent(new §[!&§(§[!&§.§in§));
      }
      
      public function get questData() : XML
      {
         return this.§5B§;
      }
      
      public function get §,?§() : String
      {
         return this.§[!6§;
      }
      
      public function §9"'§() : Vector.<Object>
      {
         return this.§;q§;
      }
      
      public function get §]e§() : String
      {
         return this.§6!f§;
      }
   }
}
