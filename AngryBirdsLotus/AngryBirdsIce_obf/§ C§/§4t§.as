package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§6H§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§?H§;
   import §[v§.§[!#§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §4t§ extends §-§
   {
      
      public static const §?B§:String = "LevelSelectionState";
      
      protected static const §,2§:Number = 0.5;
      
      public static var §7p§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?B§ = "LevelSelectionState";
         }
         while(true)
         {
            §,2§ = 0.5;
            while(!(_loc1_ && _loc2_))
            {
               §7p§ = "";
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §%+§:Boolean = false;
      
      protected var §#-§:§&F§;
      
      protected var §]!7§:§&F§;
      
      protected var §6B§:MovieClip;
      
      protected var §[W§:Array;
      
      protected var §^H§:Array;
      
      protected var §[!!§:int = 0;
      
      protected var §`@§:int = 0;
      
      protected var §!O§:int = 0;
      
      protected var §'#§:Boolean = false;
      
      protected var §']§:§?A§ = null;
      
      protected var §#t§:Dictionary;
      
      protected var §8^§:Array;
      
      protected var §^U§:Array;
      
      protected var §^!D§:§6H§;
      
      protected var §#&§:Number = 0;
      
      public function §4t§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            do
            {
               this.§<%§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         loop1:
         while(true)
         {
            §§push(this.§]!7§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  loop2:
                  do
                  {
                     this.§^H§ = [];
                     while(!(_loc2_ && _loc1_))
                     {
                        this.§[W§ = [];
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc2_ && _loc1_);
                  
                  return;
               }
               §§push(this.§]!7§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §<%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,R§ = new §#H§(this);
            while(true)
            {
               §,R§.init(§set §.§&!1§.Views.View_LevelSelection[0]);
            }
            addr88:
         }
         while(true)
         {
            this.§]!7§ = §,R§.getItemByName("Container_LevelRepeaters") as §&F§;
            for(; !(_loc1_ && this); this.§#-§ = §,R§.getItemByName("Container_LevelSelection") as §&F§,if(!_loc1_)
            {
               return;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr88);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            §§push(§[o§.§='§);
            while(true)
            {
               §§pop().clearLevel();
               loop1:
               while(true)
               {
                  §§push(§[o§.§='§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().§"3§(false);
                  while(true)
                  {
                     this.§2!0§();
                     loop3:
                     for(; !(_loc2_ && _loc1_); while(!(_loc2_ && this))
                     {
                        §§goto(addr117);
                        §§goto(addr99);
                     })
                     {
                        AngryBirdsFP11.§]!"§();
                        loop4:
                        while(this.§^H§.length != 1)
                        {
                           (§,R§.getItemByName("Button_Prev") as §^P§).setVisibility(true);
                           continue loop3;
                           (§,R§.getItemByName("Button_Next") as §^P§).setVisibility(true);
                           if(_loc1_ || this)
                           {
                              (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).setVisibility(true);
                              if(_loc1_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    this.§#&§ = this.§]!7§.x;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!§,R§.stage)
                                       {
                                          break;
                                       }
                                       if(_loc1_)
                                       {
                                          §,R§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!9§);
                                       }
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       loop7:
                                       while(!_loc1_)
                                       {
                                          break loop4;
                                          while(true)
                                          {
                                             (§,R§.getItemByName("Button_Next") as §^P§).setVisibility(false);
                                             continue loop7;
                                          }
                                       }
                                       (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).setVisibility(false);
                                    }
                                 }
                                 return;
                              }
                              continue loop3;
                              addr99:
                           }
                        }
                        while(true)
                        {
                           (§,R§.getItemByName("Button_Prev") as §^P§).setVisibility(false);
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr163);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      protected function §6!9§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.keyCode == Keyboard.LEFT)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§0A§();
               }
               addr83:
            }
            else if(param1.keyCode == Keyboard.RIGHT)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr59:
                  this.§,C§();
               }
               if(!(_loc3_ || param1))
               {
                  §§goto(addr83);
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            if(§§pop() == §-§.STATE_STATUS_RUNNING)
            {
               while(true)
               {
                  this.§%`§();
                  this.§>'§();
                  if(mNextState.length <= 0)
                  {
                     break;
                  }
                  if(_loc4_ || this)
                  {
                     return §-§.STATE_STATUS_COMPLETED;
                  }
               }
               return §-§.STATE_STATUS_RUNNING;
            }
            return _loc2_;
         }
      }
      
      protected function §%`§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(this.§[W§);
               if(_loc4_ || _loc1_)
               {
                  if(!_loc3_)
                  {
                     if(§§pop() >= §§pop().length)
                     {
                        §§push(this.§!O§);
                        loop1:
                        while(true)
                        {
                           §§push(this.§[!!§);
                           if(_loc4_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       §§push(this.§[!!§);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§!O§);
                                          addr165:
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                continue loop2;
                                             }
                                             if(_loc4_)
                                             {
                                                this.§`@§ = this.§!O§ + 1;
                                                if(_loc4_ || this)
                                                {
                                                   addr44:
                                                   this.§^!D§.§ !%§(this.§8^§[this.§`@§].red,this.§8^§[this.§`@§].green,this.§8^§[this.§`@§].blue);
                                                   this.§#&§ = this.§]!7§.x;
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr98:
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         this.§`@§ = this.§!O§ - 1;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§goto(addr44);
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            §§push(this.§[W§);
                                                            addr466:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop().length)
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     this.§!O§ = _loc1_;
                                                                     §§push(this.§[W§);
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = this.§[W§[_loc1_].x;
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 this.§%j§(_loc1_);
                                                                                 loop32:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§]!7§);
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(-§§pop().x);
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§^H§);
                                                                                          addr384:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             addr385:
                                                                                             loop16:
                                                                                             while(_loc4_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   addr402:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.§#&§);
                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(-§§pop());
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     addr489:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§^H§);
                                                                                                                        addr491:
                                                                                                                        addr525:
                                                                                                                        while(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           break loop16;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           addr526:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr513:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             §§push(0);
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                §§goto(addr516);
                                                                                                                                                addr354:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   while(!(_loc4_ || this))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr426);
                                                                                                                                                   }
                                                                                                                                                   addr229:
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   §§push(this.§[W§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() >= §§pop().length)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            this.§!O§ = _loc1_;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc3_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               break loop18;
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§[W§);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                  (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = this.§[W§[_loc1_].x;
                                                                                                                                                                  this.§%j§(_loc1_);
                                                                                                                                                                  addr189:
                                                                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr182:
                                                                                                                                                                     _loc1_++;
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop27;
                                                                                                                                                                  addr228:
                                                                                                                                                                  addr209:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr275:
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  addr480:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                  _loc2_++;
                                                                                                                                                                  addr267:
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop32;
                                                                                                                                                                  addr290:
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr362);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§[W§);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr275);
                                                                                                                                                   }
                                                                                                                                                   addr362:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr512:
                                                                                                                                    }
                                                                                                                                    §§goto(addr402);
                                                                                                                                 }
                                                                                                                                 addr532:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr426:
                                                                                                                  addr488:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  break loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr513);
                                                                                                            addr341:
                                                                                                            §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr354);
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                               break;
                                                                                                               §§goto(addr341);
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                            addr351:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr488);
                                                                                                         }
                                                                                                         addr411:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr515);
                                                                                                   }
                                                                                                   §§goto(addr532);
                                                                                                }
                                                                                                §§goto(addr411);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr512);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr523);
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    addr370:
                                                                                 }
                                                                                 continue loop30;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§[W§);
                                                               }
                                                               §§goto(addr480);
                                                               continue loop12;
                                                            }
                                                         }
                                                         addr516:
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   addr66:
                                                   §§goto(addr66);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr228);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr290);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr165);
                        }
                     }
                     else
                     {
                        §§push(this.§]!7§);
                     }
                     §§goto(addr521);
                  }
                  §§goto(addr466);
               }
               §§goto(addr233);
            }
            §§goto(addr354);
         }
      }
      
      protected function §>'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§^H§.length)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  loop1:
                  for(; !(_loc3_ || _loc1_); _loc1_++)
                  {
                     loop2:
                     for(; !_loc4_; (§§pop()[§§pop()] as §?H§).setEnabled(true))
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(Number(Math.abs(_loc2_)));
                                 loop4:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop() > 1000)
                                    {
                                       §§push(1000);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          break loop4;
                                       }
                                       addr196:
                                    }
                                    while(true)
                                    {
                                       if(Math.abs(this.§^H§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§^H§);
                                             addr150:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr151:
                                                while(true)
                                                {
                                                   §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                   addr159:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          addr148:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§^H§);
                                          if(!(_loc4_ && this))
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(_loc1_);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop()[§§pop()].mClip.alpha >= 1)
                                                      {
                                                         §§push(this.§^H§);
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_ && this)
                                                            {
                                                               addr125:
                                                               (§§pop()[§§pop()] as §?H§).setEnabled(false);
                                                            }
                                                            else
                                                            {
                                                               addr125:
                                                            }
                                                            continue loop2;
                                                            break loop2;
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§^H§);
                                                            break loop8;
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr150);
                                          }
                                          break;
                                       }
                                       §§goto(addr125);
                                    }
                                    addr131:
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr131);
                                 }
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr120);
                     }
                  }
                  continue;
               }
               §§push(Number(this.§]!7§.x + this.§^H§[_loc1_].x));
               §§goto(addr218);
            }
            §§goto(addr196);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§,R§.stage)
            {
               while(true)
               {
                  §,R§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§6!9§);
                  §§goto(addr77);
               }
            }
            addr77:
            while(true)
            {
               super.deActivate();
               this.§%!1§();
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
            §§goto(addr65);
         }
         addr65:
         (§,R§.getItemByName("Button_Back") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         do
         {
            §0$§.§>Q§ = null;
         }
         while(!_loc2_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§']§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§']§);
                     addr81:
                     while(true)
                     {
                        §§pop().stop();
                        loop4:
                        while(true)
                        {
                           this.§']§ = null;
                           addr66:
                           addr73:
                           while(!(_loc2_ || this))
                           {
                              continue loop4;
                           }
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr66);
                  §§goto(addr73);
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr73);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2.length > 0);
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  while(true)
                  {
                     §§push(param3 is §[!#§);
                     addr108:
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     addr125:
                     §0$§.§;4§(§0$§.§5D§(param2.toLowerCase()));
                     mNextState = StateCutScene.§?B§;
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(this.§'#§);
                           if(!(_loc6_ || param1))
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              §§goto(addr108);
                           }
                           else
                           {
                              var _loc4_:* = param2;
                              addr72:
                              if(!_loc5_)
                              {
                                 §§push("BACK");
                                 if(!_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(0);
                                             if(_loc6_ || param2)
                                             {
                                             }
                                             §§goto(addr242);
                                          }
                                          else
                                          {
                                             §§goto(addr199);
                                          }
                                       }
                                       else
                                       {
                                          §§push("NEXT");
                                          if(!_loc5_)
                                          {
                                             addr193:
                                             §§push(_loc4_);
                                             if(!_loc5_)
                                             {
                                                addr196:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr199:
                                                      §§push(1);
                                                      if(_loc5_)
                                                      {
                                                         addr237:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr234:
                                                      §§push(3);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                   }
                                                   §§goto(addr242);
                                                }
                                                else
                                                {
                                                   §§push("PREV");
                                                   if(!_loc5_)
                                                   {
                                                      addr216:
                                                      §§push(_loc4_);
                                                      if(!_loc5_)
                                                      {
                                                         addr219:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(2);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§goto(addr242);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr237);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         else
                                                         {
                                                            addr232:
                                                            §§push("FULLSCREEN_BUTTON");
                                                            §§push(_loc4_);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                      else
                                                      {
                                                         addr242:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §@6§.playSound("Menu_Back");
                                                               mNextState = §9,§.§?B§;
                                                               break;
                                                               addr78:
                                                            case 1:
                                                               this.§,C§();
                                                               break;
                                                            case 2:
                                                               this.§0A§();
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr33:
                                                                     break;
                                                                  }
                                                                  §§goto(addr78);
                                                               }
                                                               break;
                                                            case 3:
                                                               §@6§.playSound("Menu_Confirm");
                                                               AngryBirdsFP11.§?L§.§,!!§();
                                                               if(_loc6_ || param2)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr33);
                                                               }
                                                         }
                                                         return;
                                                         §§push(4);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr232);
                                                }
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr234);
                              addr72:
                           }
                           §§goto(addr125);
                        }
                        loop4:
                        while(true)
                        {
                           §§pop();
                           §§push((param3 as §[!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                           addr96:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop4;
                              }
                              §§goto(addr72);
                           }
                        }
                        addr98:
                        addr155:
                     }
                     §§goto(addr72);
                  }
               }
               addr136:
               while(§§pop())
               {
                  continue loop0;
               }
               §§goto(addr72);
            }
            addr162:
         }
         while(true)
         {
            §§push((param3 as §[!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
            §§push((param3 as §[!#§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
            if(_loc6_ || param3)
            {
               if(!§§pop())
               {
                  §§goto(addr155);
               }
               §§goto(addr96);
            }
            else
            {
               §§goto(addr162);
            }
         }
      }
      
      protected function §,C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §@6§.playSound("Menu_Confirm");
            if(!_loc4_)
            {
               if(!this.§'#§)
               {
                  if(_loc3_ || _loc1_)
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§[!!§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_)
                     {
                        _loc1_.§[!!§ = _loc2_;
                     }
                     if(!(_loc4_ && this))
                     {
                        addr75:
                        this.§6!8§(this.§[!!§);
                     }
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr75);
      }
      
      protected function §0A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §@6§.playSound("Menu_Confirm");
            if(_loc3_ || _loc2_)
            {
               if(!this.§'#§)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§[!!§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_)
                     {
                        _loc1_.§[!!§ = _loc2_;
                     }
                     if(_loc3_)
                     {
                        addr85:
                        this.§6!8§(this.§[!!§);
                     }
                  }
                  §§goto(addr85);
               }
            }
            return;
         }
         §§goto(addr85);
      }
      
      public function §2!0§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         if(_loc9_ || _loc2_)
         {
            this.§8^§ = [];
            loop0:
            while(true)
            {
               this.§^U§ = [];
               addr96:
               while(true)
               {
                  this.§[!!§ = §0$§.§]>§(§0$§.§=l§).§^A§;
                  addr61:
                  if(_loc9_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §!!>§(param1:Array, param2:int, param3:Number, param4:§&9§) : Number
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §>D§.§`C§(this.§^U§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc14_ || param3)
            {
               §§push(AngryBirdsFP11.§64§.isLevelOpen(_loc10_));
               if(!_loc15_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc15_)
               {
                  break;
               }
            }
            _loc12_ = this.§'d§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc14_ || this)
            {
               §§push(_loc11_);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(AngryBirdsFP11.§'Q§);
                           if(!_loc15_)
                           {
                              if(!_loc14_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           loop4:
                           while(!_loc15_)
                           {
                              if(_loc15_)
                              {
                                 continue loop1;
                              }
                              addr180:
                              while(true)
                              {
                                 §§push(_loc11_);
                                 if(_loc14_ || this)
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(!(_loc14_ || this))
                                    {
                                       break;
                                    }
                                    addr159:
                                    continue;
                                 }
                                 continue loop4;
                              }
                              do
                              {
                                 _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                 while(true)
                                 {
                                    if(_loc14_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc14_ || this)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc14_ || param2)
                                          {
                                             addr116:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc7_ = §§pop();
                                          if(_loc14_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       §§goto(addr116);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                          §§goto(addr180);
                                       }
                                       addr185:
                                    }
                                 }
                              }
                              while(false);
                              
                              continue loop0;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc13_.@MouseUp = _loc10_;
                           while(true)
                           {
                           }
                           addr203:
                        }
                        while(true)
                        {
                           _loc13_.@scaleOnMouseOver = "True";
                           §§goto(addr185);
                        }
                     }
                  }
               }
            }
            §§goto(addr203);
         }
         _loc8_ = <Repeater/>;
         if(param1.length != 15)
         {
            _loc8_.@name = "Repeater_LevelSelection";
            loop12:
            while(true)
            {
               if(!_loc14_)
               {
                  while(true)
                  {
                     _loc8_.@name = "Repeater_LevelSelection15";
                     addr283:
                     while(true)
                     {
                     }
                  }
                  addr280:
               }
               while(true)
               {
                  _loc8_.@button = this.§^U§[param2];
                  _loc8_.@enabled = "True";
                  continue loop12;
                  §§goto(addr283);
               }
            }
         }
         §§goto(addr280);
      }
      
      protected function §'d§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         §§push(param2);
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               _loc6_.gotoAndStop("Locked");
               if(!_loc8_)
               {
                  while(true)
                  {
                     _loc6_.isOpen = param2;
                     if(!_loc8_)
                     {
                        continue loop0;
                     }
                     addr88:
                  }
                  addr32:
                  return _loc6_;
               }
               loop6:
               while(true)
               {
                  _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                  _loc6_.MovieClip_Feather.mouseEnabled = false;
                  addr126:
                  while(_loc8_)
                  {
                     while(true)
                     {
                        _loc6_.gotoAndStop("Open");
                        _loc6_.MovieClip_MEInUse.visible = false;
                        §§push(AngryBirdsFP11.§64§);
                        addr132:
                        while(true)
                        {
                           §§push(param1);
                           addr133:
                           while(true)
                           {
                              §§push(§§pop().§!!@§(§§pop()));
                              addr134:
                              while(true)
                              {
                                 if(§§pop() == 100)
                                 {
                                    continue loop6;
                                 }
                                 _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                              }
                           }
                        }
                     }
                     continue loop6;
                  }
                  §§goto(addr88);
               }
               _loc6_.MovieClip_Feather.mouseEnabled = false;
               §§goto(addr88);
            }
            §§goto(addr149);
         }
      }
      
      protected function §<[§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            if(this.§^H§.length == 1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:* = Number(0);
            if(!_loc6_)
            {
               this.§#t§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§^H§.length)
            {
               _loc1_ = §>D§.§`C§("Button_Dot");
               _loc2_ = new _loc1_();
               if(_loc5_)
               {
                  _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§^H§.length * _loc2_.width / 2;
                  loop1:
                  while(true)
                  {
                     _loc2_.y = (§,R§.getItemByName("Button_Next") as §^P§).y - _loc2_.height / 2;
                     if(_loc4_ == this.§[!!§)
                     {
                        while(true)
                        {
                           _loc2_.gotoAndStop("Selected");
                           addr189:
                           while(true)
                           {
                              (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = _loc2_.x;
                              (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).y = _loc2_.y - _loc2_.height;
                              addr160:
                              while(true)
                              {
                                 this.§%j§(_loc4_);
                                 addr147:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr186:
                     }
                     else
                     {
                        _loc2_.gotoAndStop("UnSelected");
                     }
                     while(true)
                     {
                        this.§#-§.mClip.addChild(_loc2_);
                        if(!(_loc6_ && _loc2_))
                        {
                           continue loop1;
                        }
                        §§goto(addr189);
                        §§goto(addr147);
                     }
                  }
               }
               §§goto(addr84);
            }
            if(_loc5_)
            {
               §§push(this.§^H§.length * _loc2_.width);
               if(_loc5_)
               {
                  §§push(§§pop() / 2);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(_loc5_ || _loc2_)
                     {
                        addr259:
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  if(!(_loc6_ && _loc1_))
                  {
                     (§,R§.getItemByName("Button_Next") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
                     loop10:
                     while(true)
                     {
                        (§,R§.getItemByName("Button_Prev") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
                        addr341:
                        loop13:
                        while(true)
                        {
                           (§,R§.getItemByName("Button_Next") as §^P§).x = (§,R§.getItemByName("Button_Next") as §^P§).x + (_loc3_ + 10);
                           addr310:
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue loop10;
                              }
                              continue loop13;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     (§,R§.getItemByName("Button_Prev") as §^P§).x = (§,R§.getItemByName("Button_Prev") as §^P§).x - (_loc3_ + 10);
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr310);
                     §§goto(addr312);
                  }
                  return;
               }
               §§goto(addr259);
            }
            §§goto(addr341);
         }
         addr36:
      }
      
      protected function §%!1§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§^!D§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr37:
                     this.§^!D§.clean();
                  }
               }
               var _loc1_:int = 0;
               while(true)
               {
                  if(_loc1_ >= this.§[W§.length)
                  {
                     while(true)
                     {
                        this.§[W§ = [];
                        while(true)
                        {
                           §§push(this.§]!7§);
                           if(_loc2_)
                           {
                              if(§§pop().mClip.numChildren <= 0)
                              {
                                 break;
                              }
                              §§push(this.§]!7§);
                           }
                           §§pop().mClip.removeChildAt(0);
                        }
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           this.§^H§ = [];
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           return;
                        }
                     }
                     addr127:
                  }
                  else
                  {
                     §§push(this.§#-§);
                     while(§§pop().mClip.contains(this.§[W§[_loc1_]))
                     {
                        this.§[W§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§]j§);
                        §§push(this.§#-§);
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §§pop().mClip.removeChild(this.§[W§[_loc1_]);
                        §§goto(addr127);
                     }
                  }
                  _loc1_++;
               }
            }
         }
         §§goto(addr37);
      }
      
      protected function §]j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§'#§)
            {
               if(!_loc2_)
               {
                  this.§6!8§(this.§#t§[param1.target]);
               }
            }
         }
      }
      
      protected function §7r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.§'#§)
            {
               if(_loc2_)
               {
                  mNextState = §4t§.§?B§;
               }
            }
         }
      }
      
      protected function §6!8§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         this.§'#§ = true;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               if(§§pop() <= this.§^H§.length - 1)
               {
                  §§push(param1);
                  if(_loc7_ || param2)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(0);
                                 loop9:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       addr98:
                                       while(true)
                                       {
                                          this.§[!!§ = param1;
                                          loop5:
                                          while(true)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§[!!§);
                                                loop7:
                                                while(_loc7_ || param2)
                                                {
                                                   §§push(this.§!O§);
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            if(!(_loc7_ || param1))
                                                            {
                                                               continue loop10;
                                                            }
                                                            this.§`@§ = this.§!O§ + 1;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§push(this.§[!!§);
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§!O§);
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        this.§`@§ = this.§!O§ - 1;
                                                                        if(true)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             addr163:
                                             break loop3;
                                          }
                                       }
                                    }
                                 }
                                 addr124:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(this.§^H§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().length - 1);
                                       if(_loc7_ || this)
                                       {
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             §§goto(addr98);
                                          }
                                          addr147:
                                       }
                                       addr172:
                                       var _loc3_:* = §§pop();
                                       var _loc4_:Number = this.§^H§[param1].x + this.§]!7§.x;
                                       var _loc5_:*;
                                       §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() / 1024);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr201:
                                             §§push(Number(§§pop()));
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr224:
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§push(§,2§);
                                                   }
                                                   _loc5_ = Number(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§']§);
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            addr333:
                                                            this.§']§.stop();
                                                         }
                                                         addr315:
                                                         if(param2)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  this.§]!7§.x = _loc3_;
                                                                  addr242:
                                                                  addr324:
                                                                  §§push(param2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           this.§9!'§();
                                                                        }
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           addr277:
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              addr284:
                                                                              §§goto(addr242);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§push(this.§']§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr267:
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§pop().onComplete = this.§9!'§;
                                                                           §§goto(addr277);
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                     §§pop().play();
                                                                     addr229:
                                                                     return;
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         this.§']§ = §";§.§[8§.§6!$§(this.§]!7§,{"x":_loc3_},null,_loc5_,§";§.§&w§);
                                                         §§goto(addr267);
                                                         §§push(this.§']§);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr284);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_)
                                                {
                                                   §§goto(addr224);
                                                }
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr201);
                                    }
                                    break loop3;
                                 }
                                 addr133:
                              }
                              §§goto(addr147);
                           }
                           §§push(-§§pop()[param1].x);
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr133);
            }
         }
      }
      
      protected function §9!'§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§[W§.length)
               {
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this.§'#§ = false;
                        if(_loc3_)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           continue;
                        }
                        addr94:
                        continue loop0;
                     }
                  }
                  continue;
                  addr99:
               }
               else
               {
                  addr126:
                  if(_loc1_ == this.§[!!§)
                  {
                     addr142:
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.§[W§);
                     }
                     (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).x = this.§[W§[_loc1_].x;
                     this.§%j§(_loc1_);
                     §§goto(addr99);
                  }
                  else
                  {
                     §§push(this.§[W§);
                     if(_loc3_ || this)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr94);
                        }
                     }
                     else
                     {
                        addr138:
                        §§push(_loc1_);
                     }
                     §§pop()[§§pop()].gotoAndStop("Selected");
                     §§goto(addr142);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr126);
         }
      }
      
      protected function §%j§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§,R§.getItemByName("TextField_LevelNumberSmall") as §'4§).§8?§.text = §0$§.§]>§(§0$§.§=l§).pageIndexes[param1];
         }
      }
   }
}
