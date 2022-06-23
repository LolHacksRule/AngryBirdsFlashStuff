package §`!%§
{
   import § !;§.§^Y§;
   import § !;§.§`! §;
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §%x§.§3=§;
   import §'X§.§9[§;
   import §0!<§.§%r§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=!4§.§7!1§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends § !>§
   {
      
      public static const §0!7§:String = "StatePlay";
      
      public static const §"2§:int = 50;
      
      protected static const §&4§:String = "MightyEagleButtonVisible";
      
      protected static const §=;§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §#!6§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §0!7§ = "StatePlay";
            if(!(_loc2_ && _loc2_))
            {
               §"2§ = 50;
               if(!_loc2_)
               {
                  §&4§ = "MightyEagleButtonVisible";
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr68);
            }
            §=;§ = "MightyEagleButtonPrepareHide";
            if(!_loc1_)
            {
            }
            §§goto(addr68);
         }
         addr68:
      }
      
      protected var §=!@§:§`! §;
      
      protected var §?P§:§ !5§;
      
      protected var §;1§:String;
      
      protected var §5!B§:Boolean;
      
      private var §[!9§:Vector.<int>;
      
      private var §#P§:Boolean;
      
      private var §=e§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§=!@§ = new §`! §();
            if(_loc3_)
            {
               this.§[!9§ = new Vector.<int>(32);
               if(!_loc4_)
               {
                  addr48:
                  super(param1,param2);
                  if(_loc3_)
                  {
                     this.§[!9§[3] = 5000;
                  }
               }
               this.§[!9§[7] = 5000;
               if(!_loc4_)
               {
                  this.§[!9§[8] = 5000;
                  if(!(_loc4_ && param2))
                  {
                     addr88:
                     this.§[!9§[9] = 5000;
                     this.§[!9§[12] = 5000;
                  }
                  return;
               }
            }
            §§goto(addr88);
         }
         §§goto(addr48);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            if(!_loc1_)
            {
               §#!4§ = new §!!1§(this);
               if(!_loc1_)
               {
                  §#!4§.init(§0!&§.§'^§.Views.View_LevelPlay[0]);
               }
            }
         }
      }
      
      protected function §%!1§() : void
      {
      }
      
      private function §7=§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§#!4§.getItemByName("TextField_METimer") as § p§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §3!E§.§#'§();
         if(!_loc2_)
         {
            super.levelStarted();
            if(§#!4§.getItemByName("Button_MightyEagle"))
            {
               §#!4§.getItemByName("Button_MightyEagle").setVisibility(true);
               addr36:
               if(!_loc2_)
               {
                  §§goto(addr53);
               }
               §§goto(addr75);
            }
            addr53:
            §§push(§3!E§);
            §§push("LevelStartsBirdsMilitary");
            if(!_loc2_)
            {
               §§push(§§pop() + (1 + int(Math.random() * 2)));
            }
            §§pop().§<!,§(§§pop());
            if(!(_loc2_ && _loc2_))
            {
               addr75:
               this.§-M§();
            }
            return;
         }
         §§goto(addr36);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#!4§.getItemByName("TextField_METimer").setVisibility(false);
            if(!(_loc2_ && _loc1_))
            {
               §#!4§.getItemByName("Container_MEScore").setVisibility(false);
               if(!_loc2_)
               {
                  addr57:
                  §#!4§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  if(_loc1_ || _loc1_)
                  {
                     §#!4§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      protected function §-M§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§=!@§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§9!@§.§=S§ != null)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc1_ = new Bitmap(§9!@§.§=S§,"auto",true);
               if(_loc5_)
               {
                  _loc1_.x = -_loc1_.width / 2;
                  if(!_loc6_)
                  {
                     addr63:
                     _loc1_.y = -_loc1_.height / 2;
                  }
                  _loc2_ = new MovieClip();
                  if(!_loc6_)
                  {
                     _loc2_.addChild(_loc1_);
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                           if(!_loc6_)
                           {
                              (§#!4§.getItemByName("MovieClip_AvatarPlaceholder") as §[!B§).changeMovieClip(_loc2_);
                              if(_loc5_ || this)
                              {
                              }
                           }
                        }
                        §§goto(addr155);
                     }
                     §#!4§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                  }
                  §§goto(addr155);
               }
               §§goto(addr63);
            }
            §§goto(addr168);
         }
         addr155:
         this.§;1§ = §&4§;
         this.§?P§ = null;
         if(!(_loc6_ && _loc3_))
         {
            addr168:
            this.§5!B§ = false;
         }
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            if(!_loc2_)
            {
               (§#!4§.getItemByName("Button_Pause") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc2_ && _loc1_))
               {
                  this.deactivateMightyEagleButton();
                  if(_loc1_ || _loc1_)
                  {
                     addr56:
                     §§push(this.§?P§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop() != null)
                        {
                           if(!(_loc2_ && this))
                           {
                              addr86:
                              this.§?P§.stop();
                              addr84:
                              if(_loc1_ || _loc2_)
                              {
                              }
                              §§goto(addr97);
                           }
                           this.§?P§ = null;
                           §§goto(addr97);
                        }
                        addr97:
                        return;
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr56);
         }
         §§goto(addr86);
      }
      
      protected function §6X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc5_ || _loc2_)
         {
            if(!this.§#P§)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     _loc1_ = §§pop();
                     addr48:
                     if(_loc5_ || _loc2_)
                     {
                        §§push(0);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() >= this.§[!9§.length)
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr189);
                              }
                              addr128:
                              §§push(int(_loc1_ / 1000) == 25);
                              if(!_loc4_)
                              {
                                 addr137:
                                 §§push(!§§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    addr145:
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr148:
                                          this.§#P§ = true;
                                          if(_loc5_ || _loc1_)
                                          {
                                             §^Y§.§#r§(§^Y§.§!u§,§6M§.§[z§);
                                             if(!_loc4_)
                                             {
                                                addr176:
                                                if(this.§=e§)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr189:
                                                      _loc3_ = §§pop();
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(getTimer() - _loc3_);
                                                         addr196:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= 1000)
                                                            {
                                                               break loop0;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      return;
                                                      §§push(int(getTimer()));
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr176);
                           }
                           else
                           {
                              §§push(_loc1_);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(int(§§pop() + this.§[!9§[_loc2_]));
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc5_ || this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr128);
                              }
                           }
                           §§goto(addr189);
                        }
                        break;
                     }
                     §§push(§§pop() % 1000);
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 addr125:
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr128);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr196);
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr48);
            }
            §§goto(addr176);
         }
         §§goto(addr48);
      }
      
      protected function §"d§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §3K§.getScore();
         §§push(this.§=!@§.getValue());
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_ < _loc1_);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc1_)
                  {
                     §§goto(addr68);
                  }
               }
               §§goto(addr86);
            }
            addr68:
            §§pop();
            if(_loc3_ || _loc1_)
            {
               §§push(this.§#P§);
               if(_loc3_ || _loc3_)
               {
                  addr86:
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        addr94:
                        this.§=e§ = true;
                     }
                  }
               }
               §§goto(addr86);
            }
            return;
         }
         §§goto(addr94);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(§7!1§.isOpen);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return §9[§.STATE_STATUS_RUNNING;
                  }
                  addr41:
                  §§push(§,!!§.§;4§.objects.mSardineCanAdded);
               }
               §§goto(addr41);
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  (§#!4§.getItemByName("Container_MEScore") as §`f§).setVisibility(true);
                  if(_loc4_ || this)
                  {
                     addr62:
                     this.§6X§();
                  }
                  §§push(super.run(param1));
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() != §9[§.STATE_STATUS_RUNNING)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_);
                           if(_loc4_ || param1)
                           {
                              return §§pop();
                           }
                           addr213:
                           §§push(§§pop() == §3=§.§,z§);
                        }
                        else
                        {
                           addr118:
                           §§push(this.§;1§);
                           if(_loc4_ || param1)
                           {
                              §§push(§&4§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§,!!§.§;4§);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(!§§pop().objects.isPigsAlive());
                                                if(_loc4_)
                                                {
                                                   addr169:
                                                   if(§§pop())
                                                   {
                                                      this.§^v§();
                                                      addr172:
                                                      §§push(this.§;1§);
                                                      if(_loc4_ || this)
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                      addr203:
                                                      addr204:
                                                      addr205:
                                                      §§push(§&4§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(§§pop() == §§pop())
                                                      {
                                                         addr206:
                                                         §§pop();
                                                         §§goto(addr219);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         this.hideMightyEagleButton();
                                                      }
                                                      addr219:
                                                      if(!_loc3_)
                                                      {
                                                         addr211:
                                                         §§goto(addr213);
                                                         §§push(§,!!§.§;4§.slingshot.mSlingShotState);
                                                      }
                                                      return §9[§.STATE_STATUS_RUNNING;
                                                      §§push(§=;§);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§push(§§pop());
                                                if(!_loc3_)
                                                {
                                                   addr198:
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      §§goto(addr172);
                                                      §§push(this.§;1§);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr203);
                     }
                     else
                     {
                        this.updateCurrentScore(param1);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr213);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr41);
      }
      
      protected function §^v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§;1§ = §=;§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentState(§9$§.§^8§);
         if(!(_loc1_ && this))
         {
            (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §§push(this.§?P§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  this.§?P§ = §%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_MightyEagle").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },null,0.5);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr109);
               }
               this.§;1§ = §#!6§;
               if(_loc2_)
               {
                  §§push(this.§?P§);
                  if(!(_loc1_ && this))
                  {
                     addr103:
                     §§pop().onComplete = this.§-!E§;
                     addr106:
                     §§push(this.§?P§);
                  }
                  §§pop().play();
                  §§goto(addr109);
               }
               §§goto(addr106);
            }
            §§goto(addr103);
         }
         addr109:
      }
      
      protected function §-!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§?P§ = §%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            if(!(_loc2_ && _loc2_))
            {
               this.§?P§.play();
               if(_loc1_)
               {
                  addr71:
                  this.§;1§ = §#!6§;
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§,!!§.§;4§.objects.mMightyEagleAdded)
            {
               if(!_loc2_)
               {
                  addr40:
                  §§push(§4d§.§0!7§);
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  §§push(§6E§.§0!7§);
               }
               return §§pop();
            }
            §§goto(addr50);
         }
         §§goto(addr40);
      }
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
      
      override public function getLoserState() : String
      {
         return §^J§.§0!7§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                  addr81:
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
                  § @§.§'d§();
                  if(!_loc4_)
                  {
                     mNextState = this.§,7§();
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr81);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(§,!!§.§[!2§)
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
                                             § @§.§'d§();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                mNextState = § @§.§0!7§;
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          case 5:
                                             § @§.§-!-§();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                mNextState = § @§.§0!7§;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(param3 is §]P§)
            {
               if(_loc6_ || param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc6_ || param1)
                  {
                     §§push(§'!0§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc6_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              §%r§.§'m§();
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
                                                                           §7!1§.§3!;§();
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr104:
                                                                           break;
                                                                        case 1:
                                                                           mNextState = this.§[2§();
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr98:
                                                                           mNextState = § @§.§0!7§;
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr118:
                                                                              break;
                                                                           }
                                                                           §§goto(addr104);
                                                                           break;
                                                                        case 2:
                                                                           § @§.§'d§();
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              §§goto(addr98);
                                                                           }
                                                                           break;
                                                                        case 3:
                                                                           break;
                                                                        case 4:
                                                                           AngryBirdsFP11.§@t§.§"&§();
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
                           §%r§.§[m§();
                           §§goto(addr68);
                        }
                        else
                        {
                           addr61:
                           §§push(param1);
                           §§push(§'!0§.LISTENER_EVENT_MOUSE_UP);
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
      
      protected function §[2§() : String
      {
         return §77§.§0!7§;
      }
      
      protected function §6L§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,!!§.§;4§.§6L§();
         }
         §§push(AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §#!4§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            if(!(_loc3_ && this))
            {
               this.§5!B§ = true;
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
            this.§"d§();
         }
      }
   }
}
