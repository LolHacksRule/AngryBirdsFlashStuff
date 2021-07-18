package §_-OJ§
{
   import §_-2J§.§_-QM§;
   import §_-CR§.§_-Dz§;
   import §_-CR§.§_-F5§;
   import §_-CR§.§_-l9§;
   import §_-CR§.§_-zf§;
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-IG§.§_-1E§;
   import §_-IV§.§_-dW§;
   import §_-Ja§.b2Vec2;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-Qx§.§_-3G§;
   import §_-Qx§.§_-7x§;
   import §_-Qx§.§_-Sf§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-M7§;
   import §_-W3§.§_-qz§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-ls§.§_-LR§;
   import §_-sK§.§_-Bs§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-tL§
   {
      
      public static const §_-il§:Number = §_-MB§.§_-1q§;
      
      public static const §_-zh§:Number = §_-MB§.§_-SP§;
      
      public static const §_-7m§:Number = 0.05;
      
      public static const §_-YW§:Number;
      
      public static const §_-ZG§:Number;
      
      public static const §_-Pt§:§_-dW§;
      
      protected static var §_-52§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-tL§))
         {
            §_-7m§ = 1 / 20;
            if(!(_loc2_ && §_-tL§))
            {
               §_-YW§ = §_-MB§.§_-SP§ * §_-7m§;
               §§push(§§findproperty(§_-ZG§));
               §§push(§_-il§);
               if(_loc1_)
               {
                  §§push(§§pop() * §_-7m§);
               }
               §§pop().§_-ZG§ = §§pop();
               §_-Pt§ = new §_-dW§(13 - 3);
            }
            §_-52§ = "";
         }
      }
      
      private var §_-S5§:§_-F5§;
      
      private var §_-vX§:§_-Dz§;
      
      private var §_-S9§:Array = null;
      
      private var §_-EL§:§_-LR§;
      
      public var §_-hA§:§_-Bu§;
      
      private var §_-9p§:§_-y5§;
      
      private var §true§:§_-LW§;
      
      private var §_-Gh§:§_-7G§;
      
      private var §_-D6§:§_-Gb§;
      
      public var §_-57§:Boolean = false;
      
      public var §_-nV§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-J7§:Number;
      
      public var §_-9c§:Number;
      
      private var §_-Ye§:Number;
      
      public var §_-§:§_-3G§;
      
      public var §_-aE§:Boolean = false;
      
      private var §_-H8§:§_-EU§;
      
      private var §_-ta§:Sprite;
      
      private var §_-SF§:Vector.<Sprite>;
      
      private var §_-t1§:§_-qz§ = null;
      
      private var §_-4V§:EventDispatcher;
      
      private var §_-qD§:Array;
      
      private var §_-qt§:Array;
      
      private var §_-Br§:§_-Vu§;
      
      private var §_-7i§:§_-QM§;
      
      private var §_-gS§:§_-2X§;
      
      private var §_-Mi§:§_-M7§;
      
      private var mStage:Stage;
      
      private var §_-7u§:§_-Rh§;
      
      private var §_-A0§:§_-Bs§;
      
      private var §_-3i§:§_-Bs§;
      
      private var §_-xV§:Number = 0.0;
      
      private var §_-ji§:String;
      
      private var §_-8Y§:uint = 1.417339207E9;
      
      public function §_-tL§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§_-qt§ = [];
         if(_loc4_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addr28:
               this.§_-4V§ = new EventDispatcher();
               if(_loc4_)
               {
                  this.§_-§ = new §_-3G§();
                  addr38:
                  this.mStage = param1;
                  this.§_-gS§ = §_-2X§.§_-mE§;
                  this.§_-Mi§ = this.§_-Te§(this.§_-gS§);
               }
               var _loc2_:Stage3D = param1.stage3Ds[0];
               if(!_loc3_)
               {
                  this.§_-Br§ = new §_-Vu§(§_-EU§,param1,new Rectangle(0,0,§_-MB§.§_-1q§,§_-MB§.§_-SP§),_loc2_);
                  _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-2n§,false,0,true);
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§_-Br§);
                     if(!(_loc3_ && param1))
                     {
                        §§push(false);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop().include = §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              §§push(this.§_-Br§);
                              if(!(_loc3_ && param1))
                              {
                                 addr132:
                                 §§pop().enableErrorChecking = false;
                                 addr140:
                                 §§push(this.§_-Br§);
                                 if(!_loc3_)
                                 {
                                    addr144:
                                    §§pop().§_-IN§ = 2;
                                    §§push(this.§_-Br§);
                                 }
                                 §§pop().§_-R0§();
                                 return;
                                 addr131:
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr144);
               }
               §§goto(addr132);
            }
            §§goto(addr38);
         }
         §§goto(addr28);
      }
      
      public static function §_-2L§(param1:§_-Dz§, param2:§_-Dz§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§_-Fc§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() - param2.§_-Fc§);
            if(_loc5_ || param1)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§_-50§);
            if(_loc5_)
            {
               §§push(§§pop() - param2.§_-50§);
               if(!_loc6_)
               {
                  addr57:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return §_-t0§(_loc3_,_loc4_);
            }
            §§goto(addr57);
         }
         §§goto(addr39);
      }
      
      public static function §_-t0§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-ta§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr41:
                        §§pop();
                        if(_loc1_)
                        {
                           §§push(Boolean(this.§_-Zo§));
                           if(_loc1_)
                           {
                              addr56:
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    this.§_-ta§ = this.§_-H8§.§_-61§;
                                 }
                                 §§push(this.§_-ta§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr78:
                                    if(§§pop())
                                    {
                                       addr88:
                                       if(§_-Vu§.§_-wB§)
                                       {
                                          this.§_-SF§ = new Vector.<Sprite>();
                                          addr95:
                                          §§push(this.§_-ta§);
                                       }
                                    }
                                    §§goto(addr95);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr95);
                           }
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr56);
               }
               §§goto(addr41);
            }
            §§goto(addr78);
         }
         §§goto(addr95);
      }
      
      public function get §_-Zo§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-H8§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§_-H8§ = this.§_-Br§.§_-UN§ as §_-EU§;
                     addr22:
                     if(_loc1_ || this)
                     {
                     }
                     addr63:
                     return this.§_-H8§;
                     addr61:
                  }
                  §§push(this.§_-H8§);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr59:
                     §§pop().§_-pE§ = false;
                     §§goto(addr61);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr59);
         }
         §§goto(addr22);
      }
      
      private function get §_-8y§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§_-Zo§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return (this.§_-Zo§ as §_-EU§).§_-8y§;
      }
      
      public function get §_-tJ§() : §_-M7§
      {
         return this.§_-Mi§;
      }
      
      public function get §_-JG§() : §_-2X§
      {
         return this.§_-gS§;
      }
      
      public function get camera() : §_-LW§
      {
         return this.§true§;
      }
      
      public function get objects() : §_-F5§
      {
         return this.§_-S5§;
      }
      
      public function get particles() : §_-Gb§
      {
         return this.§_-D6§;
      }
      
      public function get background() : §_-LR§
      {
         return this.§_-EL§;
      }
      
      public function get slingshot() : §_-7G§
      {
         return this.§_-Gh§;
      }
      
      public function get activeObject() : §_-Dz§
      {
         return this.§_-vX§;
      }
      
      public function get §_-N7§() : §_-y5§
      {
         return this.§_-9p§;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function set activeObject(param1:§_-Dz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-vX§ = param1;
         }
      }
      
      protected function §_-Te§(param1:§_-2X§) : §_-M7§
      {
         return new §_-M7§(param1);
      }
      
      public function §_-Gf§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§_-Vu§.§_-dq§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(param1)
                     {
                        if(_loc2_)
                        {
                           addr43:
                           §§push(§_-Vu§.§_-dq§);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr59:
                              §§pop().start();
                              if(_loc2_)
                              {
                                 addr66:
                                 return;
                                 addr62:
                              }
                           }
                        }
                        §§goto(addr66);
                     }
                     else
                     {
                        §§push(§_-Vu§.§_-dq§);
                     }
                     §§pop().stop();
                     §§goto(addr66);
                  }
                  §§goto(addr62);
               }
               §§goto(addr66);
            }
            §§goto(addr59);
         }
         §§goto(addr43);
      }
      
      public function §_-m3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.sprite);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().visible = param1;
         }
         addr46:
         if(!_loc2_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §_-U0§(param1:§_-qz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§_-t1§);
            if(!(_loc3_ && this))
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§_-t1§);
                     if(!(_loc3_ && this))
                     {
                        addr54:
                        §§pop().removeEventListeners();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr69:
                           this.§_-t1§ = param1;
                        }
                        §§goto(addr77);
                     }
                     §§pop().addEventListeners();
                  }
                  addr77:
                  if(_loc2_)
                  {
                     addr74:
                     §§push(this.§_-t1§);
                  }
                  return;
               }
               §§goto(addr69);
            }
            §§goto(addr54);
         }
         §§goto(addr74);
      }
      
      public function §_-tt§() : §_-Bs§
      {
         return this.§_-A0§;
      }
      
      public function §_-Et§(param1:§_-QM§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§_-7i§ = param1;
         }
         §§push(this.§_-7i§.§_-Np§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         do
         {
            if(_loc5_ >= _loc4_)
            {
               if(!(_loc7_ && this))
               {
                  if(param3 != null)
                  {
                     this.§_-4V§.addEventListener(Event.INIT,param3);
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  §§goto(addr95);
               }
               break;
            }
            this.§_-gS§.§_-Lf§(this.§_-7i§.§_-Hb§(_loc5_));
            _loc5_++;
         }
         while(!(_loc7_ && param2));
         
         this.§_-qt§.push(param3);
         if(_loc6_ || param1)
         {
            addr95:
            if(this.§_-0O§(param2))
            {
               addr99:
               this.§_-7h§();
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §_-0O§(param1:Array) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-gS§.§_-WP§());
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     §§goto(addr35);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr55);
         }
         addr35:
         this.§_-K7§(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(true);
            if(!_loc3_)
            {
               addr55:
               return §§pop();
            }
         }
         else
         {
            addr58:
            this.§_-qD§ = param1.concat();
            §§push(false);
         }
         return §§pop();
      }
      
      private function §_-K7§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-Mi§.§_-K7§(param1);
         }
      }
      
      private function §_-2n§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§_-gS§.§_-dk§();
         if(this.§_-qD§)
         {
            this.§_-0O§(this.§_-qD§);
            this.§_-qD§ = null;
            this.§_-7h§();
         }
         §§push(this.§_-t1§);
         if(!(_loc2_ && _loc3_))
         {
            if(§§pop() != null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr63:
                  this.§_-t1§.addEventListeners();
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      private function §_-7h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-4V§.dispatchEvent(new Event(Event.INIT));
            if(_loc2_ || _loc2_)
            {
               this.§_-Cd§();
            }
         }
      }
      
      private function §_-Cd§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-qt§)
         {
            if(!_loc5_)
            {
               this.§_-4V§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc5_)
         {
            this.§_-qt§ = [];
         }
      }
      
      public function init(param1:§_-Wv§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§_-57§)
         {
            this.clearLevel();
         }
         this.§_-9p§ = new §_-y5§(this,param1);
         if(_loc2_ || param1)
         {
            this.§_-hA§ = new §_-Bu§(this);
            §§push(this);
            §§push(§§findproperty(§_-LR§));
            §§push(param1.§_-Tt§);
            §§push(this.§_-9p§.§_-IL§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() / §_-7m§);
            }
            §§pop().§_-EL§ = new §§pop().§_-LR§(§§pop(),§§pop(),this.§_-Mi§,this.§_-gS§);
            if(_loc2_ || _loc3_)
            {
               this.§_-EL§.§_-o3§(§_-MB§.§_-G8§());
               this.§_-S5§ = this.§_-Bc§(param1);
               this.§_-Gh§ = this.§_-Ax§(param1);
               this.§_-D6§ = new §_-Gb§(this.§_-Mi§,this.§_-gS§);
               if(!_loc3_)
               {
                  this.§true§ = new §_-LW§(this,param1);
                  this.§_-0k§();
                  this.§_-J7§ = 0;
                  this.§_-9c§ = 0;
                  this.§_-57§ = true;
                  this.mPigsAnimationTimer1 = 2000;
                  this.mPigsAnimationTimer2 = 1000;
                  §_-52§ = param1.§_-Tt§;
                  this.§_-A0§ = new §_-Bs§(§_-Sf§.§_-vj§);
               }
            }
            §_-vI§.init();
            if(_loc2_)
            {
               this.§_-Ye§ = 0;
               §§goto(addr137);
            }
            §§goto(addr146);
         }
         addr137:
         if(this.§_-ji§)
         {
            this.§_-3i§ = §_-Bs§.§_-oA§(this.§_-ji§);
            addr146:
            §§push(this.§_-3i§);
            if(_loc2_ || param1)
            {
               §§pop().speed = 1;
               §§push(this.§_-3i§);
            }
            §§pop().play();
            if(!_loc3_)
            {
               this.§_-xV§ = -1000;
               if(_loc3_)
               {
               }
               §§goto(addr177);
            }
            this.§_-ji§ = null;
         }
         addr177:
      }
      
      public function §_-xs§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-ji§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-3i§ == null);
         if(_loc1_ || _loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-3i§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr27:
                     if(param1)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(this.§_-3i§);
                           if(!_loc3_)
                           {
                              addr47:
                              §§pop().speed = Math.min(this.§_-3i§.speed * 1.25,Math.pow(1.25,2));
                              if(_loc3_ && _loc2_)
                              {
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     else
                     {
                        §§push(this.§_-3i§);
                     }
                     §§pop().speed = Math.max(this.§_-3i§.speed / 1.25,Math.pow(1 / 1.25,10));
                  }
               }
               addr90:
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr27);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-3i§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().speed = 1;
         }
         addr51:
         if(!_loc1_)
         {
            §§push(this.§_-3i§);
         }
      }
      
      protected function §_-Bc§(param1:§_-Wv§) : §_-F5§
      {
         return new §_-F5§(this,param1,new Sprite());
      }
      
      protected function §_-Ax§(param1:§_-Wv§) : §_-7G§
      {
         return new §_-7G§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.§_-57§)
            {
               if(!_loc6_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§_-Wv§ = new §_-Wv§();
         if(!_loc6_)
         {
            _loc3_.§_-tP§ = -12;
         }
         var _loc4_:§_-7x§;
         (_loc4_ = new §_-7x§()).left = 0;
         §§push(_loc4_);
         §§push(§_-LW§.§_-iy§);
         if(_loc7_)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               addr47:
               §§push(10);
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr65);
               }
               §§push(§§pop() * §§pop());
            }
            addr65:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && this))
            {
               §§push(8);
            }
            §§pop().top = §§pop();
            if(_loc7_ || _loc3_)
            {
               §§push(_loc4_);
               §§push(_loc4_.top);
               if(!_loc6_)
               {
                  §§push(§§pop() + §_-LW§.§_-iy§);
               }
               §§pop().bottom = §§pop();
               §§push(_loc4_);
               §§push(_loc4_.left);
               if(_loc7_ || this)
               {
                  §§push(§§pop() + §_-LW§.§_-Bh§);
               }
               §§pop().right = §§pop();
               if(_loc7_)
               {
                  _loc4_.y = -13.929;
               }
            }
            _loc4_.x = §_-LW§.§_-Bh§;
            if(_loc7_ || this)
            {
               _loc4_.id = §_-LW§.§_-3Y§;
            }
            _loc3_.§_-Pg§.push(_loc4_);
            var _loc5_:§_-7x§;
            (_loc5_ = new §_-7x§()).top = _loc4_.top;
            _loc5_.bottom = _loc4_.bottom;
            if(_loc7_)
            {
               _loc5_.left = 150;
               if(_loc7_)
               {
                  §§push(_loc5_);
                  §§push(_loc5_.left);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + §_-LW§.§_-Bh§);
                  }
                  §§pop().right = §§pop();
                  §§push(_loc5_);
                  §§push(_loc5_.top);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() + §_-LW§.§_-iy§);
                  }
                  §§pop().bottom = §§pop();
                  if(_loc7_)
                  {
                     _loc5_.y = _loc4_.y;
                     if(_loc7_)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.left);
                        if(_loc7_ || this)
                        {
                           §§push(§_-LW§.§_-Bh§);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().x = §§pop();
                        if(_loc7_ || this)
                        {
                           _loc5_.id = §_-LW§.§_-ZB§;
                           _loc3_.§_-Pg§.push(_loc5_);
                           addr215:
                           if(param2)
                           {
                              if(_loc7_ || this)
                              {
                                 addr224:
                                 this.§_-SZ§(_loc3_);
                              }
                              §§goto(addr258);
                           }
                           if(param1 != null)
                           {
                              if(!(_loc6_ && param2))
                              {
                                 _loc3_.§_-Tt§ = param1;
                                 if(_loc7_ || _loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              _loc3_.§_-Tt§ = §_-52§;
                           }
                           §§goto(addr258);
                        }
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr224);
               }
               §§goto(addr215);
            }
            addr258:
            this.init(_loc3_);
            return;
         }
         §§goto(addr47);
      }
      
      private function §null §() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-8Y§ ^= this.§_-8Y§ << 21;
            if(!_loc1_)
            {
               §§goto(addr27);
            }
            §§goto(addr52);
         }
         addr27:
         §§push(this);
         §§push(this.§_-8Y§);
         §§push(this.§_-8Y§);
         if(_loc2_)
         {
            §§push(§§pop() >>> 35);
         }
         §§pop().§_-8Y§ = §§pop() ^ §§pop();
         if(_loc2_ || _loc1_)
         {
            this.§_-8Y§ ^= this.§_-8Y§ << 4;
            addr52:
         }
         return this.§_-8Y§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-SZ§(param1:§_-Wv§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§_-1E§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(this);
            §§push(0.33);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§_-8Y§ = §§pop();
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
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     do
                     {
                        §§push(_loc3_);
                     }
                     while(_loc6_);
                     
                     continue loop1;
                     addr354:
                  }
                  while(true)
                  {
                     §§push(5);
                     if(_loc7_)
                     {
                        continue loop2;
                     }
                     if(§§pop() >= §§pop())
                     {
                        break;
                     }
                     §§push(this.§null §());
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop() * 5);
                     }
                     §§push(int(§§pop()));
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     _loc4_ = §§pop();
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     §§push(_loc5_ = new §_-1E§());
                     §§push(30 + _loc3_ * 10);
                     if(_loc6_)
                     {
                        §§push(this.§null §());
                        if(_loc6_)
                        {
                           §§push(§§pop() * 9);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().x = §§pop();
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc6_ || _loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              _loc5_.y = 0;
                              if(!_loc7_)
                              {
                                 §§push(_loc3_);
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                §§pop();
                                                addr140:
                                                §§push(_loc3_ == 2);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr150:
                                                   if(!§§pop())
                                                   {
                                                      if(_loc7_ && _loc2_)
                                                      {
                                                      }
                                                      addr170:
                                                      if(§§pop())
                                                      {
                                                         _loc5_.id = "PIG_MUSTACHE";
                                                      }
                                                      else
                                                      {
                                                         _loc5_.id = "PIG_HELMET";
                                                      }
                                                      §§push(_loc5_);
                                                      §§push(45);
                                                      §§push(this.§null §());
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() * 90);
                                                      }
                                                      §§pop().angle = §§pop() - §§pop();
                                                      param1.§_-yZ§.push(_loc5_);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         _loc3_++;
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§pop();
                                                §§push(_loc3_);
                                                §§push(4);
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   addr169:
                                                   §§goto(addr170);
                                                   §§push(§§pop() == §§pop());
                                                }
                                                else
                                                {
                                                   addr301:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         _loc5_.id = "BIRD_BLACK";
                                                         if(!_loc6_)
                                                         {
                                                            addr316:
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   else if(_loc4_ < 3)
                                                   {
                                                      _loc5_.id = "BIRD_RED";
                                                      §§goto(addr316);
                                                   }
                                                   else
                                                   {
                                                      addr319:
                                                      if(_loc4_ == 3)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            _loc5_.id = "BIRD_YELLOW";
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc5_.id = "BIRD_BLUE";
                                                      }
                                                   }
                                                   §§push(_loc5_);
                                                   §§push(this.§null §());
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(§§pop() * 360);
                                                   }
                                                   §§pop().angle = §§pop();
                                                }
                                                §§goto(addr170);
                                             }
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr140);
                           }
                           else
                           {
                              §§push(_loc5_);
                              §§push(-100 + _loc2_ * 6);
                              if(!_loc7_)
                              {
                                 §§push(this.§null §());
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * 3);
                                    if(_loc6_ || param1)
                                    {
                                       addr229:
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(_loc3_ * 8);
                                       }
                                       §§pop().y = §§pop();
                                       if(_loc6_ || param1)
                                       {
                                          addr239:
                                          §§push(_loc3_ * _loc3_);
                                          if(_loc6_ || param1)
                                          {
                                             §§push(_loc2_);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(§§pop() + §§pop() * _loc3_);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         addr281:
                                                         §§push(§§pop() % 5);
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(_loc4_ = §§pop());
                                                         §§push(0);
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§goto(addr301);
                                                         }
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr316);
                                    }
                                    §§goto(addr229);
                                    §§push(§§pop() - §§pop());
                                 }
                              }
                              §§goto(addr229);
                           }
                        }
                     }
                     §§goto(addr239);
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc2_++;
                  if(_loc7_ && this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      private function §_-vy§() : void
      {
      }
      
      public function §_-0k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-4z§(this.§_-EL§.§_-zm§,true);
            §§push(§_-LR§.§_-iQ§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr28:
                     this.§_-4z§(this.§_-EL§.§_-1l§,false);
                     addr34:
                     this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-uJ§),true);
                  }
                  this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-kL§),true);
                  this.§_-4z§(this.§_-S5§.§_-tR§,true);
                  this.§_-4z§(this.§_-Gh§.sprite,true);
                  this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-oO§),true);
                  if(_loc1_)
                  {
                     §§push(§_-LR§.§_-iQ§);
                     if(_loc1_ || this)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              this.§_-4z§(this.§_-EL§.§_-so§,true);
                              addr102:
                              this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-l4§),true);
                              if(!(_loc2_ && this))
                              {
                                 addr126:
                                 if(!§_-Bu§.§_-CD§)
                                 {
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr34);
            }
            §§goto(addr126);
         }
         §§goto(addr28);
      }
      
      private function §_-4z§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.sprite);
            if(!(_loc4_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr39:
                     this.sprite.addChild(param1);
                     if(_loc3_)
                     {
                        addr50:
                        §§push(param2);
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || param2)
                                 {
                                    addr70:
                                    §§pop();
                                    §§goto(addr91);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr91);
                                 }
                              }
                              addr91:
                              if(!(_loc4_ && param1))
                              {
                                 addr78:
                                 §§push(Boolean(this.§_-SF§));
                              }
                              this.§_-SF§.push(param1);
                              return;
                           }
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr70);
               }
               §§goto(addr50);
            }
            §§goto(addr39);
         }
         §§goto(addr70);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§_-MB§.§_-y3§);
               if(_loc5_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     addr35:
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && param1))
                     {
                        param1 = §§pop();
                        if(!_loc4_)
                        {
                           §§push(param2);
                           if(_loc5_)
                           {
                              §§goto(addr51);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr66);
               }
               addr51:
               §§push(§§pop() / §_-MB§.§_-y3§);
               if(!(_loc4_ && this))
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               if(_loc5_ || this)
               {
                  addr75:
                  _loc3_.x = (param1 / §_-LW§.§ use§ + this.§true§.§_-bM§ - §_-LW§.§_-wF§ / §_-LW§.§ use§) * §_-7m§;
                  if(!_loc4_)
                  {
                     _loc3_.y = (param2 / §_-LW§.§ use§ + this.§true§.§_-z§ - §_-LW§.§_-C4§ / §_-LW§.§ use§) * §_-7m§;
                     addr95:
                  }
               }
               return _loc3_;
            }
            §§goto(addr35);
         }
         §§goto(addr95);
      }
      
      public function §_-pB§(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_ || this)
         {
            _loc3_.x = (param1 / §_-7m§ + §_-LW§.§_-wF§ / §_-LW§.§ use§ - this.§true§.§_-bM§) * §_-LW§.§ use§;
            if(_loc4_)
            {
               _loc3_.y = (param2 / §_-7m§ + §_-LW§.§_-C4§ / §_-LW§.§ use§ - this.§true§.§_-z§) * §_-LW§.§ use§;
               if(_loc4_)
               {
                  §§goto(addr71);
               }
            }
            §§goto(addr92);
         }
         addr71:
         _loc3_.x *= §_-MB§.§_-D1§;
         if(!(_loc5_ && param2))
         {
            addr92:
            _loc3_.y *= §_-MB§.§_-D1§;
         }
         return _loc3_;
      }
      
      public function §_-hE§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§_-S5§.§switch§(param1,param2,param3);
         }
      }
      
      public function §_-qS§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§_-8y§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr39:
                     §§push(this.§_-8y§);
                     if(_loc1_ || _loc2_)
                     {
                        §§pop().visible = true;
                        if(_loc1_)
                        {
                           addr54:
                           this.§_-8y§.alpha = 0;
                           if(_loc1_ || _loc1_)
                           {
                              addr70:
                              this.§_-nV§ = 0;
                           }
                        }
                        return;
                     }
                     §§goto(addr54);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr54);
         }
         §§goto(addr39);
      }
      
      public function §_-9e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-7u§ = new §_-Rh§(§_-EQ§.§_-uy§,§_-EQ§.§_-AC§);
         }
      }
      
      public function clearLevel() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Sprite = null;
         §§push(this.§_-EL§);
         if(_loc5_ || _loc1_)
         {
            if(§§pop())
            {
               addr29:
               this.§_-EL§.dispose();
               if(!_loc4_)
               {
                  this.§_-EL§ = null;
                  addr35:
                  §§push(this.§_-S5§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        addr42:
                        this.§_-S5§.dispose();
                        this.§_-S5§ = null;
                        this.§_-vX§ = null;
                     }
                     if(this.§_-SF§)
                     {
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§_-SF§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(_loc5_ || this)
                           {
                              _loc1_.dispose();
                           }
                        }
                        this.§_-SF§ = new Vector.<Sprite>();
                     }
                     §§push(this.§_-hA§);
                     if(!(_loc4_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(this.§_-hA§);
                              if(!_loc4_)
                              {
                                 addr105:
                                 if(!§§pop().§_-5i§)
                                 {
                                 }
                                 §§push(this.§_-hA§);
                              }
                              §§pop().clear();
                              if(_loc5_ || this)
                              {
                                 this.§_-hA§ = null;
                                 addr120:
                                 §§push(this.§_-9p§);
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       addr127:
                                       this.§_-9p§.clear();
                                       this.§_-9p§ = null;
                                    }
                                    §§push(this.§_-Gh§);
                                    if(_loc5_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          addr143:
                                          this.§_-Gh§.dispose();
                                          if(_loc5_)
                                          {
                                             this.§_-Gh§ = null;
                                             addr149:
                                             §§push(this.§true§);
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr170:
                                                      this.§true§.clear();
                                                   }
                                                   this.§true§ = null;
                                                   if(_loc5_)
                                                   {
                                                      addr176:
                                                      §§push(this.§_-D6§);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr190:
                                                               this.§_-D6§.dispose();
                                                            }
                                                            this.§_-D6§ = null;
                                                            if(!_loc4_)
                                                            {
                                                               addr196:
                                                               §§push(this.sprite);
                                                               if(!_loc4_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr208:
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.sprite);
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop().numChildren <= 0)
                                                                              {
                                                                                 addr229:
                                                                                 this.§_-J7§ = 0;
                                                                                 this.§_-9c§ = 0;
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    this.§_-57§ = false;
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              §§push(this.sprite);
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().removeChildAt(0,true);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           this.§_-nV§ = §_-EQ§.§_-KC§;
                                                                        }
                                                                     }
                                                                     §§push(this.§_-Zo§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr249:
                                                                           §§push(this.§_-Zo§);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push((§§pop() as §_-EU§).§_-Nt§);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr282:
                                                                                    §§push((this.§_-Zo§ as §_-EU§).§_-Nt§);
                                                                                    §§push(0);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr286:
                                                                                    §§push(this.§_-8y§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             addr300:
                                                                                             this.§_-8y§.visible = false;
                                                                                          }
                                                                                          §§goto(addr319);
                                                                                       }
                                                                                       this.§_-3i§ = null;
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 addr312:
                                                                                 this.§_-A0§ = null;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    this.§_-Cd§();
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 addr319:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr42);
            }
            §§goto(addr35);
         }
         §§goto(addr29);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-ex§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-A0§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§_-A0§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return §§pop().toString();
         }
         addr46:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(!this.§_-57§);
            §§push(!this.§_-57§);
            if(_loc5_)
            {
               if(!§§pop())
               {
                  §§pop();
                  addr24:
                  §§push(§_-Vu§.§_-5v§());
                  if(!(_loc4_ && param3))
                  {
                     §§push(!§§pop());
                  }
               }
               if(§§pop())
               {
                  §§push(0);
                  if(!(_loc4_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§push(this.§_-3i§);
                  if(_loc5_)
                  {
                     addr59:
                     §§push(Boolean(§§pop()));
                     if(Boolean(§§pop()))
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_ || param1)
                           {
                              addr73:
                              if(this.§_-3i§.§_-Z§)
                              {
                                 §§push(this.§_-sR§(param1,param2,param3));
                                 if(!(_loc4_ && param2))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr101);
                           }
                           addr101:
                           return §§pop();
                           §§push(this.§_-fc§(param1,true,param2,param3));
                        }
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr101);
            }
            §§goto(addr59);
         }
         §§goto(addr24);
      }
      
      private function §_-fc§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = Number(0);
         §§push(this);
         §§push(this.§_-9c§);
         if(_loc7_ || param1)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§_-9c§ = §§pop();
         if(!(_loc6_ && this))
         {
            §§push(param3);
            if(_loc7_ || this)
            {
               if(§§pop())
               {
                  §§push(this);
                  §§push(this.§_-J7§);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§_-J7§ = §§pop();
                  §§push(this.§_-hA§.§_-mi§(this.§_-J7§));
                  if(_loc7_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param2)
                     {
                        _loc5_ = §§pop();
                        addr87:
                        this.§_-Gh§.update(param1,param4);
                        if(_loc7_)
                        {
                           this.§_-J7§ = _loc5_;
                           addr115:
                           addr116:
                           if(param2)
                           {
                              this.§_-nC§(param1,_loc5_);
                           }
                           §§push(param1);
                        }
                        §§goto(addr115);
                     }
                  }
                  return §§pop();
               }
               this.§_-S5§.§_-FN§();
               if(!_loc6_)
               {
                  this.§_-J7§ = 0;
                  if(_loc6_)
                  {
                  }
                  §§goto(addr115);
               }
               §§goto(addr115);
            }
            §§goto(addr116);
         }
         §§goto(addr87);
      }
      
      private function §_-sR§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§_-Bu§.§_-Ks§);
         if(_loc7_)
         {
            §§push(§§pop() * 1000);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc7_ || param2)
         {
            if(this.§_-3i§)
            {
               if(!_loc6_)
               {
                  §§push(param1);
                  if(_loc7_)
                  {
                     §§push(this.§_-3i§.speed);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc6_ && param1))
                           {
                              param1 = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(this.§_-9c§);
                                 if(!_loc6_)
                                 {
                                    addr70:
                                    §§push(§§pop() + param1);
                                    if(!(_loc6_ && this))
                                    {
                                       addr78:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr78);
                              }
                              addr80:
                              while(true)
                              {
                                 §§push(this.§_-9c§ + _loc4_);
                                 §§push(_loc5_);
                                 if(_loc7_ || param1)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc5_ > this.§_-xV§ + _loc4_)
                                       {
                                          addr142:
                                          this.§_-3i§.step(this);
                                          §§push(this);
                                          §§push(this.§_-xV§);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + _loc4_);
                                          }
                                          §§pop().§_-xV§ = §§pop();
                                       }
                                       §§goto(addr189);
                                    }
                                    if(this.§_-9c§ + _loc4_ <= this.§_-xV§)
                                    {
                                       continue;
                                    }
                                    §§push(this.§_-3i§);
                                    if(_loc7_ || this)
                                    {
                                       §§pop().step(this);
                                       §§push(this);
                                       §§push(this.§_-xV§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + _loc4_);
                                       }
                                       §§pop().§_-xV§ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr142);
                                 }
                                 break;
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(this);
                                    §§push(_loc5_);
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() - this.§_-9c§);
                                    }
                                    §§pop().§_-fc§(§§pop(),true,param2,param3);
                                 }
                              }
                              addr189:
                              §§push(this.§_-9c§);
                              if(!(_loc6_ && param3))
                              {
                                 §§push(_loc5_);
                                 break loop0;
                              }
                              return §§pop();
                              §§push(param1);
                           }
                           §§goto(addr78);
                        }
                        _loc5_ = §§pop();
                        §§goto(addr80);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr78);
               }
            }
            else
            {
               return this.§_-fc§(_loc4_,true,param2,param3);
            }
         }
         §§goto(addr80);
      }
      
      private function §_-nC§(param1:Number, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Sprite = null;
         if(!(_loc8_ && param1))
         {
            this.§_-S5§.§_-Qk§(param1,param2);
            if(!(_loc8_ && this))
            {
               this.§_-mX§();
               if(!_loc8_)
               {
                  §§push(this.§_-nV§);
                  §§push(§_-EQ§.§_-KC§);
                  if(_loc9_)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(this);
                        §§push(this.§_-nV§);
                        if(_loc9_ || param2)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§_-nV§ = §§pop();
                        _loc3_ = §_-EQ§.§_-KC§ / 2;
                        addr70:
                        §§push(-Math.abs(this.§_-nV§ - _loc3_));
                        §§push(_loc3_);
                        if(!_loc8_)
                        {
                           addr80:
                           §§push(§§pop() + §§pop());
                           §§push(§_-EQ§.§_-kF§);
                           if(!_loc8_)
                           {
                              §§push(§§pop() / _loc3_);
                           }
                        }
                        _loc4_ = §§pop() * §§pop();
                        addr90:
                        §§push(this.§_-8y§);
                        if(_loc9_)
                        {
                           if(§§pop())
                           {
                              if(_loc9_ || param1)
                              {
                                 §§push(this.§_-8y§);
                                 if(!(_loc8_ && param1))
                                 {
                                    §§pop().alpha = _loc4_;
                                    if(_loc9_)
                                    {
                                       addr139:
                                       §§push(this.§_-7u§);
                                       if(!(_loc8_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                addr158:
                                                if(!this.§_-7u§.§_-Nq§(this.§true§,param1))
                                                {
                                                   this.§_-7u§ = null;
                                                   if(_loc9_ || param2)
                                                   {
                                                   }
                                                   §§goto(addr182);
                                                }
                                             }
                                          }
                                          this.§true§.§_-Jl§(param1);
                                          if(!_loc8_)
                                          {
                                             this.§_-hA§.§_-oK§();
                                             §§goto(addr182);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr158);
                                       addr122:
                                    }
                                    §§goto(addr182);
                                 }
                                 else
                                 {
                                    addr127:
                                    if(§§pop())
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          addr137:
                                          this.§_-8y§.visible = false;
                                          §§goto(addr139);
                                       }
                                       addr182:
                                       this.§_-D6§.update(param1);
                                       if(this.§_-SF§)
                                       {
                                          addr189:
                                          for each(_loc5_ in this.§_-SF§)
                                          {
                                             _loc5_.flatten();
                                          }
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr127);
                     }
                     else
                     {
                        §§push(this.§_-8y§);
                        if(_loc9_)
                        {
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr80);
               }
               §§goto(addr90);
            }
            §§goto(addr70);
         }
         §§goto(addr189);
      }
      
      public function §_-mX§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-Dz§ = null;
         if(!_loc4_)
         {
            §§push(this.§_-9c§);
            §§push(this.§_-Ye§);
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!_loc4_)
               {
                  §§goto(addr44);
               }
            }
            §§goto(addr48);
         }
         addr44:
         if(this.§_-S9§ != null)
         {
            addr48:
            for each(_loc1_ in this.§_-S9§)
            {
               if(!_loc4_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc4_)
            {
            }
            §§goto(addr82);
         }
         this.§_-Ye§ = this.§_-9c§;
         addr82:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Dz§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!_loc3_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc4_ || param1)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        addr47:
                        §§push(this.§_-S5§);
                        if(!_loc3_)
                        {
                           §§push(true);
                           if(!_loc3_)
                           {
                              §§push(§§pop().isPigsAlive(§§pop()));
                              if(_loc4_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr65:
                                       §§push(this.§_-S5§);
                                       if(_loc4_)
                                       {
                                          §§push(true);
                                          if(!_loc3_)
                                          {
                                             addr72:
                                             §§push(§§pop().§_-Xy§(§§pop()));
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc3_)
                                                {
                                                   _loc2_.§_-e7§.mTryToScream = §_-l9§.§_-ey§;
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(this);
                                                      §§push(500 + Math.random() * 1000);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() + 4000 / (3 + this.§_-S5§.§_-2G§()));
                                                      }
                                                      §§pop().mPigsAnimationTimer1 = §§pop();
                                                   }
                                                }
                                                §§goto(addr121);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr137);
                     }
                     addr121:
                     §§goto(addr132);
                  }
                  addr132:
                  §§goto(addr131);
               }
               addr131:
               §§push(this);
               §§push(this.mPigsAnimationTimer2);
               if(_loc4_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().mPigsAnimationTimer2 = §§pop();
               if(this.mPigsAnimationTimer2 <= 0)
               {
                  §§push(this.§_-S5§);
                  if(!_loc3_)
                  {
                     addr137:
                     §§push(true);
                     if(_loc4_ || _loc2_)
                     {
                        addr146:
                        if(§§pop().isPigsAlive(§§pop()))
                        {
                           addr151:
                           _loc2_ = this.§_-S5§.§_-Xy§(true);
                           addr150:
                           if(_loc4_)
                           {
                              _loc2_.§_-e7§.mTryToBlink = §_-l9§.§_-L5§;
                              if(!(_loc3_ && param1))
                              {
                                 §§push(this);
                                 §§push(250 + Math.random() * 500);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + 2000 / (3 + this.§_-S5§.§_-2G§()));
                                 }
                                 §§pop().mPigsAnimationTimer2 = §§pop();
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr150);
               }
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr65);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param6);
         if(!(_loc7_ && param3))
         {
            §§push(-9999);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == §§pop())
               {
                  if(_loc8_)
                  {
                     §§push(§_-UW§.§_-Hs§);
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc8_)
                        {
                        }
                        §§goto(addr87);
                     }
                     param6 = §§pop();
                     addr41:
                     §_-vI§.addScore(param1,param2);
                     if(!_loc7_)
                     {
                        this.§_-t1§.addScore(param1);
                        if(!(_loc7_ && param1))
                        {
                           addr65:
                           §§push(param3);
                           if(!(_loc7_ && param2))
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       addr85:
                                       §§pop();
                                       addr87:
                                       addr89:
                                       addr88:
                                       if(§§pop() > 0)
                                       {
                                          this.§_-Fh§(param1.toString(),param4,param5,800,param6,0,0);
                                          addr90:
                                       }
                                       return;
                                       §§push(param1);
                                    }
                                 }
                                 §§goto(addr89);
                              }
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr65);
               }
               §§goto(addr41);
            }
            §§goto(addr88);
         }
         §§goto(addr87);
      }
      
      public function §_-Fh§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(!(_loc8_ && param1))
            {
               if(§§pop() == -9999)
               {
                  if(!(_loc8_ && param2))
                  {
                     §§push(§_-UW§.§_-Tr§);
                     if(_loc9_)
                     {
                        addr45:
                        param5 = §§pop();
                        if(_loc9_)
                        {
                           this.§_-D6§.§_-JY§(§_-UW§.§_-HS§,§_-Gb§.§_-l4§,§_-UW§.§_-og§,param2,param3,param4,param1,param5,param6,param7);
                           addr48:
                        }
                     }
                     §§goto(addr45);
                  }
                  return;
               }
               §§goto(addr48);
            }
            §§goto(addr45);
         }
         §§goto(addr48);
      }
      
      public function §_-Ng§(param1:§_-Dz§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-S9§);
            if(_loc3_)
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr36);
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr56);
         }
         addr36:
         this.§_-S9§ = new Array();
         if(_loc3_ || this)
         {
            addr56:
            this.§_-S9§.push(param1);
            addr54:
         }
      }
      
      public function §_-mN§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-Gh§.§_-mN§();
            if(_loc1_)
            {
               this.§_-S5§.mSardineCanAdded = true;
            }
         }
      }
      
      public function §_-iF§(param1:§_-Dz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-D6§.§_-QQ§(§_-Gb§.§_-uJ§);
            if(_loc2_)
            {
               §§push(this.§_-S9§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr44:
                        §§push(this.§_-S9§);
                        if(_loc2_ || _loc3_)
                        {
                           addr53:
                           §§pop().splice(this.§_-S9§.indexOf(param1),1);
                           §§goto(addr83);
                        }
                        if(§§pop().length == 0)
                        {
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr83);
                     }
                     addr83:
                     if(!_loc3_)
                     {
                        addr61:
                        §§push(this.§_-S9§);
                     }
                     this.§_-S9§ = null;
                     return;
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr44);
      }
      
      public function §_-cQ§(param1:§_-1W§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            this.§_-vX§ = this.§_-S5§.§switch§(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
            if(!_loc7_)
            {
               addr40:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr45:
                  §§push(§_-7G§.§_-LQ§);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ && param1)
                     {
                     }
                     addr70:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(§_-7G§.§_-st§);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        §§goto(addr70);
                     }
                  }
               }
               var _loc4_:* = §§pop();
               if(!_loc7_)
               {
                  §§push(param1.§_-rj§);
                  if(_loc8_)
                  {
                     §§push(1);
                     if(_loc8_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc8_)
                           {
                              addr84:
                              §§push(this.§_-vX§);
                              if(!(_loc7_ && param2))
                              {
                                 §§pop().§_-08§(param1.§_-rj§);
                                 §§goto(addr104);
                              }
                              §§pop().§_-e7§.§_-2w§();
                              if(_loc8_)
                              {
                                 addr104:
                                 if(_loc8_)
                                 {
                                    §§push(this.§_-vX§);
                                 }
                                 if(param1.§_-Rq§ != 0)
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       _loc4_ = Number(param1.§_-Rq§);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                           addr126:
                           §§push(_loc4_);
                           if(!_loc7_)
                           {
                              §§push(-§§pop() * param2);
                              if(_loc8_ || param3)
                              {
                                 §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                              }
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           §§push(_loc4_);
                           if(_loc8_)
                           {
                              §§push(§§pop() * param2);
                              if(_loc8_)
                              {
                                 §§goto(addr157);
                              }
                              §§goto(addr168);
                           }
                           addr157:
                           §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                           if(_loc8_)
                           {
                              addr168:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(_loc8_ || param3)
                           {
                              this.§_-vX§.§var§(new b2Vec2(_loc5_,_loc6_),false,true);
                              if(!_loc7_)
                              {
                                 this.camera.§_-dE§(§_-LW§.§_-Z3§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(this.§_-A0§);
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                       }
                                       §§goto(addr226);
                                    }
                                    §§pop().§_-cQ§(this.§_-hA§.§_-mv§,param1.mX,param1.mY,param2,param3);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr207);
                           }
                           addr226:
                           if(!_loc7_)
                           {
                              addr207:
                              §§push(this.§_-A0§);
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr104);
               }
               §§goto(addr84);
            }
            §§goto(addr45);
         }
         §§goto(addr40);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.activeObject);
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() is §_-zf§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr36:
                     §§pop();
                     §§push((this.activeObject as §_-zf§).§_-mb§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(!§§pop());
                     }
                  }
               }
               if(§§pop())
               {
                  §§push(this.§_-S5§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop().§_-cY§ = true;
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§_-aE§ = true;
                     }
                     addr90:
                     §§push(this.§_-A0§);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr113);
                     }
                     §§pop().§_-HX§(this.§_-hA§.§_-mv§);
                  }
                  else
                  {
                     addr82:
                     §§pop().§_-xU§();
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr90);
                     }
                  }
                  addr113:
                  if(§§pop())
                  {
                     §§push(this.§_-A0§);
                  }
                  return;
               }
               §§push(this.§_-S5§);
               §§goto(addr82);
            }
         }
         §§goto(addr36);
      }
      
      public function §_-hd§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-S5§.§_-hd§();
         }
      }
      
      public function §_-6a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-S5§.§_-vK§();
         }
      }
      
      public function §_-sy§() : §_-Wv§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-Wv§ = new §_-Wv§();
         if(_loc3_ || _loc1_)
         {
            this.§true§.§_-fU§(_loc1_);
            if(_loc3_)
            {
               this.§_-S5§.§_-NG§(_loc1_);
               if(!(_loc2_ && _loc3_))
               {
                  this.§_-Gh§.§try §(_loc1_);
                  if(_loc2_ && _loc3_)
                  {
                  }
                  §§goto(addr72);
               }
            }
            _loc1_.§_-Tt§ = this.§_-EL§.§_-WY§();
         }
         addr72:
         return _loc1_;
      }
      
      public function §_-ha§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§_-H8§);
            if(_loc3_ || param1)
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().§_-nk§(param1,param2);
         }
         addr56:
         if(!(_loc4_ && param2))
         {
            §§push(this.§_-H8§);
         }
      }
      
      public function get §_-83§() : §_-F5§
      {
         return this.§_-S5§;
      }
   }
}
