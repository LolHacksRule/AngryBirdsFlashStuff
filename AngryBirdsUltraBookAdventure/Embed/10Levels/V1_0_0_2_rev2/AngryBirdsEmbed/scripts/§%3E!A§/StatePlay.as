package §>!A§
{
   import §"!&§.§#!,§;
   import §+!"§.§@P§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §4!H§.§?_§;
   import §4!H§.§[v§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §;!B§.§#f§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §?b§.§4K§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §^e§
   {
      
      public static const §?x§:String = "StatePlay";
      
      public static const §!!?§:int = 50;
      
      protected static const §?m§:String = "MightyEagleButtonVisible";
      
      protected static const §>!§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §<!9§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?x§ = "StatePlay";
            if(!(_loc2_ && _loc2_))
            {
               §!!?§ = 50;
               if(!_loc2_)
               {
                  §?m§ = "MightyEagleButtonVisible";
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr68);
            }
            §>!§ = "MightyEagleButtonPrepareHide";
            if(!_loc1_)
            {
            }
            §§goto(addr68);
         }
         addr68:
      }
      
      protected var §>a§:§?_§;
      
      protected var §,!0§:§?!3§;
      
      protected var §=!'§:String;
      
      protected var §3!A§:Boolean;
      
      private var §5!#§:Vector.<int>;
      
      private var §!!&§:Boolean;
      
      private var §&$§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§>a§ = new §?_§();
            if(_loc3_)
            {
               this.§5!#§ = new Vector.<int>(32);
               if(!_loc4_)
               {
                  addr48:
                  super(param1,param2);
                  if(_loc3_)
                  {
                     this.§5!#§[3] = 5000;
                  }
               }
               this.§5!#§[7] = 5000;
               if(!_loc4_)
               {
                  this.§5!#§[8] = 5000;
                  if(!(_loc4_ && param2))
                  {
                     addr88:
                     this.§5!#§[9] = 5000;
                     this.§5!#§[12] = 5000;
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
               §[=§ = new §^3§(this);
               if(!_loc1_)
               {
                  §[=§.init(§!I§.§7y§.Views.View_LevelPlay[0]);
               }
            }
         }
      }
      
      protected function §@S§() : void
      {
      }
      
      private function §<v§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§[=§.getItemByName("TextField_METimer") as §3D§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §6I§.§%,§();
         if(!_loc2_)
         {
            super.levelStarted();
            if(§[=§.getItemByName("Button_MightyEagle"))
            {
               §[=§.getItemByName("Button_MightyEagle").setVisibility(true);
               addr36:
               if(!_loc2_)
               {
                  §§goto(addr53);
               }
               §§goto(addr75);
            }
            addr53:
            §§push(§6I§);
            §§push("LevelStartsBirdsMilitary");
            if(!_loc2_)
            {
               §§push(§§pop() + (1 + int(Math.random() * 2)));
            }
            §§pop().§ ;§(§§pop());
            if(!(_loc2_ && _loc2_))
            {
               addr75:
               this.§,I§();
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
            §[=§.getItemByName("TextField_METimer").setVisibility(false);
            if(!(_loc2_ && _loc1_))
            {
               §[=§.getItemByName("Container_MEScore").setVisibility(false);
               if(!_loc2_)
               {
                  addr57:
                  §[=§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  if(_loc1_ || _loc1_)
                  {
                     §[=§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      protected function §,I§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§>a§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§!!=§.§]2§ != null)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc1_ = new Bitmap(§!!=§.§]2§,"auto",true);
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
                              (§[=§.getItemByName("MovieClip_AvatarPlaceholder") as §`!6§).changeMovieClip(_loc2_);
                              if(_loc5_ || this)
                              {
                              }
                           }
                        }
                        §§goto(addr155);
                     }
                     §[=§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                  }
                  §§goto(addr155);
               }
               §§goto(addr63);
            }
            §§goto(addr168);
         }
         addr155:
         this.§=!'§ = §?m§;
         this.§,!0§ = null;
         if(!(_loc6_ && _loc3_))
         {
            addr168:
            this.§3!A§ = false;
         }
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
               (§[=§.getItemByName("Button_Pause") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(!(_loc2_ && _loc1_))
               {
                  this.deactivateMightyEagleButton();
                  if(_loc1_ || _loc1_)
                  {
                     addr56:
                     §§push(this.§,!0§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop() != null)
                        {
                           if(!(_loc2_ && this))
                           {
                              addr86:
                              this.§,!0§.stop();
                              addr84:
                              if(_loc1_ || _loc2_)
                              {
                              }
                              §§goto(addr97);
                           }
                           this.§,!0§ = null;
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
      
      protected function §5p§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc5_ || _loc2_)
         {
            if(!this.§!!&§)
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
                           if(§§pop() >= this.§5!#§.length)
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
                                          this.§!!&§ = true;
                                          if(_loc5_ || _loc1_)
                                          {
                                             §[v§.§,9§(§[v§.§!l§,§5j§.§%V§);
                                             if(!_loc4_)
                                             {
                                                addr176:
                                                if(this.§&$§)
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
                                 §§push(int(§§pop() + this.§5!#§[_loc2_]));
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
      
      protected function §9! §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §7!9§.getScore();
         §§push(this.§>a§.getValue());
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
               §§push(this.§!!&§);
               if(_loc3_ || _loc3_)
               {
                  addr86:
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        addr94:
                        this.§&$§ = true;
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
            §§push(§#f§.isOpen);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return §#!,§.STATE_STATUS_RUNNING;
                  }
                  addr41:
                  §§push(§[k§.§&@§.objects.mSardineCanAdded);
               }
               §§goto(addr41);
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  (§[=§.getItemByName("Container_MEScore") as §3C§).setVisibility(true);
                  if(_loc4_ || this)
                  {
                     addr62:
                     this.§5p§();
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
                     if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_);
                           if(_loc4_ || param1)
                           {
                              return §§pop();
                           }
                           addr213:
                           §§push(§§pop() == §4K§.§9"§);
                        }
                        else
                        {
                           addr118:
                           §§push(this.§=!'§);
                           if(_loc4_ || param1)
                           {
                              §§push(§?m§);
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
                                             §§push(§[k§.§&@§);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(!§§pop().objects.isPigsAlive());
                                                if(_loc4_)
                                                {
                                                   addr169:
                                                   if(§§pop())
                                                   {
                                                      this.§=;§();
                                                      addr172:
                                                      §§push(this.§=!'§);
                                                      if(_loc4_ || this)
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                      addr203:
                                                      addr204:
                                                      addr205:
                                                      §§push(§?m§);
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
                                                         §§push(§[k§.§&@§.slingshot.mSlingShotState);
                                                      }
                                                      return §#!,§.STATE_STATUS_RUNNING;
                                                      §§push(§>!§);
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
                                                      §§push(this.§=!'§);
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
      
      protected function §=;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§=!'§ = §>!§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentState(§`!&§.§9I§);
         if(!(_loc1_ && this))
         {
            (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §§push(this.§,!0§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  this.§,!0§ = §,B§.§^n§.§2E§(§[=§.getItemByName("Container_MightyEagle").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },null,0.5);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr109);
               }
               this.§=!'§ = §<!9§;
               if(_loc2_)
               {
                  §§push(this.§,!0§);
                  if(!(_loc1_ && this))
                  {
                     addr103:
                     §§pop().onComplete = this.§"3§;
                     addr106:
                     §§push(this.§,!0§);
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
      
      protected function §"3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,!0§ = §,B§.§^n§.§2E§(§[=§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            if(!(_loc2_ && _loc2_))
            {
               this.§,!0§.play();
               if(_loc1_)
               {
                  addr71:
                  this.§=!'§ = §<!9§;
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
            if(§[k§.§&@§.objects.mMightyEagleAdded)
            {
               if(!_loc2_)
               {
                  addr40:
                  §§push(§"8§.§?x§);
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  §§push(§"'§.§?x§);
               }
               return §§pop();
            }
            §§goto(addr50);
         }
         §§goto(addr40);
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
      
      override public function getLoserState() : String
      {
         return §>8§.§?x§;
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
                  §,w§.§9!D§();
                  if(!_loc4_)
                  {
                     mNextState = this.§#! §();
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
            if(§[k§.§,#§)
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
                                             §,w§.§9!D§();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                mNextState = §,w§.§?x§;
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          case 5:
                                             §,w§.§^^§();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                mNextState = §,w§.§?x§;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(param3 is §?q§)
            {
               if(_loc6_ || param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc6_ || param1)
                  {
                     §§push(§^h§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc6_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              §@P§.§@1§();
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
                                                                           §#f§.§!h§();
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr104:
                                                                           break;
                                                                        case 1:
                                                                           mNextState = this.§!!G§();
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr98:
                                                                           mNextState = §,w§.§?x§;
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr118:
                                                                              break;
                                                                           }
                                                                           §§goto(addr104);
                                                                           break;
                                                                        case 2:
                                                                           §,w§.§9!D§();
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              §§goto(addr98);
                                                                           }
                                                                           break;
                                                                        case 3:
                                                                           break;
                                                                        case 4:
                                                                           AngryBirdsFP11.§,s§.§8!1§();
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
                           §@P§.§-§();
                           §§goto(addr68);
                        }
                        else
                        {
                           addr61:
                           §§push(param1);
                           §§push(§^h§.LISTENER_EVENT_MOUSE_UP);
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
      
      protected function §!!G§() : String
      {
         return §?K§.§?x§;
      }
      
      protected function §7!;§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §[k§.§&@§.§7!;§();
         }
         §§push(AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §[=§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            if(!(_loc3_ && this))
            {
               this.§3!A§ = true;
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
            this.§9! §();
         }
      }
   }
}
