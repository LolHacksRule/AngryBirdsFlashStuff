package §_-TG§
{
   import §_-0BH§.§_-FK§;
   import §_-0Dg§.§_-0BD§;
   import §_-0Ea§.§_-AY§;
   import §_-6E§.§ var§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-tA§;
   import §_-9T§.§_-0D7§;
   import §_-9T§.§_-xG§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-2w§;
   import §_-Ga§.§_-bm§;
   import §_-Ga§.§_-qQ§;
   import §_-JK§.§_-S2§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-Yp§.b2Vec2;
   import §_-by§.§_-CE§;
   import §_-eS§.§_-BK§;
   import §_-lt§.§_-05W§;
   import §_-lt§.§_-30§;
   import §_-lt§.§_-Fh§;
   import §_-lt§.§_-eZ§;
   import §_-qO§.§ in§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-vJ§.§_-OI§;
   import §_-z-§.§_-sX§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-00u§
   {
      
      private static const §_-eD§:int = 20;
      
      public static const §_-F1§:Number;
      
      public static const §_-IE§:Number;
      
      public static const §_-lY§:Number = 0.05;
      
      public static const §_-V3§:Number;
      
      public static const §_-b2§:Number;
      
      public static const §_-KE§:§_-BK§;
      
      protected static var §for§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-eD§ = 20;
            while(true)
            {
               §_-F1§ = § in§.§_-W8§;
               loop1:
               while(!(_loc2_ && §_-00u§))
               {
                  §_-IE§ = § in§.§_-Kj§;
                  loop2:
                  while(true)
                  {
                     §_-lY§ = 1 / 20;
                     loop3:
                     while(!_loc2_)
                     {
                        §_-V3§ = § in§.§_-Kj§ * §_-lY§;
                        do
                        {
                           §§push(§§findproperty(§_-b2§));
                           §§push(§_-F1§);
                           if(_loc1_)
                           {
                              §§push(§§pop() * §_-lY§);
                           }
                           §§pop().§_-b2§ = §§pop();
                           loop5:
                           while(_loc1_ || _loc1_)
                           {
                              §_-KE§ = new §_-BK§(13 - 3);
                              while(_loc1_)
                              {
                                 §for§ = §_-bm§.§_-0A0§;
                                 if(_loc1_)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr37);
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        while(_loc2_ && _loc1_);
                        
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      protected var §_-9u§:§_-30§;
      
      private var §_-e2§:§_-eZ§;
      
      private var §_-71§:Array = null;
      
      protected var §_-fG§:§_-OI§;
      
      public var mLevelEngine:§_-O0§;
      
      protected var §_-3h§:§_-pD§;
      
      protected var §_-jC§:§_-S2§;
      
      protected var §_-mT§:§_-E0§;
      
      protected var §_-4i§:§_-Zc§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §_-033§:Boolean = false;
      
      protected var §_-XR§:Boolean = false;
      
      protected var §_-AT§:Boolean = false;
      
      public var §_-hr§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-Ak§:Number;
      
      public var §_-Dn§:Number;
      
      private var §_-yU§:Number;
      
      public var §switch§:§_-qQ§;
      
      public var §_-02W§:Boolean = false;
      
      private var §_-vP§:§_-2u§;
      
      private var §_-0-x§:Sprite;
      
      protected var §_-096§:§_-bm§;
      
      protected var §_-yQ§:§_-0BD§ = null;
      
      private var §_-Rr§:EventDispatcher;
      
      private var §_-0AA§:Array;
      
      private var §_-vK§:Array;
      
      protected var §_-00f§:§_-AY§;
      
      private var §_-k1§:§ var§;
      
      protected var §_-00g§:§_-0FF§;
      
      protected var §_-P4§:§_-Ew§;
      
      private var §_-ym§:§_-tA§;
      
      private var §_-BN§:§_-tA§;
      
      private var §_-yV§:§_-tA§;
      
      private var §_-qN§:Stage;
      
      private var §_-lo§:§_-06K§;
      
      protected var §_-fZ§:§_-sX§;
      
      protected var §_-Ko§:§_-sX§;
      
      protected var §_-Jb§:Number = 0.0;
      
      protected var §_-2l§:String;
      
      private var §_-F0§:Boolean;
      
      protected var §_-fp§:Boolean;
      
      protected var §_-T2§:uint = 1.417339207E9;
      
      public var §_-wt§:Boolean;
      
      public function §_-00u§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§_-vK§ = [];
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§_-Rr§ = new EventDispatcher();
               while(true)
               {
                  this.§switch§ = new §_-qQ§();
                  loop3:
                  while(true)
                  {
                     this.§_-qN§ = param1;
                     while(true)
                     {
                        this.§_-00g§ = §_-0FF§.§_-3S§;
                        loop5:
                        while(true)
                        {
                           this.§_-P4§ = this.initAnimationManager(this.§_-00g§);
                           while(_loc4_)
                           {
                              this.§_-ym§ = this.initThemeGraphicsManager();
                              while(!(_loc3_ && this))
                              {
                                 continue loop5;
                              }
                           }
                           continue loop1;
                        }
                        if(!(_loc3_ && param1))
                        {
                           continue loop3;
                        }
                     }
                  }
                  if(_loc4_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §_-0g§(param1:§_-eZ§, param2:§_-eZ§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§_-dB§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§_-dB§);
            if(_loc6_ || param1)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§_-5X§);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.§_-5X§);
               if(_loc6_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §_-PU§(_loc3_,_loc4_);
         }
         §§goto(addr51);
      }
      
      public static function §_-PU§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§_-0-x§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr93:
                        do
                        {
                           §§push(Boolean(this.§_-LM§));
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        while(!(_loc2_ && this));
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§_-0-x§ = this.§_-vP§.§_-9A§;
                           }
                           addr81:
                        }
                        else
                        {
                           §§goto(addr93);
                        }
                     }
                     while(true)
                     {
                        break loop4;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
      
      public function get §_-LM§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§_-vP§);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        this.§_-vP§ = this.§_-00f§.§_-Uz§ as §_-2u§;
                     }
                     addr78:
                  }
                  while(true)
                  {
                     §§push(this.§_-vP§);
                     loop2:
                     while(true)
                     {
                        §§pop().§_-xd§ = false;
                        if(_loc1_)
                        {
                           break;
                        }
                        addr25:
                        while(true)
                        {
                           §§push(this.§_-vP§);
                           if(!(_loc1_ && _loc1_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr25);
            }
            while(!(_loc2_ || _loc1_));
            
            return §§pop();
         }
         §§goto(addr78);
      }
      
      private function get §_-06T§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§_-LM§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§_-LM§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return (§§pop() as §_-2u§).§_-06T§;
         }
         addr52:
         return null;
      }
      
      public function get animationManager() : §_-Ew§
      {
         return this.§_-P4§;
      }
      
      public function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function get camera() : §_-S2§
      {
         return this.§_-jC§;
      }
      
      public function get objects() : §_-30§
      {
         return this.§_-9u§;
      }
      
      public function get particles() : §_-Zc§
      {
         return this.§_-4i§;
      }
      
      public function get background() : §_-OI§
      {
         return this.§_-fG§;
      }
      
      public function get slingshot() : §_-E0§
      {
         return this.§_-mT§;
      }
      
      public function get activeObject() : §_-eZ§
      {
         return this.§_-e2§;
      }
      
      public function get §_-Uv§() : §_-pD§
      {
         return this.§_-3h§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-qN§;
      }
      
      public function get §_-04t§() : §_-tA§
      {
         return this.§_-yV§;
      }
      
      protected function get §_-SV§() : §_-tA§
      {
         return this.§_-ym§;
      }
      
      public function set activeObject(param1:§_-eZ§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-e2§ = param1;
         }
      }
      
      public function set §_-0EU§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-fp§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§_-k1§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§_-k1§);
                     addr254:
                     while(true)
                     {
                        §§pop().dispose();
                        addr255:
                        while(true)
                        {
                        }
                     }
                  }
                  addr252:
               }
               loop1:
               while(true)
               {
                  §§push(this.§_-00g§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§_-00g§);
                           addr238:
                           while(true)
                           {
                              §§pop().dispose();
                              addr239:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr252);
                                 }
                                 else
                                 {
                                    addr241:
                                 }
                              }
                           }
                           addr199:
                           if(_loc1_ && _loc1_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              loop15:
                              while(true)
                              {
                                 §§push(this.§_-yV§);
                                 loop16:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop17:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc1_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§pop();
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(this.§_-yV§);
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§push(§§pop().textureManager);
                                                            if(!_loc1_)
                                                            {
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop18;
                                                            }
                                                            addr112:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               addr123:
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  addr29:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-00f§);
                                                                     if(!(_loc1_ && _loc2_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(this.§_-00f§);
                                                                                    break loop20;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§_-ym§);
                                                                                    addr190:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().textureManager);
                                                                                       break loop19;
                                                                                    }
                                                                                 }
                                                                                 addr188:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-ym§);
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             §§push(§§pop().textureManager);
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   addr187:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§goto(addr188);
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                                addr186:
                                                                                             }
                                                                                             break loop19;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr190);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr211:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          break loop17;
                                                                                       }
                                                                                    }
                                                                                    addr214:
                                                                                    addr210:
                                                                                 }
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                           addr56:
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        break loop18;
                                                                     }
                                                                     break loop20;
                                                                  }
                                                               }
                                                               §§pop().dispose();
                                                               §§goto(addr56);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            §§goto(addr192);
                                                         }
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                return;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc1_ && this))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         §§push(this.§_-yV§);
                                                         continue loop16;
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr123);
                                                }
                                                §§goto(addr29);
                                             }
                                          }
                                          break;
                                       }
                                       addr213:
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr214);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr213);
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr210);
                        §§goto(addr241);
                     }
                  }
                  §§goto(addr238);
               }
            }
            §§goto(addr254);
         }
         §§goto(addr206);
      }
      
      protected function initThemeGraphicsManager() : §_-tA§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §_-tA§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §_-tA§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§_-0FF§) : §_-Ew§
      {
         return new §_-Ew§(param1);
      }
      
      public function §_-Vf§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§_-AY§.§_-un§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(!param1)
                  {
                     §§push(§_-AY§.§_-un§);
                     loop2:
                     while(true)
                     {
                        §§pop().stop();
                        addr85:
                        while(!(_loc3_ && _loc2_))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              continue loop2;
                           }
                           continue loop1;
                        }
                        addr108:
                        break loop0;
                     }
                  }
                  addr105:
                  §§goto(addr107);
                  §§push(§_-AY§.§_-un§);
               }
               break;
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§pop().color = 0;
               if(_loc3_)
               {
                  §§goto(addr85);
               }
               if(_loc2_ || this)
               {
                  break;
               }
               §§goto(addr105);
            }
            return;
         }
         §§goto(addr105);
      }
      
      public function §_-TQ§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.sprite);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().visible = param1;
         }
         addr44:
         if(!(_loc3_ && this))
         {
            §§push(this.sprite);
         }
      }
      
      public function setController(param1:§_-0BD§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-yQ§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§_-yQ§);
                     addr94:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr95:
                        while(true)
                        {
                        }
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  this.§_-yQ§ = param1;
                  while(_loc2_ || _loc3_)
                  {
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§_-yQ§);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              §§pop().addEventListeners();
                              addr19:
                              return;
                              addr75:
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr95);
               }
            }
         }
         while(this.mReadyToRun)
         {
            if(_loc2_)
            {
               §§goto(addr29);
            }
            §§goto(addr75);
         }
         §§goto(addr19);
      }
      
      public function §_-02L§() : §_-sX§
      {
         return this.§_-fZ§;
      }
      
      public function §_-041§(param1:§ var§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§_-k1§ = param1;
         }
         §§push(this.§_-k1§.§_-iE§);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               loop1:
               while(true)
               {
                  if(param3 == null)
                  {
                     while(this.§_-uC§(param2))
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr47);
                        }
                        §§goto(addr66);
                     }
                     addr36:
                  }
                  loop2:
                  while(_loc6_ || param3)
                  {
                     this.§_-Rr§.addEventListener(Event.INIT,param3);
                     while(!(_loc7_ && param3))
                     {
                        this.§_-vK§.push(param3);
                        while(true)
                        {
                           addr66:
                           if(_loc6_ || param1)
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr36);
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        this.§_-KJ§();
                        §§goto(addr66);
                     }
                     _loc5_++;
                     break;
                  }
                  continue loop0;
                  return;
               }
            }
            else
            {
               this.§_-00g§.§_-sG§(this.§_-k1§.§_-0Cv§(_loc5_));
            }
            §§goto(addr139);
         }
      }
      
      private function §_-uC§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(_loc4_ || param1)
         {
            §§push(this.§_-00g§);
            loop0:
            while(true)
            {
               §§push(§§pop().§_-G9§());
               loop1:
               while(!§§pop())
               {
                  do
                  {
                     this.§_-0AA§ = param1.concat();
                  }
                  while(!(_loc4_ || _loc2_));
                  
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(false);
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§_-00g§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              addr196:
                              while(true)
                              {
                                 §§push(§§pop().§_-RF§);
                                 if(_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(1000);
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr201:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           addr188:
                           _loc3_ = §§pop();
                           addr189:
                        }
                        else
                        {
                           §§goto(addr189);
                        }
                        §§push(§_-FK§);
                        §§push("\n\nMain texture manager memory usage:\n   textures ");
                        if(!_loc5_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 §§push(" kilobytes\n   bitmaps ");
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_ || param1)
                                    {
                                       addr126:
                                       §§push(§§pop() + _loc3_);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr135:
                                          §§push(§§pop() + " kilobytes\n\n");
                                       }
                                       §§pop().log(§§pop());
                                       continue;
                                    }
                                 }
                                 §§goto(addr135);
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                     return true;
                  }
                  return §§pop();
               }
            }
         }
         while(true)
         {
            §§goto(addr196);
         }
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-P4§.initializeAnimations(param1);
         }
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-00g§.§_-tN§();
            loop0:
            while(true)
            {
               §§push(this.§_-SV§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§_-SV§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop().textureManager);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop7:
                                       while(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop47:
                                                while(true)
                                                {
                                                   §§push(this.§_-SV§);
                                                   addr314:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      while(true)
                                                      {
                                                         §§pop().§_-tN§();
                                                         addr318:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop47;
                                                   }
                                                   continue loop1;
                                                }
                                                addr312:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§_-04t§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop14:
                                                      while(_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-04t§);
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§push(§§pop().textureManager);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr253:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                     }
                                                                     continue loop7;
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ || this))
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§pop().§_-tN§();
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           §§push(this.§_-yV§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§pop().§_-G9§();
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr19);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr262:
                                                                                    }
                                                                                    addr262:
                                                                                    addr262:
                                                                                    loop44:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             addr121:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§_-yV§);
                                                                                                break loop40;
                                                                                                §§goto(addr121);
                                                                                             }
                                                                                             addr48:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§_-ym§);
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§goto(addr48);
                                                                                                      }
                                                                                                      loop36:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§_-ym§);
                                                                                                         addr52:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                            §§push(this.§_-yV§);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().textureManager);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        addr75:
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr84:
                                                                                                                           §§push(this.§_-yV§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                           addr84:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr148:
                                                                                                                                 §§push(this.§_-yQ§);
                                                                                                                                 if(_loc3_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§pop().addEventListeners();
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                              §§goto(addr75);
                                                                                                                           }
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == null);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc2_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                              loop29:
                                                                                                                              while(_loc2_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop30:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr205:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(this.mReadyToRun);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop30;
                                                                                                                                             }
                                                                                                                                             addr142:
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop29;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(_loc2_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(!_loc3_)
                                                                                                                                             {
                                                                                                                                                this.§_-KJ§();
                                                                                                                                                §§goto(addr215);
                                                                                                                                             }
                                                                                                                                             addr215:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§_-uC§(this.§_-0AA§);
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             addr229:
                                                                                                                                             addr222:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr312);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    §§goto(addr146);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           addr146:
                                                                                                                           §§goto(addr253);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr19);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§_-tN§();
                                                                                                                     break loop34;
                                                                                                                  }
                                                                                                                  addr272:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr84);
                                                                                                         }
                                                                                                         continue loop44;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§_-G9§();
                                                                                                      continue loop44;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          addr225:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!this.§_-0AA§)
                                                                                             {
                                                                                                §§goto(addr178);
                                                                                             }
                                                                                             §§goto(addr229);
                                                                                             continue loop21;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-04t§);
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr52);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr84);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr52);
                                                                           }
                                                                           addr19:
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(!(_loc2_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr142);
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr225);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr314);
                              }
                           }
                        }
                        §§goto(addr310);
                     }
                  }
               }
            }
         }
         §§goto(addr262);
      }
      
      private function §_-KJ§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-Rr§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§_-RP§();
         }
         while(_loc2_);
         
      }
      
      private function §_-RP§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-vK§)
         {
            if(!(_loc5_ && _loc2_))
            {
               this.§_-Rr§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc5_ && this))
         {
            this.§_-vK§ = [];
         }
      }
      
      public function init(param1:§_-bm§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr267:
                     while(true)
                     {
                     }
                  }
                  addr265:
               }
               while(true)
               {
                  this.§_-3h§ = new §_-pD§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§_-jC§ = this.§_-oB§(param1);
                     loop5:
                     while(true)
                     {
                        this.§_-Ak§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§_-Dn§ = 0;
                           loop7:
                           while(true)
                           {
                              this.§_-yU§ = 0;
                              while(true)
                              {
                                 this.§_-F0§ = false;
                                 continue loop5;
                                 addr70:
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop7;
                                 }
                                 addr79:
                                 loop23:
                                 while(true)
                                 {
                                    this.§_-g3§();
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             §_-40§.init();
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                break loop23;
                                             }
                                             while(!_loc2_)
                                             {
                                                §§goto(addr70);
                                             }
                                             continue loop5;
                                             addr68:
                                          }
                                          §§goto(addr267);
                                       }
                                       addr190:
                                       loop13:
                                       while(true)
                                       {
                                          §for§ = param1.theme;
                                          while(true)
                                          {
                                             this.§_-096§ = param1;
                                             while(!_loc2_)
                                             {
                                                this.§_-XR§ = this.§_-8p§(param1.theme);
                                                loop16:
                                                while(!_loc2_)
                                                {
                                                   this.§_-AT§ = this.§_-EQ§(param1.theme);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-XR§);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     this.initialize(param1);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§push(this.§_-AT§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.mPigsAnimationTimer1 = 2000;
                                                                           while(!_loc2_)
                                                                           {
                                                                              this.mPigsAnimationTimer2 = 1000;
                                                                              continue loop13;
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr152:
                                                                        addr202:
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  continue loop16;
                                                                  addr109:
                                                               }
                                                               this.§finally§(param1.theme);
                                                               §§goto(addr68);
                                                            }
                                                            addr102:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr152);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr265);
                                                if(_loc3_ || this)
                                                {
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr207:
                                    while(_loc3_)
                                    {
                                       this.§_-033§ = false;
                                       §§goto(addr202);
                                    }
                                    continue loop6;
                                 }
                                 if(!(_loc2_ && param1))
                                 {
                                    §§goto(addr43);
                                 }
                                 §§goto(addr109);
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr102);
            }
         }
         §§goto(addr190);
      }
      
      protected function §_-g3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-fZ§ = new §_-sX§(LevelManager.§_-HM§);
         }
      }
      
      protected function §_-8p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-ym§)
            {
               if(_loc2_ || _loc3_)
               {
                  addr28:
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      protected function §_-EQ§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-0D7§ = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§_-BN§)
            {
               addr29:
               _loc2_ = §_-xG§.§_-lv§(param1);
               if(!_loc4_)
               {
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr97);
               }
               §§push(Boolean(_loc2_.§_-2z§));
               if(!(_loc4_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§_-BN§.§_-wY§(_loc2_.§_-2z§));
                           if(_loc3_)
                           {
                              addr84:
                              §§push(!§§pop());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr92);
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr84);
                  }
                  addr92:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr95:
                        §§push(false);
                     }
                     else
                     {
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr84);
            }
            addr97:
            return true;
         }
         §§goto(addr29);
      }
      
      protected function §finally§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-0D7§ = null;
         if(_loc4_)
         {
            §§push(this.§_-ym§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr271:
                           loop26:
                           while(true)
                           {
                              §§push(this.§_-8p§(param1));
                              addr233:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr234:
                                 while(_loc4_)
                                 {
                                 }
                                 continue loop26;
                              }
                           }
                        }
                        addr270:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-ym§);
                              loop4:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§_-zq§);
                                 loop5:
                                 while(!(_loc3_ && this))
                                 {
                                    §§push(this.§_-ym§);
                                    while(true)
                                    {
                                       §§pop().removeEventListener(Event.CANCEL,this.§_-A-§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§_-ym§);
                                          loop8:
                                          while(true)
                                          {
                                             §§pop().addEventListener(Event.COMPLETE,this.§_-zq§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§_-ym§);
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc3_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§pop().addEventListener(Event.CANCEL,this.§_-A-§);
                                                         while(!_loc3_)
                                                         {
                                                            continue loop10;
                                                            loop24:
                                                            while(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(this.§_-BN§);
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop().addEventListener(Event.CANCEL,this.§_-0Dy§);
                                                                        if(_loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              while(_loc4_ || _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                              addr181:
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              addr74:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-BN§);
                                                                                 addr53:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(Event.COMPLETE,this.§_-0K§);
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr80:
                                                                                    if(!param1)
                                                                                    {
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          loop17:
                                                                                          while(_loc4_ || param1)
                                                                                          {
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             §§push(this.§_-EQ§(param1));
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   addr156:
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§_-BN§);
                                                                                                            addr113:
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  §§pop().removeEventListener(Event.COMPLETE,this.§_-0K§);
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               addr129:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  addr130:
                                                                                                                  while(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§goto(addr233);
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr111:
                                                                                                      }
                                                                                                      break loop21;
                                                                                                   }
                                                                                                   addr293:
                                                                                                   return;
                                                                                                   addr107:
                                                                                                }
                                                                                                §§goto(addr234);
                                                                                             }
                                                                                             §§goto(addr130);
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§goto(addr50);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr80);
                                                                              }
                                                                              addr50:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-BN§);
                                                                                 addr69:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().removeEventListener(Event.CANCEL,this.§_-0Dy§);
                                                                                    §§goto(addr74);
                                                                                 }
                                                                              }
                                                                              addr74:
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc2_ = §_-xG§.§_-lv§(param1);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.§_-BN§.§_-r7§(_loc2_.§_-2z§);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr293);
                                                                           §§goto(addr129);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr74);
                                                                        }
                                                                     }
                                                                     §§goto(addr113);
                                                                  }
                                                                  §§goto(addr69);
                                                               }
                                                               §§goto(addr53);
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr271);
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                  }
               }
               §§goto(addr270);
            }
         }
         §§goto(addr111);
      }
      
      private function §_-zq§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-ym§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§_-zq§);
               loop1:
               while(true)
               {
                  §§push(this.§_-ym§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§_-A-§);
                  loop2:
                  while(true)
                  {
                     this.§_-XR§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-XR§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break;
                                    }
                                    addr82:
                                    addr82:
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this.§_-AT§);
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(_loc2_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 return;
                                 addr48:
                              }
                           }
                           §§goto(addr101);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §_-A-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-ym§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§_-zq§);
               while(true)
               {
                  §§push(this.§_-ym§);
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§_-A-§);
                  do
                  {
                     this.§_-033§ = true;
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  if(_loc3_ || _loc3_)
                  {
                     return;
                     addr67:
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private function §_-0K§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-ym§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§_-0K§);
               while(true)
               {
                  §§push(this.§_-ym§);
                  if(!(_loc3_ || this))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§_-0Dy§);
                  loop2:
                  while(true)
                  {
                     this.§_-AT§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-XR§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr110:
                                    while(true)
                                    {
                                       §§push(this.§_-AT§);
                                       if(!_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       addr37:
                                       if(_loc2_ && this)
                                       {
                                       }
                                       continue loop7;
                                    }
                                    continue loop4;
                                 }
                                 addr109:
                              }
                              while(§§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 addr74:
                                 if(_loc3_ || param1)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr110);
                                 §§goto(addr37);
                              }
                              addr25:
                              return;
                           }
                           §§goto(addr109);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §_-0Dy§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-ym§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§_-0K§);
               addr124:
               loop1:
               while(true)
               {
                  §§push(this.§_-ym§);
                  if(!(_loc3_ || param1))
                  {
                     continue loop0;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§_-0Dy§);
                  loop2:
                  while(true)
                  {
                     this.§_-AT§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-XR§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.§_-AT§);
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop6;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop7;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             this.initialize(this.§_-096§);
                                          }
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                break loop7;
                                             }
                                             continue loop2;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr46);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      public function get backgroundTextureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      protected function initialize(param1:§_-bm§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-fp§ = false;
            while(true)
            {
               this.§_-wt§ = false;
               loop1:
               while(true)
               {
                  §§push(§_-AY§.§_-CK§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§_-AY§.§_-CK§);
                           addr197:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr199:
                              while(true)
                              {
                              }
                           }
                        }
                        addr195:
                     }
                     while(true)
                     {
                        this.mLevelEngine = new §_-O0§(this);
                        loop4:
                        while(_loc2_)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§_-3h§.§_-GV§);
                           if(_loc2_)
                           {
                              §§push(§§pop() / §_-lY§);
                           }
                           §§pop().§_-fG§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§_-jC§.§_-fw§());
                           loop5:
                           for(; _loc2_; if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           },if(_loc3_)
                           {
                              continue loop4;
                           },this.§_-jC§.init(),loop12:
                           while(true)
                           {
                              this.§_-0-o§();
                              loop13:
                              while(_loc2_)
                              {
                                 this.§_-0-f§();
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          this.mReadyToRun = true;
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(this.§_-yQ§);
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr60);
                                                }
                                             }
                                             continue loop12;
                                             addr24:
                                             return;
                                          }
                                          addr59:
                                          §§pop().addEventListeners();
                                          §§goto(addr60);
                                       }
                                       break;
                                    }
                                    continue loop13;
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr131);
                           })
                           {
                              this.§_-fG§.§_-bN§(§ in§.§_-0-I§());
                              while(!_loc3_)
                              {
                                 this.§_-9u§ = this.initLevelObjectManager(param1);
                                 loop9:
                                 while(true)
                                 {
                                    this.§_-mT§ = this.initLevelSlingshot(param1);
                                    addr131:
                                    while(true)
                                    {
                                       this.§_-4i§ = this.§_-0ES§(this.§_-P4§,this.§_-00g§);
                                       addr113:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop9;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr24);
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr199);
                     }
                  }
                  §§goto(addr197);
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr59);
               §§push(this.§_-yQ§);
            }
         }
         §§goto(addr138);
      }
      
      protected function §_-0-f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§_-2l§)
            {
               loop0:
               while(true)
               {
                  this.§_-Ko§ = §_-sX§.initialize(this.§_-2l§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-Ko§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        §§push(this.§_-Ko§);
                        addr95:
                        continue loop0;
                        if(!_loc2_)
                        {
                           §§pop().play();
                           loop4:
                           do
                           {
                              this.§_-Jb§ = -1000;
                              while(!(_loc2_ && this))
                              {
                                 if(_loc1_)
                                 {
                                    this.§_-2l§ = null;
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop4;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           while(!_loc1_);
                           
                           addr24:
                           return;
                           addr51:
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr51);
      }
      
      public function §_-lF§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-2l§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-Ko§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-Ko§);
            for(; §§pop(); if(!(_loc2_ || _loc2_))
            {
               continue;
            },§§pop().speed = Math.max(this.§_-Ko§.speed / 1.25,Math.pow(1 / 1.25,10)),if(!(_loc3_ && _loc3_))
            {
               break;
            })
            {
               if(_loc2_)
               {
                  if(param1)
                  {
                     addr112:
                     if(!(_loc3_ && param1))
                     {
                        §§push(this.§_-Ko§);
                     }
                     break;
                  }
                  §§push(this.§_-Ko§);
                  if(_loc2_ || param1)
                  {
                     continue;
                  }
                  §§pop().speed = Math.min(this.§_-Ko§.speed * 1.25,Math.pow(1.25,2));
               }
               §§goto(addr112);
            }
            return;
         }
         §§goto(addr112);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-Ko§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr48:
                     this.§_-Ko§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function initLevelObjectManager(param1:§_-bm§) : §_-30§
      {
         return new §_-30§(this,param1,new Sprite());
      }
      
      protected function §_-oB§(param1:§_-bm§) : §_-S2§
      {
         return new §_-S2§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§_-0FF§, param4:Number) : §_-OI§
      {
         return new §_-OI§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§_-bm§) : §_-E0§
      {
         return new §_-E0§(this,param1,new Sprite());
      }
      
      protected function §_-0ES§(param1:§_-Ew§, param2:§_-0FF§) : §_-Zc§
      {
         return new §_-Zc§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!_loc7_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§_-bm§ = this.§_-uK§();
         var _loc4_:§_-2w§;
         (_loc4_ = new §_-2w§()).left = 0;
         if(_loc6_)
         {
            §§push(_loc4_);
            §§push(§_-S2§.§_-u-§);
            if(!_loc7_)
            {
               §§push(-§§pop());
               if(!(_loc7_ && param2))
               {
                  addr139:
                  §§push(10);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        addr146:
                        §§push(§§pop() * 8);
                     }
                     §§pop().top = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.top);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() + §_-S2§.§_-u-§);
                        }
                        §§pop().bottom = §§pop();
                        loop1:
                        for(; _loc6_ || param2; while(!(_loc7_ && this))
                        {
                           _loc4_.x = §_-S2§.§_-U9§;
                           §§goto(addr67);
                        })
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.left);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() + §_-S2§.§_-U9§);
                           }
                           §§pop().right = §§pop();
                           loop2:
                           while(true)
                           {
                              _loc4_.y = -13.929;
                              continue loop1;
                              addr45:
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              while(false)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    _loc4_.id = §_-S2§.§_-Ky§;
                                    while(!_loc7_)
                                    {
                                       _loc3_.§_-03T§(_loc4_);
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr45);
                                    }
                                    addr67:
                                    while(_loc6_ || param2)
                                    {
                                       continue loop5;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              var _loc5_:§_-2w§;
                              (_loc5_ = new §_-2w§()).top = _loc4_.top;
                              if(_loc6_)
                              {
                                 _loc5_.bottom = _loc4_.bottom;
                                 while(true)
                                 {
                                    _loc5_.left = 150;
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + §_-S2§.§_-U9§);
                                       }
                                       §§pop().right = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.top);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(§§pop() + §_-S2§.§_-u-§);
                                          }
                                          §§pop().bottom = §§pop();
                                          while(true)
                                          {
                                             _loc5_.y = _loc4_.y;
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.left);
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(§_-S2§.§_-U9§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() / 2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                addr303:
                                                while(true)
                                                {
                                                   _loc5_.id = §_-S2§.§_-05X§;
                                                   continue loop12;
                                                }
                                             }
                                             if(_loc6_ || param2)
                                             {
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    }
                                    _loc3_.theme = §for§;
                                    §§goto(addr222);
                                 }
                              }
                              §§goto(addr236);
                           }
                        }
                     }
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr139);
         }
         §§goto(addr52);
      }
      
      protected function §_-0BU§(param1:§_-bm§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(param2)
            {
               if(!_loc4_)
               {
                  this.§package§(param1);
               }
            }
         }
      }
      
      protected function §_-uK§() : §_-bm§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-bm§ = new §_-bm§();
         if(_loc3_)
         {
            _loc1_.§_-Rc§ = -12;
         }
         return new §_-bm§();
      }
      
      protected function §_-2H§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-T2§ ^= this.§_-T2§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§_-T2§);
               §§push(this.§_-T2§);
               if(_loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§_-T2§ = §§pop() ^ §§pop();
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            this.§_-T2§ ^= this.§_-T2§ << 4;
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§_-T2§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §package§(param1:§_-bm§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§_-CE§ = null;
         if(_loc7_ || _loc2_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§_-T2§ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(10);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || param1)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ && param1)
                           {
                              break;
                           }
                           §§push(5);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc6_)
                                 {
                                 }
                                 break loop2;
                              }
                              §§push(this.§_-2H§());
                              if(_loc7_)
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(_loc6_ && _loc2_)
                              {
                                 break;
                                 addr75:
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ && this)
                                 {
                                    break;
                                 }
                                 §§push(_loc5_ = new §_-CE§());
                                 §§push(30 + _loc3_ * 10);
                                 if(_loc7_)
                                 {
                                    §§push(this.§_-2H§());
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() * 9);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(_loc2_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(_loc5_);
                                             §§push(-100 + _loc2_ * 6);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(this.§_-2H§());
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(§§pop() * 3);
                                                   if(_loc7_ || this)
                                                   {
                                                      addr352:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc3_ * 8);
                                                      }
                                                      §§pop().y = §§pop();
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(_loc3_);
                                                            loop8:
                                                            while(_loc7_ || _loc2_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(_loc3_);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + §§pop() * _loc3_);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 addr286:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(5);
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       loop11:
                                                                                       while(!_loc6_)
                                                                                       {
                                                                                          §§push(2);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr300:
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   addr307:
                                                                                                   _loc5_.id = "BIRD_RED";
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr130:
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         §§push(this.§_-2H§());
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() * 360);
                                                                                                         }
                                                                                                         §§pop().angle = §§pop();
                                                                                                         loop32:
                                                                                                         while(!_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr203:
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               _loc5_.id = "BIRD_YELLOW";
                                                                                                               while(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     §§push(45);
                                                                                                                     §§push(this.§_-2H§());
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 90);
                                                                                                                     }
                                                                                                                     §§pop().angle = §§pop() - §§pop();
                                                                                                                     addr377:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.addObject(_loc5_);
                                                                                                                              do
                                                                                                                              {
                                                                                                                                 _loc3_++;
                                                                                                                              }
                                                                                                                              while(_loc6_);
                                                                                                                              
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              if(!(_loc7_ || this))
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              loop21:
                                                                                                                              while(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    addr409:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_.y = 0;
                                                                                                                                       break loop21;
                                                                                                                                    }
                                                                                                                                    addr445:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr436:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr437:
                                                                                                                                    addr438:
                                                                                                                                    §§push(§§pop() == 1);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop24:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             addr440:
                                                                                                                                             §§pop();
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             break loop8;
                                                                                                                                             addr441:
                                                                                                                                          }
                                                                                                                                          addr427:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                continue loop24;
                                                                                                                                             }
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr433:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      break loop11;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr432:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   _loc5_.id = "PIG_HELMET";
                                                                                                                                                   continue loop19;
                                                                                                                                                }
                                                                                                                                                §§goto(addr397);
                                                                                                                                             }
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          §§goto(addr440);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr397:
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                           addr125:
                                                                                                                        }
                                                                                                                        §§goto(addr433);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr208:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr300);
                                                                                                            }
                                                                                                         }
                                                                                                         addr141:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr125);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr409);
                                                                                             }
                                                                                             §§push(3);
                                                                                             addr180:
                                                                                             break;
                                                                                             if(_loc6_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc7_ || _loc2_))
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                   _loc5_.id = "BIRD_BLUE";
                                                                                                   §§goto(addr148);
                                                                                                }
                                                                                                §§goto(addr203);
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§push(§§pop() == §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                       }
                                                                                       addr390:
                                                                                       §§push(§§pop() == 4);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§goto(addr395);
                                                                                          }
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr286);
                                                                              §§push(§§pop() % §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §§goto(addr420);
                                                                  §§push(2);
                                                               }
                                                               §§goto(addr436);
                                                               §§goto(addr441);
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                   }
                                                   §§goto(addr352);
                                                   §§push(§§pop() - §§pop());
                                                }
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr445);
                                       }
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     _loc2_++;
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr75);
               }
               return;
            }
         }
      }
      
      private function §_-cd§() : void
      {
      }
      
      public function §_-0-o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§_-OI§.§_-Vj§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§_-De§(this.§_-fG§.§_-pH§,false);
                     addr204:
                     while(true)
                     {
                     }
                  }
                  addr198:
               }
               addr185:
               while(true)
               {
                  this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-zS§),false);
                  while(true)
                  {
                     this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-WZ§),true);
                     addr104:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-zj§),true);
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(§_-O0§.§_-EN§);
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                                 addr63:
                              }
                              §§goto(addr204);
                           }
                           else
                           {
                              addr102:
                              while(_loc2_)
                              {
                                 §§goto(addr104);
                              }
                              loop9:
                              while(true)
                              {
                                 this.§_-De§(this.§_-fG§.§_-xH§,false);
                                 addr119:
                                 addr144:
                                 while(_loc2_ || this)
                                 {
                                    §§push(§_-OI§.§_-Vj§);
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-MP§),true);
                                    continue loop9;
                                    §§goto(addr119);
                                 }
                              }
                              addr102:
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      private function §_-De§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.sprite);
            if(!_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().addChild(param1);
         }
         addr44:
         if(_loc3_ || param2)
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc5_ || this)
            {
               §§push(§ in§.§_-57§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr92:
                  §§push(§ in§.§_-57§);
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc5_ || param1)
                  {
                     addr119:
                     if(_loc5_)
                     {
                        addr122:
                        §§push(Number(§§pop()));
                        if(_loc5_ || this)
                        {
                           param2 = §§pop();
                           loop4:
                           for(; !_loc4_; while(_loc5_ || this)
                           {
                              _loc3_.y = (param2 / §_-S2§.§_-4-§ + this.§_-jC§.§_-2m§ - §_-S2§.§_-w6§ / §_-S2§.§_-4-§) * §_-lY§;
                              if(_loc5_)
                              {
                                 return _loc3_;
                              }
                           })
                           {
                              while(true)
                              {
                                 _loc3_.x = (param1 / §_-S2§.§_-4-§ + this.§_-jC§.§_-jV§ - §_-S2§.§_-qy§ / §_-S2§.§_-4-§) * §_-lY§;
                                 continue loop4;
                              }
                           }
                           while(true)
                           {
                              §§push(param2);
                              if(!_loc4_)
                              {
                                 §§goto(addr92);
                              }
                              §§goto(addr119);
                           }
                           continue;
                           addr146:
                        }
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr144:
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr146);
                     }
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr144);
         }
         §§goto(addr132);
      }
      
      public function §_-ew§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!_loc6_)
         {
            _loc3_.x = (param1 / §_-lY§ + §_-S2§.§_-qy§ / §_-S2§.§_-4-§ - this.§_-jC§.§_-jV§) * §_-S2§.§_-4-§;
            if(_loc5_)
            {
               _loc3_.y = (param2 / §_-lY§ + §_-S2§.§_-w6§ / §_-S2§.§_-4-§ - this.§_-jC§.§_-2m§) * §_-S2§.§_-4-§;
            }
         }
         var _loc4_:Number = Math.max(§ in§.§_-57§,§ in§.§_-Sr§);
         if(!(_loc6_ && this))
         {
            _loc3_.x *= _loc4_;
            do
            {
               _loc3_.y *= _loc4_;
            }
            while(_loc6_ && param1);
            
         }
         return _loc3_;
      }
      
      public function §_-kK§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§_-9u§.addObject(param1,param2,param3);
         }
      }
      
      public function §_-ET§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-06T§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§_-06T§);
                     while(true)
                     {
                        §§pop().visible = true;
                        addr86:
                        while(true)
                        {
                           §§push(this.§_-06T§);
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§pop().alpha = 0;
                           while(true)
                           {
                              §§goto(addr23);
                           }
                        }
                     }
                     addr84:
                  }
                  §§goto(addr86);
               }
               addr23:
               while(true)
               {
                  this.§_-hr§ = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  continue loop3;
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      public function §_-07i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-lo§ = new §_-06K§(§_-L8§.§_-0Ca§,§_-L8§.§_-ty§);
         }
      }
      
      public function §_-Qu§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-lo§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§_-fG§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§_-fG§);
                     addr569:
                     while(true)
                     {
                        §§pop().dispose();
                        addr570:
                        while(true)
                        {
                           this.§_-fG§ = null;
                           addr561:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr567:
               }
               loop1:
               while(true)
               {
                  §§push(this.§_-9u§);
                  if(!(_loc1_ && this))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§_-9u§);
                           addr555:
                           while(true)
                           {
                              §§pop().dispose();
                              addr556:
                              loop30:
                              while(true)
                              {
                                 this.§_-9u§ = null;
                                 while(true)
                                 {
                                    this.§_-e2§ = null;
                                    addr517:
                                    while(_loc2_)
                                    {
                                       continue loop30;
                                    }
                                 }
                              }
                           }
                        }
                        addr553:
                     }
                     while(true)
                     {
                        §§push(this.mLevelEngine);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.mLevelEngine);
                                 if(_loc2_)
                                 {
                                    if(!§§pop().§_-6s§)
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(this.mLevelEngine);
                                       addr511:
                                       while(true)
                                       {
                                          §§pop().clear();
                                          addr512:
                                          while(true)
                                          {
                                             this.mLevelEngine = null;
                                             addr496:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr509:
                                 }
                                 §§goto(addr511);
                                 addr474:
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop4;
                                    }
                                    §§push(this.§_-3h§);
                                    while(true)
                                    {
                                       §§pop().clear();
                                       while(!(_loc1_ && this))
                                       {
                                          this.§_-3h§ = null;
                                          loop25:
                                          while(true)
                                          {
                                             addr447:
                                             while(true)
                                             {
                                                §§push(this.§_-mT§);
                                                if(!_loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop9:
                                                      for(; !_loc1_; while(true)
                                                      {
                                                         if(!(_loc2_ || _loc1_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§goto(addr378);
                                                         §§push(this.§_-4i§);
                                                      },§§goto(addr458))
                                                      {
                                                         §§push(this.§_-mT§);
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            addr458:
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc1_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§_-mT§ = null;
                                                                     loop37:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              addr446:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-jC§);
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             §§push(this.§_-jC§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().clear();
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         this.§_-jC§ = null;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc1_ && this))
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                            §§goto(addr432);
                                                                                                         }
                                                                                                         addr432:
                                                                                                         continue loop37;
                                                                                                         addr393:
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   continue loop37;
                                                                                                }
                                                                                             }
                                                                                             addr427:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr553);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr556);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-4i§);
                                                                                       if(!(_loc1_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             if(this.sprite)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(_loc1_ && this)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr315:
                                                                                                   §§push(this.sprite);
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      if(§§pop().numChildren <= 0)
                                                                                                      {
                                                                                                         addr324:
                                                                                                         this.§_-Ak§ = 0;
                                                                                                         this.§_-Dn§ = 0;
                                                                                                         this.mReadyToRun = false;
                                                                                                         this.§_-F0§ = false;
                                                                                                         this.§_-hr§ = §_-L8§.§_-oT§;
                                                                                                         addr327:
                                                                                                         addr304:
                                                                                                         addr314:
                                                                                                         addr309:
                                                                                                         if(!(_loc1_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(this.§_-LM§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr283:
                                                                                                                  (this.§_-LM§ as §_-2u§).§_-Ly§.x = 0;
                                                                                                                  addr284:
                                                                                                                  addr277:
                                                                                                                  addr282:
                                                                                                                  addr279:
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§_-LM§);
                                                                                                                     if(!(_loc1_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push((§§pop() as §_-2u§).§_-Ly§);
                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              addr260:
                                                                                                                              §§push(this.§_-06T§);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr217:
                                                                                                                                    if(_loc2_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc1_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr233:
                                                                                                                                          this.§_-06T§.visible = false;
                                                                                                                                          addr199:
                                                                                                                                          this.§_-Ko§ = null;
                                                                                                                                          addr235:
                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             this.§_-fZ§ = null;
                                                                                                                                             addr198:
                                                                                                                                             if(this.§_-ym§)
                                                                                                                                             {
                                                                                                                                                addr188:
                                                                                                                                                this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-zq§);
                                                                                                                                                addr186:
                                                                                                                                                addr193:
                                                                                                                                                §§push(this.§_-ym§);
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().removeEventListener(Event.CANCEL,this.§_-A-§);
                                                                                                                                                      addr179:
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr140:
                                                                                                                                                         if(this.§_-BN§)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc1_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr161:
                                                                                                                                                                        this.§_-BN§.removeEventListener(Event.COMPLETE,this.§_-0K§);
                                                                                                                                                                        addr166:
                                                                                                                                                                        §§push(this.§_-BN§);
                                                                                                                                                                        if(!_loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().removeEventListener(Event.CANCEL,this.§_-0Dy§);
                                                                                                                                                                              addr134:
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr108:
                                                                                                                                                                                 this.§_-RP§();
                                                                                                                                                                                 addr111:
                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§_-AY§.§_-un§);
                                                                                                                                                                                                if(_loc2_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr94:
                                                                                                                                                                                                      if(!(_loc1_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr103:
                                                                                                                                                                                                         §_-AY§.§_-un§.color = 0;
                                                                                                                                                                                                         addr105:
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr43:
                                                                                                                                                                                                            §§push(this.§_-yQ§);
                                                                                                                                                                                                            if(!_loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc1_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr65:
                                                                                                                                                                                                                        this.§_-yQ§.removeEventListeners();
                                                                                                                                                                                                                        addr66:
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr29:
                                                                                                                                                                                                                                 this.mReadyToRun = false;
                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc2_ || _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr235);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr66);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr284);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr94);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr105);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr111);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr66);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr29);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr65);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr134);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr327);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr43);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr103);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr304);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr198);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr186);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr193);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr166);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr179);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr140);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr161);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr324);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr277);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr235);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr161);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr108);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr217);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr198);
                                                                                                                                                }
                                                                                                                                                §§goto(addr188);
                                                                                                                                             }
                                                                                                                                             §§goto(addr140);
                                                                                                                                          }
                                                                                                                                          §§goto(addr314);
                                                                                                                                       }
                                                                                                                                       §§goto(addr324);
                                                                                                                                    }
                                                                                                                                    §§goto(addr260);
                                                                                                                                 }
                                                                                                                                 §§goto(addr199);
                                                                                                                              }
                                                                                                                              §§goto(addr233);
                                                                                                                           }
                                                                                                                           §§goto(addr283);
                                                                                                                        }
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                     §§goto(addr279);
                                                                                                                  }
                                                                                                                  §§goto(addr309);
                                                                                                               }
                                                                                                               §§goto(addr260);
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         addr352:
                                                                                                         §§goto(addr315);
                                                                                                         addr323:
                                                                                                      }
                                                                                                      §§push(this.sprite);
                                                                                                   }
                                                                                                   §§pop().removeChildAt(0,true);
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(_loc1_ && _loc2_)
                                                                                                         {
                                                                                                            break loop14;
                                                                                                         }
                                                                                                         this.§_-4i§ = null;
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   addr379:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          §§goto(addr570);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().dispose();
                                                                                          }
                                                                                          addr378:
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr427);
                                                                                 §§goto(addr446);
                                                                              }
                                                                              addr415:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr509);
                                                                           }
                                                                        }
                                                                        §§goto(addr512);
                                                                     }
                                                                  }
                                                                  addr462:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr567);
                                                               }
                                                               §§goto(addr570);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr517);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr457);
                                                continue loop25;
                                             }
                                          }
                                       }
                                       §§goto(addr496);
                                    }
                                 }
                                 §§goto(addr511);
                              }
                           }
                           while(true)
                           {
                              §§push(this.§_-3h§);
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr474);
                                 }
                                 §§goto(addr447);
                              }
                              §§goto(addr483);
                              §§goto(addr496);
                           }
                        }
                        §§goto(addr511);
                        §§goto(addr526);
                     }
                  }
                  §§goto(addr555);
               }
            }
            §§goto(addr569);
         }
         §§goto(addr462);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-Kd§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-fZ§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§_-fZ§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop().toString();
         }
         addr45:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc5_ || param3)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr166:
                           while(true)
                           {
                              §§push(§_-AY§.§_-Ow§());
                              continue loop9;
                           }
                        }
                        addr165:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§_-Ko§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr116:
                                                   §§pop();
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || param3)
                                                         {
                                                            §§push(this.§_-Ko§);
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            addr49:
                                                            §§push(§§pop().§_-3t§);
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc4_ && param2)
                                                            {
                                                               continue loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc4_ && param3))
                                                                     {
                                                                        return this.§_-GZ§(param1,param2,param3);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr166);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr25:
                                                                     §§push(this.updateWithTime(param1,true,param2,param3));
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr151);
                                                                     }
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr25);
                                                               §§goto(addr49);
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                         else
                                                         {
                                                            addr150:
                                                            §§push(0);
                                                         }
                                                         addr151:
                                                      }
                                                      continue loop4;
                                                      return §§pop();
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr140);
                                          }
                                          continue loop3;
                                          addr110:
                                       }
                                       §§goto(addr65);
                                    }
                                    §§goto(addr110);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr150);
                        }
                     }
                  }
               }
               §§goto(addr165);
            }
         }
         §§goto(addr166);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.§_-fp§)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(param1);
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() * 0.2);
                     if(!(_loc7_ && param2))
                     {
                        addr45:
                        §§push(Number(§§pop()));
                        if(_loc6_ || param1)
                        {
                           addr53:
                           param1 = §§pop();
                           if(_loc6_)
                           {
                              addr56:
                              §§push(§_-AY§.§_-CK§);
                              if(!(_loc7_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    addr77:
                                    if(!(_loc7_ && this))
                                    {
                                       addr73:
                                       §§push(§_-AY§.§_-CK§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc6_ || param2)
                                    {
                                       §§push(this);
                                       §§push(this.§_-Dn§);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§_-Dn§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop0;
                                             }
                                             this.§_-9u§.§_-8h§(param1);
                                             while(true)
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop0;
                                                }
                                                this.§_-Ak§ = 0;
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.mLevelEngine.§_-6h§(this.§_-Ak§));
                                                            addr194:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr195:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr196:
                                                                  while(true)
                                                                  {
                                                                     this.§_-mT§.update(param1,param4);
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr225:
                                                      }
                                                   }
                                                }
                                                addr137:
                                                if(_loc7_ && param3)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   addr88:
                                                   §§push(param1);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr196);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§_-Ak§ = _loc5_;
                                       §§goto(addr173);
                                    }
                                 }
                                 §§goto(addr77);
                              }
                              §§pop().speed = 0.2;
                           }
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr45);
               }
               §§goto(addr73);
            }
            §§goto(addr77);
         }
         §§goto(addr56);
      }
      
      private function §_-GZ§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(§_-O0§.§_-C-§);
         if(_loc6_ || this)
         {
            §§push(§§pop() * 1000);
            if(!_loc7_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || param2)
            {
               if(this.§_-Ko§)
               {
                  if(!_loc7_)
                  {
                     addr302:
                     §§push(param1);
                     while(true)
                     {
                        §§push(this.§_-Ko§.speed);
                        addr306:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr310:
                           while(true)
                           {
                              param1 = §§pop();
                           }
                        }
                     }
                     addr303:
                  }
                  while(true)
                  {
                     §§push(this.§_-Dn§);
                     if(_loc6_)
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc7_ && param3))
                           {
                              addr283:
                              if(_loc6_)
                              {
                                 addr286:
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr306);
                     }
                     §§goto(addr283);
                  }
                  loop18:
                  while(true)
                  {
                     §§push(this.§_-Dn§);
                     if(!_loc7_)
                     {
                        §§push(_loc4_);
                        if(!(_loc7_ && param3))
                        {
                           addr184:
                           §§push(§§pop() + §§pop());
                           loop0:
                           while(true)
                           {
                              §§push(_loc5_);
                              loop1:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       addr187:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(this.§_-Jb§);
                                             if(!_loc7_)
                                             {
                                                addr195:
                                                §§push(§§pop() + _loc4_);
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§push(this.§_-Ko§);
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().step(this);
                                                      loop10:
                                                      for(; _loc6_; if(_loc7_ && this)
                                                      {
                                                         continue;
                                                      },if(_loc6_)
                                                      {
                                                         addr70:
                                                         return param1;
                                                      },§§goto(addr256))
                                                      {
                                                         §§push(this);
                                                         §§push(this.§_-Jb§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() + _loc4_);
                                                         }
                                                         §§pop().§_-Jb§ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(_loc7_ && this)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-Dn§);
                                                                  addr81:
                                                                  addr72:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ && param2)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           addr106:
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(_loc5_);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 §§push(§§pop() - this.§_-Dn§);
                                                                              }
                                                                              §§pop().updateWithTime(§§pop(),true,param2,param3);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr205:
                                                                                 while(true)
                                                                                 {
                                                                                    this.updateWithTime(_loc4_,false,param2,param3);
                                                                                    break loop10;
                                                                                 }
                                                                                 §§goto(addr106);
                                                                              }
                                                                              addr227:
                                                                           }
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr251:
                                                                     addr251:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-Ko§);
                                                                              break loop9;
                                                                           }
                                                                           addr252:
                                                                        }
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr70);
                                                               }
                                                               addr78:
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§_-Jb§);
                                                            if(_loc6_ || param3)
                                                            {
                                                               §§push(§§pop() + _loc4_);
                                                            }
                                                            §§pop().§_-Jb§ = §§pop();
                                                            §§goto(addr227);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop18;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr78);
                                                }
                                                while(true)
                                                {
                                                   §§pop().step(this);
                                                   §§goto(addr256);
                                                }
                                                addr195:
                                             }
                                             §§goto(addr195);
                                          }
                                          else
                                          {
                                             addr249:
                                             while(true)
                                             {
                                             }
                                             addr249:
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§_-Dn§);
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§goto(addr249);
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr251);
                                    }
                                 }
                                 §§goto(addr249);
                              }
                           }
                           addr184:
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr184);
                  }
               }
               else
               {
                  §§push(this.updateWithTime(_loc4_,true,param2,param3));
                  if(!(_loc7_ && this))
                  {
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           if(_loc6_ || param2)
                           {
                              return §§pop();
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr302);
         }
         §§goto(addr31);
      }
      
      private function §_-LE§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && param2))
         {
            this.§_-fG§.update(param1);
            loop0:
            while(true)
            {
               this.§_-9u§.§_-x0§(param1,param2);
               loop1:
               while(true)
               {
                  this.§_-pN§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§_-hr§);
                     loop3:
                     while(true)
                     {
                        §§push(§_-L8§.§_-oT§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§_-06T§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       loop9:
                                       while(_loc6_ || param1)
                                       {
                                          this.mLevelEngine.§_-08U§();
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(this.§_-06T§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§pop().alpha = _loc4_;
                                                               addr174:
                                                               addr244:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  addr276:
                                                                  addr276:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§_-hr§);
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + param1);
                                                                     }
                                                                     §§pop().§_-hr§ = §§pop();
                                                                     addr289:
                                                                     while(true)
                                                                     {
                                                                        §§push(§_-L8§.§_-oT§);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           addr257:
                                                                        }
                                                                        addr258:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-06T§);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr86);
                                                            }
                                                            addr172:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(-Math.abs(this.§_-hr§ - _loc3_));
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§_-L8§.§_-bR§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        addr214:
                                                                        §§push(§§pop() / _loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           addr219:
                                                                           if(_loc5_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§_-Qu§();
                                                §§goto(addr103);
                                             }
                                             else
                                             {
                                                §§goto(addr174);
                                             }
                                          }
                                       }
                                    }
                                    addr134:
                                 }
                                 addr86:
                                 while(true)
                                 {
                                    §§push(this.§_-lo§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§_-lo§);
                                             addr94:
                                             while(true)
                                             {
                                                if(!§§pop().§_-JO§(this.§_-jC§,param1))
                                                {
                                                   break loop10;
                                                }
                                             }
                                          }
                                          addr92:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          this.§_-jC§.§_-q7§(param1);
                                          continue loop9;
                                          addr103:
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr94);
                                 }
                                 addr51:
                                 return;
                              }
                              addr130:
                              if(!_loc5_)
                              {
                                 §§pop().visible = false;
                                 §§goto(addr134);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr276);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr244);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(1000);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                  }
                  addr94:
               }
               addr95:
               while(true)
               {
                  §§pop().§_-8h§(§§pop());
                  continue loop0;
               }
            }
         }
      }
      
      public function §_-pN§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-eZ§ = null;
         if(_loc5_)
         {
            §§push(this.§_-Dn§);
            §§push(this.§_-yU§);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc5_)
               {
                  if(this.§_-71§ != null)
                  {
                     §§goto(addr64);
                  }
                  this.§_-yU§ = this.§_-Dn§;
               }
            }
            §§goto(addr64);
         }
         addr64:
         for each(_loc1_ in this.§_-71§)
         {
            if(_loc5_)
            {
               _loc1_.addTrail();
            }
         }
         if(!_loc5_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-eZ§ = null;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc3_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc3_ || this)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_)
                        {
                           addr46:
                           §§push(this.§_-9u§);
                           if(!_loc4_)
                           {
                              §§push(true);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr64:
                                          §§push(this.§_-9u§);
                                          if(_loc3_ || param1)
                                          {
                                             addr73:
                                             §§push(true);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().§_-6f§(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      _loc2_.§_-U-§.mTryToScream = §_-05W§.§_-0C9§;
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§_-9u§.§_-yq§()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                         addr123:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(_loc3_)
                                                         {
                                                            addr133:
                                                            if(this.mPigsAnimationTimer2 <= 0)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr139:
                                                                  §§push(this.§_-9u§);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        addr157:
                                                                        if(!§§pop().isPigsAlive(§§pop()))
                                                                        {
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     addr162:
                                                                     _loc2_ = §§pop().§_-6f§(§§pop());
                                                                     §§goto(addr161);
                                                                  }
                                                                  addr160:
                                                                  addr161:
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     _loc2_.§_-U-§.mTryToBlink = §_-05W§.§_-Og§;
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(250 + Math.random() * 500);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop() + 2000 / (3 + this.§_-9u§.§_-yq§()));
                                                                        }
                                                                        §§pop().mPigsAnimationTimer2 = §§pop();
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  addr206:
                                                                  return;
                                                                  §§push(true);
                                                               }
                                                               §§goto(addr160);
                                                               §§push(this.§_-9u§);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                   }
                                                   §§goto(addr123);
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr46);
         }
         §§goto(addr64);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §§push(param6);
            if(_loc8_)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§_-Hv§.§_-bP§);
                        if(!_loc7_)
                        {
                           addr176:
                           §§push(int(§§pop()));
                           while(true)
                           {
                              param6 = §§pop();
                              addr177:
                              while(true)
                              {
                              }
                           }
                           addr176:
                        }
                        §§goto(addr176);
                     }
                     addr171:
                  }
                  while(true)
                  {
                     §_-40§.addScore(param1,param2);
                     loop3:
                     while(!_loc7_)
                     {
                        this.§_-yQ§.addScore(param1);
                        loop4:
                        while(true)
                        {
                           §§push(param3);
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr131:
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc8_ || param3))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop4;
                                                addr32:
                                                if(!(_loc8_ || param2))
                                                {
                                                   continue;
                                                }
                                                addr39:
                                                if(!(_loc8_ || this))
                                                {
                                                   while(_loc8_)
                                                   {
                                                      continue loop11;
                                                      §§goto(addr39);
                                                   }
                                                   continue loop5;
                                                   addr107:
                                                }
                                                if(_loc8_ || param1)
                                                {
                                                   while(§§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            addr134:
                                                            while(_loc8_ || param3)
                                                            {
                                                               §§push(param1);
                                                               if(_loc8_ || param3)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr134:
                                                         }
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            this.§_-8u§(param1.toString(),param4,param5,800,param6,0,0);
                                                            addr88:
                                                            break;
                                                         }
                                                         §§goto(addr171);
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr88);
                                                   }
                                                   return;
                                                   addr53:
                                                }
                                                else
                                                {
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr134);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr53);
                                          }
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr133:
                                    §§goto(addr134);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr177);
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr127);
      }
      
      public function §_-8u§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            §§push(param5);
            if(!(_loc8_ && this))
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§_-Hv§.§_-rq§);
                     if(!(_loc8_ && param2))
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr90:
                     }
                     while(true)
                     {
                        param5 = §§pop();
                        addr92:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  this.§_-4i§.§_-0EQ§(§_-Hv§.§_-Pq§,§_-Zc§.§_-zj§,§_-Hv§.§_-5K§,param2,param3,param4,param1,param5,param6,param7);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr92);
      }
      
      public function §_-I5§(param1:§_-eZ§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§_-71§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§_-71§ = new Array();
                     }
                     addr70:
                  }
                  while(true)
                  {
                  }
                  addr74:
               }
               while(true)
               {
                  §§push(this.§_-71§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc2_)
                  {
                     return;
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr70);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-mT§.useMightyEagle();
            while(true)
            {
               this.§_-9u§.§_-87§();
               while(_loc1_)
               {
                  this.§_-wt§ = true;
                  if(!_loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §_-5Q§(param1:§_-eZ§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-4i§.§_-cF§(§_-Zc§.§_-zS§);
            loop0:
            while(true)
            {
               §§push(this.§_-71§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(param1) < 0)
                  {
                     while(true)
                     {
                        §§push(this.§_-71§);
                        if(!(_loc3_ && this))
                        {
                           continue loop1;
                        }
                        §§goto(addr94);
                     }
                     return;
                     addr90:
                  }
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§_-71§);
                        addr94:
                        while(true)
                        {
                           §§pop().splice(this.§_-71§.indexOf(param1),1);
                           addr100:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr24:
                  continue loop0;
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §_-QL§(param1:§_-pR§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§_-e2§ = this.§_-9u§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc8_)
            {
               addr38:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr43:
                  §§push(§_-E0§.BIRD_LAUNCH_FORCE_GREEN);
                  if(!(_loc7_ && this))
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || param1)
                     {
                        addr68:
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr65:
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           §§goto(addr68);
                        }
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc7_)
                  {
                     §§push(param1.§_-IX§);
                     loop0:
                     while(true)
                     {
                        §§push(1);
                        loop1:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc7_ && param3))
                              {
                                 §§push(this.§_-e2§);
                                 while(true)
                                 {
                                    §§pop().§_-Px§(param1.§_-IX§);
                                 }
                                 addr161:
                              }
                              while(true)
                              {
                                 addr130:
                                 while(true)
                                 {
                                    §§push(this.§_-e2§);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§pop().§_-U-§.§_-XU§();
                                    while(true)
                                    {
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              addr164:
                           }
                           while(true)
                           {
                              §§push(param1.§_-PV§);
                              if(!(_loc7_ && param3))
                              {
                                 if(_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 if(_loc7_ && param1)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       §§push(param1.§_-PV§);
                                       if(!_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc8_ || param1)
                                          {
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    if(_loc8_ || param3)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          if(false)
                                          {
                                             §§goto(addr130);
                                          }
                                          else
                                          {
                                             addr165:
                                             §§push(_loc4_);
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             var _loc5_:Number = §§pop();
                                             §§push(_loc4_);
                                             if(_loc8_ || param2)
                                             {
                                                §§push(§§pop() * param2);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                   if(_loc8_)
                                                   {
                                                      addr226:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      this.§_-e2§.§_-To§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                      this.camera.§_-Hg§(§_-S2§.§_-0Co§);
                                                      addr301:
                                                      addr291:
                                                      §§push(this.§_-fZ§);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  this.§_-fZ§.§_-QL§(this.mLevelEngine.§_-5s§,param1.x,param1.y,param2,param3);
                                                                  addr277:
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     §§goto(addr301);
                                                                  }
                                                                  return;
                                                                  addr257:
                                                                  addr255:
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr255);
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr165);
                              }
                              break;
                           }
                           §§push(-§§pop());
                           if(_loc8_ || this)
                           {
                              §§push(§§pop() * param2);
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                 if(_loc8_ || this)
                                 {
                                 }
                              }
                           }
                           §§goto(addr165);
                        }
                     }
                  }
                  §§goto(addr147);
               }
               else
               {
                  §§push(§_-E0§.BIRD_LAUNCH_FORCE);
                  if(_loc8_)
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr43);
         }
         §§goto(addr38);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-F0§ = true;
         }
      }
      
      private function §_-04X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§_-F0§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || this))
            {
               continue;
            },§§goto(addr130))
            {
               loop1:
               while(true)
               {
                  this.§_-F0§ = false;
                  addr178:
                  loop2:
                  while(true)
                  {
                     §§push(this.activeObject);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() is §_-Fh§);
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§_-9u§.§_-At§();
                                    loop14:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          addr97:
                                          while(true)
                                          {
                                             §§push(this.§_-fZ§);
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   return;
                                                }
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   addr49:
                                                   this.§_-fZ§.§_-R§(this.mLevelEngine.§_-5s§);
                                                }
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   break;
                                                }
                                                continue loop14;
                                                addr25:
                                             }
                                             §§goto(addr49);
                                             §§goto(addr97);
                                          }
                                          addr29:
                                          if(_loc2_)
                                          {
                                             addr62:
                                             if(_loc2_ || _loc1_)
                                             {
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.activeObject);
                                                         if(!_loc1_)
                                                         {
                                                            §§push((§§pop() as §_-Fh§).§_-rV§);
                                                            if(_loc2_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr168:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            while(_loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§_-02W§ = true;
                                                                     addr160:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     §§goto(addr62);
                                                                  }
                                                                  addr157:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr29);
                                                                  §§goto(addr160);
                                                               }
                                                               §§goto(addr25);
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break loop0;
                                                }
                                                §§goto(addr25);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.activeObject);
                                    continue loop3;
                                 }
                              }
                              addr130:
                           }
                           §§goto(addr168);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr178);
      }
      
      public function §_-Fi§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-9u§.§_-Fi§();
         }
      }
      
      public function §_-Lv§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-9u§.§_-S9§();
         }
      }
      
      public function §_-Kv§() : §_-bm§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-bm§ = new §_-bm§();
         if(!(_loc2_ && this))
         {
            _loc1_.§_-iC§ = this.§_-096§.§_-iC§;
            loop0:
            while(true)
            {
               _loc1_.§_-Td§ = this.§_-096§.§_-Td§;
               while(true)
               {
                  this.§_-jC§.§_-Mr§(_loc1_);
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        loop3:
                        while(true)
                        {
                           this.§_-9u§.§_-U6§(_loc1_);
                           while(true)
                           {
                              this.§_-mT§.§_-aF§(_loc1_);
                              while(!_loc2_)
                              {
                                 _loc1_.theme = this.§_-fG§.§_-hZ§();
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        return _loc1_;
                        addr98:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §_-zR§() : int
      {
         return this.§_-096§.§_-Td§;
      }
      
      public function §_-tB§() : int
      {
         return this.§_-096§.§_-iC§;
      }
      
      public function §_-q2§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-096§.§_-Td§ = param1;
         }
      }
      
      public function §_-09W§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-096§.§_-iC§ = param1;
         }
      }
      
      public function §_-tE§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§_-vP§);
            if(_loc4_ || param2)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr93:
                     this.§_-vP§.§_-eb§(param1,param2);
                  }
                  while(true)
                  {
                     addr57:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     addr76:
                     this.§_-jC§.§_-q7§(0);
                     addr25:
                     return;
                     addr78:
                  }
                  addr96:
               }
               while(true)
               {
                  §§push(this.§_-jC§);
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr25);
                  }
                  break;
                  §§goto(addr96);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr93);
      }
      
      public function get §_-bG§() : §_-bm§
      {
         return this.§_-096§;
      }
      
      public function get §_-3V§() : §_-30§
      {
         return this.§_-9u§;
      }
      
      protected function get starling() : §_-AY§
      {
         return this.§_-00f§;
      }
      
      public function get §_-2O§() : int
      {
         return §_-eD§;
      }
   }
}
