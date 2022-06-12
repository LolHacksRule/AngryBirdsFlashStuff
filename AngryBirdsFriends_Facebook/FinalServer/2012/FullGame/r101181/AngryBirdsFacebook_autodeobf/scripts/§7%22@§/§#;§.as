package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §3![§.§1F§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §<a§.§0B§;
   import §]!A§.;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#;§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §0"'§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            STATE_NAME = "LevelStartState";
         }
         do
         {
            §0"'§ = null;
         }
         while(_loc2_);
         
      }
      
      private var §>"&§:Boolean = false;
      
      private var §!!S§:Boolean = false;
      
      private var §[$§:§1F§ = null;
      
      private var §<!4§:Boolean = false;
      
      private var §1@§:Boolean = false;
      
      private var §4!'§:Number = 0;
      
      private var §,"7§:Number = 0;
      
      private var §-!b§:Number = 0;
      
      private var §+!'§:Number = 0;
      
      private var §9"A§:Number;
      
      private var §8C§:Number;
      
      private var §;3§:Number;
      
      private var §,!Y§:Number;
      
      private var §1!m§:§0B§;
      
      public function §#;§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §?r§() : BitmapData
      {
         return §0"'§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               loop2:
               while(!(_loc1_ && this))
               {
                  this.§[$§ = new §1F§(§#6§.§6!z§);
                  loop3:
                  while(true)
                  {
                     this.§9"A§ = (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).height;
                     loop4:
                     while(true)
                     {
                        this.§8C§ = (§6w§.getItemByName("Container_MenuRightButtons") as §08§).height;
                        loop5:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop4;
                           }
                           if(_loc1_)
                           {
                              continue loop3;
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           this.§;3§ = §6w§.getItemByName("Button_LeftMenuOpen").y - 50;
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              §6w§.init(§ "A§.§4[§.Views.View_LevelStart[0]);
                              break loop5;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §#6§.§6!z§.§3H§(true);
               loop1:
               while(true)
               {
                  §#6§.setController(this.§[$§);
                  loop2:
                  while(true)
                  {
                     this.§[$§.init();
                     loop3:
                     for(; _loc1_; if(!_loc1_)
                     {
                        continue;
                     },if(_loc2_)
                     {
                        continue loop2;
                     },if(!_loc1_)
                     {
                        continue loop0;
                     },§§goto(addr100))
                     {
                        this.playThemeMusic();
                        loop4:
                        while(true)
                        {
                           §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3>§());
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr100:
                              §6w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§#6§.§&9§());
                              do
                              {
                                 §6w§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§>!k§ ? false : true);
                              }
                              while(_loc2_);
                              
                              if(_loc1_ || _loc2_)
                              {
                                 return;
                                 addr59:
                              }
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            AngryBirdsFP11.playThemeMusic();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§;3§ = §6w§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     while(_loc3_ || param1)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§,!Y§ = §6w§.getItemByName("Button_RightMenuOpen").y - 50;
                           loop2:
                           while(true)
                           {
                              this.§`n§(param1);
                              loop3:
                              do
                              {
                                 if(this.§!!S§)
                                 {
                                    for(; mNextState.length > 0; §§goto(addr91))
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             continue loop3;
                                          }
                                          continue;
                                       }
                                       §§goto(addr61);
                                    }
                                    addr31:
                                 }
                                 while(_loc3_ || param1)
                                 {
                                    while(true)
                                    {
                                       §#6§.§'" §.update(param1);
                                       addr91:
                                       while(true)
                                       {
                                       }
                                    }
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr31);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                                 return §1-§.STATE_STATUS_RUNNING;
                              }
                              while(!(_loc3_ || param1));
                              
                              return §1-§.STATE_STATUS_COMPLETED;
                           }
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr87);
      }
      
      private function §`n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).mClip.scrollRect = new Rectangle(0,0,(§6w§.getItemByName("Container_MenuLeftButtons") as §08§).width,this.§9"A§ + 20 - (this.§9"A§ - this.§-!b§));
            while(true)
            {
               (§6w§.getItemByName("Container_MenuRightButtons") as §08§).mClip.scrollRect = new Rectangle(0,0,(§6w§.getItemByName("Container_MenuRightButtons") as §08§).width,this.§8C§ + 20 - (this.§8C§ - this.§+!'§));
               while(true)
               {
                  §§push(this.§<!4§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§4!'§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr690:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(this);
                                       §§push(this.§4!'§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(0.3);
                                          if(_loc3_ || this)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§4!'§ = §§pop();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§4!'§);
                                                continue loop3;
                                             }
                                             addr666:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§-!b§ = this.§9"A§;
                                                addr740:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr736:
                                          }
                                       }
                                       addr720:
                                    }
                                    else
                                    {
                                       loop89:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§-!b§);
                                          if(_loc3_)
                                          {
                                             §§push(0.5);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§-!b§ = §§pop();
                                          addr759:
                                          while(true)
                                          {
                                             loop75:
                                             while(true)
                                             {
                                                §§push(this.§-!b§);
                                                addr726:
                                                while(true)
                                                {
                                                   §§push(this.§9"A§);
                                                   addr728:
                                                   addr746:
                                                   while(_loc3_ || _loc3_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§goto(addr736);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         continue loop89;
                                                      }
                                                      continue loop75;
                                                      §§goto(addr728);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr747:
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr691:
                              }
                              §§goto(addr666);
                           }
                        }
                     }
                     §§goto(addr803);
                  }
               }
               while(_loc3_ || this)
               {
                  §§goto(addr774);
                  §§push(this.§4!'§);
               }
            }
         }
         §§goto(addr747);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§6w§.getItemByName("Button_Play") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§>"&§ = false;
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     super.deActivate();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!(_loc8_ && param1))
         {
            §§push("OPEN_LEFT_MENU");
            if(!_loc8_)
            {
               §§push(_loc6_);
               if(!(_loc8_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(0);
                        if(_loc8_ && this)
                        {
                           addr586:
                        }
                     }
                     else
                     {
                        addr550:
                        §§push(6);
                        if(_loc8_)
                        {
                           addr622:
                        }
                     }
                  }
                  else
                  {
                     §§push("OPEN_RIGHT_MENU");
                     if(!_loc8_)
                     {
                        addr419:
                        §§push(_loc6_);
                        if(!_loc8_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc8_)
                              {
                                 §§push(1);
                                 if(_loc8_ && this)
                                 {
                                    addr512:
                                 }
                              }
                              else
                              {
                                 addr614:
                                 §§push(9);
                                 if(_loc7_ || param3)
                                 {
                                    §§goto(addr622);
                                 }
                              }
                              §§goto(addr700);
                           }
                           else
                           {
                              §§push("PLAY_LEVEL");
                              if(_loc7_ || param3)
                              {
                                 §§push(_loc6_);
                                 if(_loc7_ || param2)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || param3)
                                       {
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§goto(addr700);
                                          }
                                          else
                                          {
                                             §§goto(addr622);
                                          }
                                       }
                                       else
                                       {
                                          addr680:
                                          §§push(11);
                                          if(_loc7_ || this)
                                          {
                                             addr688:
                                          }
                                          §§goto(addr700);
                                       }
                                       §§goto(addr700);
                                    }
                                    else
                                    {
                                       §§push("OPEN_MENU");
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc8_ && param1))
                                          {
                                             addr478:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(3);
                                                   if(_loc7_ || this)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr527:
                                                   §§push(5);
                                                   if(_loc8_)
                                                   {
                                                      addr650:
                                                   }
                                                }
                                                §§goto(addr700);
                                             }
                                             else
                                             {
                                                §§push("OPEN_AVATAR_CREATOR");
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc7_)
                                                   {
                                                      addr501:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            §§push(4);
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr512);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr586);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr614);
                                                         }
                                                         §§goto(addr700);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(!_loc8_)
                                                         {
                                                            addr516:
                                                            §§push(_loc6_);
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§goto(addr527);
                                                                  }
                                                                  §§goto(addr700);
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr542:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              §§goto(addr550);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr596:
                                                                              §§push(8);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§goto(addr700);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr650);
                                                                              }
                                                                           }
                                                                           §§goto(addr700);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr562:
                                                                              §§push(_loc6_);
                                                                              if(_loc7_ || param3)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       §§push(7);
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          §§goto(addr586);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr622);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr596);
                                                                                    }
                                                                                    §§goto(addr700);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("OPEN_CREDITS");
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr593:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§goto(addr596);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr614);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("CREDITS_BUTTON");
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr608:
                                                                                                §§push(_loc6_);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr611:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr692:
                                                                                                         §§push(12);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr700);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("SOUNDS_BUTTON");
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr626:
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            addr634:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc7_ || param2)
                                                                                                               {
                                                                                                                  §§push(10);
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr650);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr688);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr680);
                                                                                                               }
                                                                                                               §§goto(addr700);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push("POPUP_CREDITS_CLOSE");
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr654:
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     addr662:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && param2))
                                                                                                                        {
                                                                                                                           §§goto(addr680);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr692);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr690:
                                                                                                                        §§push("ME_POPUP_VIDEO");
                                                                                                                        §§push(_loc6_);
                                                                                                                     }
                                                                                                                     §§goto(addr692);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr690);
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            §§goto(addr692);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr700:
                                                                                                            loop13:
                                                                                                            switch(§§pop())
                                                                                                            {
                                                                                                               case 0:
                                                                                                                  addr376:
                                                                                                                  if(this.§<!4§)
                                                                                                                  {
                                                                                                                     addr377:
                                                                                                                     this.§<!4§ = false;
                                                                                                                     addr380:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this.§<!4§ = true;
                                                                                                                     addr371:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               case 1:
                                                                                                                  addr358:
                                                                                                                  §§push(this.§1@§);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr361:
                                                                                                                        this.§1@§ = false;
                                                                                                                        addr364:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        this.§1@§ = true;
                                                                                                                        addr342:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr376);
                                                                                                                  break;
                                                                                                               case 2:
                                                                                                                  §>!E§.§7N§("Menu_Confirm");
                                                                                                                  mNextState = §?'§.STATE_NAME;
                                                                                                                  break;
                                                                                                                  addr335:
                                                                                                                  addr328:
                                                                                                               case 3:
                                                                                                                  §6w§.setItemVisibility("Container_MenuButtons",!§6w§.getItemByName("Container_MenuButtons").visible);
                                                                                                                  break;
                                                                                                                  addr322:
                                                                                                               case 4:
                                                                                                                  break;
                                                                                                               case 5:
                                                                                                                  break;
                                                                                                               case 6:
                                                                                                                  addr309:
                                                                                                                  _loc4_ = !§#6§.§&9§();
                                                                                                                  §#6§.§'h§(_loc4_);
                                                                                                                  §6w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                                                                                  addr310:
                                                                                                                  break;
                                                                                                                  addr310:
                                                                                                                  addr298:
                                                                                                                  addr308:
                                                                                                                  addr293:
                                                                                                               case 7:
                                                                                                                  §>!E§.§7N§("Menu_Confirm");
                                                                                                                  AngryBirdsFP11.§@<§.§'!+§();
                                                                                                                  addr271:
                                                                                                                  if(_loc7_ || param3)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr377);
                                                                                                                  break;
                                                                                                                  addr285:
                                                                                                               case 8:
                                                                                                                  §>!E§.§7N§("Menu_Confirm");
                                                                                                                  addr259:
                                                                                                                  if(!(_loc8_ && param3))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr371);
                                                                                                                  break;
                                                                                                               case 9:
                                                                                                                  §>!E§.§7N§("Menu_Confirm");
                                                                                                                  loop0:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc7_ || param3)
                                                                                                                        {
                                                                                                                           mNextState = §9<§.STATE_NAME;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              this.§<!4§ = false;
                                                                                                                              if(!(_loc8_ && param3))
                                                                                                                              {
                                                                                                                                 break loop13;
                                                                                                                              }
                                                                                                                              §§goto(addr361);
                                                                                                                           }
                                                                                                                           addr234:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr380);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr310);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               case 10:
                                                                                                                  §>!E§.§7N§("Menu_Confirm");
                                                                                                                  loop1:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_ || param3)
                                                                                                                     {
                                                                                                                        if(_loc7_ || param3)
                                                                                                                        {
                                                                                                                           §§push(AngryBirdsFP11.§3>§());
                                                                                                                           loop2:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 loop3:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ && param3)
                                                                                                                                    {
                                                                                                                                       break loop2;
                                                                                                                                    }
                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                    loop4:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          AngryBirdsFP11.§@i§(_loc5_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || param3)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_ && this)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§goto(addr285);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr234);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr298);
                                                                                                                                          addr162:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr259);
                                                                                                                                       }
                                                                                                                                       addr106:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          if(_loc7_ || param3)
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || this)
                                                                                                                                             {
                                                                                                                                                break loop13;
                                                                                                                                             }
                                                                                                                                             §§goto(addr322);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr271);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr371);
                                                                                                                                 }
                                                                                                                                 §§goto(addr310);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr308);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr309);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr335);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     addr148:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ && param3)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§goto(addr99);
                                                                                                                        }
                                                                                                                        §§goto(addr364);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr221);
                                                                                                               case 11:
                                                                                                                  break;
                                                                                                               case 12:
                                                                                                                  if(this.§1!m§ == null)
                                                                                                                  {
                                                                                                                     loop7:
                                                                                                                     for(; _loc7_ || param1; if(!(_loc7_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },if(_loc7_)
                                                                                                                     {
                                                                                                                        (§6w§.getItemByName("MovieClip_YouTubeArea") as §7"-§).setVisibility(true);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§goto(addr31);
                                                                                                                        }
                                                                                                                        break loop13;
                                                                                                                     },§§goto(addr342))
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              this.§1!m§ = new §0B§("http://www.youtube.com/v/-eyig_V-_5o");
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr47:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    (§6w§.getItemByName("MovieClip_YouTubeArea") as §7"-§).changeMovieClip(this.§1!m§);
                                                                                                                                    if(!(_loc7_ || param1))
                                                                                                                                    {
                                                                                                                                       break loop13;
                                                                                                                                    }
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 addr31:
                                                                                                                                 continue loop7;
                                                                                                                                 if(_loc8_ && param2)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                 {
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       addr381:
                                                                                                                                       break loop13;
                                                                                                                                    }
                                                                                                                                    §§goto(addr47);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr148);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr342);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr328);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr293);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr106);
                                                                                                                  }
                                                                                                                  §§goto(addr381);
                                                                                                            }
                                                                                                            return;
                                                                                                            §§push(13);
                                                                                                         }
                                                                                                         §§goto(addr700);
                                                                                                      }
                                                                                                      §§goto(addr654);
                                                                                                   }
                                                                                                   §§goto(addr692);
                                                                                                }
                                                                                                §§goto(addr634);
                                                                                             }
                                                                                             §§goto(addr626);
                                                                                          }
                                                                                          §§goto(addr700);
                                                                                       }
                                                                                       §§goto(addr662);
                                                                                    }
                                                                                    §§goto(addr654);
                                                                                 }
                                                                              }
                                                                              §§goto(addr634);
                                                                           }
                                                                           §§goto(addr608);
                                                                        }
                                                                     }
                                                                     §§goto(addr634);
                                                                  }
                                                                  §§goto(addr690);
                                                               }
                                                            }
                                                            §§goto(addr593);
                                                         }
                                                         §§goto(addr562);
                                                      }
                                                   }
                                                   §§goto(addr611);
                                                }
                                                §§goto(addr626);
                                             }
                                          }
                                          §§goto(addr634);
                                       }
                                       §§goto(addr654);
                                    }
                                 }
                                 §§goto(addr478);
                              }
                              §§goto(addr516);
                           }
                        }
                        §§goto(addr501);
                     }
                     §§goto(addr626);
                  }
                  §§goto(addr700);
               }
               §§goto(addr542);
            }
            §§goto(addr419);
         }
         §§goto(addr550);
      }
   }
}
