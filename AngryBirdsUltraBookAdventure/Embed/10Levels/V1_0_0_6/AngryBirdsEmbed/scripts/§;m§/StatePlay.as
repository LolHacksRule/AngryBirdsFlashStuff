package §;m§
{
   import §#h§.§ !H§;
   import §%!6§.§'[§;
   import §%!6§.§;!$§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §2?§.§&h§;
   import §3G§.§3X§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §>K§.§7R§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §6!C§
   {
      
      public static const §-!A§:String = "StatePlay";
      
      public static const §>!A§:int = 50;
      
      protected static const §`!6§:String = "MightyEagleButtonVisible";
      
      protected static const § r§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §6!H§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §-!A§ = "StatePlay";
            if(_loc1_ || StatePlay)
            {
               §>!A§ = 50;
               if(_loc1_)
               {
                  addr58:
                  §`!6§ = "MightyEagleButtonVisible";
                  if(_loc1_)
                  {
                     § r§ = "MightyEagleButtonPrepareHide";
                     if(_loc2_ && StatePlay)
                     {
                     }
                     §§goto(addr76);
                  }
               }
               §6!H§ = "MightyEagleButtonHide";
            }
            addr76:
            return;
         }
         §§goto(addr58);
      }
      
      protected var §6?§:§'[§;
      
      protected var §`!5§:§3_§;
      
      protected var §9!#§:String;
      
      protected var §'z§:Boolean;
      
      private var §=!7§:Vector.<int>;
      
      private var §#"§:Boolean;
      
      private var §%!?§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§6?§ = new §'[§();
            if(!(_loc3_ && _loc3_))
            {
               this.§=!7§ = new Vector.<int>(32);
               super(param1,param2);
               addr42:
               if(!(_loc3_ && param1))
               {
                  this.§=!7§[3] = 5000;
                  if(_loc4_)
                  {
                     this.§=!7§[7] = 5000;
                     if(_loc4_ || _loc3_)
                     {
                        this.§=!7§[8] = 5000;
                        if(_loc4_ || this)
                        {
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr111);
            }
            addr104:
            this.§=!7§[9] = 5000;
            if(!_loc3_)
            {
               addr111:
               this.§=!7§[12] = 5000;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            if(!_loc1_)
            {
               §-f§ = new §0#§(this);
               if(_loc1_)
               {
               }
               §§goto(addr48);
            }
            §-f§.init(§06§.§-`§.Views.View_LevelPlay[0]);
         }
         addr48:
      }
      
      protected function §2w§() : void
      {
      }
      
      private function §-!#§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§-f§.getItemByName("TextField_METimer") as §<k§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         § !H§.§[!<§();
         if(_loc2_)
         {
            super.levelStarted();
            if(!_loc1_)
            {
               addr35:
               if(§-f§.getItemByName("Button_MightyEagle"))
               {
                  §§goto(addr49);
               }
               §§goto(addr61);
            }
            addr49:
            §-f§.getItemByName("Button_MightyEagle").setVisibility(true);
            if(_loc2_ || _loc1_)
            {
               addr61:
               §§push(§ !H§);
               §§push("LevelStartsBirdsMilitary");
               if(!_loc1_)
               {
                  §§push(§§pop() + (1 + int(Math.random() * 2)));
               }
               §§pop().§ !%§(§§pop());
            }
            this.§@=§();
            return;
         }
         §§goto(addr35);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-f§.getItemByName("TextField_METimer").setVisibility(false);
            if(!_loc2_)
            {
               §-f§.getItemByName("Container_MEScore").setVisibility(false);
               if(!(_loc2_ && _loc1_))
               {
                  §-f§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  if(!(_loc2_ && this))
                  {
                     addr70:
                     §-f§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §@=§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§6?§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§1!§.§'a§ != null)
         {
            if(!_loc6_)
            {
               _loc1_ = new Bitmap(§1!§.§'a§,"auto",true);
               if(!_loc6_)
               {
                  _loc1_.x = -_loc1_.width / 2;
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc1_.y = -_loc1_.height / 2;
                  }
               }
               _loc2_ = new MovieClip();
               if(!_loc6_)
               {
                  _loc2_.addChild(_loc1_);
                  if(_loc5_ || _loc2_)
                  {
                     _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                     if(_loc6_ && this)
                     {
                     }
                     addr160:
                     this.§9!#§ = §`!6§;
                     if(_loc5_)
                     {
                        §§goto(addr165);
                     }
                     §§goto(addr170);
                  }
                  _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                  if(!(_loc6_ && _loc3_))
                  {
                     (§-f§.getItemByName("MovieClip_AvatarPlaceholder") as §"m§).changeMovieClip(_loc2_);
                     if(_loc6_ && _loc2_)
                     {
                     }
                     §§goto(addr160);
                  }
               }
               §-f§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
               §§goto(addr160);
            }
            addr165:
            this.§`!5§ = null;
            if(!_loc6_)
            {
               addr170:
               this.§'z§ = false;
            }
            return;
         }
         §§goto(addr160);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc1_)
            {
               (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         if(!_loc1_)
         {
            (§-f§.getItemByName("Button_Pause") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         this.deactivateMightyEagleButton();
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§`!5§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr78:
                     this.§`!5§.stop();
                     if(_loc2_)
                     {
                        this.§`!5§ = null;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr78);
      }
      
      protected function §]!5§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc5_ && this))
         {
            if(!this.§#"§)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc1_ = §§pop();
                     addr47:
                     if(_loc4_)
                     {
                        addr45:
                        §§push(0);
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              if(§§pop() >= this.§=!7§.length)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 addr170:
                                 _loc3_ = §§pop();
                                 loop0:
                                 while(true)
                                 {
                                    §§push(getTimer() - _loc3_);
                                    addr177:
                                    while(true)
                                    {
                                       if(§§pop() >= 1000)
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc1_);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop() + this.§=!7§[_loc2_]));
                                 if(_loc5_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                              }
                              §§goto(addr179);
                           }
                        }
                        §§push(§§pop() % 1000);
                        if(_loc4_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr112:
                                    §§pop();
                                    §§push(int(_loc1_ / 1000) == 25);
                                    if(_loc4_ || _loc2_)
                                    {
                                    }
                                    addr135:
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§#"§ = true;
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §;!$§.§]c§(§;!$§.§2F§,§59§.§%j§);
                                             addr164:
                                             if(this.§%!?§)
                                             {
                                                §§goto(addr170);
                                                §§push(int(getTimer()));
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr170);
                                       }
                                       addr179:
                                       return;
                                    }
                                    §§goto(addr164);
                                 }
                                 §§push(!§§pop());
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr135);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr177);
                     }
                  }
                  _loc2_ = §§pop();
                  §§goto(addr47);
               }
               §§goto(addr45);
            }
            §§goto(addr164);
         }
         §§goto(addr47);
      }
      
      protected function §<s§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §^R§.getScore();
         §§push(this.§6?§.getValue());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_ < _loc1_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §§push(this.§#"§);
                        if(!_loc4_)
                        {
                        }
                        addr87:
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              this.§%!?§ = true;
                           }
                        }
                     }
                     §§goto(addr93);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            §§goto(addr87);
         }
         addr93:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(§&h§.isOpen);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     return §>3§.STATE_STATUS_RUNNING;
                  }
               }
               else
               {
                  addr44:
                  addr40:
                  if(§"h§.§1C§.objects.mSardineCanAdded)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        (§-f§.getItemByName("Container_MEScore") as §1!=§).setVisibility(true);
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     §§goto(addr68);
                  }
                  this.§]!5§();
               }
               addr68:
               §§push(super.run(param1));
               if(!(_loc4_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() != §>3§.STATE_STATUS_RUNNING)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        §§goto(addr89);
                     }
                     else
                     {
                        addr194:
                        §§push(§§pop() == §3X§.§%g§);
                     }
                  }
                  else
                  {
                     this.updateCurrentScore(param1);
                     §§push(this.§9!#§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§`!6§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() == §§pop());
                           §§push(§§pop() == §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(§"h§.§1C§);
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr138);
                                 }
                                 §§goto(addr192);
                              }
                              addr138:
                              if(!§§pop().objects.isPigsAlive())
                              {
                                 if(_loc3_)
                                 {
                                    this.§=!'§();
                                 }
                              }
                              §§push(this.§9!#§);
                              if(_loc3_)
                              {
                                 §§push(§`!6§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop() == §§pop());
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr164:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(_loc3_ || this)
                                          {
                                             §§goto(addr187);
                                          }
                                          addr192:
                                          §§goto(addr194);
                                          §§push(§"h§.§1C§.slingshot.mSlingShotState);
                                       }
                                       addr187:
                                       §§goto(addr188);
                                    }
                                    addr188:
                                    §§goto(addr186);
                                 }
                                 addr186:
                                 §§goto(addr185);
                              }
                              addr185:
                              §§goto(addr197);
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr187);
                  }
                  addr197:
                  if(this.§9!#§ == § r§)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.hideMightyEagleButton();
                     }
                  }
                  return §>3§.STATE_STATUS_RUNNING;
               }
               addr89:
               return §§pop();
            }
            §§goto(addr44);
         }
         §§goto(addr40);
      }
      
      protected function §=!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§9!#§ = § r§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentState(§[4§.§?[§);
         if(!(_loc1_ && _loc2_))
         {
            (§-f§.getItemByName("Button_MightyEagle") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         §§push(this.§`!5§);
         if(!(_loc1_ && this))
         {
            if(§§pop() == null)
            {
               if(_loc2_)
               {
                  this.§`!5§ = §,!G§.§@j§.§47§(§-f§.getItemByName("Container_MightyEagle").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },null,0.5);
                  if(_loc2_ || this)
                  {
                     addr96:
                     this.§9!#§ = §6!H§;
                     addr99:
                     §§push(this.§`!5§);
                     if(_loc2_)
                     {
                        §§pop().onComplete = this.§0!0§;
                     }
                     §§goto(addr108);
                  }
                  addr108:
                  §§pop().play();
                  return;
                  §§push(this.§`!5§);
               }
               §§goto(addr99);
            }
         }
         §§goto(addr96);
      }
      
      protected function §0!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§`!5§ = §,!G§.§@j§.§47§(§-f§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            if(!_loc1_)
            {
               this.§`!5§.play();
               if(_loc2_)
               {
                  this.§9!#§ = §6!H§;
               }
            }
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§"h§.§1C§.objects.mMightyEagleAdded)
            {
               if(_loc1_)
               {
                  §§push(§`!%§.§-!A§);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr45:
                  §§push(§ !F§.§-!A§);
               }
               return §§pop();
            }
         }
         §§goto(addr45);
      }
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
      
      override public function getLoserState() : String
      {
         return §2i§.§-!A§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(!(_loc4_ && _loc2_))
         {
            §§push(82);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() === _loc2_)
               {
                  addr76:
                  §§push(0);
                  if(_loc4_ && _loc2_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
            }
            switch(§§pop())
            {
               case 0:
                  §3'§.§;3§();
                  if(_loc3_)
                  {
                     mNextState = this.§2J§();
                     if(!_loc3_)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(§"h§.§0b§)
            {
               var _loc2_:* = param1.keyCode;
               if(!_loc4_)
               {
                  if(49 === _loc2_)
                  {
                     §§push(0);
                  }
                  else if(50 === _loc2_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr101:
                        §§push(1);
                        if(_loc4_)
                        {
                           addr154:
                        }
                     }
                     else
                     {
                        addr110:
                        §§push(2);
                     }
                  }
                  else
                  {
                     §§push(51);
                     if(!_loc4_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           §§goto(addr110);
                        }
                        else
                        {
                           §§push(52);
                           if(!_loc4_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc4_ && this)
                                 {
                                    addr146:
                                    §§push(4);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr154);
                                    }
                                 }
                              }
                              else if(53 === _loc2_)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr146);
                                 }
                                 else
                                 {
                                    addr165:
                                    §§push(6);
                                 }
                              }
                              else
                              {
                                 §§push(54);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() === _loc2_)
                                    {
                                       addr171:
                                       switch(3)
                                       {
                                          case 0:
                                             break;
                                          case 1:
                                             break;
                                          case 2:
                                             break;
                                          case 3:
                                          case 4:
                                             §3'§.§;3§();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                mNextState = §3'§.§-!A§;
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          case 5:
                                             §3'§.§+^§();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                mNextState = §3'§.§-!A§;
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          case 6:
                                       }
                                       return;
                                       §§push(5);
                                    }
                                    else
                                    {
                                       if(55 === _loc2_)
                                       {
                                          §§goto(addr165);
                                       }
                                       else
                                       {
                                          §§goto(addr171);
                                          §§push(7);
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr171);
               }
               §§goto(addr101);
               addr26:
            }
            §§goto(addr171);
         }
         §§goto(addr26);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(param3 is §6<§)
            {
               if(_loc6_ || param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc6_ || param1)
                  {
                     §§push(§"?§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc6_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              §7R§.§05§();
                              if(_loc6_)
                              {
                                 var _loc4_:* = param2;
                                 addr68:
                                 if(_loc6_)
                                 {
                                    §§push("CLOSE_TUTORIAL");
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr243:
                                                §§push(3);
                                                if(_loc6_ || param3)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push("PAUSE");
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || this)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(1);
                                                         if(_loc5_ && this)
                                                         {
                                                            addr213:
                                                         }
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   else
                                                   {
                                                      §§push("RESTART_LEVEL");
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         addr194:
                                                         §§push(_loc4_);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr202:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(2);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr243);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("MIGHTY_EAGLE");
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                  }
                                                                  addr254:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     addr255:
                                                                     §§push(4);
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr268:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §&h§.§`a§();
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr104:
                                                                           break;
                                                                        case 1:
                                                                           mNextState = this.§"'§();
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr98:
                                                                           mNextState = §3'§.§-!A§;
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr118:
                                                                              break;
                                                                           }
                                                                           §§goto(addr104);
                                                                           break;
                                                                        case 2:
                                                                           §3'§.§;3§();
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              §§goto(addr98);
                                                                           }
                                                                           break;
                                                                        case 3:
                                                                           break;
                                                                        case 4:
                                                                           AngryBirdsFP11.§0P§.§<h§();
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§goto(addr118);
                                                                           }
                                                                     }
                                                                     return;
                                                                     §§push(5);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               addr253:
                                                               §§goto(addr254);
                                                               §§push(_loc4_);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr253);
                                                            §§push("FULLSCREEN_BUTTON");
                                                         }
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr243);
                                 addr68:
                                 addr59:
                              }
                              §§goto(addr68);
                           }
                           addr66:
                           §7R§.§8h§();
                           §§goto(addr68);
                        }
                        else
                        {
                           addr61:
                           §§push(param1);
                           §§push(§"?§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr68);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc6_)
                        {
                           §§goto(addr66);
                        }
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr61);
               }
               §§goto(addr59);
            }
            §§goto(addr68);
         }
         §§goto(addr35);
      }
      
      protected function §"'§() : String
      {
         return §6e§.§-!A§;
      }
      
      protected function §4A§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §"h§.§1C§.§4A§();
         }
         §§push(AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §-f§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            if(!(_loc3_ && this))
            {
               this.§'z§ = true;
               if(_loc2_)
               {
                  addr71:
                  this.hideMightyEagleButton();
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§<s§();
         }
      }
   }
}
