package §,B§
{
   import § "@§.StateLevelEditor;
   import §'!A§.§-!S§;
   import §'i§.§'!;§;
   import §'p§.§="#§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §8" §.§,!q§;
   import §=!M§.§?!1§;
   import §^!y§.§'"#§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateMap extends §5y§
   {
      
      private static const §>!x§:Class;
      
      private static const §2!-§:int = 10;
      
      public static const §'=§:String = "StateMap";
      
      private static var §;a§:XML;
      
      private static var §@!K§:int = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>!x§ = §8!x§;
            while(true)
            {
               §2!-§ = 10;
               while(_loc2_ || StateMap)
               {
                  §'=§ = "StateMap";
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §@!K§ = -1;
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private var §?"6§:§9W§;
      
      private var §!!-§:MapPig;
      
      private var §;A§:Vector.<MapQuestIcon>;
      
      public function StateMap(param1:Boolean = true, param2:String = "StateMap")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§;A§ = new Vector.<MapQuestIcon>();
            do
            {
               super(param1,param2);
            }
            while(_loc3_);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(mNextState.length > 0)
            {
               if(_loc4_)
               {
                  return §5y§.STATE_STATUS_COMPLETED;
               }
            }
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §;a§ = §?!1§.§ !?§(§>!x§);
               addr90:
               if(_loc1_ || _loc2_)
               {
                  this.§?"6§ = new §9W§();
                  do
                  {
                     this.§!!-§ = new MapPig(this.§?"6§);
                     do
                     {
                        this.§!!-§.addEventListener(MouseEvent.CLICK,this.start);
                     }
                     while(!(_loc1_ || _loc1_));
                     
                  }
                  while(!_loc1_);
                  
                  addr97:
                  if(!(_loc1_ || _loc2_))
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§goto(addr90);
                        }
                        addr104:
                        while(true)
                        {
                           §?E§.init(§`7§.§>"?§.Views.View_Map[0]);
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        §?E§ = new §'s§(this);
                        §§goto(addr104);
                     }
                     addr121:
                  }
                  return;
               }
            }
         }
         §§goto(addr121);
      }
      
      override public function activate() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super.activate();
         }
         var _loc1_:Vector.<Object> = (AngryBirdsFP11.§>" § as §'"#§).completedQuests.concat();
         var _loc2_:* = int(_loc1_.length);
         if(_loc7_ || this)
         {
            §§push(§@!K§);
            loop0:
            while(true)
            {
               §§push(0);
               if(_loc7_ || _loc2_)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §@!K§ = _loc2_;
                        addr107:
                        while(true)
                        {
                        }
                        addr56:
                        if(!(_loc7_ || _loc2_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(§2!-§);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() % §§pop());
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc8_)
                                             {
                                                addr109:
                                                break;
                                             }
                                             addr90:
                                             _loc2_ = §§pop();
                                             while(!_loc8_)
                                             {
                                                §@!K§ = Math.min(§@!K§ % §2!-§,_loc2_);
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr56);
                                             }
                                             §§goto(addr107);
                                          }
                                          addr118:
                                          var _loc3_:* = §§pop();
                                          §§push(_loc2_ + 1);
                                          if(_loc7_ || _loc2_)
                                          {
                                             §§push(§§pop() / §2!-§);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                addr148:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc4_:* = §§pop();
                                             if(_loc7_ || this)
                                             {
                                                this.§?"6§.draw(§;a§.map[0],_loc3_,_loc4_);
                                                loop6:
                                                while(true)
                                                {
                                                   §?E§.getItemByName("Map").mClip.addChildAt(this.§?"6§,1);
                                                   while(true)
                                                   {
                                                      this.§=,§();
                                                      while(_loc7_)
                                                      {
                                                         this.§0"?§(0,§@!K§);
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                               addr203:
                                                            }
                                                            this.§0"?§(§@!K§,_loc2_,true);
                                                            while(!_loc8_)
                                                            {
                                                            }
                                                            continue loop6;
                                                            loop14:
                                                            while(!(_loc8_ && this))
                                                            {
                                                               §@!K§ = _loc2_;
                                                               if(_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr164:
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     §§push((AngryBirdsFP11.§>" § as §'"#§).sandboxAvailable);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     var _loc5_:* = §§pop();
                                                                     var _loc6_:§="#§;
                                                                     (_loc6_ = §?E§.getItemByName("Button_Sandbox") as §="#§).setEnabled(_loc5_);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        _loc6_.mClip.alpha = !!_loc5_ ? Number(1) : Number(0.5);
                                                                     }
                                                                     return;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §?E§.getItemByName("Map").mClip.addChild(this.§!!-§);
                                                                     continue loop14;
                                                                     §§goto(addr164);
                                                                  }
                                                                  while(!_loc8_)
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                                  §§goto(addr203);
                                                                  addr194:
                                                                  addr173:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr194);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§!!-§.§3!A§(_loc4_);
                                                §§goto(addr194);
                                             }
                                          }
                                          §§goto(addr148);
                                       }
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr90);
                              }
                              addr110:
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop() / §2!-§);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr118);
                              addr65:
                           }
                           else
                           {
                              §§push(§@!K§);
                           }
                           §§goto(addr109);
                        }
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr63);
      }
      
      private function §=,§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:MapQuestIcon = null;
         var _loc3_:* = this.§;A§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
         if(!(_loc5_ && _loc1_))
         {
            this.§;A§ = new Vector.<MapQuestIcon>();
         }
      }
      
      private function §0"?§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:* = NaN;
         var _loc8_:§="9§ = null;
         var _loc9_:MapQuestIcon = null;
         var _loc4_:Object = (AngryBirdsFP11.§>" § as §'"#§).completedQuests;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in _loc4_)
         {
            if(!(_loc13_ && param1))
            {
               §§push(_loc5_);
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc12_)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              addr144:
                              loop5:
                              while(true)
                              {
                                 addr119:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr121:
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr122:
                                       while(true)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(_loc12_ || param1)
                                          {
                                             break;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           addr143:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(_loc5_);
                              if(_loc12_ || this)
                              {
                                 if(_loc13_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(1);
                                 if(_loc13_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc13_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc13_ && param3))
                                 {
                                    §§push(§§pop() / §2!-§);
                                    if(_loc12_)
                                    {
                                       addr101:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc7_ = §§pop();
                                    if(!(_loc13_ && this))
                                    {
                                       if(!(_loc13_ && this))
                                       {
                                          if(true)
                                          {
                                             _loc8_ = this.§?"6§.§-C§(_loc7_);
                                             _loc9_ = new MapQuestIcon(_loc6_,_loc8_.x,_loc8_.y,param3);
                                             if(_loc12_ || param3)
                                             {
                                                §?E§.getItemByName("Map").mClip.addChild(_loc9_);
                                                if(!(_loc12_ || param2))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             _loc5_++;
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          addr132:
                                          _loc5_++;
                                          addr133:
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr132);
                        }
                        continue loop0;
                        addr135:
                     }
                     §§goto(addr143);
                  }
               }
            }
            §§goto(addr135);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("START" !== _loc4_)
            {
               if("SANDBOX" === _loc4_)
               {
                  §§goto(addr76);
               }
               else
               {
                  §§push(2);
               }
               addr99:
               loop1:
               switch(§§pop())
               {
                  case 0:
                     this.start();
                     addr28:
                     break;
                     addr41:
                  case 1:
                     §5!U§.playSound("Sound_Button_Click");
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §,!q§.§2=§.§?j§(null);
                           if(_loc6_)
                           {
                              break loop1;
                           }
                           if(!_loc6_)
                           {
                              if(false)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           continue;
                        }
                        §§goto(addr41);
                     }
                     §§goto(addr28);
               }
               return;
            }
            if(_loc5_)
            {
               addr64:
               §§push(0);
               if(_loc5_ || this)
               {
               }
            }
            else
            {
               addr76:
               §§push(1);
               if(_loc5_ || param2)
               {
               }
            }
            §§goto(addr99);
            §§goto(addr76);
         }
         §§goto(addr64);
      }
      
      private function start(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §5!U§.playSound("Sound_Button_Click");
         }
         loop0:
         while(true)
         {
            §§push(§'!;§.§2=§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && param1))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 mNextState = StateLevelEditor.§'=§;
                              }
                           }
                           else
                           {
                              §,!q§.§2=§.§-E§(§,!q§.§2=§.§>!9§());
                              if(!_loc3_)
                              {
                                 §§goto(addr24);
                              }
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr24:
                        return;
                        addr71:
                     }
                  }
               }
               addr96:
               addr114:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
               §§push(§'!;§.§2=§);
               if(_loc3_ && this)
               {
                  continue;
               }
               §§push(§§pop().§4!4§.§3l§());
               if(!(_loc3_ && param1))
               {
                  if(_loc2_)
                  {
                     §§goto(addr71);
                  }
                  else
                  {
                     §§goto(addr96);
                  }
               }
               §§goto(addr73);
            }
         }
      }
   }
}
