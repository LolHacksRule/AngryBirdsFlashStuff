package §9!5§
{
   import §"R§.§ !Q§;
   import §,!5§.§>!A§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §0X§.§'W§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import §[m§.§;!+§;
   import §^_§.§=H§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class StatePlay extends §try §
   {
      
      public static const §?h§:String = "StatePlay";
      
      public static const §%B§:int = 50;
      
      protected static const §-B§:String = "MightyEagleButtonVisible";
      
      protected static const §<W§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §'!c§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && StatePlay))
         {
            §?h§ = "StatePlay";
            loop0:
            while(true)
            {
               §%B§ = 50;
               while(true)
               {
                  §-B§ = "MightyEagleButtonVisible";
                  addr79:
                  while(!_loc1_)
                  {
                  }
                  continue loop0;
                  addr67:
                  if(!(_loc1_ && _loc2_))
                  {
                     §'!c§ = "MightyEagleButtonHide";
                     addr74:
                     if(_loc1_ && _loc2_)
                     {
                        while(_loc2_)
                        {
                           §§goto(addr67);
                           §§goto(addr74);
                        }
                        §§goto(addr79);
                        addr65:
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §<W§ = "MightyEagleButtonPrepareHide";
            §§goto(addr65);
         }
      }
      
      protected var §+e§:§&'§;
      
      protected var §4!4§:§4!Z§;
      
      protected var §[5§:String;
      
      protected var §+M§:Boolean;
      
      private var §>!8§:Vector.<int>;
      
      private var §`T§:Boolean;
      
      private var § !1§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§+e§ = new §&'§();
            loop0:
            while(true)
            {
               this.§>!8§ = new Vector.<int>(32);
               loop1:
               while(true)
               {
                  super(param1,param2);
                  loop2:
                  while(!_loc4_)
                  {
                     this.§>!8§[3] = 5000;
                     loop3:
                     while(true)
                     {
                        this.§>!8§[7] = 5000;
                        loop4:
                        while(true)
                        {
                           this.§>!8§[8] = 5000;
                           loop5:
                           while(_loc3_)
                           {
                              this.§>!8§[9] = 5000;
                              loop6:
                              while(!_loc4_)
                              {
                                 continue loop1;
                                 while(true)
                                 {
                                    this.§>!8§[12] = 5000;
                                    if(_loc3_)
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr45);
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            while(true)
            {
               §5!P§ = new §'!^§(this);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §5!P§.init(§[!'§.§+@§.Views.View_LevelPlay[0]);
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
         §§goto(addr58);
      }
      
      protected function §1!n§() : void
      {
      }
      
      private function §0!o§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§5!P§.getItemByName("TextField_METimer") as §"j§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § !Q§.§"!"§();
         }
         loop0:
         while(true)
         {
            super.levelStarted();
            do
            {
               if(!§5!P§.getItemByName("Button_MightyEagle"))
               {
                  while(true)
                  {
                     §§push(§ !Q§);
                     §§push("LevelStartsBirdsMilitary");
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() + (1 + int(Math.random() * 2)));
                     }
                     §§pop().playSound(§§pop());
                     addr80:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  continue;
                  addr59:
               }
               while(true)
               {
                  §5!P§.getItemByName("Button_MightyEagle").setVisibility(true);
                  continue loop0;
                  §§goto(addr80);
               }
            }
            while(_loc1_ && _loc1_);
            
            return;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §5!P§.getItemByName("TextField_METimer").setVisibility(false);
            while(true)
            {
               §5!P§.getItemByName("Container_MEScore").setVisibility(false);
               loop2:
               while(_loc1_ || this)
               {
                  §5!P§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  if(!_loc2_)
                  {
                     addr47:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           §5!P§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                           continue loop2;
                           §§goto(addr47);
                        }
                        addr81:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function initActivation() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(!(_loc6_ && this))
         {
            this.§+e§.assign(0);
            if(!_loc6_)
            {
               loop0:
               while(true)
               {
                  this.updateCurrentScore(0);
                  if(!_loc5_)
                  {
                     break;
                  }
                  addr50:
                  while(true)
                  {
                     this.initMightyEagleButton();
                     if(!(_loc6_ && _loc1_))
                     {
                        if(false)
                        {
                           continue loop0;
                        }
                        addr180:
                        if(§!i§.§&n§ != null)
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              break loop0;
                           }
                           do
                           {
                              this.§+M§ = false;
                           }
                           while(!_loc5_);
                           
                           return;
                           addr205:
                           addr201:
                        }
                        this.§[5§ = §-B§;
                        if(!(_loc6_ && _loc2_))
                        {
                           this.§4!4§ = null;
                           §§goto(addr205);
                           addr190:
                        }
                        §§goto(addr201);
                     }
                     break loop0;
                  }
               }
               _loc1_ = new Bitmap(§!i§.§&n§,"auto",true);
               if(_loc5_)
               {
                  _loc1_.x = -_loc1_.width / 2;
                  if(!(_loc6_ && _loc2_))
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
                     if(_loc5_)
                     {
                        _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                        if(_loc5_ || _loc1_)
                        {
                           (§5!P§.getItemByName("MovieClip_AvatarPlaceholder") as §[I§).changeMovieClip(_loc2_);
                           if(_loc6_)
                           {
                           }
                        }
                     }
                     §§goto(addr180);
                  }
                  §5!P§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
               }
               §§goto(addr180);
            }
            §§goto(addr190);
         }
         §§goto(addr50);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
         while(true)
         {
            (§5!P§.getItemByName("Button_Pause") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            loop1:
            while(true)
            {
               this.deactivateMightyEagleButton();
               while(true)
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§4!4§);
                     if(_loc1_)
                     {
                        if(§§pop() == null)
                        {
                           break;
                        }
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        §§push(this.§4!4§);
                     }
                     §§pop().stop();
                     continue;
                  }
                  continue loop1;
               }
               §§goto(addr24);
            }
            if(!(_loc2_ && _loc1_))
            {
               addr24:
               return;
            }
         }
      }
      
      protected function §7!-§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc5_ && this))
         {
            if(!this.§`T§)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr223:
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                  }
                  addr224:
               }
               while(true)
               {
                  §§push(0);
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr224);
               }
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        if(§§pop() >= this.§>!8§.length)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr157:
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() % 1000);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             addr163:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(int(_loc1_ / 1000) == 25);
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(!§§pop());
                                                   }
                                                   while(!(_loc5_ && _loc3_))
                                                   {
                                                   }
                                                   continue loop7;
                                                   addr126:
                                                }
                                                addr168:
                                                if(_loc5_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc2_++;
                                                      §§goto(addr168);
                                                   }
                                                   addr199:
                                                }
                                                continue loop1;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                this.§`T§ = true;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §'W§.§var §(§'W§.§7!2§,LevelManager.§4Y§);
                                                loop12:
                                                for(; !_loc5_; loop15:
                                                for(; _loc4_ || _loc3_; if(!(_loc4_ || this))
                                                {
                                                   continue;
                                                },§§goto(addr48))
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(getTimer() - _loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= 1000)
                                                         {
                                                            continue loop15;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr163);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§ !1§);
                                                      if(_loc4_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr55:
                                                            return;
                                                         }
                                                         while(_loc4_)
                                                         {
                                                            §§push(int(getTimer()));
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop12;
                                                            }
                                                            continue loop4;
                                                            if(!(_loc5_ && _loc1_))
                                                            {
                                                               §§goto(addr55);
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr59);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              addr198:
                              _loc1_ = int(§§pop() + this.§>!8§[_loc2_]);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr223);
      }
      
      protected function §?!4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §%!q§.getScore();
         §§push(this.§+e§.getValue());
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_ < _loc1_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     while(true)
                     {
                        §§push(this.§`T§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr94:
               }
               for(; §§pop(); §§goto(addr95))
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        this.§ !1§ = true;
                        addr81:
                        break;
                     }
                     continue;
                  }
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr81);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§;!+§.isOpen);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
            }
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[5§ = §<W§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentState(§+!!§.§ H§);
            while(true)
            {
               (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            addr147:
         }
         loop1:
         while(true)
         {
            §§push(this.§4!4§);
            loop2:
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || this)
                  {
                     continue loop1;
                  }
                  addr128:
                  loop3:
                  while(true)
                  {
                     addr58:
                     loop7:
                     while(true)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop3;
                        }
                        addr75:
                        §§push(this.§4!4§);
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                        addr55:
                        while(true)
                        {
                           §§pop().onComplete = this.onHideMightyEagle;
                           continue loop7;
                           §§goto(addr75);
                        }
                     }
                     continue loop2;
                  }
               }
               while(true)
               {
                  this.§[5§ = §'!c§;
                  do
                  {
                     §§goto(addr55);
                     §§push(this.§4!4§);
                  }
                  while(_loc1_);
                  
                  return;
               }
            }
         }
      }
      
      protected function onHideMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4!4§ = §,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§4!4§.play();
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§[5§ = §'!c§;
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§ _§.§!6§.objects.mMightyEagleAdded)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(§17§.§?h§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return §'!>§.§?h§;
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
      
      override public function getLoserState() : String
      {
         return §"Y§.§?h§;
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
            if(_loc4_ || this)
            {
               §§push(82);
               if(!_loc3_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr89:
                     §§push(0);
                     if(_loc4_ || this)
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
                     §#!c§.§6d§();
                     if(!(_loc4_ || this))
                     {
                        break loop0;
                     }
                     continue;
               }
            }
            §§goto(addr89);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(§ _§.§[!d§)
            {
               var _loc2_:* = param1.keyCode;
               if(!(_loc3_ && _loc2_))
               {
                  §§push(49);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              addr178:
                              if(§§pop() === _loc2_)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr187:
                                    §§push(4);
                                    if(_loc4_)
                                    {
                                       addr235:
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
                                             §#!c§.§6d§();
                                             mNextState = §#!c§.§?h§;
                                             addr39:
                                             break;
                                             addr75:
                                             addr61:
                                          case 5:
                                             §#!c§.§ !0§();
                                             if(!_loc3_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      mNextState = §#!c§.§?h§;
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr75);
                                                   §§goto(addr39);
                                                }
                                                §§goto(addr61);
                                             }
                                             break;
                                          case 6:
                                       }
                                       return;
                                       addr190:
                                    }
                                 }
                                 else
                                 {
                                    addr213:
                                    §§push(5);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr221:
                                    }
                                 }
                                 §§goto(addr235);
                              }
                              else
                              {
                                 §§push(54);
                                 if(!(_loc3_ && this))
                                 {
                                    addr209:
                                    if(§§pop() === _loc2_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr213);
                                       }
                                       else
                                       {
                                          addr227:
                                          §§push(6);
                                          if(!_loc4_)
                                          {
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                    else
                                    {
                                       §§push(55);
                                       if(_loc4_)
                                       {
                                          addr225:
                                          if(§§pop() === _loc2_)
                                          {
                                             §§goto(addr227);
                                          }
                                          else
                                          {
                                             §§goto(addr235);
                                             §§push(7);
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr235);
                        }
                        §§goto(addr213);
                     }
                     else
                     {
                        §§push(50);
                        if(!_loc3_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr178);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr187);
                           }
                           else
                           {
                              §§push(51);
                              if(!_loc3_)
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       addr145:
                                       §§push(2);
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr161:
                                       §§push(3);
                                       if(_loc3_ && _loc2_)
                                       {
                                          §§goto(addr209);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(52);
                                    if(_loc4_)
                                    {
                                       addr157:
                                       if(§§pop() === _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr161);
                                          }
                                          else
                                          {
                                             §§goto(addr187);
                                          }
                                       }
                                       else
                                       {
                                          §§push(53);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr235);
                              }
                           }
                           §§goto(addr178);
                        }
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr157);
               }
               §§goto(addr145);
               addr65:
            }
            §§goto(addr235);
         }
         §§goto(addr65);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            if(param3 is §5!I§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§6!8§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(_loc5_ && param1)
                        {
                           continue loop1;
                        }
                        §§push(§6!8§.LISTENER_EVENT_MOUSE_UP);
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc5_ && param3)
                           {
                              break loop0;
                           }
                           if(_loc5_ && this)
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              §=H§.§function§();
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     addr141:
                     §=H§.§4!2§();
                     addr143:
                  }
               }
               if(!(_loc6_ || param3))
               {
                  §§goto(addr143);
               }
            }
            var _loc4_:* = param2;
            if(!_loc5_)
            {
               §§push("CLOSE_TUTORIAL");
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr226:
                           §§push(2);
                           if(_loc5_ && param1)
                           {
                           }
                        }
                        §§goto(addr279);
                     }
                     else
                     {
                        §§push("PAUSE");
                        if(!(_loc5_ && param1))
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr279);
                              }
                              else
                              {
                                 §§push("RESTART_LEVEL");
                                 if(_loc6_ || param3)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc5_ && this))
                                    {
                                       addr218:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             §§goto(addr226);
                                          }
                                          else
                                          {
                                             addr259:
                                             §§push(3);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr279);
                                          }
                                       }
                                       else
                                       {
                                          §§push("MIGHTY_EAGLE");
                                          if(_loc6_)
                                          {
                                             addr238:
                                             §§push(_loc4_);
                                             if(!(_loc5_ && param3))
                                             {
                                                addr256:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                   else
                                                   {
                                                      addr266:
                                                      §§push(4);
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                }
                                                else
                                                {
                                                   addr264:
                                                   §§push("FULLSCREEN_BUTTON");
                                                   §§push(_loc4_);
                                                }
                                                §§goto(addr266);
                                             }
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr266);
                                             }
                                             else
                                             {
                                                addr279:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §;!+§.§=M§();
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      break;
                                                   case 1:
                                                      mNextState = this.§"!U§();
                                                      break;
                                                      addr72:
                                                   case 2:
                                                      §#!c§.§6d§();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         addr51:
                                                         while(true)
                                                         {
                                                            mNextState = §#!c§.§?h§;
                                                            continue loop3;
                                                         }
                                                      }
                                                      break;
                                                   case 3:
                                                      break;
                                                   case 4:
                                                      AngryBirdsFP11.§3!a§.§8!d§();
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            if(_loc6_ || param3)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr51);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr72);
                                                            }
                                                         }
                                                         §§goto(addr56);
                                                      }
                                                }
                                                return;
                                                §§push(5);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr264);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr264);
                              }
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr264);
                     }
                  }
                  §§goto(addr218);
               }
               §§goto(addr238);
            }
            §§goto(addr259);
         }
         §§goto(addr141);
      }
      
      protected function §"!U§() : String
      {
         return §%@§.§?h§;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § _§.§!6§.useMightyEagle();
         }
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §5!P§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         }
         while(true)
         {
            this.§+M§ = true;
            while(_loc3_)
            {
               this.hideMightyEagleButton();
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!4§();
         }
      }
   }
}
