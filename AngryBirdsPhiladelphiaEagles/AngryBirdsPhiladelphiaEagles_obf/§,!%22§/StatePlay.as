package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §0!E§.§3"§;
   import §0!E§.§;!D§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §9T§.§97§;
   import §<M§.§"_§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import §`K§.§4N§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §@'§
   {
      
      public static const §-A§:String = "StatePlay";
      
      public static const §@!D§:int = 50;
      
      protected static const §'!'§:String = "MightyEagleButtonVisible";
      
      protected static const § !?§:String = "MightyEagleButtonPrepareHide";
      
      protected static const § get§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && StatePlay))
         {
            §-A§ = "StatePlay";
            loop0:
            while(true)
            {
               §@!D§ = 50;
               do
               {
                  §'!'§ = "MightyEagleButtonVisible";
                  loop2:
                  do
                  {
                     § !?§ = "MightyEagleButtonPrepareHide";
                     while(_loc2_)
                     {
                        § get§ = "MightyEagleButtonHide";
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(!(_loc2_ || StatePlay));
                  
               }
               while(_loc1_);
               
            }
         }
      }
      
      protected var §#q§:§;!D§;
      
      protected var §+f§:§[!9§;
      
      protected var §4!0§:String;
      
      protected var §,7§:Boolean;
      
      private var §8!P§:Vector.<int>;
      
      private var §>]§:Boolean;
      
      private var §1!,§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§#q§ = new §;!D§();
         this.§8!P§ = new Vector.<int>(32);
         while(true)
         {
            super(param1,param2);
            this.§8!P§[3] = 5000;
            loop1:
            while(true)
            {
               this.§8!P§[7] = 5000;
               if(!(_loc4_ || this))
               {
                  break;
               }
               this.§8!P§[8] = 5000;
               while(true)
               {
                  this.§8!P§[9] = 5000;
                  while(_loc4_ || this)
                  {
                     this.§8!P§[12] = 5000;
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §0q§ = new §`o§(this);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §0q§.init(§`Z§.§5c§.Views.View_LevelPlay[0]);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      protected function §"!0§() : void
      {
      }
      
      private function §8!K§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            (§0q§.getItemByName("TextField_METimer") as §@4§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§2!2§();
         while(true)
         {
            super.levelStarted();
            while(true)
            {
               if(§0q§.getItemByName("Button_MightyEagle"))
               {
                  if(_loc1_ || _loc1_)
                  {
                     §0q§.getItemByName("Button_MightyEagle").setVisibility(true);
                  }
               }
               §§push(§[!7§);
               §§push("LevelStartsBirdsMilitary");
               if(_loc1_)
               {
                  §§push(§§pop() + (1 + int(Math.random() * 2)));
               }
               §§pop().playSound(§§pop());
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               this.§3m§();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §2!2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!7§.§=0§();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0q§.getItemByName("TextField_METimer").setVisibility(false);
            while(true)
            {
               §0q§.getItemByName("Container_MEScore").setVisibility(false);
               addr75:
               while(!_loc1_)
               {
               }
            }
         }
         while(true)
         {
            §0q§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
            while(_loc2_)
            {
               §0q§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
               if(!_loc1_)
               {
                  return;
               }
            }
            §§goto(addr75);
         }
      }
      
      protected function §3m§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§#q§.assign(0);
         do
         {
            this.updateCurrentScore(0);
            this.initMightyEagleButton();
         }
         while(false);
         
         if(§8j§.§]!H§ != null)
         {
            if(!_loc6_)
            {
               _loc1_ = new Bitmap(§8j§.§]!H§,"auto",true);
               if(_loc5_)
               {
                  _loc1_.x = -_loc1_.width / 2;
                  if(_loc5_ || _loc3_)
                  {
                     addr70:
                     _loc1_.y = -_loc1_.height / 2;
                  }
                  _loc2_ = new MovieClip();
                  if(!_loc6_)
                  {
                     _loc2_.addChild(_loc1_);
                     if(_loc5_ || _loc1_)
                     {
                        _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                        if(!_loc6_)
                        {
                           _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                           if(_loc6_ && _loc2_)
                           {
                           }
                           §§goto(addr162);
                        }
                     }
                     (§0q§.getItemByName("MovieClip_AvatarPlaceholder") as §!o§).changeMovieClip(_loc2_);
                     if(!(_loc6_ && this))
                     {
                        §0q§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                     }
                  }
                  §§goto(addr162);
               }
               §§goto(addr70);
            }
            §§goto(addr187);
         }
         addr162:
         this.§4!0§ = §'!'§;
         if(!_loc6_)
         {
            this.§+f§ = null;
            do
            {
               this.§,7§ = false;
            }
            while(_loc6_ && _loc1_);
            
            addr187:
         }
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc1_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         do
         {
            (§0q§.getItemByName("Button_Pause") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc1_ && _loc1_);
         
         this.deactivateMightyEagleButton();
         do
         {
            §§push(this.§+f§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  break;
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§push(this.§+f§);
            }
            §§pop().stop();
         }
         while(do
         {
            this.§+f§ = null;
         }
         while(_loc1_);
         , !_loc2_);
         
      }
      
      protected function §-[§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(!this.§>]§)
            {
               loop0:
               do
               {
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc4_ || _loc2_))
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc5_);
               
               loop12:
               while(true)
               {
                  §§push(_loc2_);
                  loop4:
                  while(true)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(§§pop() >= this.§8!P§.length)
                        {
                           §§push(_loc1_);
                           while(_loc5_ && _loc3_)
                           {
                           }
                           addr151:
                           §§push(Boolean(§§pop() % 1000));
                           if(_loc4_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    §§push(int(_loc1_ / 1000) == 25);
                                    addr121:
                                    addr129:
                                    addr52:
                                    while(!(_loc4_ || _loc1_))
                                    {
                                       continue loop5;
                                    }
                                    if(!§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§>]§ = true;
                                       }
                                       §3"§.§>v§(§3"§.§=!B§,§`!K§.§5g§);
                                       addr136:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§1!,§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(int(getTimer()));
                                                         if(_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            _loc3_ = §§pop();
                                                            loop9:
                                                            do
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(getTimer() - _loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop() >= 1000)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                            while(_loc5_ && this);
                                                            
                                                            addr48:
                                                            return;
                                                            addr104:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr151);
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr48);
                                          }
                                          else
                                          {
                                             §§goto(addr121);
                                          }
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                                 addr170:
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr170);
                        }
                        else
                        {
                           §§push(_loc1_);
                        }
                        while(true)
                        {
                           §§push(int(§§pop() + this.§8!P§[_loc2_]));
                        }
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        _loc2_++;
                        continue loop12;
                     }
                  }
               }
               addr211:
            }
            §§goto(addr52);
         }
         §§goto(addr211);
      }
      
      protected function §+T§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §0!=§.getScore();
         §§push(this.§#q§.getValue());
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_ < _loc1_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || this)
                        {
                           this.§1!,§ = true;
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(this.§>]§);
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop0;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           addr110:
                        }
                     }
                     break;
                  }
                  return;
                  addr89:
               }
               §§goto(addr109);
            }
         }
         §§goto(addr110);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(§"_§.isOpen);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(§#! §.§`'§.objects.mSardineCanAdded);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           while(!(_loc4_ && _loc3_))
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 §§goto(addr71);
                              }
                              while(true)
                              {
                                 (§0q§.getItemByName("Container_MEScore") as §[Q§).setVisibility(true);
                                 addr67:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           continue;
                           addr46:
                        }
                        while(true)
                        {
                           this.§-[§();
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr46);
                        }
                        if(true)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  §§push(super.run(param1));
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(_loc2_);
                  loop4:
                  while(true)
                  {
                     if(§§pop() != §'!#§.STATE_STATUS_RUNNING)
                     {
                        §§push(_loc2_);
                     }
                     else
                     {
                        this.updateCurrentScore(param1);
                        §§push(this.§4!0§);
                        while(true)
                        {
                           §§push(§'!'§);
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              §§push(§§pop() == §§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(§#! §.§`'§);
                                    while(true)
                                    {
                                       §§push(§§pop().objects.isPigsAlive());
                                       addr225:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                       }
                                       addr196:
                                       §§push(§#! §.§`'§);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§§pop().slingshot.mSlingShotState);
                                          if(!_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr267:
                                          continue loop4;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          this.§>@§();
                                       }
                                    }
                                    §§push(this.§4!0§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§'!'§);
                                       addr201:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr225);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr267);
                  }
               }
               addr71:
               return §'!#§.STATE_STATUS_RUNNING;
            }
         }
         §§goto(addr60);
      }
      
      protected function §>@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§4!0§ = § !?§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentState(§@V§.§!%§);
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         while(true)
         {
            §§push(this.§+f§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  this.§+f§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Container_MightyEagle").mClip,{
                     "scaleX":1,
                     "scaleY":1
                  },null,0.5);
               }
               this.§4!0§ = § get§;
               §§push(this.§+f§);
               do
               {
                  §§pop().onComplete = this.§,!N§;
                  §§push(this.§+f§);
               }
               while(_loc2_ && this);
               
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().play();
                  return;
               }
            }
         }
      }
      
      protected function §,!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§+f§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            do
            {
               this.§+f§.play();
               do
               {
                  this.§4!0§ = § get§;
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§#! §.§`'§.objects.mMightyEagleAdded)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr41:
                  §§push(§ true§.§-A§);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return §<z§.§-A§;
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr41);
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
      
      override public function getLoserState() : String
      {
         return §]g§.§-A§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc3_)
            {
               §§push(82);
               if(_loc3_ || param1)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr78:
                     §§push(0);
                     if(_loc3_)
                     {
                        addr81:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  loop2:
                  switch(§§pop())
                  {
                     case 0:
                        §-O§.§8!5§();
                        while(true)
                        {
                           mNextState = this.§5!'§();
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           if(_loc3_)
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
               §§goto(addr81);
            }
            §§goto(addr78);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(§#! §.§^!E§)
            {
               var _loc2_:* = param1.keyCode;
               if(!(_loc4_ && _loc2_))
               {
                  §§push(49);
                  if(_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§push(0);
                           if(_loc4_ && param1)
                           {
                              addr131:
                              if(§§pop() === _loc2_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(2);
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(52);
                                 if(_loc3_ || this)
                                 {
                                    if(§§pop() === _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr195:
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
                                                §-O§.§8!5§();
                                                if(_loc3_ || _loc3_)
                                                {
                                                   mNextState = §-O§.§-A§;
                                                   addr33:
                                                   break;
                                                   addr53:
                                                }
                                                break;
                                             case 5:
                                                §-O§.§ b§();
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      mNextState = §-O§.§-A§;
                                                      if(_loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr53);
                                                   §§goto(addr33);
                                                }
                                                break;
                                             case 6:
                                          }
                                          return;
                                          §§push(3);
                                       }
                                       else
                                       {
                                          addr173:
                                          §§goto(addr195);
                                          §§push(4);
                                       }
                                    }
                                    else
                                    {
                                       §§push(53);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(§§pop() === _loc2_)
                                          {
                                             §§goto(addr173);
                                          }
                                          else
                                          {
                                             if(54 === _loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(5);
                                                   if(!_loc3_)
                                                   {
                                                      addr190:
                                                   }
                                                }
                                             }
                                             else if(55 !== _loc2_)
                                             {
                                                §§goto(addr195);
                                                §§push(7);
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr195);
                        }
                        §§push(6);
                        if(_loc3_)
                        {
                           §§goto(addr190);
                        }
                     }
                     else
                     {
                        §§push(50);
                        if(!_loc4_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              §§push(1);
                           }
                           else
                           {
                              §§push(51);
                              if(!_loc4_)
                              {
                                 §§goto(addr131);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr190);
               }
               §§goto(addr173);
               addr57:
            }
            §§goto(addr195);
         }
         §§goto(addr57);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param3 is §^'§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§`M§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(_loc5_ && this)
                        {
                           continue loop1;
                        }
                        §§push(§`M§.LISTENER_EVENT_MOUSE_UP);
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_ || this)
                           {
                              if(_loc6_ || param2)
                              {
                                 continue loop0;
                              }
                              addr65:
                              addr133:
                              var _loc4_:* = param2;
                              addr65:
                              if(_loc6_ || this)
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
                                             §§push(0);
                                             if(_loc5_ && param2)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr188:
                                             §§push(1);
                                             if(_loc5_ && param2)
                                             {
                                                addr254:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("PAUSE");
                                          if(_loc6_ || param1)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_ || param1)
                                             {
                                                addr180:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§push("RESTART_LEVEL");
                                                if(!(_loc5_ && param2))
                                                {
                                                   addr205:
                                                   §§push(_loc4_);
                                                   if(_loc6_ || this)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(2);
                                                            if(_loc5_)
                                                            {
                                                               addr247:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr244:
                                                            §§push(3);
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      else
                                                      {
                                                         §§push("MIGHTY_EAGLE");
                                                         if(!_loc5_)
                                                         {
                                                            addr238:
                                                            §§push(_loc4_);
                                                            if(!_loc6_)
                                                            {
                                                            }
                                                            addr250:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               addr251:
                                                               §§push(4);
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr254);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            else
                                                            {
                                                               addr259:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §"_§.§,X§();
                                                                     break;
                                                                     addr70:
                                                                  case 1:
                                                                     mNextState = this.§#T§();
                                                                     break;
                                                                     addr64:
                                                                  case 2:
                                                                     §-O§.§8!5§();
                                                                     addr54:
                                                                     if(_loc6_)
                                                                     {
                                                                        addr41:
                                                                        mNextState = §-O§.§-A§;
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr64);
                                                                     break;
                                                                  case 3:
                                                                     break;
                                                                  case 4:
                                                                     AngryBirdsFP11.§`y§.§,,§();
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           if(!_loc5_)
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
                                                                        else
                                                                        {
                                                                           §§goto(addr54);
                                                                        }
                                                                        §§goto(addr41);
                                                                     }
                                                               }
                                                               return;
                                                               §§push(5);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         addr249:
                                                         §§goto(addr250);
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr244);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr251);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr249);
                                                      §§push("FULLSCREEN_BUTTON");
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr238);
                                                §§goto(addr251);
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr244);
                              addr65:
                           }
                           else
                           {
                              addr110:
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr65);
                           }
                        }
                        §§goto(addr65);
                     }
                     §4N§.§7J§();
                     §§goto(addr133);
                  }
               }
            }
            §§goto(addr65);
         }
         §§goto(addr108);
      }
      
      protected function §#T§() : String
      {
         return §="§.§-A§;
      }
      
      protected function §`r§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §#! §.§`'§.§`r§();
         }
         §§push(AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §0q§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         }
         do
         {
            this.§,7§ = true;
            do
            {
               this.hideMightyEagleButton();
            }
            while(_loc3_ && _loc2_);
            
         }
         while(_loc3_ && this);
         
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+T§();
         }
      }
   }
}
