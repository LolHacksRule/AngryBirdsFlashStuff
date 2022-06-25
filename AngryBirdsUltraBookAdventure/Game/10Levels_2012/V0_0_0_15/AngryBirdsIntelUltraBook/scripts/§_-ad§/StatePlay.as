package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0BH§.§_-Hy§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-TG§.§_-E0§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-BK§;
   import §_-eS§.§_-Za§;
   import §_-gU§.§_-02s§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §_-iq§
   {
      
      public static const §_-pk§:String = "StatePlay";
      
      public static const §_-04v§:int = 50;
      
      protected static const §_-5i§:String = "MightyEagleButtonVisible";
      
      protected static const §_-Ad§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §_-LQ§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-pk§ = "StatePlay";
         }
         while(true)
         {
            §_-04v§ = 50;
            loop1:
            while(_loc2_)
            {
               §_-5i§ = "MightyEagleButtonVisible";
               loop2:
               while(true)
               {
                  §_-Ad§ = "MightyEagleButtonPrepareHide";
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected var §_-09E§:§_-BK§;
      
      protected var §_-01A§:§_-dd§;
      
      protected var §_-i1§:String;
      
      protected var §_-01Y§:Boolean;
      
      private var §_-vW§:Vector.<int>;
      
      private var §_-sH§:Boolean;
      
      private var §_-080§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§_-09E§ = new §_-BK§();
            loop0:
            while(true)
            {
               this.§_-vW§ = new Vector.<int>(32);
               loop1:
               while(true)
               {
                  super(param1,param2);
                  while(!_loc3_)
                  {
                     addr81:
                     if(_loc4_)
                     {
                        this.§_-vW§[8] = 5000;
                        while(!_loc3_)
                        {
                           this.§_-vW§[9] = 5000;
                           while(!_loc3_)
                           {
                              this.§_-vW§[12] = 5000;
                              if(_loc4_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                    addr44:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr81);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§_-vW§[7] = 5000;
                                 continue loop5;
                              }
                              addr100:
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§_-vW§[3] = 5000;
            §§goto(addr100);
         }
         §§goto(addr44);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               §_-s0§ = new §_-5q§(this);
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelPlay[0]);
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §_-09z§() : void
      {
      }
      
      private function §_-Rv§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§_-s0§.getItemByName("TextField_METimer") as §_-0Eo§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-pX§.§_-j4§();
            while(true)
            {
               super.levelStarted();
               loop5:
               while(_loc1_ || _loc1_)
               {
                  this.initActivation();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     addr30:
                     if(!(_loc1_ || this))
                     {
                        loop2:
                        while(true)
                        {
                           §_-s0§.getItemByName("Button_MightyEagle").setVisibility(true);
                           addr92:
                           addr103:
                           while(!(_loc2_ && _loc1_))
                           {
                              while(true)
                              {
                                 §§push(§_-pX§);
                                 §§push("LevelStartsBirdsMilitary");
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + (1 + int(Math.random() * 2)));
                                 }
                                 §§pop().playSound(§§pop());
                                 continue loop5;
                              }
                           }
                           while(true)
                           {
                              if(§_-s0§.getItemByName("Button_MightyEagle"))
                              {
                                 continue loop2;
                              }
                              §§goto(addr48);
                              §§goto(addr92);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr92);
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            §_-s0§.getItemByName("TextField_METimer").setVisibility(false);
         }
         loop0:
         do
         {
            §_-s0§.getItemByName("Container_MEScore").setVisibility(false);
            while(true)
            {
               §_-s0§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
               while(!_loc2_)
               {
                  §_-s0§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  if(_loc1_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc1_);
         
      }
      
      protected function initActivation() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(_loc6_)
         {
            this.§_-09E§.assign(0);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.updateCurrentScore(0);
                  if(!(_loc5_ && this))
                  {
                     this.initMightyEagleButton();
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        if(§_-05N§.§_-Xp§ != null)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc1_ = new Bitmap(§_-05N§.§_-Xp§,"auto",true);
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc1_.x = -_loc1_.width / 2;
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr104:
                                    _loc1_.y = -_loc1_.height / 2;
                                 }
                                 _loc2_ = new MovieClip();
                                 if(!_loc5_)
                                 {
                                    _loc2_.addChild(_loc1_);
                                    if(!_loc5_)
                                    {
                                       _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                                       if(_loc5_)
                                       {
                                       }
                                       addr147:
                                       (§_-s0§.getItemByName("MovieClip_AvatarPlaceholder") as §_-k6§).changeMovieClip(_loc2_);
                                       if(_loc6_)
                                       {
                                          §_-s0§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                                          addr171:
                                          this.§_-i1§ = §_-5i§;
                                          if(!(_loc5_ && this))
                                          {
                                             this.§_-01A§ = null;
                                             addr181:
                                             while(true)
                                             {
                                                this.§_-01Y§ = false;
                                                if(!_loc5_)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             addr181:
                                          }
                                          break;
                                       }
                                       §§goto(addr171);
                                    }
                                    _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                                    if(!_loc6_)
                                    {
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr171);
                     }
                     break;
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr181);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               (§_-s0§.getItemByName("Button_Pause") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
               loop1:
               while(true)
               {
                  this.deactivateMightyEagleButton();
                  loop2:
                  for(; _loc1_; while(_loc1_ || this)
                  {
                     §§goto(addr78);
                     §§push(this.§_-01A§);
                     §§goto(addr29);
                  })
                  {
                     §§push(this.§_-01A§);
                     if(_loc1_ || this)
                     {
                        if(§§pop() != null)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        loop4:
                        while(true)
                        {
                           §§pop().stop();
                           while(_loc1_)
                           {
                              this.§_-01A§ = null;
                              if(!_loc2_)
                              {
                                 addr29:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    break loop4;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                        addr78:
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function §_-08z§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            if(!this.§_-sH§)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  loop0:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr221:
                     addr213:
                     while(true)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc4_ && _loc1_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     loop21:
                     while(true)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() >= this.§_-vW§.length)
                           {
                              while(true)
                              {
                                 §§push(_loc1_);
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() % 1000);
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
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§push(int(_loc1_ / 1000) == 25);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(!§§pop());
                                                         }
                                                         addr131:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                while(§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            this.§_-sH§ = true;
                                                            while(true)
                                                            {
                                                               §_-Za§.§_-Ve§(§_-Za§.§_-jk§,LevelManager.§_-HM§);
                                                               addr105:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                            addr152:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_++;
                                                               addr178:
                                                               while(true)
                                                               {
                                                                  continue loop21;
                                                               }
                                                            }
                                                            addr200:
                                                         }
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr57);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop() + this.§_-vW§[_loc2_]));
                                             addr199:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                             }
                                          }
                                          addr193:
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr199);
                                 }
                              }
                           }
                           else
                           {
                              §§push(_loc1_);
                           }
                           §§goto(addr193);
                        }
                     }
                  }
               }
               §§goto(addr221);
            }
            addr57:
            loop2:
            while(true)
            {
               §§push(this.§_-080§);
               if(!(_loc4_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(int(getTimer()));
                           if(_loc4_)
                           {
                              continue loop5;
                           }
                           if(_loc4_)
                           {
                              continue loop3;
                           }
                           _loc3_ = §§pop();
                           loop14:
                           while(!_loc4_)
                           {
                              while(true)
                              {
                                 §§push(getTimer() - _loc3_);
                                 if(!_loc5_)
                                 {
                                    continue loop16;
                                 }
                                 if(§§pop() < 1000)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop14;
                                 }
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr178);
                                 }
                                 else
                                 {
                                    §§goto(addr105);
                                 }
                              }
                              continue loop16;
                           }
                           §§goto(addr152);
                           addr85:
                        }
                        else
                        {
                           §§goto(addr135);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr85);
                  }
                  break;
               }
               §§goto(addr131);
            }
            return;
         }
         §§goto(addr213);
      }
      
      protected function §_-3O§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §_-JC§.getScore();
         §§push(this.§_-09E§.getValue());
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_ < _loc1_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§_-080§ = true;
                        }
                        addr93:
                     }
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§_-sH§);
                           if(_loc4_ && _loc1_)
                           {
                              continue loop0;
                           }
                           if(_loc3_ || _loc1_)
                           {
                              §§push(Boolean(§§pop()));
                              continue loop0;
                           }
                           addr104:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
                  return;
                  addr84:
               }
               §§goto(addr104);
            }
         }
         §§goto(addr93);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§_-02s§.isOpen);
            do
            {
               if(!§§pop())
               {
                  continue;
               }
            }
            while(!_loc4_);
            
            return §_-nG§.STATE_STATUS_RUNNING;
            addr59:
         }
         loop4:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(§ in§.§_-Dc§.objects.mSardineCanAdded);
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     (§_-s0§.getItemByName("Container_MEScore") as §_-gt§).setVisibility(true);
                  }
                  loop2:
                  while(true)
                  {
                     addr20:
                     while(true)
                     {
                        this.§_-08z§();
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     if(_loc3_)
                     {
                        continue loop4;
                     }
                     if(false)
                     {
                        continue loop1;
                     }
                     §§push(super.run(param1));
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc3_)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && param1))
                        {
                           if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
                           {
                              addr264:
                              this.updateCurrentScore(param1);
                              addr239:
                              addr261:
                              addr260:
                              addr259:
                              addr258:
                              if(this.§_-i1§ == §_-5i§ && !§ in§.§_-Dc§.objects.isPigsAlive())
                              {
                                 addr240:
                                 if(!_loc3_)
                                 {
                                    this.prepareHideMightyEagleButton();
                                    addr254:
                                 }
                                 §§goto(addr281);
                              }
                              addr268:
                              §§push(this.§_-i1§ == §_-5i§);
                              if(_loc4_ || param1)
                              {
                                 addr218:
                                 if(!§§pop())
                                 {
                                    addr219:
                                    §§pop();
                                    addr220:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(this.§_-i1§);
                                             if(_loc4_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§_-Ad§);
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr173:
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            addr175:
                                                            §§push(§§pop());
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr192:
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        §§pop();
                                                                        addr200:
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§ in§.§_-Dc§);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(§§pop().slingshot.mSlingShotState);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§push(§§pop() == §_-E0§.§_-pu§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   §§goto(addr139);
                                                                                                }
                                                                                                §§goto(addr237);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr239);
                                                                                       }
                                                                                       §§goto(addr173);
                                                                                    }
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 addr281:
                                                                                 return _loc2_;
                                                                              }
                                                                              §§goto(addr237);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr219);
                                                                  }
                                                                  addr139:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           this.hideMightyEagleButton();
                                                                           §§goto(addr152);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§goto(addr152);
                                                                  }
                                                                  addr152:
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr200);
                                                                  }
                                                                  return §_-nG§.STATE_STATUS_RUNNING;
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr262);
                           }
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr264);
                  }
               }
               §§goto(addr20);
            }
            §§goto(addr59);
         }
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-i1§ = §_-Ad§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
            loop0:
            while(true)
            {
               (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
               loop1:
               while(true)
               {
                  §§push(this.§_-01A§);
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        while(true)
                        {
                           this.§_-01A§ = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_MightyEagle").mClip,{
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
                        this.§_-i1§ = §_-LQ§;
                        loop6:
                        while(true)
                        {
                           if(_loc1_ || this)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(this.§_-01A§);
                              loop7:
                              while(true)
                              {
                                 §§pop().onComplete = this.onHideMightyEagle;
                                 addr45:
                                 while(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                           else
                           {
                              §§goto(addr81);
                           }
                           §§goto(addr107);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      protected function onHideMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-01A§ = §_-cx§.§_-3S§.§_-Wf§(§_-s0§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
         }
         while(true)
         {
            this.§_-01A§.play();
            while(_loc2_ || _loc2_)
            {
               this.§_-i1§ = §_-LQ§;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§ in§.§_-Dc§.objects.mMightyEagleAdded)
            {
               if(_loc2_ || this)
               {
                  §§push(§_-iz§.§_-pk§);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return §_-08x§.§_-pk§;
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      override public function getLoserState() : String
      {
         return §_-rF§.§_-pk§;
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
         do
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_)
            {
               §§push(82);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr84:
                     §§push(0);
                     if(_loc3_)
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
                     §_-MG§.§_-0Eg§();
                     if(!_loc3_)
                     {
                        mNextState = this.§_-03M§();
                        if(_loc3_ && this)
                        {
                           break loop0;
                        }
                        continue;
                     }
               }
            }
            §§goto(addr84);
         }
         while(false);
         
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(§ in§.§_-LI§)
            {
               var _loc2_:* = param1.keyCode;
               if(_loc3_ || this)
               {
                  §§push(49);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr124:
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc4_ && _loc2_)
                                    {
                                       addr239:
                                    }
                                 }
                                 else
                                 {
                                    addr231:
                                    §§push(6);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§goto(addr239);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(51);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(§§pop() === _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(2);
                                          if(!_loc3_)
                                          {
                                             addr161:
                                             if(§§pop() === _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr165:
                                                   §§push(3);
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      addr229:
                                                      if(§§pop() === _loc2_)
                                                      {
                                                         §§goto(addr231);
                                                      }
                                                      else
                                                      {
                                                         addr244:
                                                         loop2:
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
                                                               §_-MG§.§_-0Eg§();
                                                               while(true)
                                                               {
                                                                  mNextState = §_-MG§.§_-pk§;
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr40:
                                                                     break loop2;
                                                                  }
                                                               }
                                                               break;
                                                            case 5:
                                                               §_-MG§.§_-4t§();
                                                               while(true)
                                                               {
                                                                  mNextState = §_-MG§.§_-pk§;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     §§goto(addr40);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               break;
                                                            case 6:
                                                         }
                                                         return;
                                                         §§push(7);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr186:
                                                   §§push(4);
                                                   if(!_loc4_)
                                                   {
                                                      addr189:
                                                   }
                                                   else
                                                   {
                                                      addr220:
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
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr231);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(54);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         if(§§pop() === _loc2_)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               addr207:
                                                               §§push(5);
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr220);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr231);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(55);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§goto(addr229);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr239);
                                                }
                                             }
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr207);
                                    }
                                    else
                                    {
                                       §§push(52);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr161);
                                       }
                                       §§goto(addr189);
                                    }
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr244);
                        }
                        §§goto(addr165);
                     }
                     else
                     {
                        §§push(50);
                        if(!_loc4_)
                        {
                           §§goto(addr124);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr220);
               }
               §§goto(addr231);
               addr64:
            }
            §§goto(addr244);
         }
         §§goto(addr64);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(param3 is §_-Mu§)
            {
               if(!_loc6_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§_-wU§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        §§push(§_-wU§.LISTENER_EVENT_MOUSE_UP);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              if(_loc5_)
                              {
                                 addr110:
                                 §_-Hy§.§_-6Z§();
                                 addr112:
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 var _loc4_:* = param2;
                                 addr79:
                                 if(_loc5_)
                                 {
                                    §§push("CLOSE_TUTORIAL");
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_ || param2)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                §§push(0);
                                                if(_loc6_ && param3)
                                                {
                                                   addr195:
                                                }
                                             }
                                             else
                                             {
                                                addr243:
                                                §§push(3);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr251:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push("PAUSE");
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr189:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(1);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr195);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr251);
                                                         }
                                                      }
                                                      addr215:
                                                      §§push(2);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      addr268:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §_-02s§.§_-fl§();
                                                            break;
                                                            addr84:
                                                         case 1:
                                                            mNextState = this.§_-g4§();
                                                            break;
                                                            addr78:
                                                         case 2:
                                                            §_-MG§.§_-0Eg§();
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr48:
                                                                     mNextState = §_-MG§.§_-pk§;
                                                                     break;
                                                                     addr53:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr84);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr78);
                                                               }
                                                            }
                                                            break;
                                                         case 3:
                                                            break;
                                                         case 4:
                                                            AngryBirdsFP11.§_-07§.§_-0De§();
                                                            if(_loc5_ || this)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr48);
                                                               }
                                                               §§goto(addr53);
                                                            }
                                                      }
                                                      return;
                                                      §§goto(addr268);
                                                   }
                                                   else
                                                   {
                                                      §§push("RESTART_LEVEL");
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            else
                                                            {
                                                               §§push("MIGHTY_EAGLE");
                                                               if(_loc5_)
                                                               {
                                                                  addr222:
                                                                  §§push(_loc4_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr225:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc5_ || param3)
                                                                        {
                                                                           §§goto(addr243);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr255:
                                                                           §§push(4);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr253:
                                                                        §§push("FULLSCREEN_BUTTON");
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  if(§§pop() !== §§pop())
                                                                  {
                                                                     §§goto(addr268);
                                                                     §§push(5);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr215);
                                 addr79:
                              }
                              §§goto(addr79);
                              addr137:
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr79);
                     }
                  }
               }
               §_-Hy§.§_-7h§();
               §§goto(addr137);
            }
            §§goto(addr79);
         }
         §§goto(addr110);
      }
      
      protected function §_-g4§() : String
      {
         return §_-08C§.§_-pk§;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § in§.§_-Dc§.useMightyEagle();
         }
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§));
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            §_-s0§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         }
         do
         {
            this.§_-01Y§ = true;
            do
            {
               this.hideMightyEagleButton();
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-3O§();
         }
      }
   }
}
