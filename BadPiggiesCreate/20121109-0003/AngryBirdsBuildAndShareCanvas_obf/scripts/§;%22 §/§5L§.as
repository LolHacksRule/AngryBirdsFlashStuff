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
      
      private static var §<"!§:Class;
      
      private static const §]!b§:String = "NextQuest";
      
      private static const §3"&§:XML = null;
      
      private static var §#!V§:§5L§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §<"!§ = §?s§;
            while(true)
            {
               §]!b§ = "NextQuest";
               while(!(_loc2_ && _loc1_))
               {
                  §3"&§ = null;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function get §[E§() : §5L§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§#!V§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr56:
                     §#!V§ = new §5L§();
                  }
               }
               return §#!V§;
            }
         }
         §§goto(addr56);
      }
      
      public function init(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push("");
               if(!(_loc4_ && param1))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §<"!§ = §!H§;
                        if(_loc3_ || _loc3_)
                        {
                           addr52:
                           this.§?" § = param1;
                           if(_loc3_)
                           {
                              §<"!§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr86:
                                 §<"!§["registerMethod"]("onQuestStarted",this.onQuestStarted);
                                 if(_loc3_)
                                 {
                                    addr100:
                                    §<"!§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
                                    if(!_loc4_)
                                    {
                                       this.§5$§ = new URLLoader();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(this.§?" §);
                                          addr139:
                                          while(true)
                                          {
                                             §§push("");
                                             addr140:
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§,[§();
                                                      break;
                                                   }
                                                   break;
                                                }
                                                this.§`P§ = new XML();
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       addr160:
                                       addr114:
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr52);
               }
               §§goto(addr140);
            }
            §§goto(addr139);
         }
         §§goto(addr114);
      }
      
      private function §,[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5$§.addEventListener(Event.COMPLETE,this.§%"=§);
         }
         do
         {
            this.§5$§.load(new URLRequest(this.§?" § + "external_assets/quest_list.xml"));
         }
         while(!_loc1_);
         
      }
      
      private function §%"=§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §,"0§.log("onListLoadComplete: Quest list loaded.");
            loop0:
            while(true)
            {
               this.§5$§.removeEventListener(Event.COMPLETE,this.§%"=§);
               loop1:
               while(true)
               {
                  this.§`P§ = new XML(param1.target.data);
                  while(this.§4n§)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  addr24:
                  return;
               }
            }
         }
         while(true)
         {
            this.each(this.§4n§);
            §§goto(addr57);
         }
      }
      
      public function § q§() : Object
      {
         return this.§]!V§;
      }
      
      public function §#!b§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§;q§ == null)
            {
               §,"0§.log("getNextQuestID: Next quest id not yet known.");
            }
            else
            {
               if(this.§?" § != "")
               {
                  return this.§;q§[0];
               }
               if(_loc2_)
               {
                  _loc1_ = (AngryBirdsFP11.§>!7§ as §+`§).completedQuests.length;
               }
               if(!_loc3_)
               {
                  return this.§;q§[_loc1_];
               }
            }
         }
         return {"id":§]!b§};
      }
      
      public function §2!q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:String = JSON.stringify(§#!j§.§[E§.§0"!§.§9!h§());
         if(_loc4_)
         {
            if(this.§ q§() == null)
            {
               if(_loc4_)
               {
                  §?s§.doJsCall("saveSandbox",_loc1_);
                  if(_loc4_ || this)
                  {
                  }
               }
            }
            else
            {
               §?s§.doJsCall("save",JSON.stringify(this.§ q§()),_loc1_);
            }
         }
         var _loc2_:FileReference = new FileReference();
         if(_loc4_ || _loc1_)
         {
            _loc2_.save(_loc1_.toString(),"quest.xml");
         }
      }
      
      public function publishSandbox(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§""6§ = true;
            if(_loc3_ || param1)
            {
               §<"!§["doJsCall"]("publishSandbox",JSON.stringify(this.§ q§()),JSON.stringify(param1));
               addr38:
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function completeQuest(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!this.§""6§)
            {
               if(_loc4_)
               {
                  this.§""6§ = true;
                  if(!_loc3_)
                  {
                     §<"!§["doJsCall"]("completeQuest",JSON.stringify(this.§ q§()),JSON.stringify(param1));
                     if(_loc3_ && this)
                     {
                     }
                     addr69:
                     return;
                     addr99:
                  }
                  §,"0§.log("Waiting for onQuestCompleted");
                  §§goto(addr99);
               }
               else
               {
                  addr95:
               }
               §§goto(addr69);
            }
            else
            {
               §,"0§.log("Completed quest but we were already fetching quests. How did this happen?");
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr95);
               }
               else
               {
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr69);
      }
      
      private function onQuestCompleted(param1:String, param2:String, param3:String = "", param4:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function fetchQuests() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§""6§)
            {
               if(_loc3_)
               {
                  this.§""6§ = true;
                  if(_loc3_ || _loc2_)
                  {
                     §<"!§["doJsCall"]("fetchQuests");
                     addr44:
                     if(_loc2_)
                     {
                     }
                     §§goto(addr70);
                  }
               }
            }
            else
            {
               §,"0§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
            }
            addr70:
            return;
         }
         §§goto(addr44);
      }
      
      private function onQuestsFetched(param1:String, param2:String = "", param3:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr153:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     loop9:
                     while(_loc8_ || param3)
                     {
                        §§push(null);
                        loop10:
                        for(; !(_loc7_ && param2); loop12:
                        while(true)
                        {
                           §§push(null);
                           if(_loc7_ && param3)
                           {
                              break;
                           }
                           §§pop().§§slot[8] = §§pop();
                           loop13:
                           while(_loc8_)
                           {
                              §§push(§§newactivation());
                              loop14:
                              for(; _loc8_; while(true)
                              {
                                 if(!(_loc8_ || this))
                                 {
                                    continue loop14;
                                 }
                                 §§push(param2);
                                 if(!_loc7_)
                                 {
                                    addr65:
                                    if(_loc7_ && param1)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[2] = §§pop();
                                    continue loop13;
                                 }
                                 §§goto(addr86);
                              },while(true)
                              {
                                 §§pop().§§slot[6] = §§pop();
                                 §§goto(addr148);
                                 §§goto(addr65);
                              })
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop14;
                                             §§goto(addr49);
                                          }
                                          continue;
                                       }
                                       addr148:
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop12;
                              while(true)
                              {
                                 if(!(_loc8_ || this))
                                 {
                                    continue loop13;
                                 }
                                 §§push(§§newactivation());
                                 if(!(_loc7_ && param1))
                                 {
                                    continue loop9;
                                 }
                                 §§goto(addr55);
                                 §§goto(addr40);
                              }
                              continue loop0;
                           }
                           §§goto(addr126);
                        })
                        {
                           §§pop().§§slot[7] = §§pop();
                           while(!_loc7_)
                           {
                              §§push(§§newactivation());
                              continue loop10;
                           }
                           §§goto(addr153);
                        }
                        while(_loc8_ || param1)
                        {
                           §§goto(addr147);
                           §§push(§§pop());
                           §§goto(addr117);
                        }
                        addr117:
                        continue loop1;
                        if(_loc8_ || param3)
                        {
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           addr40:
                           §§pop().§§slot[3] = param3;
                           if(_loc7_ && param3)
                           {
                              continue loop19;
                           }
                           addr49:
                           if(_loc7_)
                           {
                              break loop17;
                           }
                        }
                        continue;
                        if(true)
                        {
                           try
                           {
                              §,"0§.log("onQUestsFetched: Quests fetched: " + questListJSON);
                              if(_loc8_ || param3)
                              {
                                 this.§""6§ = false;
                                 if(_loc8_)
                                 {
                                    (AngryBirdsFP11.§>!7§ as §+`§).sandboxAvailable = isSandboxOpen;
                                    this.§;q§ = new Vector.<Object>();
                                    addr283:
                                    if(_loc8_)
                                    {
                                       addr249:
                                       var fetchedQuests:Object = JSON.parse(questListJSON);
                                       if(_loc8_)
                                       {
                                          if(_loc8_ || this)
                                          {
                                             addr214:
                                             §§push(§§newactivation());
                                             if(!(_loc7_ && param2))
                                             {
                                                addr224:
                                                §§push(Boolean(§§pop().§§slot[2]));
                                                if(!(_loc7_ && param3))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§pop();
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(§§pop().§§slot[2]);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop().length > 0);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr197:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop().§§slot[7] = JSON.parse(completedQuestsJSON);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr214);
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                var _loc6_:* = §§pop().§§slot[7];
                                                                                                if(_loc7_ && param2)
                                                                                                {
                                                                                                }
                                                                                                addr346:
                                                                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      var questObject:Object = §§nextvalue(_loc5_,_loc6_);
                                                                                                      if(_loc8_ || param1)
                                                                                                      {
                                                                                                         (AngryBirdsFP11.§>!7§ as §+`§).§7"8§(questObject);
                                                                                                      }
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         addr365:
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr410:
                                                                                                            if(fetchedQuests.error !== true)
                                                                                                            {
                                                                                                               addr380:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc8_ || param2)
                                                                                                               {
                                                                                                                  addr389:
                                                                                                                  §§pop().§§slot[5] = 0;
                                                                                                                  if(_loc8_ || param1)
                                                                                                                  {
                                                                                                                     §,"0§.log("Parsed quest (should be object): " + fetchedQuests);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr378:
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr380);
                                                                                                                        }
                                                                                                                        _loc5_ = 0;
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr434:
                                                                                                                           _loc6_ = fetchedQuests;
                                                                                                                           addr433:
                                                                                                                           if(_loc8_ || param3)
                                                                                                                           {
                                                                                                                              addr496:
                                                                                                                              for(key in _loc6_)
                                                                                                                              {
                                                                                                                                 addr475:
                                                                                                                                 this.§;q§.push(fetchedQuests[key]);
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§,"0§);
                                                                                                                                    §§push(i.toString() + ": ");
                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + fetchedQuests[key]);
                                                                                                                                    }
                                                                                                                                    §§pop().log(§§pop());
                                                                                                                                    if(!(_loc7_ && param1))
                                                                                                                                    {
                                                                                                                                       addr473:
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr475);
                                                                                                                                       }
                                                                                                                                       §§goto(addr496);
                                                                                                                                    }
                                                                                                                                    §§goto(addr475);
                                                                                                                                 }
                                                                                                                                 addr495:
                                                                                                                                 §§goto(addr495);
                                                                                                                              }
                                                                                                                              addr499:
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr565:
                                                                                                                                 §§push(Boolean(this.§4n§));
                                                                                                                                 if(Boolean(this.§4n§))
                                                                                                                                 {
                                                                                                                                    addr567:
                                                                                                                                    §§pop();
                                                                                                                                    §§push(this.§4n§.id == §]!b§);
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ && param3)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr565);
                                                                                                                                    }
                                                                                                                                    §§goto(addr567);
                                                                                                                                    addr568:
                                                                                                                                 }
                                                                                                                                 addr557:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr558:
                                                                                                                                    §,"0§.log("onQuestsFetched: Now we know the next quest ID, let\'s load it.");
                                                                                                                                    addr530:
                                                                                                                                    this.each(this.§#!b§());
                                                                                                                                    addr561:
                                                                                                                                 }
                                                                                                                                 dispatchEvent(new §[!&§(§[!&§.§>""§));
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || param3)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr528);
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr561);
                                                                                                                                 }
                                                                                                                                 §§goto(addr530);
                                                                                                                                 addr502:
                                                                                                                              }
                                                                                                                              §§goto(addr558);
                                                                                                                              addr498:
                                                                                                                           }
                                                                                                                           §§goto(addr473);
                                                                                                                        }
                                                                                                                        §§goto(addr499);
                                                                                                                     }
                                                                                                                     §§goto(addr567);
                                                                                                                  }
                                                                                                                  §§goto(addr558);
                                                                                                               }
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §@"?§.showError(fetchedQuests.reason);
                                                                                                               if(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr558);
                                                                                                         }
                                                                                                         §§goto(addr378);
                                                                                                      }
                                                                                                      §§goto(addr433);
                                                                                                   }
                                                                                                   §§goto(addr498);
                                                                                                }
                                                                                                §§goto(addr496);
                                                                                             }
                                                                                             §§goto(addr434);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                                 §§goto(addr410);
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           §§goto(addr410);
                                                                        }
                                                                        §§goto(addr567);
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr528);
                                                         }
                                                         §§goto(addr557);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                }
                                                §§goto(addr565);
                                             }
                                             §§goto(addr389);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr528);
                                    }
                                 }
                                 §§goto(addr558);
                              }
                              §§goto(addr502);
                           }
                           catch(e:Error)
                           {
                              §]!]§.§-!H§(e.message);
                           }
                           addr528:
                        }
                        continue loop17;
                        if(false)
                        {
                           §§goto(addr530);
                        }
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function §,!;§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.onQuestsFetched(param1);
         }
      }
      
      public function each(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:XML = null;
         if(!(_loc7_ && this))
         {
            §,"0§.log("loadQuest: id = " + param1.id);
            loop0:
            while(true)
            {
               this.§]!V§ = param1;
               while(true)
               {
                  §§push(this.§4n§ == null);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr312:
                                 while(true)
                                 {
                                    §§push(this.§4n§.id == §]!b§);
                                    addr294:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr295:
                                       while(!_loc7_)
                                       {
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              addr311:
                           }
                           loop9:
                           while(!§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 this.§4n§ = param1;
                                 loop11:
                                 while(true)
                                 {
                                    if(this.§4n§.id == §]!b§)
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop10;
                                          }
                                          §,"0§.log("loadQuest: Tried to load unknown next quest.");
                                          this.fetchQuests();
                                          return;
                                          addr279:
                                          addr255:
                                       }
                                    }
                                    else
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(this.§`P§)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(!this.§4n§.id);
                                                if(!_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(_loc6_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§pop();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§4n§.id == "");
                                                                     addr169:
                                                                     while(true)
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(this.§4n§.id == "sandbox");
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 addr329:
                                                                                 var _loc4_:int = 0;
                                                                                 var _loc5_:* = this.§`P§.quest;
                                                                                 addr381:
                                                                                 for each(_loc3_ in _loc5_)
                                                                                 {
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       if(_loc3_.@id.toString() != this.§4n§.id)
                                                                                       {
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          addr364:
                                                                                          §,"0§.log("loadQuest: Found quest: " + _loc3_);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             _loc2_ = _loc3_.toString();
                                                                                          }
                                                                                       }
                                                                                       addr383:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr393:
                                                                                          this.§5$§.addEventListener(Event.COMPLETE,this.§7!1§);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             this.§5$§.load(new URLRequest(this.§?" § + "external_assets/" + _loc2_));
                                                                                          }
                                                                                          §?"-§.§>!`§ = _loc2_;
                                                                                          addr451:
                                                                                          addr473:
                                                                                          if(param1.name)
                                                                                          {
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §?"-§.§7"0§ = param1.name;
                                                                                                   addr407:
                                                                                                   dispatchEvent(new §[!&§(§[!&§.§>!0§));
                                                                                                   addr446:
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr451);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   addr446:
                                                                                                   §§goto(addr446);
                                                                                                }
                                                                                                §§goto(addr473);
                                                                                             }
                                                                                             §§goto(addr446);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr407);
                                                                                    }
                                                                                    §§goto(addr364);
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§5B§ = §3"&§;
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §,"0§.log("loadQuest: Sandbox selected.");
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                           if(!(_loc6_ || _loc2_))
                                                                           {
                                                                              return;
                                                                           }
                                                                           if(_loc7_ && param1)
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           continue loop12;
                                                                           addr302:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §,"0§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§4n§.id);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §,"0§.log("loadQuest: Quest list looks like this: " + this.§`P§);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr214:
                                                                                          §,"0§.log("loadQuest: Quest list not yet loaded.");
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(this.§?" § == "")
                                                                                       {
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc2_ = param1.id + ".xml";
                                                                                       }
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr255);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           return;
                                                                        }
                                                                        §§goto(addr329);
                                                                        continue loop22;
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  addr206:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         addr196:
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr196);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr214);
                                       }
                                    }
                                    §§goto(addr329);
                                 }
                              }
                           }
                           §,"0§.log("loadQuest: Tried to load quest while another one was loading");
                           §§goto(addr302);
                        }
                     }
                  }
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  dispatchEvent(new §[!&§(§[!&§.§in§));
                  if(!(_loc7_ && _loc2_))
                  {
                     if(_loc6_)
                     {
                        if(!(_loc6_ || this))
                        {
                           §§goto(addr206);
                        }
                        if(!_loc7_)
                        {
                           return;
                           addr104:
                        }
                        continue loop0;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr329);
               }
            }
         }
         §§goto(addr104);
      }
      
      private function §7!1§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§5$§.removeEventListener(Event.COMPLETE,this.§7!1§);
            if(_loc4_)
            {
               loop0:
               while(true)
               {
                  §,"0§.log("onQuestLoadComplete: Quest data loaded");
                  addr58:
                  while(true)
                  {
                     this.§5B§ = new XML(param1.target.data);
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        if(true)
                        {
                           §<"!§["doJsCall"]("startQuest",JSON.stringify(this.§4n§));
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr98:
                        }
                        continue loop0;
                        return;
                     }
                  }
               }
            }
            this.§4n§ = null;
            §§goto(addr98);
         }
         §§goto(addr58);
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(0);
                  if(!(_loc6_ && param1))
                  {
                     §§pop().§§slot[4] = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§newactivation());
                        loop3:
                        while(true)
                        {
                           §§pop().§§slot[5] = false;
                           addr137:
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(param1);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    addr132:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§pop().§§slot[2] = §§pop();
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                                addr79:
                                             }
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop7;
                                                }
                                                addr399:
                                                §§pop().§§slot[3] = JSON.parse(questDataJSON);
                                                addr314:
                                                if(_loc5_ || this)
                                                {
                                                   §§push(§§newactivation());
                                                   addr179:
                                                }
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().§§slot[4]);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(§§pop() >= this.§;q§.length)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr344:
                                                               this.§6!f§ = questData.token;
                                                               addr350:
                                                               §§push(§§newactivation());
                                                               if(_loc5_ || this)
                                                               {
                                                                  addr310:
                                                                  §§push(Boolean(§§pop().§§slot[2]));
                                                                  if(Boolean(§§pop().§§slot[2]))
                                                                  {
                                                                     addr312:
                                                                     §§pop();
                                                                     addr313:
                                                                     §§push(levelDataJSON);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§push(§§pop().length > 0);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr281:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       this.§[!6§ = levelDataJSON;
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr193:
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(§§pop().§§slot[3].error === true)
                                                                                                {
                                                                                                   §@"?§.showError(questData.reason);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         if(!(_loc5_ || param2))
                                                                                                         {
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      addr241:
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr193);
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                   §§goto(addr551);
                                                                                                }
                                                                                                dispatchEvent(new §[!&§(§[!&§.§in§));
                                                                                                addr533:
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr551);
                                                                                                }
                                                                                                addr551:
                                                                                                this.§4n§ = null;
                                                                                                return;
                                                                                                addr400:
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                          addr298:
                                                                                       }
                                                                                       §§goto(addr551);
                                                                                    }
                                                                                    addr367:
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              this.§[!6§ = null;
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            addr381:
                                                            this.§;q§[i] = questData;
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr344);
                                                            }
                                                         }
                                                         §§goto(addr551);
                                                      }
                                                      if(this.§;q§[i].id == questData.id)
                                                      {
                                                         §§goto(addr381);
                                                      }
                                                      addr355:
                                                      §§push(i);
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                   }
                                                   var i:int = §§pop();
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr355);
                                             }
                                             continue loop3;
                                             addr70:
                                             if(!(_loc5_ || param1))
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr79);
                                             }
                                             §§goto(addr533);
                                          }
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              addr397:
                              §§pop().§§slot[4] = 0;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr399);
                  }
                  §§goto(addr397);
               }
            }
         }
      }
      
      public function §["%§(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            dispatchEvent(new §[!&§(§[!&§.§>!0§));
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§5B§ = param1;
                  if(_loc4_)
                  {
                     if(param1 == null)
                     {
                        if(!_loc3_)
                        {
                           §?"-§.§7"0§ = "Sandbox";
                           if(!(_loc4_ || _loc3_))
                           {
                              return;
                           }
                           if(!_loc3_)
                           {
                              if(true)
                              {
                                 §<"!§["doJsCall"]("startSandbox");
                                 if(_loc4_)
                                 {
                                    addr81:
                                    loop2:
                                    while(true)
                                    {
                                       dispatchEvent(new §[!&§(§[!&§.§in§));
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_ || _loc3_)
                                       {
                                          break;
                                       }
                                       addr113:
                                       addr113:
                                       while(true)
                                       {
                                          §?"-§.§7"0§ = param1.@name;
                                          continue loop2;
                                       }
                                    }
                                    addr76:
                                    addr81:
                                 }
                              }
                              continue;
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr76);
                     }
                     else if(param1.hasOwnProperty("@name"))
                     {
                        §§goto(addr113);
                     }
                     §§goto(addr81);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr113);
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
