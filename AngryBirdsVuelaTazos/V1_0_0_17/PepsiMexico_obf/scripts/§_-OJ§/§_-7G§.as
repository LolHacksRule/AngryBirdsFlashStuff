package §_-OJ§
{
   import §_-0S§.§_-z1§;
   import §_-4g§.Texture;
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-yP§;
   import §_-IG§.§_-Jx§;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-RO§;
   import §_-e3§.§_-54§;
   import §_-rQ§.§_-Ou§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-7G§
   {
      
      public static const §_-wd§:int = 0;
      
      public static const §_-wr§:int = 1;
      
      public static const §_-AQ§:int = 2;
      
      public static const §var §:int = 3;
      
      public static const §_-p9§:int = 5;
      
      public static const §_-2H§:int = 3151368;
      
      private static const §_-6§:int = 8;
      
      private static const §_-Wg§:int = 0;
      
      public static const §_-st§:Number = 46.25;
      
      public static const §_-LQ§:Number = 52.5;
      
      private static var §_-qE§:Texture;
      
      private static var §_-TO§:Texture;
      
      public static const §_-6w§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-wd§ = 0;
            §_-wr§ = 1;
            §_-AQ§ = 2;
            if(_loc1_)
            {
               §var § = 3;
               §_-p9§ = 5;
               if(_loc1_)
               {
                  §_-2H§ = 3151368;
                  §_-6§ = 8;
                  if(!_loc2_)
                  {
                     §_-Wg§ = 0;
                  }
                  §_-st§ = 46.25;
                  if(!_loc2_)
                  {
                     §_-LQ§ = 52.5;
                     if(_loc1_ || §_-7G§)
                     {
                        addr74:
                        §_-6w§ = 0.4;
                     }
                  }
                  §§goto(addr74);
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public var §_-Ag§:§_-tL§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-t7§:Number;
      
      private var §_-k§:Number;
      
      private var §_-Gq§:Number;
      
      private var §_-2O§:Number;
      
      private var §_-cx§:Number;
      
      public var §_-4d§:Number;
      
      public var §_-Bm§:Boolean = false;
      
      private var §_-RE§:Number;
      
      public var §_-zK§:Vector.<§_-1W§>;
      
      protected var §_-95§:int;
      
      public var §_-P-§:int;
      
      public var §_-Hu§:Number;
      
      public var §_-WB§:§_-LP§.Sprite;
      
      public var §_-F3§:int = 0;
      
      public var §_-Aj§:Number = 0;
      
      public var §true §:Array;
      
      public var §_-lQ§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-0e§:Boolean;
      
      public var mDragging:Boolean = false;
      
      private var §_-Ha§:Boolean = false;
      
      public var §_-wi§:Number;
      
      private var §_-Cv§:§_-LP§.Sprite;
      
      private var mRopeBack1:§_-19§;
      
      private var mRopeFront1:§_-19§;
      
      private var mRopeBack2:§_-19§;
      
      private var mRopeFront2:§_-19§;
      
      private var §_-cW§:§_-LP§.Sprite;
      
      private var §_-9g§:§_-LP§.Sprite;
      
      private var §_-K1§:§_-LP§.Sprite;
      
      private var §_-DY§:§_-19§;
      
      private var §_-1D§:§_-19§;
      
      public function §_-7G§(param1:§_-tL§, param2:§_-Wv§, param3:§_-LP§.Sprite)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§_-Jx§ = null;
         this.§_-zK§ = new Vector.<§_-1W§>();
         super();
         this.§_-Ag§ = param1;
         this.§_-Cv§ = param3;
         if(param2)
         {
            if(!_loc7_)
            {
               this.setPosition(param2.§_-OI§,param2.§_-tP§);
               if(_loc8_)
               {
                  addr43:
                  this.§_-Mq§();
               }
               for each(_loc4_ in param2.§_-zK§)
               {
                  if(_loc8_)
                  {
                     this.§_-js§(_loc4_.id,_loc4_.x,_loc4_.y);
                  }
               }
               this.§_-95§ = 0;
               if(!(_loc7_ && param3))
               {
                  if(this.§_-zK§.length <= 0)
                  {
                     §§push(§_-54§);
                     §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX);
                     if(_loc8_)
                     {
                        §§push(§§pop() + " ");
                        if(!_loc7_)
                        {
                           §§push(§§pop() + this.mY);
                        }
                     }
                     §§pop().log(§§pop());
                     if(!_loc7_)
                     {
                        this.§_-Ea§(§var §);
                        addr134:
                        this.§_-0e§ = true;
                        if(!(_loc7_ && param1))
                        {
                           addr151:
                           this.§_-wi§ = 0;
                        }
                        addr118:
                     }
                     this.§_-gK§();
                     §§goto(addr156);
                  }
                  else
                  {
                     this.§_-Ea§(§_-wd§);
                  }
                  §§goto(addr118);
               }
               §§goto(addr156);
            }
            §§goto(addr43);
         }
         else
         {
            §_-54§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            if(_loc8_)
            {
               this.§_-Ea§(§var §);
               if(_loc8_ || this)
               {
                  §§goto(addr134);
               }
               §§goto(addr151);
            }
         }
         addr156:
         this.update(0,true);
      }
      
      public function get sprite() : §_-LP§.Sprite
      {
         return this.§_-Cv§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-95§ < this.§_-zK§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         do
         {
            if(this.§_-zK§.length > 0)
            {
               continue;
            }
            if(!_loc2_)
            {
               this.§_-zK§ = null;
            }
            §§push(this.§_-Cv§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr44:
                  this.§_-Cv§.dispose();
                  if(_loc1_ || _loc1_)
                  {
                     this.§_-Cv§ = null;
                  }
               }
               this.§_-WB§ = null;
               if(!(_loc2_ && _loc1_))
               {
                  this.§true § = null;
                  break;
               }
               break;
            }
            §§goto(addr44);
         }
         while(this.§_-9i§(0), _loc1_);
         
         this.§_-lQ§ = null;
      }
      
      public function §_-dx§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-1W§
      {
         var _loc5_:§_-1W§;
         (_loc5_ = this.§_-js§(param1,param2,param3,param4)).§_-k-§();
         return _loc5_;
      }
      
      protected function §_-js§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-1W§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-1W§ = new §_-1W§(this,new §_-LP§.Sprite(),param1,param2,param3);
         if(_loc6_)
         {
            if(param4 < 0)
            {
               if(!_loc7_)
               {
                  this.§_-zK§.push(_loc5_);
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr64);
               }
               addr59:
               this.§_-WB§.addChild(_loc5_.sprite);
            }
            else
            {
               this.§_-zK§.splice(param4,0,_loc5_);
               if(!_loc7_)
               {
                  §§goto(addr59);
               }
            }
         }
         addr64:
         return _loc5_;
      }
      
      protected function §_-Ea§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.mSlingShotState = param1;
         §§push(this.mSlingShotState);
         if(_loc2_ || this)
         {
            §§push(§_-wd§);
            if(!(_loc3_ && this))
            {
               if(§§pop() == §§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§_-A1§();
                     this.§_-Hu§ = 1000;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr205:
                        this.mDragging = false;
                     }
                     else
                     {
                        addr92:
                        this.§_-A1§();
                        §§goto(addr205);
                     }
                     §§goto(addr205);
                  }
                  else
                  {
                     addr132:
                     this.mDragging = false;
                     if(!_loc3_)
                     {
                        this.§_-Ha§ = false;
                     }
                     this.§_-A1§();
                     this.§_-zK§[this.§_-95§].setPosition(this.§_-2O§ - this.§_-zK§[this.§_-95§].radius * Math.cos(this.§_-Aj§ / (180 / Math.PI)),this.§_-cx§ + this.§_-zK§[this.§_-95§].radius * Math.sin(this.§_-Aj§ / (180 / Math.PI)));
                     if(!_loc3_)
                     {
                        addr188:
                        §§goto(addr205);
                     }
                  }
                  §§goto(addr208);
               }
               else
               {
                  §§push(this.mSlingShotState);
                  if(_loc2_ || param1)
                  {
                     §§push(§_-wr§);
                     if(_loc2_ || this)
                     {
                        addr71:
                        if(§§pop() == §§pop())
                        {
                           this.§_-A1§();
                           this.§_-Hu§ = 0;
                           §§goto(addr205);
                        }
                        else
                        {
                           §§push(this.mSlingShotState);
                           if(!_loc3_)
                           {
                              §§push(§_-AQ§);
                              if(_loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.§_-Hu§ = 10000;
                                    this.§_-Ha§ = false;
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§push(this.mSlingShotState);
                                    if(!_loc3_)
                                    {
                                       addr106:
                                       §§push(§var §);
                                       if(_loc3_ && param1)
                                       {
                                       }
                                       addr126:
                                       if(§§pop() == §§pop())
                                       {
                                          if(this.mDragging)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr132);
                                             }
                                             §§goto(addr188);
                                          }
                                          else
                                          {
                                             this.§_-A1§();
                                             if(!(_loc3_ && param1))
                                             {
                                                §§goto(addr205);
                                             }
                                          }
                                          addr208:
                                          return;
                                       }
                                       §§goto(addr205);
                                    }
                                    addr125:
                                    §§goto(addr126);
                                    §§push(§_-p9§);
                                 }
                                 §§goto(addr205);
                              }
                              if(§§pop() == §§pop())
                              {
                                 this.§_-A1§();
                                 this.§_-Hu§ = 2000;
                                 if(_loc3_)
                                 {
                                 }
                                 §§goto(addr205);
                              }
                              else
                              {
                                 §§goto(addr125);
                                 §§push(this.mSlingShotState);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr125);
      }
      
      public function get §_-Bd§() : §_-tL§
      {
         return this.§_-Ag§;
      }
      
      public function §_-BU§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §var §);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr32:
                     §§pop();
                     §§push(this.§_-Hu§ <= 0);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr32);
      }
      
      private function §_-Mq§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-RO§ = this.§_-Ag§.§_-tJ§.§_-S-§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         if(!_loc4_)
         {
            this.§_-DY§ = new §_-19§(_loc2_);
            if(_loc5_)
            {
               §§goto(addr42);
            }
            §§goto(addr111);
         }
         addr42:
         this.§_-1D§ = new §_-19§(_loc3_);
         this.§_-9S§();
         this.§_-bE§();
         this.§_-WB§ = new §_-LP§.Sprite();
         §§push(this.§_-Cv§);
         if(_loc5_)
         {
            §§pop().addChild(this.§_-DY§);
            if(!_loc4_)
            {
               §§push(this.§_-Cv§);
               if(_loc5_ || this)
               {
                  §§pop().addChild(this.§_-cW§);
                  §§push(this.§_-Cv§);
                  if(!_loc4_)
                  {
                     §§pop().addChild(this.§_-WB§);
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§_-Cv§);
                        if(!_loc4_)
                        {
                           §§goto(addr101);
                        }
                        §§goto(addr115);
                     }
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr120);
         }
         addr101:
         §§pop().addChild(this.§_-K1§);
         if(_loc5_ || this)
         {
            addr111:
            §§push(this.§_-Cv§);
            if(!_loc4_)
            {
               addr115:
               §§pop().addChild(this.§_-9g§);
               §§goto(addr145);
            }
            §§pop().addChild(this.§_-1D§);
            §§push(this);
            §§push(this.mY);
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() + 8.5);
            }
            §§pop().§_-t7§ = §§pop();
         }
         addr145:
         if(_loc5_)
         {
            addr120:
            §§push(this.§_-Cv§);
         }
      }
      
      public function §_-9S§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!(_loc2_ && _loc3_))
         {
            this.§_-k§ = this.mX;
            if(!_loc2_)
            {
               this.§_-Gq§ = this.mY;
               if(!_loc2_)
               {
                  addr55:
                  this.§_-RE§ = 5;
               }
            }
            _loc1_ = null;
            return;
         }
         §§goto(addr55);
      }
      
      private function §_-bE§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            if(!§_-qE§)
            {
               if(_loc4_)
               {
                  addr25:
                  §_-qE§ = this.§_-Ag§.§_-JG§.§_-pz§(new BitmapData(2,2,false,§_-2H§));
                  if(!(_loc5_ && _loc2_))
                  {
                     addr44:
                     if(!§_-TO§)
                     {
                        if(!_loc5_)
                        {
                           _loc2_ = new §_-z1§.§_-tn§("MovieClip_SlingHolder")();
                           _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                           if(!_loc5_)
                           {
                              _loc3_.draw(_loc2_);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §_-TO§ = this.§_-Ag§.§_-JG§.§_-pz§(_loc3_);
                              }
                           }
                        }
                        §§goto(addr87);
                     }
                     this.§_-K1§ = new §_-LP§.Sprite();
                  }
               }
               addr87:
               var _loc1_:§_-19§ = new §_-19§(§_-TO§);
               _loc1_.rotation = Math.PI;
               if(!_loc5_)
               {
                  _loc1_.x = _loc1_.width / 2;
                  if(_loc4_ || this)
                  {
                     _loc1_.y = _loc1_.height / 2;
                     if(!(_loc5_ && _loc1_))
                     {
                        this.§_-K1§.addChild(_loc1_);
                        this.§_-cW§ = new §_-LP§.Sprite();
                        if(!_loc5_)
                        {
                           this.mRopeBack1 = new §_-19§(§_-qE§);
                           addr146:
                           this.mRopeBack2 = new §_-19§(§_-qE§);
                           if(_loc4_ || this)
                           {
                              §§push(this.§_-cW§);
                              if(!(_loc5_ && _loc1_))
                              {
                                 §§pop().addChild(this.mRopeBack1);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr179:
                                    this.§_-cW§.addChild(this.mRopeBack2);
                                    addr182:
                                    this.§_-9g§ = new §_-LP§.Sprite();
                                    this.mRopeFront1 = new §_-19§(§_-qE§);
                                 }
                                 this.mRopeFront2 = new §_-19§(§_-qE§);
                                 §§push(this.§_-9g§);
                                 if(!_loc5_)
                                 {
                                    §§pop().addChild(this.mRopeFront1);
                                    §§push(this.§_-9g§);
                                 }
                                 §§pop().addChild(this.mRopeFront2);
                                 §§goto(addr215);
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr146);
               }
               addr215:
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr25);
      }
      
      public function §_-tH§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§_-cx§);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() / §_-tL§.§_-7m§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-2O§);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() / §_-tL§.§_-7m§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(!_loc7_)
         {
            §§push(8);
            §§push(this.§_-RE§);
            if(_loc6_ || _loc2_)
            {
               §§push(this.§_-4d§);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     addr77:
                     §§push(§§pop() / this.§_-RE§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr83:
                     var _loc4_:Number = §§pop();
                     §§push(this.§_-K1§);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§pop().x = §§pop();
                           if(!_loc7_)
                           {
                              §§push(this.§_-K1§);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(_loc2_);
                                 if(_loc6_)
                                 {
                                    §§pop().y = §§pop();
                                    addr114:
                                    §§push(this.§_-K1§);
                                    §§push(this.§_-Aj§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc7_ && this)
                                       {
                                       }
                                       addr136:
                                       §§pop().rotation = §§pop();
                                       §§push(this.§_-DY§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(this.mX);
                                          if(_loc6_)
                                          {
                                             §§push(§_-tL§.§_-7m§);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc6_)
                                                {
                                                   §§push(3);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr181:
                                                         §§push(this.§_-DY§);
                                                         §§push(this.mY);
                                                         if(_loc6_)
                                                         {
                                                            addr185:
                                                            §§push(§§pop() / §_-tL§.§_-7m§);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr196:
                                                               §§push(§§pop() - 30);
                                                            }
                                                         }
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         §§push(this.§_-1D§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(this.mX);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§_-tL§.§_-7m§);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(30);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr239:
                                                                           §§push(this.§_-1D§);
                                                                           §§push(this.mY);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr262:
                                                                              §§push(§§pop() / §_-tL§.§_-7m§);
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 §§push(30);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§push(this.§_-9g§);
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§push(this.mX);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§_-tL§.§_-7m§);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          addr288:
                                                                                          §§push(17);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr325:
                                                                                                §§push(this.§_-9g§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(this.mY);
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      addr310:
                                                                                                      §§push(§§pop() / §_-tL§.§_-7m§);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         addr319:
                                                                                                         §§push(§§pop() + 5);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§pop().rotation = Math.atan2(_loc2_ - this.§_-9g§.y,_loc3_ - this.§_-9g§.x);
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§push(this.§_-cW§);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(this.mX);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(§_-tL§.§_-7m§);
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 22);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  addr375:
                                                                                                                  §§push(this.§_-cW§);
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     §§push(this.mY);
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr391:
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr396:
                                                                                                                        this.§_-cW§.rotation = Math.atan2(_loc2_ - this.§_-cW§.y,_loc3_ - this.§_-cW§.x);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr411:
                                                                                                                           §§push(this.mRopeFront1);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§_-9g§.x,2) + Math.pow(_loc2_ - this.§_-9g§.y,2));
                                                                                                                              this.mRopeBack1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-cW§.x,2) + Math.pow(_loc2_ - this.§_-cW§.y,2));
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this.mRopeFront2);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§pop().width = this.mRopeFront1.width;
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       this.mRopeBack2.width = this.mRopeBack1.width;
                                                                                                                                       addr477:
                                                                                                                                       this.mRopeFront1.height = this.mRopeBack1.height = _loc4_;
                                                                                                                                    }
                                                                                                                                    §§goto(addr475);
                                                                                                                                 }
                                                                                                                                 §§goto(addr490);
                                                                                                                              }
                                                                                                                              addr475:
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr490:
                                                                                                                                 §§push(this.mRopeFront2);
                                                                                                                                 §§push(this.mRopeBack2);
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().height = §§pop().height = §§pop();
                                                                                                                              }
                                                                                                                              this.§_-0e§ = false;
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           §§goto(addr477);
                                                                                                                        }
                                                                                                                        §§goto(addr490);
                                                                                                                     }
                                                                                                                     §§goto(addr477);
                                                                                                                  }
                                                                                                                  §§goto(addr396);
                                                                                                               }
                                                                                                               §§push(§_-tL§.§_-7m§);
                                                                                                            }
                                                                                                            §§goto(addr391);
                                                                                                         }
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                   §§goto(addr396);
                                                                                                }
                                                                                                §§goto(addr411);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§goto(addr325);
                                                                                                §§push(this.§_-9g§);
                                                                                             }
                                                                                             §§goto(addr375);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr477);
                                                   }
                                                   §§goto(addr196);
                                                }
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr136);
                                 §§push(§§pop() / (180 / Math.PI));
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr77);
         }
         §§goto(addr83);
      }
      
      public function §_-mN§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         do
         {
            if(this.§_-zK§.length <= 0)
            {
               if(_loc1_)
               {
                  this.§_-js§("BIRD_SARDINE",this.mX,this.mY);
                  if(!_loc2_)
                  {
                     this.§_-Ea§(§_-AQ§);
                     break;
                  }
                  break;
               }
               break;
            }
            this.§_-9i§(0,true);
         }
         while(_loc1_ || _loc2_);
         
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-Ea§(§_-p9§);
         }
      }
      
      public function §_-A1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§_-k§);
            §§push(this.§_-Gq§);
            if(_loc2_)
            {
               §§push(this.§_-RE§);
               if(!_loc1_)
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc9_ && this))
         {
            §§push(this.§_-2O§);
            if(!(_loc9_ && param3))
            {
               §§push(§§pop() == param1);
               if(§§pop() == param1)
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     §§push(this.§_-cx§);
                     if(_loc10_ || param1)
                     {
                        addr58:
                        if(§§pop() == param2)
                        {
                           return true;
                        }
                        this.§_-4d§ = Math.sqrt((param2 - this.§_-Gq§) * (param2 - this.§_-Gq§) + (param1 - this.§_-k§) * (param1 - this.§_-k§));
                        if(_loc10_)
                        {
                           §§push(this.§_-4d§);
                           if(!(_loc9_ && param2))
                           {
                              §§push(this.§_-RE§);
                              if(!_loc9_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    §§push(param3);
                                    if(!_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             this.§_-4d§ = Math.sqrt((this.§_-cx§ - this.§_-Gq§) * (this.§_-cx§ - this.§_-Gq§) + (this.§_-2O§ - this.§_-k§) * (this.§_-2O§ - this.§_-k§));
                                             if(_loc10_ || this)
                                             {
                                                return false;
                                             }
                                             addr579:
                                             this.§_-cx§ = param2;
                                             §§push(this.§_-4d§);
                                             §§push(this.§_-RE§);
                                             if(_loc10_)
                                             {
                                                §§push(0.45);
                                                if(_loc10_ || this)
                                                {
                                                   addr783:
                                                   if(§§pop() <= §§pop() * §§pop())
                                                   {
                                                      addr785:
                                                      this.§_-Bm§ = true;
                                                   }
                                                   else
                                                   {
                                                      addr792:
                                                      §§push(Boolean(this.§_-Bm§));
                                                      if(Boolean(this.§_-Bm§))
                                                      {
                                                         addr794:
                                                         §§pop();
                                                         if(!(_loc9_ && this))
                                                         {
                                                            addr811:
                                                            addr802:
                                                            §§push(this.§_-4d§);
                                                            §§push(this.§_-RE§);
                                                            if(_loc10_)
                                                            {
                                                               addr809:
                                                               §§push(§§pop() * 0.8);
                                                            }
                                                            if(§§pop() >= §§pop())
                                                            {
                                                            }
                                                            §§goto(addr825);
                                                         }
                                                         §_-Ou§.playSound("SlingshotStreched");
                                                         §§goto(addr822);
                                                      }
                                                      §§goto(addr811);
                                                   }
                                                   §§goto(addr811);
                                                }
                                             }
                                             §§goto(addr809);
                                             addr582:
                                          }
                                          addr822:
                                          this.§_-Bm§ = false;
                                          addr825:
                                          this.§_-0e§ = true;
                                          return true;
                                       }
                                       §§push(this.§_-k§);
                                       if(_loc10_ || param2)
                                       {
                                          addr158:
                                          §§push(this.§_-RE§);
                                          §§push(param1);
                                          if(_loc10_ || param3)
                                          {
                                             §§push(this.§_-k§);
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(§§pop() * (§§pop() - §§pop()));
                                                if(_loc10_ || param3)
                                                {
                                                   §§push(§§pop() + §§pop() / this.§_-4d§);
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      param1 = §§pop();
                                                      §§push(this.§_-Gq§);
                                                      §§push(this.§_-RE§);
                                                      if(_loc10_ || param2)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(this.§_-Gq§);
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               §§push(§§pop() * (§§pop() - §§pop()));
                                                               if(_loc10_ || param3)
                                                               {
                                                                  §§push(§§pop() / this.§_-4d§);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     param2 = Number(§§pop() + §§pop());
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        addr251:
                                                                        this.§_-4d§ = this.§_-RE§;
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr262:
                                                                           this.§_-2O§ = param1;
                                                                           this.§_-cx§ = param2;
                                                                           this.§_-Aj§ = Math.atan2(-(this.§_-cx§ - this.§_-Gq§),this.§_-2O§ - this.§_-k§);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§_-Aj§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop() * (180 / Math.PI));
                                                                              }
                                                                              §§pop().§_-Aj§ = §§pop();
                                                                              §§push(this.mDragging);
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(§§pop() == false)
                                                                                 {
                                                                                    if(_loc10_ || param2)
                                                                                    {
                                                                                       addr314:
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          §§push(§§pop() - 0.7);
                                                                                       }
                                                                                       §§pop().§_-2O§ = §§pop();
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          this.§_-cx§ = param2;
                                                                                          this.§_-Aj§ = -160;
                                                                                          addr339:
                                                                                          §§push(12);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(5);
                                                                                                if(_loc10_ || param2)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr359:
                                                                                                      §§push(Number(4));
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(this.§_-RE§);
                                                                                                            §§push(2);
                                                                                                            if(_loc10_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  addr388:
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  §§push(this.§_-4d§);
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(this.§_-Aj§);
                                                                                                                           §§push(-90);
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    addr427:
                                                                                                                                    §§push(§§pop() > §§pop() + _loc5_);
                                                                                                                                    if(§§pop() > §§pop() + _loc5_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-Aj§);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(-90);
                                                                                                                                             if(_loc10_ || param2)
                                                                                                                                             {
                                                                                                                                                addr444:
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(_loc10_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr465:
                                                                                                                                                         if(§§pop() < §§pop() + §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-k§);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc10_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr478:
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  §§push(this.§_-k§);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc10_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr491:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() / this.§_-4d§);
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 param1 = §§pop();
                                                                                                                                                                                 addr514:
                                                                                                                                                                                 §§push(this.§_-Gq§);
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                       if(!(_loc9_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr529:
                                                                                                                                                                                          §§push(this.§_-Gq§);
                                                                                                                                                                                          if(_loc10_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr538:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc10_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr549:
                                                                                                                                                                                                   §§push(this.§_-4d§);
                                                                                                                                                                                                   if(_loc10_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr563:
                                                                                                                                                                                                         param2 = Number(§§pop());
                                                                                                                                                                                                         this.§_-4d§ = _loc7_;
                                                                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§_-2O§ = param1;
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr579);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr761:
                                                                                                                                                                                                               this.§_-2O§ = param1;
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr766:
                                                                                                                                                                                                                  this.§_-cx§ = param2;
                                                                                                                                                                                                                  §§goto(addr579);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr785);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr726:
                                                                                                                                                                                                            §§push(this.§_-Gq§);
                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr734:
                                                                                                                                                                                                               §§push(§§pop() - this.§_-Gq§);
                                                                                                                                                                                                               if(!(_loc9_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr747:
                                                                                                                                                                                                                  §§push(Number(§§pop() + §§pop() * §§pop() / this.§_-4d§));
                                                                                                                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr755:
                                                                                                                                                                                                                     param2 = §§pop();
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§_-4d§ = _loc8_;
                                                                                                                                                                                                                        §§goto(addr761);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr579);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr783);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr809);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr579);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr700:
                                                                                                                                                                                                      §§push(§§pop() * §§pop() / _loc6_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr783);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr705:
                                                                                                                                                                                                _loc8_ = §§pop() + §§pop();
                                                                                                                                                                                                addr708:
                                                                                                                                                                                                §§push(this.§_-k§);
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr712:
                                                                                                                                                                                                   §§push(this.§_-k§);
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr717:
                                                                                                                                                                                                      §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         param1 = §§pop() + §§pop() / this.§_-4d§;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr726);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr783);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr640:
                                                                                                                                                                                                §§push(§§pop() - §§pop() + _loc5_);
                                                                                                                                                                                                if(!(_loc9_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr651:
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr655:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr660:
                                                                                                                                                                                                         §§push(this.§_-Aj§);
                                                                                                                                                                                                         §§push(-90 + _loc4_);
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr672:
                                                                                                                                                                                                            §§push(§§pop() < §§pop() + §§pop() + _loc5_);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr675:
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr679:
                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                     §§push(this.§_-RE§);
                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                     if(_loc10_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr700);
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        §§push(Math.abs(this.§_-Aj§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr712);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr766);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr579);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr792);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr717);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr675);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr792);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr672);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr717);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr640);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr747);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr587:
                                                                                                                                                                                 §§push(§§pop() > _loc7_);
                                                                                                                                                                                 §§push(§§pop() > _loc7_);
                                                                                                                                                                                 if(!(_loc9_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          §§push(this.§_-Aj§);
                                                                                                                                                                                          if(!(_loc9_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr615:
                                                                                                                                                                                             §§push(-90);
                                                                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr631:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr640);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr672);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr660);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr708);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr675);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr651);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr792);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr809);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr672);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr708);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr563);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-4d§);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr587);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr679);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr700);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr726);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                          §§goto(addr755);
                                                                                                                                       }
                                                                                                                                       §§goto(addr582);
                                                                                                                                    }
                                                                                                                                    §§goto(addr465);
                                                                                                                                 }
                                                                                                                                 §§goto(addr478);
                                                                                                                              }
                                                                                                                              §§goto(addr631);
                                                                                                                           }
                                                                                                                           §§goto(addr660);
                                                                                                                        }
                                                                                                                        §§goto(addr427);
                                                                                                                     }
                                                                                                                     §§goto(addr792);
                                                                                                                  }
                                                                                                                  §§goto(addr465);
                                                                                                               }
                                                                                                               §§goto(addr705);
                                                                                                            }
                                                                                                            §§goto(addr444);
                                                                                                         }
                                                                                                         §§goto(addr563);
                                                                                                      }
                                                                                                      §§goto(addr615);
                                                                                                   }
                                                                                                   §§goto(addr802);
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                             §§goto(addr660);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       §§goto(addr785);
                                                                                    }
                                                                                    §§goto(addr679);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              §§goto(addr655);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr679);
                                                                     }
                                                                     §§goto(addr514);
                                                                  }
                                                                  §§goto(addr587);
                                                               }
                                                               §§goto(addr655);
                                                            }
                                                            §§goto(addr717);
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                      §§goto(addr549);
                                                   }
                                                   §§goto(addr747);
                                                }
                                                §§goto(addr427);
                                             }
                                             §§goto(addr538);
                                          }
                                          §§goto(addr529);
                                       }
                                       §§goto(addr388);
                                       §§goto(addr783);
                                    }
                                    §§goto(addr794);
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr679);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr563);
                     }
                     §§goto(addr579);
                  }
                  §§goto(addr427);
               }
            }
            §§goto(addr58);
         }
         §§goto(addr251);
      }
      
      public function §_-8W§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.mX);
            §§push(this.mY);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().setPosition(§§pop(),§§pop());
         }
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() - this.mX);
            if(_loc6_)
            {
               addr21:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && this))
            {
               this.mX = param1;
            }
            §§push(param2);
            if(_loc6_)
            {
               §§push(§§pop() - this.mY);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            this.mY = param2;
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§_-t7§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§_-t7§ = §§pop();
               §§push(this);
               §§push(this.§_-Gq§);
               if(_loc6_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§_-Gq§ = §§pop();
               §§push(this);
               §§push(this.§_-cx§);
               if(_loc6_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§_-cx§ = §§pop();
               §§push(this);
               §§push(this.§_-k§);
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc4_);
               }
               §§pop().§_-k§ = §§pop();
               if(!_loc7_)
               {
                  §§push(this);
                  §§push(this.§_-2O§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + _loc4_);
                  }
                  §§pop().§_-2O§ = §§pop();
                  if(!_loc7_)
                  {
                     if(!param3)
                     {
                     }
                  }
                  §§goto(addr118);
               }
               this.§_-tH§(0);
               if(_loc7_ && param2)
               {
               }
               §§goto(addr118);
            }
            addr118:
            this.§_-0e§ = true;
            return;
         }
         §§goto(addr21);
      }
      
      public function §_-aS§(param1:Number) : §_-1W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-1W§ = null;
         _loc2_ = this.§_-zK§[this.§_-95§];
         if(_loc2_.§_-rj§ < 1)
         {
            _loc2_.§_-rj§ = 1;
         }
         §§push(_loc2_);
         §§push(_loc2_.scale);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() * 1.1);
         }
         §§pop().scale = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.scale);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() * 1.1);
         }
         §§pop().scale = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_.sprite);
            if(_loc3_)
            {
               §§push(_loc2_.scale);
               if(!_loc4_)
               {
                  §§pop().scaleX = §§pop();
                  if(!_loc4_)
                  {
                     addr92:
                     _loc2_.sprite.scaleY = _loc2_.scale;
                  }
                  return _loc2_;
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §_-He§(param1:Number) : §_-1W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-1W§ = null;
         _loc2_ = this.§_-zK§[this.§_-95§];
         if(_loc3_ || this)
         {
            §§push(_loc2_.§_-Rq§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc2_.§_-Rq§ = 55;
                        if(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr87);
                  }
                  addr72:
                  §§push(_loc2_);
                  §§push(_loc2_.§_-Rq§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§_-Rq§ = §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     addr87:
                     if(_loc2_.§_-Rq§ > 120)
                     {
                        if(!_loc4_)
                        {
                           addr100:
                           _loc2_.§_-Rq§ = 55;
                        }
                     }
                  }
                  return _loc2_;
               }
            }
            §§goto(addr87);
         }
         §§goto(addr100);
      }
      
      public function §_-5X§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§_-1W§ = null;
         _loc2_ = this.§_-zK§[this.§_-95§];
         §§push(this.§_-4d§);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() / this.§_-RE§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§_-7G§.§_-LQ§);
                        if(!(_loc4_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr145);
                  }
                  else
                  {
                     §§push(§_-7G§.§_-st§);
                     if(_loc5_)
                     {
                        addr87:
                        §§push(Number(§§pop()));
                        if(!(_loc4_ && _loc1_))
                        {
                           _loc1_ = §§pop();
                           if(!(_loc4_ && this))
                           {
                              addr103:
                              §§push(_loc2_ == null);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(_loc5_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          §§pop();
                                          addr128:
                                          §§push(_loc2_.§_-Rq§ > 0);
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 addr140:
                                 §§push(_loc2_.§_-Rq§);
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr144);
                                 }
                              }
                              else
                              {
                                 addr145:
                                 §§push(_loc1_);
                                 §§push(_loc3_);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr145);
                        }
                        addr144:
                        return §§pop() * §§pop();
                        §§push(Number(§§pop()));
                     }
                  }
                  addr148:
                  return §§pop() * §§pop();
               }
               §§goto(addr128);
            }
            §§goto(addr145);
         }
         §§goto(addr103);
      }
      
      public function §_-rO§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-1W§ = null;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§_-zK§.length <= this.§_-95§)
            {
               return null;
            }
            if(_loc3_)
            {
               _loc1_ = this.§_-zK§[this.§_-95§];
            }
         }
         return new Point(_loc1_.mX,_loc1_.mY);
      }
      
      public function §_-qF§() : Point
      {
         return new Point(this.§_-k§,this.§_-Gq§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-1W§ = null;
         this.§_-v-§(param1);
         if(_loc4_)
         {
            if(this.§_-0e§)
            {
               if(!_loc5_)
               {
                  this.§_-tH§(param1);
                  if(!_loc5_)
                  {
                     §§goto(addr31);
                  }
                  §§goto(addr57);
               }
            }
         }
         addr31:
         §§push(this);
         §§push(this.§_-Hu§);
         if(_loc4_ || param1)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§_-Hu§ = §§pop();
         if(_loc4_)
         {
            if(this.§_-Hu§ < 0)
            {
               if(!(_loc5_ && param2))
               {
                  addr57:
                  this.§_-Hu§ = 0;
                  if(_loc4_ || param2)
                  {
                     §§goto(addr67);
                  }
                  §§goto(addr76);
               }
            }
         }
         addr67:
         if(this.mSlingShotState != §var §)
         {
            this.§_-nH§(param1,param2);
            addr76:
            _loc3_ = null;
            if(this.§_-zK§.length > 0)
            {
               _loc3_ = this.§_-zK§[this.§_-95§];
            }
            if(_loc3_)
            {
               _loc3_.§_-3-§(param1);
            }
            if(!_loc3_)
            {
               if(_loc4_ || param1)
               {
                  this.§_-Ea§(§var §);
               }
               else
               {
                  addr200:
                  §§push(_loc3_.§_-A4§);
                  if(_loc4_)
                  {
                     addr204:
                     if(§§pop())
                     {
                        this.§_-Ea§(§_-AQ§);
                        if(!(_loc4_ || this))
                        {
                           addr290:
                           §§push(this);
                           §§push(this.§_-4d§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(this.§_-RE§);
                              if(!_loc5_)
                              {
                                 addr312:
                                 §§push(§§pop() / §§pop());
                                 §§push(this.§_-Aj§);
                              }
                              §§pop().§_-oM§(§§pop(),§§pop());
                              §§goto(addr315);
                           }
                           §§goto(addr312);
                        }
                        §§goto(addr315);
                     }
                  }
                  else
                  {
                     addr289:
                     if(§§pop())
                     {
                        §§goto(addr290);
                     }
                  }
               }
            }
            else
            {
               §§push(this.mSlingShotState);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§_-wd§);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(this.§_-Hu§ <= 0);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 addr142:
                                 §§pop();
                                 §§push(this.§_-Ag§.camera.isOnCastleView());
                                 if(_loc4_ || param2)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_ || param1)
                                    {
                                       addr169:
                                       if(§§pop())
                                       {
                                          this.§_-Ea§(§_-wr§);
                                          if(!_loc5_)
                                          {
                                             _loc3_.§_-18§();
                                             if(!(_loc4_ || param1))
                                             {
                                                §§goto(addr290);
                                             }
                                             §§goto(addr315);
                                          }
                                          else
                                          {
                                             addr287:
                                             §§goto(addr289);
                                             §§push(this.§_-Ha§);
                                          }
                                       }
                                       §§goto(addr315);
                                    }
                                    else
                                    {
                                       §§goto(addr204);
                                    }
                                 }
                                 §§goto(addr289);
                              }
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr142);
                     }
                     else
                     {
                        §§push(this.mSlingShotState);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§_-wr§);
                           if(!_loc5_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr200);
                                 }
                                 §§goto(addr290);
                              }
                              else
                              {
                                 addr218:
                                 §§push(this.mSlingShotState);
                                 §§push(§_-AQ§);
                              }
                              §§goto(addr315);
                           }
                        }
                        §§goto(addr218);
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     §§push(_loc3_);
                     §§push(this.§_-2O§);
                     if(!(_loc5_ && this))
                     {
                        §§push(_loc3_.radius);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() * Math.cos(this.§_-Aj§ / (180 / Math.PI)));
                           if(!(_loc5_ && _loc3_))
                           {
                              addr257:
                              §§push(§§pop() - §§pop());
                              §§push(this.§_-cx§);
                              if(_loc4_ || param2)
                              {
                                 addr266:
                                 §§push(_loc3_.radius);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop() * Math.sin(this.§_-Aj§ / (180 / Math.PI)));
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§pop().setPosition(§§pop(),§§pop());
                           §§goto(addr287);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr315);
               }
               §§goto(addr218);
            }
         }
         addr315:
      }
      
      public function §_-0-§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§_-1W§ = null;
         if(_loc7_ || param1)
         {
            if(this.§_-zK§.length > 0)
            {
               if(!_loc6_)
               {
                  _loc5_ = this.§_-zK§[this.§_-95§];
                  addr45:
                  if(!_loc5_)
                  {
                     if(_loc7_ || param1)
                     {
                        return;
                     }
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                     if(_loc7_)
                     {
                        addr75:
                        this.§_-oM§(param3,param4);
                     }
                  }
                  return;
                  addr31:
               }
               §§goto(addr75);
            }
            §§goto(addr45);
         }
         §§goto(addr31);
      }
      
      private function §_-oM§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§_-1W§ = null;
         if(_loc5_)
         {
            if(this.§_-zK§.length > 0)
            {
               _loc3_ = this.§_-zK§[this.§_-95§];
            }
            if(!_loc3_)
            {
               return;
            }
            this.mDragging = false;
            if(_loc5_ || this)
            {
               this.§_-Ha§ = false;
               if(_loc5_)
               {
                  this.§_-Ag§.§_-cQ§(_loc3_,param1,param2);
                  this.§_-9i§(this.§_-95§);
                  addr48:
               }
               var _loc4_:int = int(Math.random() * 3) + 1;
               if(_loc5_ || param2)
               {
                  §_-Ou§.playSound("BirdShot" + _loc4_);
                  if(!_loc6_)
                  {
                     if(this.§_-95§ >= this.§_-zK§.length)
                     {
                        if(!_loc6_)
                        {
                           this.§_-Ea§(§var §);
                           if(_loc5_ || param2)
                           {
                           }
                           §§goto(addr118);
                        }
                     }
                     else
                     {
                        this.§_-Ea§(§_-wd§);
                        §§goto(addr118);
                     }
                     §§goto(addr118);
                  }
               }
               addr118:
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §_-nH§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§_-95§);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§_-zK§.length)
            {
               §§push(this.mSlingShotState);
               if(_loc6_ || param2)
               {
                  if(§§pop() == §_-p9§)
                  {
                     if(_loc6_ || param2)
                     {
                        this.§_-zK§[_loc4_].update(param1,true,param2);
                        if(!_loc6_)
                        {
                        }
                        break;
                     }
                     break;
                  }
                  this.§_-zK§[_loc4_].update(param1,false,param2);
                  if(_loc5_ && this)
                  {
                  }
                  break;
                  _loc4_++;
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§_-1W§ = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && _loc3_))
         {
            this.mDragging = false;
            if(_loc5_)
            {
               this.§_-A1§();
               if(!_loc6_)
               {
                  addr34:
                  if(this.§_-P-§ >= this.§_-zK§.length)
                  {
                     if(!(_loc6_ && this))
                     {
                        return false;
                     }
                  }
               }
            }
            _loc1_ = this.§_-zK§[this.§_-P-§];
            if(_loc5_ || _loc2_)
            {
               §§push(§_-yP§.§_-nU§(_loc1_.name).score);
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               _loc2_ = §§pop();
               if(!(_loc6_ && _loc2_))
               {
                  §§push(this.§_-Ag§);
                  §§push(_loc2_);
                  §§push(§_-vI§.§_-Tc§);
                  §§push(true);
                  §§push(_loc1_.mX);
                  §§push(_loc1_.mY);
                  if(_loc5_)
                  {
                     §§push(3);
                     if(_loc5_)
                     {
                        addr102:
                        §§push(§§pop() - §§pop());
                        §§push(§_-UW§.§_-yw§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(!(_loc6_ && _loc1_))
                     {
                        addr114:
                        _loc1_.§finally§(-1,true);
                        if(!(_loc6_ && _loc2_))
                        {
                           var _loc3_:*;
                           §§push((_loc3_ = this).§_-P-§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(_loc5_ || _loc1_)
                           {
                              _loc3_.§_-P-§ = _loc4_;
                           }
                        }
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr102);
               }
               addr152:
               return true;
            }
            §§goto(addr114);
         }
         §§goto(addr34);
      }
      
      public function §_-59§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-1W§ = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§_-zK§)
         {
            if(_loc5_)
            {
               §§push(_loc1_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(int(§§pop() + §_-yP§.§_-nU§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §_-v-§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         §§push(this.§_-wi§);
         if(!_loc3_)
         {
            §§push(0);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() >= §§pop())
               {
                  if(_loc4_)
                  {
                     addr42:
                     §§push(this);
                     §§push(this.§_-wi§);
                     if(_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§_-wi§ = §§pop();
                     if(this.§_-wi§ <= 0)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.§_-Ag§);
                           if(!_loc3_)
                           {
                              §§push(§§pop().objects);
                              if(_loc4_)
                              {
                                 §§push(§§pop().§_-rH§(this.§_-k§,this.§_-t7§));
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc4_)
                                    {
                                       addr79:
                                       _loc2_ = §§pop();
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr88);
                                       }
                                       §§goto(addr151);
                                    }
                                    addr88:
                                    if(_loc2_ < 0)
                                    {
                                       this.§_-8W§(0.1);
                                       if(!(_loc3_ && param1))
                                       {
                                          this.§_-wi§ = 0;
                                       }
                                       else
                                       {
                                          addr136:
                                       }
                                       §§goto(addr158);
                                    }
                                    else
                                    {
                                       §§push(this.§_-Ag§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().objects);
                                          if(!_loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop().getObject(§§pop()));
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop().§_-Fi§);
                                                   if(!_loc3_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr126:
                                                         this.§_-wi§ = -1;
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      else
                                                      {
                                                         addr149:
                                                         §§push(this.§_-Ag§.objects.getObject(_loc2_).§_-AA§());
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      addr151:
                                                      this.§_-wi§ = 2000;
                                                   }
                                                   else
                                                   {
                                                      this.§_-wi§ = 500;
                                                   }
                                                   §§goto(addr158);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                 }
                                 §§goto(addr79);
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr126);
               }
               addr158:
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§_-Cv§);
            if(_loc4_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(-§§pop());
                  if(_loc4_)
                  {
                     §§pop().x = §§pop();
                     if(_loc4_ || param1)
                     {
                        addr50:
                        §§push(this.§_-Cv§);
                        §§push(param2);
                        if(_loc4_)
                        {
                           addr54:
                           §§pop().y = -§§pop();
                        }
                        §§goto(addr54);
                     }
                     return;
                  }
               }
               §§goto(addr54);
            }
         }
         §§goto(addr50);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §_-AQ§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr87);
                     }
                     addr86:
                     addr87:
                     return §§pop();
                     §§push(false);
                  }
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(true);
                     if(_loc2_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr86);
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr87);
         }
         §§goto(addr86);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.mSlingShotState == §_-AQ§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§pop();
                     addr55:
                     §§push(this.§_-4d§);
                     §§push(this.§_-RE§);
                     if(_loc1_)
                     {
                        §§push(§§pop() * §_-6w§);
                     }
                     §§push(§§pop() > §§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr55);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mDragging = false;
            if(!(_loc3_ && _loc3_))
            {
               addr37:
               this.§_-Ea§(§_-AQ§);
            }
            var _loc1_:§_-1W§ = this.§_-zK§[this.§_-95§];
            if(_loc2_)
            {
               _loc1_.§finally§(§_-6n§.§_-8q§);
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§_-1W§ = this.§_-zK§[this.§_-95§];
         if(!_loc3_)
         {
            _loc1_.§finally§(§_-6n§.§_-CJ§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-Ha§ = true;
         }
      }
      
      protected function §_-9i§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-1W§ = null;
         if(_loc5_ || this)
         {
            if(param1 < 0)
            {
               if(_loc5_)
               {
                  return;
               }
            }
            if(this.§_-zK§[param1])
            {
               if(_loc5_)
               {
                  _loc3_ = this.§_-zK§[param1];
                  if(_loc5_ || this)
                  {
                     this.§_-WB§.removeChild(_loc3_.sprite);
                     if(_loc5_)
                     {
                        if(param2)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr83);
                     }
                     addr70:
                     this.§_-hw§(this.§_-zK§[param1]);
                     if(!(_loc4_ && param1))
                     {
                        addr83:
                        _loc3_.dispose();
                        if(_loc4_)
                        {
                        }
                        §§goto(addr99);
                     }
                     this.§_-zK§[param1] = null;
                     addr99:
                     this.§_-zK§.splice(param1,1);
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §_-hw§(param1:§_-1W§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(!_loc10_)
               {
                  §§push(this.§_-Ag§);
                  break;
               }
            }
            else
            {
               §§push(_loc4_);
               §§push(Math.random() * (720 / _loc3_));
               if(!(_loc10_ && _loc3_))
               {
                  §§push((_loc4_ = §§pop() + §§pop()) / (180 / Math.PI));
                  if(!_loc10_)
                  {
                     _loc6_ = §§pop();
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                     §§push(param1.sprite);
                     if(_loc9_)
                     {
                        §§push(-§§pop().width);
                        §§push(§_-tL§.§_-7m§);
                        if(_loc9_ || this)
                        {
                           §§push(Number(§§pop() * §§pop()));
                           if(_loc9_ || _loc3_)
                           {
                              §§push(_loc7_ = §§pop());
                              §§push(Math.random() * -_loc7_);
                              §§push(2);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       _loc7_ = Number(§§pop());
                                       addr114:
                                       §§push(-param1.sprite.height);
                                       §§push(§_-tL§.§_-7m§);
                                       if(!(_loc10_ && param1))
                                       {
                                          addr139:
                                          §§push(_loc8_ = §§pop() * §§pop());
                                          §§push(Math.random() * -_loc8_);
                                          if(!_loc10_)
                                          {
                                             addr136:
                                             §§push(§§pop() * 2);
                                          }
                                          _loc8_ = §§pop() + §§pop();
                                          §§push(this.§_-Ag§);
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().particles);
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push(§_-UW§.§_-Lw§);
                                             if(_loc9_)
                                             {
                                                §§push(§_-Gb§.§_-oO§);
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§push(§_-UW§.§_-s4§);
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      §§push(param1.mX);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr197:
                                                               §§push(param1.mY);
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr206:
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(1500);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push("");
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§_-UW§.§_-G9§(param1.name));
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * Math.cos(_loc6_));
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr245:
                                                                                    §§push(§§pop() * Math.sin(_loc6_));
                                                                                 }
                                                                                 §§push(5);
                                                                                 §§push(_loc2_);
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * 20);
                                                                                 }
                                                                                 §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr282:
                                                                           §§push(0);
                                                                        }
                                                                        §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                                        §§goto(addr299);
                                                                     }
                                                                     addr281:
                                                                     §§push("");
                                                                     §§goto(addr282);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr280:
                                                                     §§push(1000);
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr278:
                                                               §§push(param1.mY);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   else
                                                   {
                                                      addr276:
                                                      §§push(param1.mX);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                else
                                                {
                                                   addr274:
                                                   §§push(§_-UW§.§_-s4§);
                                                }
                                                §§goto(addr276);
                                             }
                                             else
                                             {
                                                addr272:
                                                §§push(§_-Gb§.§_-oO§);
                                             }
                                             §§goto(addr274);
                                          }
                                          else
                                          {
                                             addr270:
                                             §§push(§_-UW§.§_-Mx§);
                                          }
                                          §§goto(addr272);
                                       }
                                       §§goto(addr136);
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr136);
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr139);
            }
            addr299:
            return;
         }
         §§goto(addr270);
         §§push(§§pop().particles);
      }
      
      public function §_-Nc§(param1:§_-1W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-9i§(this.§_-zK§.indexOf(param1));
         }
      }
      
      public function §_-gK§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-1W§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§_-1W§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc7_ && this))
            {
               if(§§pop() >= this.§_-zK§.length - 1)
               {
                  if(_loc6_)
                  {
                     addr203:
                     loop1:
                     while(true)
                     {
                        §§push(this.§_-WB§);
                        while(§§pop().numChildren > 0)
                        {
                           §§push(this.§_-WB§);
                           if(_loc6_ || _loc2_)
                           {
                              continue loop1;
                           }
                        }
                        §§push(0);
                        if(_loc6_)
                        {
                           break loop0;
                        }
                        loop4:
                        while(§§pop() < this.§_-zK§.length)
                        {
                           _loc2_ = this.§_-zK§[_loc1_];
                           if(_loc6_)
                           {
                              this.§_-WB§.addChildAt(_loc2_.sprite,0);
                              if(_loc6_ || this)
                              {
                                 _loc1_++;
                              }
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr203:
                  }
                  §§goto(addr250);
               }
               §§push(Number(Math.sqrt((this.mX - this.§_-zK§[_loc1_].mX) * (this.mX - this.§_-zK§[_loc1_].mX) + (this.mY - this.§_-zK§[_loc1_].mY) * (this.mY - this.§_-zK§[_loc1_].mY))));
               if(_loc6_)
               {
                  _loc3_ = §§pop();
                  §§push(Number(Math.sqrt((this.mX - this.§_-zK§[_loc1_ + 1].mX) * (this.mX - this.§_-zK§[_loc1_ + 1].mX) + (this.mY - this.§_-zK§[_loc1_ + 1].mY) * (this.mY - this.§_-zK§[_loc1_ + 1].mY))));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc1_))
                     {
                        _loc4_ = §§pop();
                        addr132:
                        §§push(_loc3_);
                     }
                     if(§§pop() >= §§pop())
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        _loc5_ = this.§_-zK§[_loc1_];
                        if(!_loc7_)
                        {
                           this.§_-zK§.splice(_loc1_,1);
                           if(_loc6_)
                           {
                              addr151:
                              this.§_-zK§.splice(_loc1_ + 1,0,_loc5_);
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                           }
                           _loc1_ = int(Math.max(-1,_loc1_ - 2));
                           continue;
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        §§goto(addr203);
                     }
                  }
               }
               §§goto(addr132);
               §§goto(addr203);
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc6_)
         {
            §§goto(addr245);
         }
         addr250:
      }
      
      public function §_-4G§(param1:Number, param2:Number) : §_-1W§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-zK§.length)
         {
            if(this.§_-zK§[_loc3_])
            {
               if(!(_loc4_ && param1))
               {
                  if(this.§_-zK§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(!(_loc4_ && this))
                     {
                        return this.§_-zK§[_loc3_];
                     }
                     continue;
                  }
               }
               break;
            }
            _loc3_++;
            if(_loc4_ && param2)
            {
               break;
            }
         }
         return null;
      }
      
      public function §_-Ah§(param1:Number, param2:Number) : §_-7G§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.mX);
               §§push(this.§_-RE§);
               if(!_loc3_)
               {
                  §§push(4);
                  if(_loc4_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc4_)
                        {
                           §§push(§§pop() >= §§pop());
                           §§push(§§pop() >= §§pop());
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && param2))
                                    {
                                       §§push(this.mX);
                                       if(_loc4_)
                                       {
                                          addr54:
                                          §§push(this.§_-RE§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(4);
                                             if(!_loc3_)
                                             {
                                                addr103:
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc3_ && param1))
                                                {
                                                   addr81:
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() >= §§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   addr107:
                                                   if(§§pop())
                                                   {
                                                      addr109:
                                                      §§pop();
                                                      if(_loc4_ || param2)
                                                      {
                                                         §§goto(addr129);
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   addr129:
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr109);
                                             }
                                             addr102:
                                             §§goto(addr103);
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§goto(addr103);
                                       }
                                       addr83:
                                       §§push(§§pop() <= §§pop());
                                       §§push(§§pop() <= §§pop());
                                       if(!_loc3_)
                                       {
                                          addr86:
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop();
                                                if(_loc4_)
                                                {
                                                   addr92:
                                                   §§push(param2);
                                                   if(_loc4_)
                                                   {
                                                      addr95:
                                                      §§push(this.mY);
                                                      §§push(this.§_-RE§);
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr102);
                                                         §§push(4);
                                                      }
                                                      §§goto(addr103);
                                                   }
                                                   addr126:
                                                   §§goto(addr117);
                                                }
                                                §§goto(addr132);
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr95);
                                 }
                                 addr117:
                                 if(this.mY <= this.§_-t7§)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr132:
                                       return this;
                                    }
                                 }
                                 return null;
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr102);
               }
               §§goto(addr103);
            }
            §§goto(addr129);
         }
         §§goto(addr92);
      }
      
      public function §try §(param1:§_-Wv§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§_-1W§ = null;
         var _loc4_:§_-Jx§ = null;
         if(!_loc5_)
         {
            param1.§_-OI§ = this.mX;
            if(_loc6_)
            {
               param1.§_-tP§ = this.mY;
            }
         }
         var _loc2_:* = Number(0);
         while(_loc2_ < this.§_-zK§.length)
         {
            _loc3_ = this.§_-zK§[_loc2_];
            (_loc4_ = new §_-Jx§()).x = _loc3_.mX;
            if(_loc6_ || _loc2_)
            {
               _loc4_.y = _loc3_.mY;
               if(_loc6_ || _loc2_)
               {
                  _loc4_.id = _loc3_.name;
                  if(!_loc5_)
                  {
                     param1.§_-zK§.push(_loc4_);
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
               }
            }
            §§push(_loc2_);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(_loc6_)
               {
                  addr106:
                  §§push(Number(§§pop()));
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr106);
         }
      }
      
      public function §_-I-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§_-zK§.length > 0)
         {
            this.§_-Nc§(this.§_-zK§[0]);
            if(!(_loc2_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function §_-Ys§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(true)
         {
            if(_loc4_ >= this.§_-zK§.length)
            {
               §§push(this.mX > param1.x);
               §§push(this.mX > param1.x);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(this.mX);
                        if(_loc6_ || _loc3_)
                        {
                           §§goto(addr106);
                        }
                        break;
                     }
                     §§goto(addr144);
                  }
                  addr106:
                  §§push(§§pop() < param2.x);
                  §§push(§§pop() < param2.x);
                  if(_loc6_ || param2)
                  {
                  }
               }
               §§goto(addr129);
            }
            else
            {
               if(!this.§_-zK§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  continue;
               }
               if(_loc6_ || _loc3_)
               {
                  _loc3_.push(this.§_-zK§[_loc4_]);
                  if(_loc6_ || _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr144);
         }
         §§push(§§pop() > param1.y);
         if(_loc6_ || param1)
         {
            addr129:
            if(§§pop())
            {
               §§pop();
               §§push(this.mY);
               break loop0;
            }
            if(§§pop() && this.mY < param2.y)
            {
               addr144:
               _loc3_.push(this);
               §§goto(addr147);
            }
            addr147:
            return _loc3_;
         }
         §§goto(addr130);
      }
      
      public function §_-fi§() : Array
      {
         return [this.§_-1D§,this.§_-DY§];
      }
      
      public function §_-J6§(param1:String, param2:Number, param3:Number) : §_-1W§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-1W§ = this.§_-js§(param1,param2,param3);
         if(_loc5_)
         {
            this.§_-gK§();
         }
         return _loc4_;
      }
      
      public function §_-JW§() : Number
      {
         return this.§_-zK§.length;
      }
   }
}
