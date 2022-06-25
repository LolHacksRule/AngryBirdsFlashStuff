package §;H§
{
   import §"x§.§?8§;
   import §+0§.§,!E§;
   import §,B§.§?! §;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §2_§.§8![§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§%!M§;
   import §]+§.§=E§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §2!R§
   {
      
      public static const §"!s§:String = "StatePlay";
      
      public static const § ]§:int = 50;
      
      protected static const §,!9§:String = "MightyEagleButtonVisible";
      
      protected static const §8!o§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §"!-§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §"!s§ = "StatePlay";
            while(true)
            {
               § ]§ = 50;
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     §,!9§ = "MightyEagleButtonVisible";
                     do
                     {
                        §8!o§ = "MightyEagleButtonPrepareHide";
                        do
                        {
                           §"!-§ = "MightyEagleButtonHide";
                        }
                        while(_loc2_);
                        
                     }
                     while(!_loc1_);
                     
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      protected var §#!n§:§=E§;
      
      protected var §!!x§:§!q§;
      
      protected var §83§:String;
      
      protected var §]!y§:Boolean;
      
      private var §[x§:Vector.<int>;
      
      private var §0!Y§:Boolean;
      
      private var §?7§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#!n§ = new §=E§();
            loop0:
            while(true)
            {
               this.§[x§ = new Vector.<int>(32);
               loop1:
               while(true)
               {
                  super(param1,param2);
                  while(!_loc3_)
                  {
                     this.§[x§[3] = 5000;
                     loop3:
                     while(true)
                     {
                        this.§[x§[7] = 5000;
                        while(true)
                        {
                           this.§[x§[8] = 5000;
                           while(_loc4_ || _loc3_)
                           {
                              continue loop3;
                              if(_loc4_ || this)
                              {
                                 return;
                                 addr39:
                              }
                           }
                        }
                     }
                     loop6:
                     while(!(_loc3_ && param2))
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§[x§[12] = 5000;
                           if(!_loc4_)
                           {
                              continue loop6;
                           }
                           §§goto(addr32);
                        }
                        §§goto(addr39);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            while(true)
            {
               §&!m§ = new §4`§(this);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §&!m§.init(§ !I§.§3!a§.Views.View_LevelPlay[0]);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §;!j§() : void
      {
      }
      
      private function §2Z§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§&!m§.getItemByName("TextField_METimer") as §?!x§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §9'§.§0D§();
            while(true)
            {
               super.levelStarted();
               loop1:
               for(; _loc2_; while(true)
               {
                  if(_loc1_ && _loc2_)
                  {
                     continue loop1;
                  }
                  §§goto(addr57);
               })
               {
                  if(!§&!m§.getItemByName("Button_MightyEagle"))
                  {
                     while(true)
                     {
                        §§push(§9'§);
                        §§push("LevelStartsBirdsMilitary");
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop() + (1 + int(Math.random() * 2)));
                        }
                        §§pop().playSound(§§pop());
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                        }
                        continue loop1;
                     }
                     continue;
                     addr57:
                  }
               }
            }
         }
         while(true)
         {
            §&!m§.getItemByName("Button_MightyEagle").setVisibility(true);
            §§goto(addr101);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §&!m§.getItemByName("TextField_METimer").setVisibility(false);
            loop0:
            while(true)
            {
               §&!m§.getItemByName("Container_MEScore").setVisibility(false);
               while(true)
               {
                  §&!m§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  loop2:
                  while(!_loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §&!m§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                        if(_loc2_ || this)
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
         §§goto(addr80);
      }
      
      protected function initActivation() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(_loc6_ || _loc1_)
         {
            this.§#!n§.assign(0);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.updateCurrentScore(0);
                  if(!_loc5_)
                  {
                     this.initMightyEagleButton();
                     if(!(_loc5_ && this))
                     {
                        if(_loc6_)
                        {
                           while(true)
                           {
                              if(true)
                              {
                                 if(§%!R§.§>!B§ != null)
                                 {
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       addr70:
                                       _loc1_ = new Bitmap(§%!R§.§>!B§,"auto",true);
                                       if(_loc6_ || this)
                                       {
                                          _loc1_.x = -_loc1_.width / 2;
                                          if(!_loc5_)
                                          {
                                             addr104:
                                             _loc1_.y = -_loc1_.height / 2;
                                          }
                                          _loc2_ = new MovieClip();
                                          if(_loc6_)
                                          {
                                             _loc2_.addChild(_loc1_);
                                             if(!_loc5_)
                                             {
                                                addr122:
                                                _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr141:
                                                   _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                                                   if(_loc6_)
                                                   {
                                                      addr152:
                                                      (§&!m§.getItemByName("MovieClip_AvatarPlaceholder") as §1!=§).changeMovieClip(_loc2_);
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   §&!m§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                                                   break;
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr104);
                                    }
                                    break loop1;
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           this.§83§ = §,!9§;
                           if(!_loc5_)
                           {
                              break;
                           }
                           return;
                           addr202:
                           addr45:
                        }
                        continue loop0;
                     }
                     §§goto(addr70);
                  }
                  break;
               }
               this.§!!x§ = null;
               do
               {
                  this.§]!y§ = false;
               }
               while(!(_loc6_ || _loc1_));
               
               §§goto(addr202);
            }
         }
         §§goto(addr45);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               (§&!m§.getItemByName("Button_Pause") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(true)
               {
                  this.deactivateMightyEagleButton();
                  addr64:
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§!!x§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  break;
               }
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr64);
            }
            §§goto(addr90);
         }
         §§goto(addr24);
      }
      
      protected function §"'§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            if(!this.§0!Y§)
            {
               loop17:
               do
               {
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(_loc5_ && this)
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           continue loop17;
                        }
                     }
                  }
               }
               while(_loc5_ && _loc1_);
               
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(§§pop() >= this.§[x§.length)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              addr149:
                              while(true)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() % 1000);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr169:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(int(_loc1_ / 1000) == 25);
                                                   addr129:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(!§§pop());
                                                   }
                                                }
                                             }
                                             addr168:
                                          }
                                          while(true)
                                          {
                                             addr133:
                                             §§goto(addr49);
                                          }
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr177:
                                    }
                                    addr183:
                                 }
                                 §§goto(addr184);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr177);
                           §§push(_loc1_);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr149);
               }
               addr223:
            }
            addr49:
            loop14:
            while(§§pop())
            {
               loop15:
               while(true)
               {
                  this.§0!Y§ = true;
                  loop16:
                  while(true)
                  {
                     §%!M§.§[!G§(§%!M§.§&!9§,LevelManager.§%n§);
                     addr89:
                     while(true)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop16;
                        }
                        if(!(_loc4_ || _loc1_))
                        {
                           continue loop15;
                        }
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        addr184:
                        while(true)
                        {
                           _loc2_++;
                           addr172:
                           while(true)
                           {
                              continue loop20;
                           }
                        }
                        continue loop16;
                     }
                     break loop14;
                  }
               }
            }
            loop0:
            while(true)
            {
               §§push(this.§?7§);
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 §§push(int(getTimer()));
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 _loc3_ = §§pop();
                                 loop6:
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(getTimer() - _loc3_);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop() >= 1000)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop8;
                                             }
                                             continue loop6;
                                          }
                                          continue;
                                       }
                                       continue loop9;
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr89);
                                 addr79:
                              }
                              §§goto(addr172);
                           }
                           else
                           {
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr79);
                     }
                     break;
                  }
                  §§goto(addr129);
               }
               else
               {
                  §§goto(addr133);
               }
            }
            return;
         }
         §§goto(addr223);
      }
      
      protected function §#]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §[!D§.getScore();
         §§push(this.§#!n§.getValue());
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_ < _loc1_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        if(!(_loc4_ || _loc1_))
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§0!Y§);
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 continue loop0;
                              }
                              addr95:
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                        this.§?7§ = true;
                     }
                     break;
                  }
                  return;
                  addr70:
               }
               §§goto(addr95);
            }
         }
         §§goto(addr86);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§?! §.isOpen);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§83§ = §8!o§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentState(§4+§.§ !M§);
            while(true)
            {
               (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            addr126:
         }
         loop1:
         while(true)
         {
            §§push(this.§!!x§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§!!x§ = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_MightyEagle").mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },null,0.5);
                     addr107:
                     while(true)
                     {
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  this.§83§ = §"!-§;
                  loop6:
                  while(true)
                  {
                     §§push(this.§!!x§);
                     loop7:
                     while(true)
                     {
                        §§pop().onComplete = this.onHideMightyEagle;
                        addr64:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop6;
                           }
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue loop7;
                           }
                           §§goto(addr126);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function onHideMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!x§ = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§!!x§.play();
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§83§ = §"!-§;
            if(!(_loc2_ && this))
            {
               if(_loc1_)
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
         if(!(_loc1_ && this))
         {
            if(§^!c§.§5!Y§.objects.mMightyEagleAdded)
            {
               if(_loc2_ || _loc1_)
               {
                  addr46:
                  §§push(§#!G§.§"!s§);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return §%!D§.§"!s§;
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr46);
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
      
      override public function getLoserState() : String
      {
         return §6M§.§"!s§;
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
            if(_loc4_ || param1)
            {
               §§push(82);
               if(!_loc3_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr79:
                     §§push(0);
                     if(_loc4_)
                     {
                        addr82:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        §;W§.§&!5§();
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        continue;
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr79);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(§^!c§.§@a§)
            {
               var _loc2_:* = param1.keyCode;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(49);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc3_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr188:
                              if(§§pop() === _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr221:
                                    §§push(6);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr229:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(55);
                                 if(!(_loc4_ && param1))
                                 {
                                    addr219:
                                    if(§§pop() === _loc2_)
                                    {
                                       §§goto(addr221);
                                    }
                                    else
                                    {
                                       addr234:
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
                                             §;W§.§&!5§();
                                             mNextState = §;W§.§"!s§;
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr33:
                                                break;
                                             }
                                             break;
                                             addr69:
                                          case 5:
                                             §;W§.§&p§();
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   mNextState = §;W§.§"!s§;
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr69);
                                                §§goto(addr33);
                                             }
                                             break;
                                          case 6:
                                       }
                                       return;
                                       §§push(7);
                                    }
                                 }
                              }
                           }
                           §§goto(addr234);
                        }
                        addr192:
                        §§push(5);
                        if(!(_loc4_ && param1))
                        {
                           addr210:
                        }
                     }
                     else
                     {
                        §§push(50);
                        if(!_loc4_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 addr123:
                                 §§push(1);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr234);
                                 }
                                 else
                                 {
                                    §§goto(addr210);
                                 }
                              }
                              else
                              {
                                 addr144:
                                 §§push(2);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr234);
                                 }
                                 else
                                 {
                                    §§goto(addr188);
                                 }
                              }
                              §§goto(addr234);
                           }
                           else
                           {
                              §§push(51);
                              if(_loc3_ || _loc2_)
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr144);
                                    }
                                    §§goto(addr221);
                                 }
                                 else
                                 {
                                    §§push(52);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr161:
                                       if(§§pop() === _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(3);
                                             if(_loc3_)
                                             {
                                                addr168:
                                             }
                                             §§goto(addr234);
                                          }
                                          else
                                          {
                                             addr176:
                                             §§push(4);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§goto(addr234);
                                             }
                                             else
                                             {
                                                §§goto(addr188);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(53);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() === _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr192);
                                             }
                                             else
                                             {
                                                §§push(54);
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr229);
                                             }
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                                 §§goto(addr219);
                              }
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr234);
                  }
                  §§goto(addr161);
               }
               §§goto(addr123);
               addr59:
            }
            §§goto(addr234);
         }
         §§goto(addr59);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(param3 is §==§)
            {
               loop0:
               do
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§,!c§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        §§push(§,!c§.LISTENER_EVENT_MOUSE_UP);
                        if(_loc6_ && param2)
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(_loc5_ || param1)
                              {
                                 §?8§.§]!%§();
                                 addr117:
                                 if(_loc6_ && param1)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              var _loc4_:* = param2;
                              addr79:
                              if(_loc5_ || param1)
                              {
                                 §§push("CLOSE_TUTORIAL");
                                 if(!_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(0);
                                             if(_loc5_ || this)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr248:
                                             §§push(3);
                                             if(!_loc5_)
                                             {
                                                addr263:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("PAUSE");
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ && param2))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§push(1);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      addr223:
                                                      addr268:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §?! §.§<z§();
                                                            break;
                                                            addr84:
                                                         case 1:
                                                            mNextState = this.§"1§();
                                                            break;
                                                            addr78:
                                                         case 2:
                                                            §;W§.§&!5§();
                                                            addr45:
                                                            mNextState = §;W§.§"!s§;
                                                            if(_loc5_ || this)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr84);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr78);
                                                            }
                                                            addr70:
                                                         case 3:
                                                            break;
                                                         case 4:
                                                            AngryBirdsFP11.§3l§.§1T§();
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr70);
                                                                  }
                                                               }
                                                               §§goto(addr45);
                                                            }
                                                      }
                                                      return;
                                                      §§goto(addr268);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr248);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("RESTART_LEVEL");
                                                   if(!_loc6_)
                                                   {
                                                      addr214:
                                                      §§push(_loc4_);
                                                      if(_loc5_)
                                                      {
                                                         addr217:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr220:
                                                               §§push(2);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr223);
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         else
                                                         {
                                                            §§push("MIGHTY_EAGLE");
                                                            if(_loc5_)
                                                            {
                                                               addr227:
                                                               §§push(_loc4_);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr245:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr248);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr254:
                                                                     if("FULLSCREEN_BUTTON" !== _loc4_)
                                                                     {
                                                                        §§goto(addr268);
                                                                        §§push(5);
                                                                     }
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr220);
                              addr79:
                              addr152:
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr79);
                     }
                     §?8§.§&#§();
                     §§goto(addr152);
                  }
               }
               while(!(_loc5_ || param2));
               
               addr141:
            }
            §§goto(addr79);
         }
         §§goto(addr141);
      }
      
      protected function §"1§() : String
      {
         return §-!X§.§"!s§;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §^!c§.§5!Y§.useMightyEagle();
         }
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§));
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §&!m§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            while(true)
            {
               this.§]!y§ = true;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.hideMightyEagleButton();
            if(_loc3_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#]§();
         }
      }
   }
}
