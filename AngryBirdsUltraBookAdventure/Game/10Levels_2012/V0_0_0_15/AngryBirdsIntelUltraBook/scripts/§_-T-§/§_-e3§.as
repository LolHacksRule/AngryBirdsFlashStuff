package §_-T-§
{
   import §_-02x§.§_-o7§;
   import §_-0AB§.§_-dd§;
   import §_-0Dg§.§_-hi§;
   import §_-0EZ§.§_-48§;
   import §_-0Ea§.§_-AY§;
   import §_-6C§.§_-k6§;
   import §_-7§.§_-Ce§;
   import §_-7§.§_-EJ§;
   import §_-7§.§_-on§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-TG§.§_-00u§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.StatePlay;
   import §_-ad§.§_-08x§;
   import §_-ad§.§_-MG§;
   import §_-ad§.§_-iz§;
   import §_-dJ§.§_-xW§;
   import §_-eS§.§_-OY§;
   import §_-eS§.§_-Za§;
   import §_-qO§.§ in§;
   import §_-wA§.§_-qb§;
   import §_-x8§.§_-nG§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §_-e3§ extends StatePlay
   {
      
      private static const §_-C8§:Number = -5000.0;
      
      private static const §_-06Q§:Number = 10000.0;
      
      public static const §_-04v§:int = 50;
      
      public static var §_-00p§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-e3§))
         {
            §_-C8§ = -5 * 1000;
         }
         do
         {
            §_-06Q§ = 10 * 1000;
            do
            {
               §_-04v§ = 50;
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
      
      private var §_-b9§:Number = -5000.0;
      
      private var §_-FG§:int = 0;
      
      private var §_-BW§:Number = 0;
      
      private var §_-fS§:Number = 0;
      
      private var §_-GI§:Number;
      
      protected var §_-KW§:§_-48§;
      
      private var §_-1I§:§_-qb§;
      
      private var §_-CS§:Boolean = false;
      
      private var §_-03R§:Boolean = false;
      
      private var §_-Jv§:§_-Ce§;
      
      public function §_-e3§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§_-00u§) : §_-hi§
      {
         return new §_-o7§(param1);
      }
      
      protected function §_-UV§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§_-KW§ = §_-rG§.§_-kj§.§_-0z§(LevelManager.§_-N9§(LevelManager.§_-HM§).name,LevelManager.§_-HM§);
         }
      }
      
      protected function §_-O3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§ in§.§_-HY§ as §_-rG§).§_-Cw§(LevelManager.§_-HM§,this.§_-KW§);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               §_-OY§.§_-Ve§(§_-Za§.§_-ku§,LevelManager.§_-HM§);
               loop1:
               while(true)
               {
                  this.§_-UV§();
                  while(true)
                  {
                     this.§_-O3§();
                     addr102:
                     while(true)
                     {
                        this.§_-1I§.levelStarted(this.§_-KW§,LevelManager.§_-HM§);
                        continue loop0;
                     }
                     addr43:
                     if(!(_loc2_ && _loc2_))
                     {
                        §_-JC§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
                        addr60:
                        if(_loc1_)
                        {
                           return;
                           addr37:
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           if(_loc1_)
                           {
                              §§goto(addr43);
                           }
                           else
                           {
                              §§goto(addr102);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§_-CS§ = false;
            §§goto(addr65);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         while(true)
         {
            this.§_-1I§.activate();
            loop1:
            for(; !(_loc2_ && this); if(_loc1_ || this)
            {
               return;
            })
            {
               if(this.§_-CS§)
               {
                  while(true)
                  {
                     §_-JC§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
                     addr123:
                     while(true)
                     {
                     }
                     loop6:
                     for(; !(_loc2_ && _loc2_); if(!(_loc1_ || this))
                     {
                        continue;
                     },§§goto(addr66))
                     {
                        (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.include);
                        loop7:
                        while(true)
                        {
                           this.§_-0-6§();
                           loop8:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop6;
                              }
                              continue loop7;
                              addr66:
                              §_-on§.§_-09P§(§_-s0§);
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              addr95:
                              while(_loc1_ || this)
                              {
                                 this.§_-GI§ = 2500;
                                 break loop8;
                              }
                              §§goto(addr123);
                           }
                           continue loop6;
                        }
                     }
                  }
               }
               while(true)
               {
                  §_-s0§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                  §§goto(addr95);
                  §§goto(addr123);
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-I8§ = true;
         }
         loop0:
         while(true)
         {
            §_-s0§ = new §_-5q§(this);
            addr97:
            while(true)
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_FacebookLevelPlay[0]);
               continue loop0;
            }
         }
      }
      
      private function §_-RX§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§_-KW§.data;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  break;
               }
               if(_loc2_.u == param1)
               {
                  if(_loc6_ && _loc2_)
                  {
                     break;
                  }
                  if(_loc2_.a)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        break;
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_.a;
      }
      
      private function §_-2e§(param1:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(_loc8_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               loop1:
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  addr126:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc7_)
                     {
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                        §§push(§§pop().slice(_loc2_.length % 3));
                     }
                     _loc2_ = §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  break loop0;
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           addr140:
                           var _loc5_:int = 0;
                           if(!(_loc7_ && _loc2_))
                           {
                              var _loc6_:* = _loc3_;
                              if(!(_loc7_ && _loc3_))
                              {
                                 loop4:
                                 while(§§hasnext(_loc6_,_loc5_))
                                 {
                                    §§push(§§nextvalue(_loc5_,_loc6_));
                                    if(_loc8_ || _loc2_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!(_loc8_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() + (_loc4_ + ","));
                                             }
                                             addr183:
                                          }
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§goto(addr183);
                                 }
                                 addr202:
                                 if(_loc8_ || param1)
                                 {
                                    addr210:
                                    §§push(_loc2_);
                                    if(_loc8_ || param1)
                                    {
                                       addr219:
                                       §§push(§§pop().substr(0,_loc2_.length - 1));
                                       if(!_loc8_)
                                       {
                                       }
                                       break;
                                    }
                                    _loc2_ = §§pop();
                                 }
                                 §§push(_loc2_);
                                 break;
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr210);
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        if(_loc8_ || param1)
                        {
                           §§push(_loc2_);
                           if(_loc8_ || _loc3_)
                           {
                              §§push(3);
                              if(_loc8_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc8_)
                                    {
                                       if(false)
                                       {
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              else
                              {
                                 §§goto(addr219);
                              }
                           }
                           else
                           {
                              §§goto(addr219);
                           }
                           §§goto(addr219);
                        }
                        else
                        {
                           §§goto(addr140);
                        }
                     }
                     §§goto(addr140);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr126);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.keyUp(param1);
            if(!(_loc4_ && this))
            {
               if(!AngryBirdsFP11.§_-LI§)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr53);
                  }
               }
               var _loc2_:* = param1.keyCode;
               if(_loc3_)
               {
                  if(Keyboard.M === _loc2_)
                  {
                     addr78:
                     §§push(0);
                     if(_loc4_ && _loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                  }
                  return;
               }
               §§goto(addr78);
            }
         }
         addr53:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(§_-on§.isOpen);
            if(!(_loc5_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc5_ && this))
               {
                  addr35:
                  if(!§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(§_-EJ§.§_-Kf§());
                           if(!_loc5_)
                           {
                              addr51:
                              §§push(Boolean(§§pop()));
                              if(!(_loc5_ && this))
                              {
                                 addr59:
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr67);
                                    }
                                    else
                                    {
                                       addr70:
                                       §§push(this.§_-1I§.run(param1));
                                       if(!(_loc5_ && param1))
                                       {
                                          addr81:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 §§goto(addr70);
                              }
                              var _loc2_:* = §§pop();
                              if(_loc4_ || _loc3_)
                              {
                                 this.§_-4x§(param1);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§ in§.§_-Dc§.objects.mSardineCanAdded);
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§_-HW§(param1);
                                             addr329:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr326:
                                       }
                                       while(true)
                                       {
                                          if(mNextState != §_-08x§.§_-pk§)
                                          {
                                             if(mNextState == §_-iz§.§_-pk§)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   else
                                                   {
                                                      addr298:
                                                      §§push(this.§_-CS§);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §_-JC§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
                                                               addr307:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  this.§_-CS§ = true;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr329);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr301:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr283:
                                                                  loop6:
                                                                  while(!§§pop())
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr285:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§_-03R§);
                                                                           addr253:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ || _loc2_))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§_-GI§);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              §§push(§§pop() - param1);
                                                                           }
                                                                           §§pop().§_-GI§ = §§pop();
                                                                           addr278:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-GI§ < 0);
                                                                              if(_loc5_)
                                                                              {
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-03R§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                                 addr246:
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr253);
                                                                              §§goto(addr261);
                                                                           }
                                                                        }
                                                                        addr206:
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr208);
                                                                        }
                                                                        addr265:
                                                                     }
                                                                     §§goto(addr128);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr329);
                                                }
                                                else
                                                {
                                                   loop4:
                                                   while(_loc4_ || _loc2_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(mNextState)
                                                            {
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                        }
                                                                        §§goto(addr128);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr285);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        return §_-nG§.STATE_STATUS_COMPLETED;
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               else if(!_loc5_)
                                                               {
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr128);
                                                               }
                                                               §§goto(addr307);
                                                               §§goto(addr285);
                                                            }
                                                            addr128:
                                                            §§push(super.run(param1));
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            var _loc3_:* = §§pop();
                                                            return §_-nG§.STATE_STATUS_RUNNING;
                                                         }
                                                         addr208:
                                                         return §_-nG§.STATE_STATUS_COMPLETED;
                                                         addr91:
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr91);
                                          }
                                          §§goto(addr298);
                                       }
                                       return §_-nG§.STATE_STATUS_COMPLETED;
                                    }
                                 }
                              }
                              §§goto(addr329);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr51);
            }
            §§goto(addr35);
         }
         addr67:
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      private function §_-001§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-03R§ = true;
            do
            {
               §_-JC§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super.levelCompleted();
         }
         §§push(LevelManager.§_-HM§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §_-JC§.getScore();
         if(_loc4_ || this)
         {
            §_-OY§.§_-Ve§(§_-Za§.§_-yA§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§ in§.§_-Dc§ as §_-xW§).§_-fK§();
         if(_loc4_ || _loc2_)
         {
            §_-OY§.§_-Zr§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            §§push("showTutorial");
            if(!(_loc6_ && this))
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        addr144:
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr266:
                        §§push(4);
                        if(_loc6_ && param2)
                        {
                        }
                     }
                     §§goto(addr337);
                  }
                  else
                  {
                     §§push("PAUSE");
                     if(!(_loc6_ && param3))
                     {
                        §§push(_loc4_);
                        if(_loc5_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(_loc5_ || param1)
                                 {
                                 }
                              }
                              else
                              {
                                 addr200:
                                 §§push(2);
                                 if(_loc5_ || param1)
                                 {
                                 }
                              }
                              §§goto(addr337);
                              §§goto(addr337);
                           }
                           else
                           {
                              §§push("RESTART_LEVEL");
                              if(_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr200);
                                       }
                                       else
                                       {
                                          §§goto(addr266);
                                       }
                                    }
                                    else
                                    {
                                       §§push("CLOSE_TUTORIAL");
                                       if(_loc5_ || param1)
                                       {
                                          addr217:
                                          §§push(_loc4_);
                                          if(_loc5_ || param2)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§push(3);
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§goto(addr337);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr332);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr337);
                                             }
                                             else
                                             {
                                                §§push("RESTART_LEVEL");
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            §§goto(addr266);
                                                         }
                                                         else
                                                         {
                                                            addr294:
                                                            §§push(5);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr337);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr332);
                                                            }
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      else
                                                      {
                                                         §§push("CLOSE_TUTORIAL_POWERUP");
                                                         if(_loc5_ || this)
                                                         {
                                                            addr283:
                                                            §§push(_loc4_);
                                                            if(_loc5_)
                                                            {
                                                               addr286:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               else
                                                               {
                                                                  §§push("ZOOM_IN");
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr311:
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr314:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_ || param3)
                                                                           {
                                                                              §§push(6);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr325);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr328:
                                                                           if("ZOOM_OUT" !== _loc4_)
                                                                           {
                                                                              addr337:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §_-on§.§_-5a§(§_-s0§,"ALL",true);
                                                                                    §_-on§.§_-09P§(§_-s0§,true);
                                                                                    break;
                                                                                    addr112:
                                                                                    addr104:
                                                                                 case 1:
                                                                                    mNextState = §_-g4§();
                                                                                    addr96:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr112);
                                                                                    break;
                                                                                 case 2:
                                                                                    §_-MG§.§_-0Eg§();
                                                                                    if(_loc5_ || param3)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          mNextState = §_-MG§.§_-pk§;
                                                                                          break;
                                                                                          addr73:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr104);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 case 3:
                                                                                    §_-on§.§_-fl§();
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 case 4:
                                                                                    break;
                                                                                 case 5:
                                                                                    §_-on§.§_-fl§();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr36:
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 case 6:
                                                                                    §_-JC§.doUserZoom(true);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 case 7:
                                                                                    §_-JC§.doUserZoom(false);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr36);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr96);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr73);
                                                                                       }
                                                                                    }
                                                                              }
                                                                              return;
                                                                              §§push(8);
                                                                           }
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§goto(addr328);
                                             }
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr337);
                                 }
                              }
                              §§goto(addr328);
                           }
                        }
                        §§goto(addr328);
                     }
                     §§goto(addr217);
                  }
               }
               §§goto(addr286);
            }
            §§goto(addr217);
         }
         §§goto(addr144);
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.initActivation();
            do
            {
               this.§_-1I§.§_-Id§ = false;
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function prepareHideMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override protected function onHideMightyEagle() : void
      {
      }
      
      override protected function useMightyEagle() : void
      {
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.updateCurrentScore(param1);
         }
         var _loc2_:int = §_-JC§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§_-HM§));
         if(_loc6_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §_-09E§.getValue());
         if(_loc6_)
         {
            if(§§pop() < _loc2_)
            {
               if(!_loc5_)
               {
                  addr81:
                  _loc4_ = Math.min(_loc2_,§_-09E§.getValue() + param1 * §_-04v§);
                  if(!_loc5_)
                  {
                     §_-09E§.assign(_loc4_);
                     loop1:
                     while(true)
                     {
                        addr90:
                        while(true)
                        {
                           this.§_-1I§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
                           if(!(_loc5_ && this))
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr81);
      }
      
      private function §_-HW§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if((§_-s0§.getItemByName("MovieClip_Boom") as §_-k6§).§_-T8§() == "End")
            {
               do
               {
                  §_-s0§.getItemByName("MovieClip_Boom").setVisibility(false);
                  do
                  {
                     (§_-s0§.getItemByName("MovieClip_Boom") as §_-k6§).§_-0Du§("Start");
                  }
                  while(!(_loc2_ || _loc3_));
                  
               }
               while(_loc3_);
               
               addr74:
            }
            return;
         }
         §§goto(addr74);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
            while(true)
            {
               this.§_-1I§.deActivate();
               while(true)
               {
                  §_-JC§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-001§);
                  loop2:
                  while(true)
                  {
                     § in§.§_-Dc§.§_-Qu§();
                     do
                     {
                        this.§_-Xx§();
                        continue loop2;
                     }
                     while(!_loc2_);
                     
                  }
               }
            }
         }
      }
      
      private function §_-Xx§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            if(this.§_-b9§ > §_-06Q§)
            {
               while(true)
               {
                  _loc1_ = Math.round(1000 / this.§_-b9§ * this.§_-FG§);
                  addr120:
                  loop1:
                  while(true)
                  {
                     §§push(LevelManager.§_-HM§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        _loc3_ = (§ in§.§_-HY§ as §_-rG§).§_-Mh§();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(_loc4_ && _loc1_)
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
            return;
         }
         §§goto(addr120);
      }
      
      private function §_-4x§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(this);
            §§push(this.§_-b9§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-b9§ = §§pop();
            if(!_loc4_)
            {
               §§push(this.§_-b9§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§_-FG§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§_-FG§ = _loc3_;
                           }
                           addr163:
                           if(_loc4_ && this)
                           {
                           }
                           loop7:
                           while(true)
                           {
                              §§push(this.§_-fS§);
                              if(_loc5_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(§ in§.§_-q8§());
                                    if(!(_loc4_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr162:
                                             if(!_loc4_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop7;
                                             }
                                             addr162:
                                          }
                                          if(_loc4_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§goto(addr162);
                                                }
                                             }
                                             addr160:
                                          }
                                          while(§§pop())
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   continue loop7;
                                                }
                                                this.§_-0-6§();
                                             }
                                             break;
                                          }
                                          return;
                                       }
                                       addr110:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_)
                                          {
                                             §§goto(addr160);
                                             §§push(!§§pop());
                                          }
                                       }
                                       addr156:
                                    }
                                    §§goto(addr162);
                                 }
                                 addr101:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop7;
                                 }
                                 addr154:
                              }
                              §§goto(addr156);
                           }
                           addr163:
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr154);
                     §§push(this.§_-BW§);
                  }
                  §§goto(addr110);
               }
               §§goto(addr101);
            }
            §§goto(addr149);
         }
         §§goto(addr163);
      }
      
      private function §_-0-6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-b9§ = §_-C8§;
            while(true)
            {
               this.§_-FG§ = 0;
               addr63:
               if(_loc1_ || _loc2_)
               {
                  this.§_-fS§ = § in§.§_-q8§();
                  addr70:
                  if(_loc2_)
                  {
                     while(_loc1_ || this)
                     {
                        §§goto(addr63);
                        §§goto(addr70);
                     }
                     while(true)
                     {
                        this.§_-BW§ = § in§.§_-Ab§();
                        §§goto(addr56);
                     }
                     addr56:
                     addr75:
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §_-Qy§(param1:§_-dd§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  param1.§_-02V§();
               }
            }
         }
      }
   }
}
