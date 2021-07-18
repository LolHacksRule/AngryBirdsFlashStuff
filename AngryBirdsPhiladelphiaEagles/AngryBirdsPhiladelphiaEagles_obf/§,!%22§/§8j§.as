package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §0!E§.§ H§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §?#§.§1!;§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §8j§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelStartState";
      
      private static var §"k§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-A§ = "LevelStartState";
            do
            {
               §"k§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §"!$§:Boolean = false;
      
      private var §?w§:Boolean = false;
      
      private var §4!I§:§1!;§ = null;
      
      private var §5U§:Boolean = false;
      
      private var §&[§:Boolean = false;
      
      private var § !C§:Number = 0;
      
      private var §-_§:Number = 0;
      
      private var §#!I§:Number = 0;
      
      private var §5!=§:Number = 0;
      
      private var §6%§:Number;
      
      private var §4u§:Number;
      
      private var §6!4§:Number;
      
      private var §&!Q§:Number;
      
      private var §@l§:§ H§;
      
      public function §8j§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §]!H§() : BitmapData
      {
         return §"k§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.init();
         loop0:
         while(true)
         {
            §0q§ = new §`o§(this);
            §0q§.init(§`Z§.§5c§.Views.View_LevelStart[0]);
            this.§4!I§ = new §1!;§(§#! §.§`'§);
            this.§6%§ = (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).height;
            while(true)
            {
               this.§4u§ = (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).height;
               while(_loc1_ || _loc1_)
               {
                  if(_loc1_)
                  {
                     this.§6!4§ = §0q§.getItemByName("Button_LeftMenuOpen").y - 50;
                     do
                     {
                        this.§&!Q§ = §0q§.getItemByName("Button_RightMenuOpen").y - 50;
                     }
                     while(!(_loc1_ || this));
                     
                     if(_loc1_ || this)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            §#! §.§`'§.§^!6§(true);
            §#! §.§;]§(this.§4!I§);
            loop0:
            while(true)
            {
               this.§4!I§.init();
               while(true)
               {
                  this.§[5§();
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     continue loop0;
                     while(true)
                     {
                        §0q§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§`I§.§-!7§ ? false : true);
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
         §§goto(addr57);
      }
      
      protected function §[5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            AngryBirdsFP11.§[5§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_)
         {
            if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
            {
               loop0:
               while(true)
               {
                  this.§6!4§ = §0q§.getItemByName("Button_LeftMenuOpen").y - 50;
                  do
                  {
                     this.§&!Q§ = §0q§.getItemByName("Button_RightMenuOpen").y - 50;
                     this.§<B§(param1);
                     if(!this.§?w§)
                     {
                        §#! §.controller.update(param1);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        if(_loc4_ && this)
                        {
                           addr123:
                           return _loc2_;
                           addr122:
                        }
                     }
                     if(mNextState.length <= 0)
                     {
                        break;
                     }
                     if(_loc3_ || param1)
                     {
                        return §'!#§.STATE_STATUS_COMPLETED;
                     }
                  }
                  while(!_loc3_);
                  
                  return §'!#§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr122);
         }
         §§goto(addr123);
      }
      
      private function §<B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).mClip.scrollRect = new Rectangle(0,0,(§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).width,this.§6%§ + 20 - (this.§6%§ - this.§#!I§));
         loop0:
         while(true)
         {
            (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).mClip.scrollRect = new Rectangle(0,0,(§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).width,this.§4u§ + 20 - (this.§4u§ - this.§5!=§));
            §§push(this.§5U§);
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).setVisibility(true);
                     addr637:
                     while(true)
                     {
                        §§push(this.§ !C§);
                        §§push(90);
                        addr612:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop54:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§ !C§);
                                 if(!_loc2_)
                                 {
                                    §§push(0.3);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§ !C§ = §§pop();
                                 addr625:
                                 while(true)
                                 {
                                    continue loop54;
                                 }
                              }
                              addr613:
                           }
                           while(true)
                           {
                              §§push(this.§ !C§);
                              §§push(90);
                              addr603:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§ !C§ = 90;
                                       addr607:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr604:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§#!I§);
                                    §§push(this.§6%§);
                                    addr576:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(this);
                                                §§push(this.§#!I§);
                                                if(!_loc2_)
                                                {
                                                   §§push(0.5);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§#!I§ = §§pop();
                                                while(true)
                                                {
                                                   addr560:
                                                   while(true)
                                                   {
                                                      §§push(this.§#!I§);
                                                      addr563:
                                                      while(true)
                                                      {
                                                         §§push(this.§6%§);
                                                         addr565:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               this.§#!I§ = this.§6%§;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr598:
                                             }
                                             else
                                             {
                                                §§goto(addr604);
                                             }
                                          }
                                          §§goto(addr607);
                                          addr577:
                                       }
                                       §§goto(addr560);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr630:
               }
               else
               {
                  §§push(this.§ !C§);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() > 0)
                     {
                        §§push(this);
                        §§push(this.§ !C§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(0.3);
                           if(!_loc2_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§ !C§ = §§pop();
                     }
                     if(this.§ !C§ < 0)
                     {
                        this.§ !C§ = 0;
                        while(true)
                        {
                        }
                        addr527:
                     }
                     loop3:
                     while(true)
                     {
                        if(this.§#!I§ > 0)
                        {
                           if(!(_loc2_ && this))
                           {
                              addr518:
                              §§push(this);
                              §§push(this.§#!I§);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(0.5);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§#!I§ = §§pop();
                              while(true)
                              {
                              }
                              addr518:
                           }
                           else
                           {
                              §§goto(addr625);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§#!I§);
                           §§push(0);
                           loop16:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 continue loop1;
                              }
                              loop17:
                              while(true)
                              {
                                 (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).setVisibility(false);
                                 loop18:
                                 while(true)
                                 {
                                    this.§#!I§ = 0;
                                    while(true)
                                    {
                                       continue loop1;
                                       loop36:
                                       for(; !(_loc2_ && _loc3_); §§push(this),§§push(this.§5!=§),if(!_loc2_)
                                       {
                                          §§push(0.5);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       },§§pop().§5!=§ = §§pop())
                                       {
                                          loop37:
                                          while(true)
                                          {
                                             §§push(this.§5!=§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(0);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         loop48:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  addr425:
                                                                  loop44:
                                                                  while(true)
                                                                  {
                                                                     addr434:
                                                                     §§push(this);
                                                                     §§push(this.§-_§);
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§push(0.5);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop() * param1);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     addr442:
                                                                     §§pop().§-_§ = §§pop();
                                                                     while(!_loc2_)
                                                                     {
                                                                        (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y = (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y - 0.5 * param1;
                                                                        while(true)
                                                                        {
                                                                           addr69:
                                                                           if(_loc2_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(§0q§.getItemByName("Container_MenuRightButtons") as §[Q§);
                                                                           §§push(this.§&!Q§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() - this.§5!=§);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop36;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§goto(addr598);
                                                                        }
                                                                        continue loop44;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  addr425:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§-_§);
                                                                  §§push(180);
                                                                  addr381:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        while(_loc3_ || param1)
                                                                        {
                                                                           this.§-_§ = 180;
                                                                           loop43:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§5!=§);
                                                                                    addr337:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§4u§);
                                                                                       loop27:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             loop28:
                                                                                             while(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§5!=§);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().§5!=§ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§5!=§);
                                                                                                   addr318:
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§4u§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop43;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               this.§5!=§ = this.§4u§;
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr88:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr465:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop48;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop48;
                                                                                                               }
                                                                                                               if(_loc2_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr69);
                                                                                                            }
                                                                                                            §§goto(addr425);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr137:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               (§0q§.getItemByName("Button_LeftMenuOpen") as §^'§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               (§0q§.getItemByName("Button_RightMenuOpen") as §^'§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  this.§5!=§ = 0;
                                                                                                                  continue;
                                                                                                                  addr203:
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     (§0q§.getItemByName("Button_LeftMenuOpen") as §^'§).mClip.MovieClip_LeftMenuImage.rotation = this.§ !C§;
                                                                                                                     (§0q§.getItemByName("Button_RightMenuOpen") as §^'§).mClip.MovieClip_RightMenuImage.rotation = this.§-_§;
                                                                                                                     §§goto(addr88);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr630);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).setVisibility(true);
                                                                                                                        §§goto(addr465);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr456:
                                                                                                               }
                                                                                                               §§goto(addr637);
                                                                                                            }
                                                                                                            §§goto(addr417);
                                                                                                            §§goto(addr333);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                      addr246:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_ && this)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               do
                                                                                                               {
                                                                                                                  this.§-_§ = 0;
                                                                                                               }
                                                                                                               while(_loc3_);
                                                                                                               
                                                                                                               continue loop17;
                                                                                                               addr255:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§5!=§);
                                                                                                               §§push(0);
                                                                                                               addr208:
                                                                                                               while(_loc2_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue loop37;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr613);
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                       §§goto(addr565);
                                                                                    }
                                                                                 }
                                                                                 addr334:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr425);
                                                                              }
                                                                              §§goto(addr434);
                                                                           }
                                                                        }
                                                                        §§goto(addr577);
                                                                        addr382:
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr612);
                                                         }
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr208);
                                                   }
                                                }
                                                §§goto(addr337);
                                             }
                                             else
                                             {
                                                §§goto(addr246);
                                             }
                                          }
                                          §§goto(addr603);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr518);
                        }
                     }
                  }
               }
               §§goto(addr563);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§0q§.getItemByName("Button_Play") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§"!$§ = false;
               while(_loc2_)
               {
                  super.deActivate();
                  if(_loc2_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         §§push("OPEN_LEFT_MENU");
         if(!_loc8_)
         {
            if(§§pop() === _loc6_)
            {
               §§push(!(_loc8_ && this) ? 0 : 9);
            }
            else
            {
               §§push("OPEN_RIGHT_MENU");
               §§push(_loc6_);
               if(!(_loc8_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(1);
                        if(!(_loc7_ || param2))
                        {
                           addr392:
                        }
                     }
                     else
                     {
                        addr370:
                        §§push(2);
                        if(!(_loc7_ || param2))
                        {
                           addr408:
                        }
                     }
                     §§goto(addr547);
                  }
                  else
                  {
                     §§push("PLAY_LEVEL");
                     if(_loc7_ || this)
                     {
                        §§push(_loc6_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§goto(addr370);
                              }
                              else
                              {
                                 addr508:
                                 addr547:
                                 loop5:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       if(this.§5U§)
                                       {
                                          addr307:
                                          this.§5U§ = false;
                                       }
                                       else
                                       {
                                          this.§5U§ = true;
                                          addr301:
                                       }
                                       break;
                                    case 1:
                                       addr283:
                                       if(this.§&[§)
                                       {
                                          addr284:
                                          this.§&[§ = false;
                                          if(!(_loc7_ || param3))
                                          {
                                             §§goto(addr307);
                                          }
                                       }
                                       else
                                       {
                                          this.§&[§ = true;
                                          addr267:
                                       }
                                       break;
                                    case 2:
                                       §[!7§.playSound("Menu_Confirm");
                                       mNextState = §@D§.§-A§;
                                       if(_loc7_ || param2)
                                       {
                                          break;
                                       }
                                       §§goto(addr284);
                                       break;
                                       addr260:
                                    case 3:
                                       §0q§.setItemVisibility("Container_MenuButtons",!§0q§.getItemByName("Container_MenuButtons").visible);
                                       break;
                                       addr240:
                                    case 4:
                                       break;
                                    case 5:
                                       break;
                                    case 6:
                                       _loc4_ = !§#! §.§#!-§();
                                       §#! §.§!Y§(_loc4_);
                                       §0q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                       break;
                                       addr228:
                                    case 7:
                                       §[!7§.playSound("Menu_Confirm");
                                       AngryBirdsFP11.§`y§.§,,§();
                                       break;
                                       addr203:
                                       addr196:
                                    case 8:
                                       §[!7§.playSound("Menu_Confirm");
                                       addr189:
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       §§goto(addr267);
                                       break;
                                    case 9:
                                       §[!7§.playSound("Menu_Confirm");
                                       if(_loc7_)
                                       {
                                          mNextState = §,!#§.§-A§;
                                          addr166:
                                          if(_loc7_ || this)
                                          {
                                             this.§5U§ = false;
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             §§goto(addr189);
                                          }
                                          else
                                          {
                                             §§goto(addr228);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr301);
                                       }
                                       break;
                                    case 10:
                                       §[!7§.playSound("Menu_Confirm");
                                       §§push(!AngryBirdsFP11.§5e§());
                                       while(true)
                                       {
                                          if(!(_loc8_ && param3))
                                          {
                                             _loc5_ = §§pop();
                                             AngryBirdsFP11.§6r§(_loc5_);
                                             continue;
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr284);
                                    case 11:
                                       break;
                                    case 12:
                                       if(this.§@l§ == null)
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                this.§@l§ = new § H§("http://www.youtube.com/v/-eyig_V-_5o");
                                                loop2:
                                                while(true)
                                                {
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      while(true)
                                                      {
                                                         (§0q§.getItemByName("MovieClip_YouTubeArea") as §!o§).changeMovieClip(this.§@l§);
                                                         if(!_loc8_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr124);
                                                      addr38:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr240);
                                                   }
                                                }
                                                break loop5;
                                             }
                                             §§goto(addr166);
                                             §§goto(addr283);
                                          }
                                       }
                                       §§goto(addr311);
                                 }
                                 return;
                                 §§push(10);
                              }
                              §§goto(addr547);
                           }
                           else
                           {
                              §§push("OPEN_MENU");
                              if(!_loc8_)
                              {
                                 addr382:
                                 if(§§pop() === _loc6_)
                                 {
                                    §§push(3);
                                    if(_loc7_ || param1)
                                    {
                                       §§goto(addr392);
                                    }
                                    else
                                    {
                                       addr434:
                                       §§goto(addr547);
                                    }
                                 }
                                 else
                                 {
                                    §§push("OPEN_AVATAR_CREATOR");
                                    §§push(_loc6_);
                                    if(_loc7_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_ || this)
                                          {
                                             §§push(4);
                                             if(!_loc8_)
                                             {
                                                §§goto(addr408);
                                             }
                                             else
                                             {
                                                §§goto(addr434);
                                             }
                                          }
                                          else
                                          {
                                             addr454:
                                             §§push(6);
                                             if(_loc7_)
                                             {
                                                §§goto(addr547);
                                             }
                                             else
                                             {
                                                §§goto(addr508);
                                             }
                                          }
                                          §§goto(addr547);
                                       }
                                       else
                                       {
                                          §§push("TOGGLE_SOUNDS");
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc8_ && this))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      §§goto(addr434);
                                                      §§push(5);
                                                   }
                                                   §§goto(addr547);
                                                }
                                                else
                                                {
                                                   §§push("TOGGLE_PARTICLES");
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_ || param3)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr454);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr498);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("FULLSCREEN_BUTTON");
                                                            if(_loc7_)
                                                            {
                                                               addr461:
                                                               if(§§pop() === _loc6_)
                                                               {
                                                                  §§goto(addr547);
                                                                  §§push(7);
                                                               }
                                                               else
                                                               {
                                                                  §§push("OPEN_CREDITS");
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr473:
                                                                     §§push(_loc6_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr476:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              §§push(8);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§goto(addr547);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr508);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr498);
                                                                           }
                                                                           §§goto(addr547);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("CREDITS_BUTTON");
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              addr497:
                                                                              if(§§pop() === _loc6_)
                                                                              {
                                                                                 §§goto(addr498);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("SOUNDS_BUTTON");
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr504:
                                                                                    addr503:
                                                                                    if(§§pop() === _loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr508);
                                                                                       }
                                                                                       §§goto(addr547);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push("POPUP_CREDITS_CLOSE");
                                                                                       if(!(_loc8_ && param3))
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(!(_loc8_ && param3))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                §§goto(addr547);
                                                                                                §§push(11);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr540:
                                                                                                if("ME_POPUP_VIDEO" !== _loc6_)
                                                                                                {
                                                                                                   §§goto(addr547);
                                                                                                   §§push(13);
                                                                                                }
                                                                                                §§goto(addr547);
                                                                                             }
                                                                                             §§goto(addr547);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr540);
                                                                                    }
                                                                                    §§push(12);
                                                                                 }
                                                                              }
                                                                              §§goto(addr547);
                                                                           }
                                                                        }
                                                                        §§goto(addr547);
                                                                     }
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               §§goto(addr547);
                                                            }
                                                            §§goto(addr540);
                                                         }
                                                         §§goto(addr547);
                                                      }
                                                      §§goto(addr540);
                                                   }
                                                   §§goto(addr461);
                                                }
                                             }
                                             §§goto(addr504);
                                          }
                                          §§goto(addr473);
                                       }
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr547);
                              }
                              §§goto(addr503);
                           }
                        }
                     }
                     §§goto(addr497);
                  }
               }
               §§goto(addr540);
            }
            §§goto(addr547);
         }
         §§goto(addr382);
      }
   }
}
