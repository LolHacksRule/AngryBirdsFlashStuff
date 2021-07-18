package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §+!c§.§&!0§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§&=§;
   import §5!Y§.§'!V§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§3w§;
   import §9@§.§9!D§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §6!T§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §'"Q§:int = 50;
      
      protected static const §?"U§:String = "MightyEagleButtonVisible";
      
      protected static const §+!r§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §#!`§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "StatePlay";
            while(true)
            {
               §'"Q§ = 50;
               while(_loc2_)
               {
                  §?"U§ = "MightyEagleButtonVisible";
                  loop2:
                  for(; _loc2_ || StatePlay; while(!(_loc1_ && StatePlay))
                  {
                     §#!`§ = "MightyEagleButtonHide";
                     if(!(_loc1_ && StatePlay))
                     {
                        return;
                     }
                  })
                  {
                     while(true)
                     {
                        §+!r§ = "MightyEagleButtonPrepareHide";
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      protected var §4">§:§9!D§;
      
      protected var §2">§:§6!K§;
      
      protected var §`"9§:String;
      
      protected var §9!h§:Boolean;
      
      private var §#"S§:Vector.<int>;
      
      private var § "=§:Boolean;
      
      private var §3!h§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§4">§ = new §9!D§();
         }
         loop0:
         while(true)
         {
            this.§#"S§ = new Vector.<int>(32);
            while(true)
            {
               super(param1,param2);
               continue loop0;
               addr44:
               if(_loc4_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(_loc1_ || _loc1_)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_LevelPlay[0]);
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function § "+§() : void
      {
      }
      
      private function §#""§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§2"@§.getItemByName("TextField_METimer") as §4"9§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stopSoundsOnLevelStart();
            loop0:
            while(true)
            {
               super.levelStarted();
               loop1:
               while(true)
               {
                  if(_loc1_)
                  {
                     if(§2"@§.getItemByName("Button_MightyEagle"))
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           §2"@§.getItemByName("Button_MightyEagle").setVisibility(true);
                        }
                        while(true)
                        {
                           break loop1;
                        }
                        return;
                        addr92:
                        addr50:
                     }
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  §§push(§@"M§);
                  §§push("LevelStartsBirdsMilitary");
                  if(!_loc2_)
                  {
                     §§push(§§pop() + (1 + int(Math.random() * 2)));
                  }
                  §§pop().§3"C§(§§pop());
                  do
                  {
                     this.initActivation();
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(!(_loc1_ || _loc1_))
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@"M§.§3!s§();
         }
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
      
      protected function §%"H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §2"@§.getItemByName("TextField_METimer").setVisibility(false);
            loop0:
            while(true)
            {
               §2"@§.getItemByName("Container_MEScore").setVisibility(false);
               do
               {
                  §2"@§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  continue loop0;
               }
               while(_loc2_);
               
            }
         }
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§4">§.assign(0);
            while(true)
            {
               this.updateCurrentScore(0);
               addr92:
               while(true)
               {
                  this.§%"H§();
               }
            }
            addr97:
         }
         loop2:
         while(true)
         {
            this.§`"9§ = §?"U§;
            while(true)
            {
               if(!(_loc1_ && _loc1_))
               {
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        this.§2">§ = null;
                        continue;
                     }
                     §§goto(addr97);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr92);
         }
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            while(true)
            {
               (§2"@§.getItemByName("Button_Pause") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr102:
               while(true)
               {
                  this.deactivateMightyEagleButton();
                  addr63:
                  if(_loc1_)
                  {
                     §§goto(addr24);
                  }
               }
            }
            addr105:
         }
         loop2:
         while(true)
         {
            §§push(this.§2">§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  break;
               }
               while(true)
               {
                  §§push(this.§2">§);
                  addr49:
                  if(_loc1_ || this)
                  {
                     continue loop2;
                  }
               }
               addr83:
            }
            while(true)
            {
               §§pop().stop();
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr105);
               }
               §§goto(addr102);
               §§goto(addr83);
            }
         }
         addr24:
      }
      
      protected function §,!6§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc4_ || _loc1_)
         {
            if(!this.§ "=§)
            {
               loop19:
               do
               {
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           continue loop19;
                        }
                     }
                  }
               }
               while(_loc5_);
               
               while(true)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() >= this.§#"S§.length)
                     {
                        loop13:
                        while(true)
                        {
                           §§push(_loc1_);
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() % 1000);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             addr178:
                                             while(true)
                                             {
                                                §§pop();
                                                addr189:
                                                while(true)
                                                {
                                                   §§push(int(_loc1_ / 1000) == 25);
                                                   addr151:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                }
                                             }
                                             addr178:
                                          }
                                          while(true)
                                          {
                                             addr153:
                                             §§goto(addr66);
                                          }
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(int(§§pop() + this.§#"S§[_loc2_]));
                                       addr203:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                       }
                                       addr195:
                                       continue loop13;
                                    }
                                    addr197:
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr203);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr195);
                     }
                     §§goto(addr197);
                  }
               }
               addr218:
            }
            addr66:
            while(§§pop())
            {
               loop7:
               while(true)
               {
                  this.§ "=§ = true;
                  addr157:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        break loop7;
                     }
                     addr204:
                     while(true)
                     {
                        _loc2_++;
                        addr192:
                        while(true)
                        {
                           continue loop22;
                        }
                     }
                  }
               }
               §3w§.§#!0§(§3w§.§+"V§,LevelManager.§ T§);
               break;
            }
            loop0:
            while(true)
            {
               §§push(this.§3!h§);
               if(_loc4_ || _loc1_)
               {
                  if(_loc4_)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           loop1:
                           for(; !(_loc5_ && this); if(!(_loc4_ || this))
                           {
                              continue;
                           },if(_loc4_ || _loc1_)
                           {
                              break loop0;
                           },§§goto(addr142))
                           {
                              §§push(int(getTimer()));
                              if(_loc5_ && this)
                              {
                                 continue loop4;
                              }
                              if(!_loc4_)
                              {
                                 continue loop12;
                              }
                              _loc3_ = §§pop();
                              loop2:
                              while(!_loc5_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc5_ && _loc1_)
                                    {
                                       continue loop13;
                                    }
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§push(getTimer() - _loc3_);
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(§§pop() >= 1000)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             continue;
                                          }
                                          continue loop9;
                                       }
                                       §§goto(addr142);
                                    }
                                    else
                                    {
                                       §§goto(addr192);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr189);
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr157);
                        }
                        break;
                     }
                     §§goto(addr178);
                     §§goto(addr189);
                  }
                  §§goto(addr151);
               }
               else
               {
                  §§goto(addr153);
               }
            }
            return;
         }
         §§goto(addr218);
      }
      
      protected function §[c§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §%"9§.getScore();
         §§push(this.§4">§.getValue());
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_ < _loc1_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr95:
                     loop4:
                     while(true)
                     {
                        §§push(this.§ "=§);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                           }
                        }
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              if(_loc4_ && _loc1_)
                              {
                                 continue loop4;
                              }
                              this.§3!h§ = true;
                           }
                           break;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr95);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(§'!V§.isOpen);
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr69:
               }
               while(true)
               {
                  §§push(§?l§.§'h§.objects.mSardineCanAdded);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        (§2"@§.getItemByName("Container_MEScore") as §0!Y§).setVisibility(true);
                        while(true)
                        {
                        }
                     }
                     addr53:
                  }
                  do
                  {
                     this.§,!6§();
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                  }
                  while(_loc4_ && _loc2_);
                  
                  if(_loc3_)
                  {
                     if(false)
                     {
                        continue;
                     }
                     §§push(super.run(param1));
                     if(_loc3_ || _loc2_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop() == §+d§.STATE_STATUS_RUNNING)
                           {
                              addr263:
                              this.updateCurrentScore(param1);
                              addr259:
                              addr240:
                              addr260:
                              addr258:
                              addr257:
                              if(this.§`"9§ == §?"U§ && !§?l§.§'h§.objects.isPigsAlive())
                              {
                                 addr251:
                                 this.§@!c§();
                                 addr253:
                              }
                              addr267:
                              §§push(this.§`"9§ == §?"U§);
                              if(_loc3_)
                              {
                                 addr214:
                                 if(!§§pop())
                                 {
                                    addr215:
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop();
                                       addr223:
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(this.§`"9§);
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(§+!r§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr175:
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc3_)
                                                         {
                                                            addr177:
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr189:
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop();
                                                                              addr196:
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§?l§.§'h§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().slingshot.mSlingShotState);
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §§push(§§pop() == §&=§.§+!`§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                §§goto(addr117);
                                                                                             }
                                                                                             §§goto(addr175);
                                                                                          }
                                                                                          §§goto(addr189);
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 §§goto(addr262);
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     §§goto(addr215);
                                                                  }
                                                                  addr117:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr135:
                                                                              this.hideMightyEagleButton();
                                                                              addr137:
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr85);
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr267);
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                                  addr85:
                                                                  return §+d§.STATE_STATUS_RUNNING;
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr259);
                                          }
                                          addr279:
                                          addr280:
                                          return §§pop();
                                          §§push(_loc2_);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr279);
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr135);
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
            }
            return §+d§.STATE_STATUS_RUNNING;
         }
         §§goto(addr53);
      }
      
      protected function §@!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§`"9§ = §+!r§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentState(§!!G§.§[E§);
         }
         loop0:
         while(true)
         {
            (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            loop1:
            while(true)
            {
               §§push(this.§2">§);
               loop2:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     continue loop1;
                  }
                  addr48:
                  while(true)
                  {
                     this.§`"9§ = §#!`§;
                     addr52:
                     while(!(_loc2_ && _loc1_))
                     {
                        if(_loc2_ && this)
                        {
                           continue loop1;
                        }
                        §§push(this.§2">§);
                        loop7:
                        while(true)
                        {
                           §§pop().onComplete = this.§!N§;
                           addr47:
                           while(true)
                           {
                              §§push(this.§2">§);
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              continue loop7;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2">§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            do
            {
               this.§2">§.play();
               do
               {
                  this.§`"9§ = §#!`§;
               }
               while(_loc1_ && _loc1_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§?l§.§'h§.objects.mMightyEagleAdded)
            {
               if(!_loc1_)
               {
                  addr41:
                  §§push(§>!w§.STATE_NAME);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return § if§.STATE_NAME;
               }
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr41);
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §]S§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_ || _loc3_)
            {
               §§push(82);
               if(_loc4_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr84:
                     §§push(0);
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §-!v§.§^!$§();
                     while(true)
                     {
                        mNextState = this.getLevelLoadState();
                        if(!_loc4_)
                        {
                           break loop2;
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
               }
               return;
            }
            §§goto(addr84);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(§?l§.§#V§)
            {
               var _loc2_:* = param1.keyCode;
               if(!_loc3_)
               {
                  §§push(49);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr245);
                        }
                        else
                        {
                           §§goto(addr150);
                        }
                     }
                     else
                     {
                        §§push(50);
                        if(!_loc3_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(1);
                                 if(_loc3_ && _loc2_)
                                 {
                                    addr174:
                                 }
                              }
                              else
                              {
                                 addr237:
                                 §§push(6);
                                 if(_loc4_)
                                 {
                                    §§goto(addr240);
                                 }
                              }
                           }
                           else
                           {
                              §§push(51);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       addr150:
                                       §§push(2);
                                       if(!_loc4_)
                                       {
                                          addr240:
                                       }
                                    }
                                    else
                                    {
                                       addr187:
                                       §§push(4);
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr195:
                                       }
                                    }
                                    §§goto(addr245);
                                 }
                                 else
                                 {
                                    §§push(52);
                                    if(_loc4_)
                                    {
                                       if(§§pop() === _loc2_)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             §§push(3);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§goto(addr174);
                                             }
                                             §§goto(addr245);
                                          }
                                          else
                                          {
                                             §§goto(addr237);
                                          }
                                       }
                                       else
                                       {
                                          §§push(53);
                                          if(!_loc3_)
                                          {
                                             addr178:
                                             if(§§pop() === _loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   §§goto(addr187);
                                                }
                                                else
                                                {
                                                   addr223:
                                                   §§push(5);
                                                   if(!_loc4_)
                                                   {
                                                   }
                                                   §§goto(addr245);
                                                }
                                             }
                                             else
                                             {
                                                §§push(54);
                                                if(!(_loc3_ && this))
                                                {
                                                   if(§§pop() === _loc2_)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(55);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr235:
                                                         if(§§pop() === _loc2_)
                                                         {
                                                            §§goto(addr237);
                                                         }
                                                         else
                                                         {
                                                            addr245:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  break;
                                                               case 1:
                                                                  break;
                                                               case 2:
                                                                  break;
                                                               case 3:
                                                               case 4:
                                                                  §-!v§.§^!$§();
                                                                  if(_loc4_)
                                                                  {
                                                                     mNextState = §-!v§.STATE_NAME;
                                                                     addr46:
                                                                     break;
                                                                     addr64:
                                                                  }
                                                                  break;
                                                               case 5:
                                                                  §-!v§.§>"@§();
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     mNextState = §-!v§.STATE_NAME;
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr64);
                                                                        }
                                                                        §§goto(addr46);
                                                                     }
                                                                     break;
                                                                  }
                                                                  break;
                                                               case 6:
                                                            }
                                                            return;
                                                            §§push(7);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                   }
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr245);
                                          }
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              §§goto(addr195);
                           }
                        }
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr235);
               }
               §§goto(addr187);
               addr68:
            }
            §§goto(addr245);
         }
         §§goto(addr68);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            if(param3 is §7"0§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§""B§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(!(_loc6_ || param1))
                        {
                           continue loop1;
                        }
                        §§push(§""B§.LISTENER_EVENT_MOUSE_UP);
                        if(_loc5_ && param3)
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              addr70:
                              addr143:
                              var _loc4_:* = param2;
                              addr70:
                              if(!(_loc5_ && param1))
                              {
                                 §§push("CLOSE_TUTORIAL");
                                 if(!_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             addr165:
                                             §§push(0);
                                             if(_loc5_ && param3)
                                             {
                                                addr252:
                                             }
                                          }
                                          else
                                          {
                                             addr244:
                                             §§push(3);
                                             if(_loc6_ || param2)
                                             {
                                                §§goto(addr252);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("PAUSE");
                                          if(_loc6_)
                                          {
                                             addr177:
                                             §§push(_loc4_);
                                             if(!(_loc5_ && param3))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                      addr209:
                                                      addr264:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §'!V§.§2!C§();
                                                            break;
                                                            addr75:
                                                         case 1:
                                                            mNextState = this.getPauseState();
                                                            break;
                                                            addr69:
                                                         case 2:
                                                            §-!v§.§^!$§();
                                                            if(!_loc5_)
                                                            {
                                                               addr37:
                                                               mNextState = §-!v§.STATE_NAME;
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || param3)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr75);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr69);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         case 3:
                                                            break;
                                                         case 4:
                                                            AngryBirdsFP11.§>m§.§=-§();
                                                            if(!_loc5_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr37);
                                                            }
                                                      }
                                                      return;
                                                      §§goto(addr264);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr244);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("RESTART_LEVEL");
                                                   if(!_loc5_)
                                                   {
                                                      addr195:
                                                      §§push(_loc4_);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr203:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(2);
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr209);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr252);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr244);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         else
                                                         {
                                                            §§push("MIGHTY_EAGLE");
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr218:
                                                               §§push(_loc4_);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr255:
                                                                     if("FULLSCREEN_BUTTON" !== _loc4_)
                                                                     {
                                                                        §§goto(addr264);
                                                                        §§push(5);
                                                                     }
                                                                  }
                                                                  §§goto(addr264);
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr165);
                              addr70:
                           }
                           else
                           {
                              addr115:
                              if(!(_loc6_ || param1))
                              {
                                 break;
                              }
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr70);
                     }
                     §&!0§.§8!R§();
                     §§goto(addr143);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function getPauseState() : String
      {
         return §4!Q§.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §?l§.§'h§.useMightyEagle();
         }
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§));
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §2"@§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            while(true)
            {
               this.§9!h§ = true;
               while(_loc2_ || this)
               {
                  this.hideMightyEagleButton();
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr77:
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[c§();
         }
      }
   }
}
