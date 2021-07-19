package §,!"§
{
   import § !B§.§-#§;
   import §"U§.§"]§;
   import §"U§.§&!M§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §0!5§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelSelectionState";
      
      protected static const §3!J§:Number = 0.5;
      
      public static var §=l§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §0!5§)
         {
            §-A§ = "LevelSelectionState";
            while(true)
            {
               §3!J§ = 0.5;
               while(_loc1_)
               {
                  §=l§ = "";
                  if(_loc1_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected var §"!$§:Boolean = false;
      
      protected var §+q§:§[Q§;
      
      protected var §`1§:§[Q§;
      
      protected var §"4§:MovieClip;
      
      protected var §'`§:Array;
      
      protected var §1+§:Array;
      
      protected var §?!<§:int = 0;
      
      protected var §%!6§:int = 0;
      
      protected var §,8§:int = 0;
      
      protected var §,%§:Boolean = false;
      
      protected var §;;§:§[!9§ = null;
      
      protected var §3!?§:Dictionary;
      
      protected var §#x§:Array;
      
      protected var §]C§:Array;
      
      protected var §!>§:§-#§;
      
      protected var §9!!§:Number = 0;
      
      public function §0!5§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
         }
         do
         {
            this.§8e§();
         }
         while(_loc1_ && _loc1_);
         
         loop1:
         while(true)
         {
            §§push(this.§`1§);
            if(_loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  loop2:
                  do
                  {
                     this.§1+§ = [];
                     while(!_loc1_)
                     {
                        this.§'`§ = [];
                        if(_loc2_ || _loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  return;
               }
               §§push(this.§`1§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §8e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0q§ = new §`o§(this);
         }
         while(true)
         {
            §0q§.init(§`Z§.§5c§.Views.View_LevelSelection[0]);
            while(!(_loc1_ && _loc2_))
            {
               this.§`1§ = §0q§.getItemByName("Container_LevelRepeaters") as §[Q§;
               while(_loc2_)
               {
                  this.§+q§ = §0q§.getItemByName("Container_LevelSelection") as §[Q§;
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         §§push(§#! §.§`'§);
         do
         {
            §§pop().clearLevel();
            §§push(§#! §.§`'§);
         }
         while(!(_loc2_ || this));
         
         §§pop().§^!6§(false);
         this.§2!%§();
         this.§[5§();
         if(this.§1+§.length == 1)
         {
            (§0q§.getItemByName("Button_Prev") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_Next") as §^'§).setVisibility(false);
            while(true)
            {
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).setVisibility(false);
            }
            addr103:
         }
         else
         {
            (§0q§.getItemByName("Button_Prev") as §^'§).setVisibility(true);
            if(!_loc1_)
            {
               (§0q§.getItemByName("Button_Next") as §^'§).setVisibility(true);
               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).setVisibility(true);
               loop1:
               while(true)
               {
                  this.§9!!§ = this.§`1§.x;
                  if(§0q§.stage)
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           §0q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§]+§);
                        }
                        else
                        {
                           §§goto(addr103);
                        }
                     }
                     break;
                  }
                  break;
                  addr94:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr94);
      }
      
      protected function §[5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            AngryBirdsFP11.§[5§();
         }
      }
      
      protected function §]+§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§1+§.length <= 1)
         {
            return;
         }
         while(true)
         {
            if(param1.keyCode != Keyboard.LEFT)
            {
               if(param1.keyCode != Keyboard.RIGHT)
               {
                  break;
               }
               if(_loc2_)
               {
                  if(!(_loc3_ && param1))
                  {
                     this.§->§();
                  }
                  else
                  {
                     break;
                     addr71:
                  }
               }
               if(!_loc3_)
               {
                  break;
               }
               continue;
            }
            this.§1!1§();
            §§goto(addr71);
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
         §§push(_loc2_);
         if(!(_loc3_ && _loc2_))
         {
            if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
            {
               while(true)
               {
                  this.§-S§();
                  if(!_loc3_)
                  {
                     this.§0<§();
                     if(mNextState.length <= 0)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        return §'!#§.STATE_STATUS_COMPLETED;
                     }
                     continue;
                  }
               }
               return §'!#§.STATE_STATUS_RUNNING;
            }
            return _loc2_;
         }
      }
      
      protected function §-S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc1_)
            {
               §§push(this.§'`§);
               if(!(_loc3_ && this))
               {
                  if(§§pop() >= §§pop().length)
                  {
                     §§push(this.§,8§);
                     §§push(this.§?!<§);
                     loop1:
                     for(; §§pop() != §§pop(); if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     },if(§§pop() >= §§pop())
                     {
                        this.§%!6§ = this.§,8§;
                        if(_loc4_)
                        {
                           §§goto(addr46);
                        }
                        §§goto(addr441);
                     },§§goto(addr133))
                     {
                        §§push(this.§?!<§);
                        §§push(this.§,8§);
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(this.§?!<§);
                              §§push(this.§,8§);
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              continue;
                           }
                           this.§%!6§ = this.§,8§ + 1;
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§#x§);
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.§%!6§);
                                          if(_loc4_)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_)
                                                {
                                                   if(§§pop()[§§pop()])
                                                   {
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         this.§!>§.§ !,§(this.§#x§[this.§%!6§].red,this.§#x§[this.§%!6§].green,this.§#x§[this.§%!6§].blue);
                                                         while(true)
                                                         {
                                                            break loop1;
                                                         }
                                                         addr105:
                                                      }
                                                      §§push(this.§'`§);
                                                      break;
                                                      addr225:
                                                   }
                                                   break loop1;
                                                }
                                                addr408:
                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = this.§'`§[_loc1_].x;
                                                loop12:
                                                while(true)
                                                {
                                                   this.§5!8§(_loc1_);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§`1§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(-§§pop().x);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               §§push(this.§1+§);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr377:
                                                                                 while(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(this.§9!!§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr285:
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(this.§1+§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§1+§);
                                                                                       }
                                                                                       addr446:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       addr449:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                          addr452:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                                 addr495:
                                                                                 addr377:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr320:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc2_ = 0;
                                                                                    addr324:
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       addr209:
                                                                                       §§push(_loc2_);
                                                                                       loop37:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§'`§);
                                                                                          addr213:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                if(§§pop() >= §§pop().length)
                                                                                                {
                                                                                                   addr222:
                                                                                                   this.§,8§ = _loc1_;
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr246:
                                                                                                   §§push(this.§'`§);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      addr254:
                                                                                                      §§push(_loc2_);
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                         addr441:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_++;
                                                                                                            addr431:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr412:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  §§push(this.§'`§);
                                                                                                                  addr416:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop().length)
                                                                                                                     {
                                                                                                                        §§push(this.§'`§);
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     this.§,8§ = _loc1_;
                                                                                                                     if(_loc4_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr407:
                                                                                                                        §§goto(addr408);
                                                                                                                        §§push(this.§'`§);
                                                                                                                        §§push(_loc1_);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§9!!§);
                                                                                                                           addr445:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr446);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr496:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr324);
                                                                                                            }
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                      }
                                                                                                      addr438:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr438);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr416);
                                                                                             continue loop37;
                                                                                          }
                                                                                          addr178:
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc1_++;
                                                                                             addr180:
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop36;
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       addr211:
                                                                                    }
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 §§goto(addr178);
                                                                              }
                                                                              §§goto(addr496);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr495);
                                                                                 }
                                                                              }
                                                                              addr494:
                                                                           }
                                                                           §§goto(addr452);
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§goto(addr494);
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               addr483:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§1+§);
                                                               }
                                                               addr480:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr483);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr478:
                                                      }
                                                      §§goto(addr480);
                                                   }
                                                   if(_loc4_ || this)
                                                   {
                                                      _loc2_ = 0;
                                                   }
                                                   §§goto(addr412);
                                                }
                                             }
                                             §§goto(addr254);
                                          }
                                          addr205:
                                          §§pop()[§§pop()].gotoAndStop("Selected");
                                          (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = this.§'`§[_loc1_].x;
                                          this.§5!8§(_loc1_);
                                          §§goto(addr187);
                                       }
                                       §§goto(addr407);
                                    }
                                    §§goto(addr246);
                                 }
                                 break;
                              }
                              §§goto(addr205);
                              §§push(_loc1_);
                              addr46:
                           }
                           §§goto(addr180);
                        }
                        while(true)
                        {
                           this.§%!6§ = this.§,8§ - 1;
                           §§goto(addr138);
                        }
                     }
                     while(true)
                     {
                        this.§9!!§ = this.§`1§.x;
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr105);
                     }
                     if(_loc3_)
                     {
                        §§goto(addr133);
                     }
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           return;
                        }
                        §§goto(addr324);
                     }
                     §§goto(addr222);
                  }
                  else
                  {
                     §§push(this.§`1§);
                  }
                  §§goto(addr478);
               }
               §§goto(addr213);
            }
            §§goto(addr211);
         }
      }
      
      protected function §0<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() >= this.§1+§.length)
               {
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && this))
                     {
                        if(§§pop() > 1000)
                        {
                           §§push(1000);
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr182:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       break loop1;
                                       addr140:
                                       loop3:
                                       for(; !(_loc4_ && _loc2_); if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       },§§goto(addr110),§§push(this.§1+§))
                                       {
                                          §§push(this.§1+§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             loop5:
                                             while(true)
                                             {
                                                §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                while(true)
                                                {
                                                   addr73:
                                                   while(true)
                                                   {
                                                      §§push(this.§1+§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            if(§§pop()[§§pop()].mClip.alpha < 1)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(this.§1+§);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(_loc1_);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  (§§pop()[§§pop()] as §var §).setEnabled(true);
                                                                  continue loop0;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr110:
                                                               if(_loc4_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(_loc1_);
                                                            }
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            (§§pop()[§§pop()] as §var §).setEnabled(false);
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr110);
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       §§push(Number(Math.abs(_loc2_)));
                                       continue loop1;
                                    }
                                    addr207:
                                 }
                              }
                           }
                           addr181:
                        }
                        break;
                     }
                     §§goto(addr182);
                  }
                  while(true)
                  {
                     if(Math.abs(this.§1+§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                     {
                        §§goto(addr140);
                     }
                     §§goto(addr73);
                  }
               }
               else
               {
                  §§push(Number(this.§`1§.x + this.§1+§[_loc1_].x));
               }
               §§goto(addr207);
            }
            §§goto(addr181);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§0q§.stage)
            {
               §0q§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§]+§);
               addr89:
               while(true)
               {
               }
               addr89:
            }
            while(true)
            {
               super.deActivate();
               this.§>!M§();
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               §§goto(addr89);
            }
            (§0q§.getItemByName("Button_Back") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §`!K§.§0r§ = null;
            return;
         }
         §§goto(addr89);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;;§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr81:
                     this.§;;§.stop();
                  }
                  while(true)
                  {
                     this.§;;§ = null;
                     loop1:
                     for(; _loc2_ || _loc2_; while(true)
                     {
                        super.cleanup();
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     },return)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr24);
            }
            §§goto(addr81);
         }
         §§goto(addr61);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param2.length > 0);
            §§push(param2.length > 0);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(param3 is §&!M§);
               }
               while(§§pop())
               {
                  continue loop0;
                  if(!(_loc6_ && param1))
                  {
                     addr99:
                     if(§§pop())
                     {
                        addr103:
                        if(!this.§,%§)
                        {
                           if(_loc5_ || param3)
                           {
                              addr111:
                              §`!K§.§!e§(§`!K§.§]!F§(param2.toLowerCase()));
                           }
                           do
                           {
                              mNextState = StateCutScene.§-A§;
                           }
                           while(!_loc5_);
                           
                           break;
                        }
                        break;
                     }
                     break;
                  }
               }
               var _loc4_:* = param2;
               if(!_loc6_)
               {
                  §§push("BACK");
                  if(_loc5_ || param3)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 addr258:
                              }
                           }
                           else
                           {
                              addr243:
                              §§push(2);
                              if(_loc6_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push("NEXT");
                           if(!_loc6_)
                           {
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(1);
                                       if(_loc6_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr243);
                                    }
                                 }
                                 else
                                 {
                                    §§push("PREV");
                                    if(_loc5_ || this)
                                    {
                                       addr217:
                                       §§push(_loc4_);
                                       if(_loc5_ || param2)
                                       {
                                          addr225:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ || param1))
                                             {
                                                addr250:
                                                §§push(3);
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr243);
                                             addr263:
                                             loop4:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §[!7§.playSound("Menu_Back");
                                                   if(!_loc6_)
                                                   {
                                                      mNextState = §@D§.§-A§;
                                                      break;
                                                   }
                                                   break;
                                                case 1:
                                                   this.§->§();
                                                   break;
                                                case 2:
                                                   this.§1!1§();
                                                   addr34:
                                                   break;
                                                case 3:
                                                   §[!7§.playSound("Menu_Confirm");
                                                   while(true)
                                                   {
                                                      AngryBirdsFP11.§`y§.§,,§();
                                                      if(_loc6_)
                                                      {
                                                         break loop4;
                                                      }
                                                      if(_loc6_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop4;
                                                      }
                                                      §§goto(addr34);
                                                   }
                                             }
                                             return;
                                          }
                                          addr248:
                                          §§push("FULLSCREEN_BUTTON");
                                          §§push(_loc4_);
                                          §§goto(addr250);
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr250);
                                       }
                                       else
                                       {
                                          §§goto(addr250);
                                          §§push(4);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr248);
                                 }
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr217);
               }
               §§goto(addr250);
            }
         }
         §§goto(addr111);
      }
      
      protected function §->§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §[!7§.playSound("Menu_Confirm");
            if(!_loc3_)
            {
               if(!this.§,%§)
               {
                  if(!_loc3_)
                  {
                     addr39:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§?!<§);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || _loc1_)
                     {
                        _loc1_.§?!<§ = _loc2_;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        addr81:
                        this.§[!%§(this.§?!<§);
                     }
                  }
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr39);
      }
      
      protected function §1!1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §[!7§.playSound("Menu_Confirm");
            if(!_loc3_)
            {
               if(!this.§,%§)
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr75);
            }
            var _loc1_:*;
            §§push((_loc1_ = this).§?!<§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§?!<§ = _loc2_;
            }
            if(!_loc3_)
            {
               this.§[!%§(this.§?!<§);
            }
         }
         addr75:
      }
      
      public function §2!%§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         if(!(_loc9_ && _loc2_))
         {
            this.§#x§ = [];
         }
         loop0:
         while(true)
         {
            this.§]C§ = [];
            loop1:
            while(true)
            {
               this.§?!<§ = §`!K§.§5!<§(§`!K§.§%;§).§9!F§;
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     this.§%!6§ = this.§?!<§;
                     while(!_loc9_)
                     {
                        this.§,8§ = this.§?!<§;
                        if(!_loc10_)
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           break loop3;
                        }
                        if(_loc9_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue loop3;
                        }
                        var _loc2_:§7!K§ = §`!K§.§5!<§(§`!K§.§%;§);
                        var _loc3_:* = Number(0);
                        addr172:
                        if(_loc3_ < _loc2_.pageIndexes.length)
                        {
                           _loc4_ = _loc2_.§0t§(_loc2_.pageIndexes[_loc3_]);
                           if(!_loc9_)
                           {
                              addr157:
                              this.§#x§.push(_loc2_.§#!N§(_loc3_));
                              addr171:
                              §§push(this.§]C§);
                              if(!_loc9_)
                              {
                                 §§pop().push(_loc2_.§-7§(_loc3_));
                                 addr143:
                                 _loc1_ = this.§0!N§(_loc4_,_loc3_,_loc1_,_loc2_);
                                 addr135:
                                 addr154:
                                 addr144:
                                 addr142:
                                 §§push(_loc3_);
                                 if(!_loc9_)
                                 {
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc10_)
                                       {
                                          addr114:
                                          §§push(Number(§§pop()));
                                          if(_loc10_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc10_ || _loc1_)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr143);
                        }
                        if(_loc10_)
                        {
                           this.§!>§ = new §-#§(this.§#x§[this.§?!<§].red,this.§#x§[this.§?!<§].green,this.§#x§[this.§?!<§].blue,1);
                           if(_loc10_ || _loc3_)
                           {
                              addr209:
                              §0q§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§!>§);
                              if(!_loc9_)
                              {
                                 if(_loc2_.§9`§)
                                 {
                                    if(_loc10_ || _loc2_)
                                    {
                                    }
                                    addr263:
                                    if(_loc2_.§@<§)
                                    {
                                       if(_loc10_)
                                       {
                                          addr268:
                                          _loc8_ = new (_loc7_ = §[!D§.§8!N§(_loc2_.§@<§))();
                                          if(_loc10_)
                                          {
                                             §0q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                             if(_loc10_ || _loc3_)
                                             {
                                                addr299:
                                                this.§@[§();
                                                if(§=l§ != StateCutScene.§-A§)
                                                {
                                                   this.§[!%§(this.§?!<§,true);
                                                   if(!_loc10_)
                                                   {
                                                      addr344:
                                                      §=l§ = "";
                                                      this.§[!%§(this.§,8§);
                                                      addr347:
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         §§goto(addr347);
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr344);
                                          }
                                          §§goto(addr347);
                                       }
                                    }
                                    else
                                    {
                                       §0q§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                    }
                                    §§goto(addr299);
                                 }
                                 else
                                 {
                                    §0q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                                    §§goto(addr263);
                                 }
                              }
                              _loc6_ = new (_loc5_ = §[!D§.§8!N§(_loc2_.§9`§))();
                              if(!(_loc9_ && _loc2_))
                              {
                                 §0q§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§goto(addr263);
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr299);
                           }
                           §§goto(addr263);
                        }
                        §§goto(addr209);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §0!N§(param1:Array, param2:int, param3:Number, param4:§7!K§) : Number
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
         var _loc6_:Class = §[!D§.§8!N§(this.§]C§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc15_ && param1))
            {
               §§push(AngryBirdsFP11.§`I§.isLevelOpen(_loc10_));
               if(!(_loc15_ && param3))
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc14_ || param2))
               {
                  break;
               }
            }
            _loc12_ = this.§1!E§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            §§push(_loc11_);
            loop1:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              _loc13_.@MouseUp = _loc10_;
                              addr221:
                              while(true)
                              {
                              }
                           }
                           addr218:
                        }
                        while(true)
                        {
                           _loc13_.@scaleOnMouseOver = "True";
                           _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                           loop10:
                           while(true)
                           {
                              if(!_loc15_)
                              {
                                 §§push(_loc11_);
                                 if(_loc14_ || this)
                                 {
                                    addr143:
                                    if(!(_loc15_ && param3))
                                    {
                                       if(§§pop())
                                       {
                                          _loc12_.MovieClip_Stars.mouseEnabled = false;
                                          if(_loc15_ && param2)
                                          {
                                             break;
                                          }
                                       }
                                       do
                                       {
                                          _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                          while(true)
                                          {
                                             if(_loc15_)
                                             {
                                                continue loop10;
                                             }
                                             §§push(_loc7_);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!(_loc15_ && param1))
                                                {
                                                   addr114:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc7_ = §§pop();
                                                if(_loc14_ || param1)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr114);
                                          }
                                       }
                                       while(false);
                                       
                                       continue loop0;
                                    }
                                    addr184:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       §§goto(addr143);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc14_ || param2)
                                    {
                                       if(_loc15_ && param1)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr221);
                        }
                     }
                     addr216:
                  }
                  while(true)
                  {
                     §§pop();
                     §§goto(addr184);
                  }
               }
            }
         }
         _loc8_ = <Repeater/>;
         §§push(param1);
         loop13:
         while(true)
         {
            §§push(§§pop().length == 15);
            addr320:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     continue loop13;
                  }
                  addr322:
               }
               else
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc15_)
                        {
                           _loc8_.@name = "Repeater_LevelSelection15";
                           break;
                        }
                        continue loop13;
                     }
                     _loc8_.@name = "Repeater_LevelSelection";
                     if(_loc15_)
                     {
                        break;
                     }
                     _loc8_.@button = this.§]C§[param2];
                     _loc8_.@enabled = "True";
                     addr253:
                     _loc8_.@buttonSelectionType = "NO_SELECTION";
                     addr277:
                     if(!(_loc15_ && param2))
                     {
                        _loc8_.@fromLibrary = "true";
                        if(!(_loc15_ && param3))
                        {
                           if(_loc14_)
                           {
                              if(false)
                              {
                                 §§goto(addr253);
                              }
                              var _loc9_:§"]§;
                              (_loc9_ = new §"]§(_loc8_,this.§`1§,null,null)).§90§(_loc5_);
                              if(_loc14_ || param1)
                              {
                                 _loc9_.setVisibility(true);
                                 _loc9_.x += param3;
                                 this.§`1§.addComponent(_loc9_);
                                 addr434:
                                 if(_loc14_ || param2)
                                 {
                                    this.§1+§.push(_loc9_);
                                    addr371:
                                    §§push(param3);
                                    if(!(_loc15_ && this))
                                    {
                                       addr370:
                                       §§push(Number(§§pop() + AngryBirdsFP11.§3!<§));
                                    }
                                    param3 = §§pop();
                                    if(_loc14_ || this)
                                    {
                                       if(_loc14_ || param2)
                                       {
                                          if(_loc14_ || param2)
                                          {
                                             §§push(param3);
                                             if(_loc14_ || param2)
                                             {
                                                if(_loc15_)
                                                {
                                                   §§goto(addr370);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr371);
                                             addr403:
                                          }
                                       }
                                       §§goto(addr434);
                                    }
                                    addr409:
                                    §§goto(addr409);
                                 }
                                 addr430:
                                 §§goto(addr430);
                              }
                              §§goto(addr403);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr253);
                     }
                     addr269:
                     §§goto(addr269);
                  }
                  §§goto(addr270);
                  addr308:
               }
            }
         }
      }
      
      protected function §1!E§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         §§push(param2);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               _loc6_.gotoAndStop("Open");
               loop1:
               while(true)
               {
                  _loc6_.MovieClip_MEInUse.visible = false;
                  §§push(AngryBirdsFP11.§`I§);
                  while(true)
                  {
                     §§push(param1);
                     addr150:
                     addr62:
                     while(true)
                     {
                        §§push(§§pop().§`!C§(§§pop()));
                        addr151:
                        while(true)
                        {
                           if(§§pop() == 100)
                           {
                              continue loop1;
                           }
                           addr119:
                           _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                           _loc6_.MovieClip_Feather.mouseEnabled = false;
                           while(true)
                           {
                           }
                        }
                        continue loop1;
                     }
                     §§push(AngryBirdsFP11.§`I§);
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                     §§push(param1);
                     if(!(_loc9_ && this))
                     {
                        §§push(§§pop().§7j§(§§pop()));
                        if(!(_loc9_ && param2))
                        {
                           _loc7_ = §§pop();
                           if(_loc8_ || this)
                           {
                              addr106:
                              if(!(_loc9_ && this))
                              {
                                 _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
                                 if(!(_loc9_ && param1))
                                 {
                                    addr31:
                                    return _loc6_;
                                 }
                                 continue loop0;
                              }
                              addr145:
                              while(true)
                              {
                                 §§goto(addr119);
                                 §§goto(addr106);
                              }
                           }
                           else
                           {
                              addr125:
                              while(true)
                              {
                              }
                              addr125:
                           }
                           while(true)
                           {
                              _loc6_.isOpen = param2;
                              continue loop0;
                              §§goto(addr125);
                           }
                           addr114:
                        }
                        else
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr119);
                     }
                     else
                     {
                        §§goto(addr150);
                     }
                  }
               }
            }
            else
            {
               _loc6_.gotoAndStop("Locked");
               §§goto(addr125);
            }
            §§goto(addr114);
         }
      }
      
      protected function §@[§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            if(this.§1+§.length == 1)
            {
               if(!_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc5_)
            {
               this.§3!?§ = new Dictionary();
            }
            var _loc4_:int = 0;
            loop0:
            while(_loc4_ < this.§1+§.length)
            {
               _loc1_ = §[!D§.§8!N§("Button_Dot");
               _loc2_ = new _loc1_();
               _loc2_.x = AngryBirdsFP11.§3!<§ / 2 + _loc3_ - this.§1+§.length * _loc2_.width / 2;
               loop1:
               while(true)
               {
                  _loc2_.y = (§0q§.getItemByName("Button_Next") as §^'§).y - _loc2_.height / 2;
                  loop2:
                  while(true)
                  {
                     if(_loc4_ == this.§?!<§)
                     {
                        _loc2_.gotoAndStop("Selected");
                     }
                     else
                     {
                        _loc2_.gotoAndStop("UnSelected");
                        loop12:
                        while(true)
                        {
                           addr134:
                           while(true)
                           {
                              this.§+q§.mClip.addChild(_loc2_);
                              loop7:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    this.§3!?§[_loc2_] = _loc4_;
                                    if(!(_loc5_ || this))
                                    {
                                       continue loop12;
                                    }
                                    this.§'`§.push(_loc2_);
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          §§push(Number(§§pop() + _loc2_.width));
                                       }
                                       _loc3_ = §§pop();
                                       while(!(_loc6_ && _loc2_))
                                       {
                                          _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§4s§);
                                          loop10:
                                          while(!(_loc6_ && _loc3_))
                                          {
                                             do
                                             {
                                                _loc2_.buttonMode = true;
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      _loc4_++;
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr66);
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr201:
                                                            while(true)
                                                            {
                                                               (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).y = _loc2_.y - _loc2_.height;
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop10;
                                                      continue loop10;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop7;
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = _loc2_.x;
                                    }
                                    addr210:
                                 }
                                 §§goto(addr201);
                              }
                              continue loop12;
                           }
                        }
                     }
                     §§goto(addr210);
                  }
               }
            }
            if(_loc5_)
            {
               §§push(this.§1+§.length * _loc2_.width);
               if(_loc5_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc6_ && this))
                  {
                     addr268:
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     (§0q§.getItemByName("Button_Next") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
                     addr373:
                     while(true)
                     {
                        (§0q§.getItemByName("Button_Prev") as §^'§).x = AngryBirdsFP11.§3!<§ / 2;
                     }
                     addr373:
                  }
                  loop13:
                  while(true)
                  {
                     (§0q§.getItemByName("Button_Next") as §^'§).x = (§0q§.getItemByName("Button_Next") as §^'§).x + (_loc3_ + 10);
                     while(!(_loc6_ && _loc3_))
                     {
                        (§0q§.getItemByName("Button_Prev") as §^'§).x = (§0q§.getItemByName("Button_Prev") as §^'§).x - (_loc3_ + 10);
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc6_)
                           {
                              break loop13;
                           }
                           continue loop13;
                        }
                     }
                     §§goto(addr373);
                  }
                  return;
               }
               §§goto(addr268);
            }
            §§goto(addr373);
         }
         addr31:
      }
      
      protected function §>!M§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§!>§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc1_)
                  {
                     addr43:
                     this.§!>§.clean();
                  }
               }
               var _loc1_:int = 0;
               while(true)
               {
                  if(_loc1_ >= this.§'`§.length)
                  {
                     loop1:
                     while(!_loc2_)
                     {
                        this.§'`§ = [];
                        do
                        {
                           §§push(this.§`1§);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop().mClip.numChildren <= 0)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    if(_loc2_ && _loc1_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          this.§'`§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§4s§);
                                          §§push(this.§+q§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          addr154:
                                          addr125:
                                          while(§§pop().mClip.contains(this.§'`§[_loc1_]))
                                          {
                                             continue loop3;
                                          }
                                          _loc1_++;
                                          break loop1;
                                       }
                                       §§pop().mClip.removeChild(this.§'`§[_loc1_]);
                                       break;
                                    }
                                    this.§1+§ = [];
                                 }
                                 return;
                              }
                              §§push(this.§`1§);
                           }
                           §§pop().mClip.removeChildAt(0);
                        }
                        while(_loc3_ || _loc3_);
                        
                        §§goto(addr125);
                     }
                     continue;
                  }
                  §§push(this.§+q§);
                  §§goto(addr154);
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §4s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§,%§)
            {
               if(!(_loc2_ && param1))
               {
                  this.§[!%§(this.§3!?§[param1.target]);
               }
            }
         }
      }
      
      protected function §%!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§,%§)
            {
               if(!_loc2_)
               {
                  mNextState = §0!5§.§-A§;
               }
            }
         }
      }
      
      protected function §[!%§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§,%§ = true;
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() > this.§1+§.length - 1)
               {
                  while(true)
                  {
                     §§push(this.§1+§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop().length - 1);
                        if(!_loc6_)
                        {
                           §§push(int(§§pop()));
                           while(true)
                           {
                              param1 = §§pop();
                              addr100:
                              loop5:
                              while(true)
                              {
                                 this.§?!<§ = param1;
                                 addr104:
                                 while(true)
                                 {
                                    addr64:
                                    addr110:
                                    while(true)
                                    {
                                       §§push(this.§?!<§);
                                       addr67:
                                       while(_loc7_ || param2)
                                       {
                                          continue loop0;
                                       }
                                       addr112:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          addr113:
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                    addr110:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr112);
                                       }
                                    }
                                 }
                              }
                              addr143:
                              §§goto(addr153);
                           }
                           addr135:
                        }
                        else
                        {
                           §§goto(addr153);
                        }
                        if(§§pop())
                        {
                           §§push(§§pop() / 1024);
                           if(_loc7_ || this)
                           {
                              §§push(Number(§§pop()));
                              if(_loc7_ || this)
                              {
                                 addr207:
                                 §§push(§§pop());
                                 if(_loc7_ || _loc3_)
                                 {
                                    var _loc5_:* = §§pop();
                                    addr228:
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§3!J§);
                                    }
                                    _loc5_ = §§pop();
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(this.§;;§);
                                       if(_loc7_)
                                       {
                                          if(§§pop() != null)
                                          {
                                             addr339:
                                             this.§;;§.stop();
                                             addr337:
                                          }
                                          addr325:
                                          if(param2)
                                          {
                                             this.§`1§.x = _loc3_;
                                             addr330:
                                             §§push(param2);
                                             if(_loc7_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         §§goto(addr337);
                                                      }
                                                      this.§>Z§();
                                                   }
                                                   addr237:
                                                   return;
                                                   addr285:
                                                }
                                                §§push(this.§;;§);
                                                if(!_loc6_)
                                                {
                                                   §§pop().play();
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      if(_loc6_ && param2)
                                                      {
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                addr289:
                                                if(!_loc6_)
                                                {
                                                   §§pop().onComplete = this.§>Z§;
                                                   addr294:
                                                   §§goto(addr330);
                                                }
                                                §§goto(addr339);
                                             }
                                             §§goto(addr325);
                                          }
                                          this.§;;§ = §3C§.§>o§.§<t§(this.§`1§,{"x":_loc3_},null,_loc5_,§3C§.§,k§);
                                          §§goto(addr289);
                                          §§push(this.§;;§);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr207);
                     }
                     else
                     {
                        §§goto(addr143);
                     }
                  }
                  addr121:
               }
               else
               {
                  §§push(param1);
                  while(true)
                  {
                  }
                  addr109:
               }
               §§goto(addr110);
            }
         }
         §§goto(addr113);
      }
      
      protected function §>Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() >= this.§'`§.length)
               {
                  this.§,%§ = false;
                  do
                  {
                     §`!K§.§5!<§(§`!K§.§%;§).§9!F§ = this.§?!<§;
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                        addr99:
                     }
                  }
                  continue;
               }
               addr131:
               if(_loc1_ == this.§?!<§)
               {
                  §§push(this.§'`§);
               }
               else
               {
                  §§push(this.§'`§);
                  if(!_loc2_)
                  {
                     addr127:
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        §§goto(addr99);
                     }
                     while(true)
                     {
                        this.§5!8§(_loc1_);
                        §§goto(addr74);
                     }
                     addr127:
                  }
                  else
                  {
                     addr136:
                     §§push(_loc1_);
                  }
                  §§pop()[§§pop()].gotoAndStop("Selected");
                  (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).x = this.§'`§[_loc1_].x;
                  §§goto(addr127);
               }
               §§goto(addr136);
               §§goto(addr127);
            }
            §§goto(addr131);
         }
      }
      
      protected function §5!8§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§0q§.getItemByName("TextField_LevelNumberSmall") as §@4§).§!!@§.text = §`!K§.§5!<§(§`!K§.§%;§).pageIndexes[param1];
         }
      }
   }
}
