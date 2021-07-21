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
      
      private static var §extends§:Class;
      
      private static const §7!!§:String = "NextQuest";
      
      private static const §%?§:XML = null;
      
      private static var §8!L§:§,!q§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §extends§ = §4m§;
            while(true)
            {
               §7!!§ = "NextQuest";
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §%?§ = null;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §2=§() : §,!q§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§8!L§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr50:
                     §8!L§ = new §,!q§();
                  }
               }
               return §8!L§;
            }
         }
         §§goto(addr50);
      }
      
      public function init(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push("");
               if(_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §extends§ = §6<§;
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr52);
                        }
                        §§goto(addr91);
                     }
                  }
                  addr52:
                  this.§?!5§ = param1;
                  if(_loc3_ || param1)
                  {
                     addr62:
                     §extends§["registerMethod"]("onQuestsFetched",this.onQuestsFetched);
                     if(_loc3_ || _loc3_)
                     {
                        addr91:
                        §extends§["registerMethod"]("onQuestStarted",this.onQuestStarted);
                        if(_loc3_ || _loc3_)
                        {
                           §extends§["registerMethod"]("onQuestCompleted",this.onQuestCompleted);
                           if(!_loc4_)
                           {
                              this.§-<§ = new URLLoader();
                           }
                           loop0:
                           while(true)
                           {
                              §§push(this.§?!5§);
                              addr149:
                              while(true)
                              {
                                 §§push("");
                                 addr150:
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr168:
                                          this.§2"1§();
                                          break;
                                       }
                                       break;
                                    }
                                    this.§1`§ = new XML();
                                    if(!(_loc3_ || this))
                                    {
                                       break;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr125);
                              }
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr168);
                  }
                  addr125:
                  return;
               }
               §§goto(addr150);
            }
            §§goto(addr149);
         }
         §§goto(addr62);
      }
      
      private function §2"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§-<§.addEventListener(Event.COMPLETE,this.§6V§);
            do
            {
               this.§-<§.load(new URLRequest(this.§?!5§ + "external_assets/quest_list.xml"));
            }
            while(!_loc2_);
            
         }
      }
      
      private function §6V§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §9!P§.log("onListLoadComplete: Quest list loaded.");
         }
         while(true)
         {
            this.§-<§.removeEventListener(Event.COMPLETE,this.§6V§);
            loop1:
            while(_loc2_)
            {
               this.§1`§ = new XML(param1.target.data);
               while(this.§7C§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     this.§-E§(this.§7C§);
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      public function §[!K§() : Object
      {
         return this.§,8§;
      }
      
      public function §>!9§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_ || _loc3_)
         {
            if(this.§!!P§ != null)
            {
               loop0:
               for(; this.§?!5§ == ""; while(true)
               {
                  continue loop0;
               })
               {
                  _loc1_ = (AngryBirdsFP11.§>" § as §'"#§).completedQuests.length;
                  if(_loc2_)
                  {
                     return this.§!!P§[_loc1_];
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               return this.§!!P§[0];
            }
            §9!P§.log("getNextQuestID: Next quest id not yet known.");
            return {"id":§7!!§};
         }
         §§goto(addr90);
      }
      
      public function completeQuest(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§0!A§)
            {
               §9!P§.log("Completed quest but we were already fetching quests. How did this happen?");
               if(!_loc4_)
               {
                  §§goto(addr82);
               }
               else
               {
                  §§goto(addr86);
               }
               return;
            }
            if(!(_loc4_ && _loc3_))
            {
               addr28:
               this.§0!A§ = true;
               if(!_loc4_)
               {
                  §extends§["doJsCall"]("completeQuest",JSON.stringify(this.§[!K§()),param1);
                  if(!_loc4_)
                  {
                     §9!P§.log("Waiting for onQuestCompleted");
                     addr60:
                     addr86:
                  }
                  else
                  {
                     addr82:
                  }
                  §§goto(addr61);
               }
               §§goto(addr82);
            }
            §§goto(addr60);
            §§goto(addr60);
         }
         §§goto(addr28);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!this.§0!A§)
            {
               if(_loc2_)
               {
                  this.§0!A§ = true;
                  if(_loc2_ || _loc3_)
                  {
                     §extends§["doJsCall"]("fetchQuests");
                     if(!_loc2_)
                     {
                     }
                  }
               }
            }
            else
            {
               §9!P§.log("fetchQuests: Tried to fetch quests while fetching is in progress.");
            }
         }
      }
      
      private function onQuestsFetched(param1:String, param2:String = "", param3:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr152:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                     }
                  }
               }
            }
            if(!(_loc7_ || param2))
            {
               continue;
            }
            §§goto(addr39);
         }
      }
      
      public function §3!8§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.onQuestsFetched(param1);
         }
      }
      
      public function §-E§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            §9!P§.log("loadQuest: id = " + param1.id);
            loop0:
            while(true)
            {
               this.§,8§ = param1;
               loop1:
               while(true)
               {
                  §§push(this.§7C§ == null);
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
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(!_loc6_)
                                 {
                                    §§push(this.§7C§.id == §7!!§);
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr157:
                                       if(!(_loc6_ && this))
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §9!P§.log("loadQuest: Everything seems to be fine. Look for quest with id " + this.§7C§.id);
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §9!P§.log("loadQuest: Quest list looks like this: " + this.§1`§);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(this.§?!5§ == "")
                                                                        {
                                                                           addr345:
                                                                           var _loc4_:int = 0;
                                                                           var _loc5_:* = this.§1`§.quest;
                                                                           addr387:
                                                                           for each(_loc3_ in _loc5_)
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc3_.@id.toString() != this.§7C§.id)
                                                                                 {
                                                                                    §§goto(addr387);
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §9!P§.log("loadQuest: Found quest: " + _loc3_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr382:
                                                                                       _loc2_ = _loc3_.toString();
                                                                                    }
                                                                                 }
                                                                                 addr389:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr399:
                                                                                    this.§-<§.addEventListener(Event.COMPLETE,this.§?!P§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       this.§-<§.load(new URLRequest(this.§?!5§ + "external_assets/" + _loc2_));
                                                                                       § 1§.§?_§ = _loc2_;
                                                                                       addr450:
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(param1.name)
                                                                                          {
                                                                                             addr434:
                                                                                             § 1§.§=!-§ = param1.name;
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                addr413:
                                                                                                dispatchEvent(new §1k§(§1k§.§]!]§));
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr434);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr434);
                                                                                             }
                                                                                             §§goto(addr450);
                                                                                          }
                                                                                          §§goto(addr413);
                                                                                          addr457:
                                                                                       }
                                                                                       addr479:
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr457);
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           §§goto(addr389);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc2_ = param1.id + ".xml";
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     else
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           if(this.§7C§.id == §7!!§)
                                                                           {
                                                                              addr285:
                                                                              §9!P§.log("loadQuest: Tried to load unknown next quest.");
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!this.§1`§)
                                                                                 {
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §9!P§.log("loadQuest: Quest list not yet loaded.");
                                                                                          return;
                                                                                          addr269:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr345);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!this.§7C§.id);
                                                                                       addr208:
                                                                                       addr305:
                                                                                       loop14:
                                                                                       while(_loc7_ || _loc3_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             while(!(_loc6_ && this))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop20:
                                                                                                         while(!_loc6_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(!_loc6_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                               §§push(this.§7C§.id == "sandbox");
                                                                                                               if(_loc6_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  while(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                                  addr185:
                                                                                                               }
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§goto(addr157);
                                                                                                               }
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop1;
                                                                                                   §§goto(addr148);
                                                                                                }
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                §9!P§.log("loadQuest: Tried to load quest while another one was loading");
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr289:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§7C§ = param1;
                                                                                             continue loop11;
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    addr203:
                                                                                 }
                                                                                 addr274:
                                                                              }
                                                                              addr248:
                                                                           }
                                                                           this.fetchQuests();
                                                                           return;
                                                                        }
                                                                        addr293:
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               else
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           dispatchEvent(new §1k§(§1k§.§=!P§));
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr106);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    this.§"l§ = §%?§;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break loop24;
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                    addr176:
                                                                                 }
                                                                              }
                                                                              addr166:
                                                                           }
                                                                           addr316:
                                                                           return;
                                                                        }
                                                                        §§goto(addr203);
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         else
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr345);
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr166);
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr305);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr293);
      }
      
      private function §?!P§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-<§.removeEventListener(Event.COMPLETE,this.§?!P§);
            loop0:
            while(true)
            {
               while(true)
               {
                  §9!P§.log("onQuestLoadComplete: Quest data loaded");
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      private function onQuestStarted(param1:String, param2:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!_loc5_)
                  {
                     §§pop().§§slot[4] = §§pop();
                     if(_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§pop().§§slot[5] = false;
                           loop3:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop4:
                              while(true)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§push(param2);
                                          if(_loc5_ && this)
                                          {
                                             continue;
                                          }
                                          §§pop().§§slot[2] = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             addr72:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_ || this)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().§§slot[1]);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == null);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr89:
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop().§§slot[1]);
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() == "");
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  addr147:
                                                                  §§pop().§§slot[3] = JSON.parse(questDataJSON);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr354:
                                                                     var i:int = 0;
                                                                     addr291:
                                                                     §§push(i);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop() >= this.§!!P§.length)
                                                                           {
                                                                              addr308:
                                                                              this.§7!;§ = questData.token;
                                                                              addr307:
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 addr278:
                                                                                 §§push(Boolean(levelDataJSON));
                                                                                 if(Boolean(levelDataJSON))
                                                                                 {
                                                                                    addr282:
                                                                                    §§pop();
                                                                                    addr283:
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       addr223:
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[2]);
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§push(§§pop().length > 0);
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      addr267:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            this.§"!B§ = levelDataJSON;
                                                                                                         }
                                                                                                         addr171:
                                                                                                         addr275:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(§§pop().§§slot[3].error === true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §6-§.showError(questData.reason);
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr344:
                                                                                                                                    this.§!!P§[i] = questData;
                                                                                                                                    §§goto(addr307);
                                                                                                                                    addr351:
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr283);
                                                                                                                           }
                                                                                                                           addr220:
                                                                                                                           §§goto(addr171);
                                                                                                                        }
                                                                                                                        §§goto(addr507);
                                                                                                                     }
                                                                                                                     §§goto(addr351);
                                                                                                                  }
                                                                                                                  §§goto(addr275);
                                                                                                               }
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§goto(addr278);
                                                                                                         }
                                                                                                         §§goto(addr223);
                                                                                                      }
                                                                                                      this.§"!B§ = null;
                                                                                                      §§goto(addr220);
                                                                                                   }
                                                                                                   §§goto(addr278);
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             §§goto(addr278);
                                                                                          }
                                                                                          addr327:
                                                                                          i = §§pop().§§slot[4] + 1;
                                                                                          addr330:
                                                                                          §§goto(addr291);
                                                                                          addr325:
                                                                                          addr326:
                                                                                       }
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           if(this.§!!P§[i].id == questData.id)
                                                                           {
                                                                              §§goto(addr344);
                                                                           }
                                                                           §§goto(addr325);
                                                                           §§push(§§newactivation());
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr327);
                                                                     addr355:
                                                                     addr160:
                                                                     addr353:
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     this.§"l§ = §%?§;
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr89);
                                                                  }
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            else
                                                            {
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr147);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               addr480:
                                                               var showError:Boolean = true;
                                                               addr479:
                                                               addr481:
                                                               §§push(§>"§.§>3§);
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr440:
                                                                     if(§§pop() && §7!;§ == "DummyToken")
                                                                     {
                                                                        addr441:
                                                                        if(_loc6_)
                                                                        {
                                                                           addr444:
                                                                           §§push(§§newactivation());
                                                                           §§push(false);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop().§§slot[5] = §§pop();
                                                                              addr448:
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 addr398:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[5]);
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   §^!]§.§7m§(this.§§slot[1].message);
                                                                                                   return;
                                                                                                   addr434:
                                                                                                }
                                                                                                §§goto(addr448);
                                                                                             }
                                                                                             addr386:
                                                                                             §9!P§.log(this.§§slot[1].message);
                                                                                             §9!P§.log("onQuestStarted: Error with the received token.");
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr484);
                                                                                                }
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr386);
                                                                                                }
                                                                                                §§goto(addr434);
                                                                                             }
                                                                                             addr392:
                                                                                             §§goto(addr392);
                                                                                          }
                                                                                          §§goto(addr476);
                                                                                       }
                                                                                       §§goto(addr440);
                                                                                    }
                                                                                    §§goto(addr479);
                                                                                 }
                                                                                 §§goto(addr444);
                                                                                 addr455:
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                           §§goto(addr480);
                                                                        }
                                                                        §§goto(addr477);
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            §§goto(addr455);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr291);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr291);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr354);
               }
               addr484:
               dispatchEvent(new §1k§(§1k§.§=!P§));
               if(!(_loc5_ && param1))
               {
                  §§goto(addr507);
               }
               addr507:
               this.§7C§ = null;
               return;
            }
         }
      }
      
      public function §?j§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(new §1k§(§1k§.§]!]§));
            do
            {
               this.§"l§ = param1;
               do
               {
                  dispatchEvent(new §1k§(§1k§.§=!P§));
               }
               while(_loc3_ && _loc2_);
               
            }
            while(!_loc2_);
            
         }
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
