package §_-LP§
{
   import §_-HT§.§_-rU§;
   import §_-HT§.§_-rk§;
   import §_-gY§.§_-K6§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-ov§:Number;
      
      private var §_-eM§:Number;
      
      private var §_-1C§:Number;
      
      private var §_-ML§:Number;
      
      private var §_-O5§:Number;
      
      private var mAlpha:Number;
      
      private var §_-FU§:Boolean;
      
      private var §_-nX§:Boolean;
      
      private var mName:String;
      
      private var §_-R-§:Number;
      
      private var §_-iw§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(_loc2_ || _loc1_)
         {
            if(getQualifiedClassName(this) == "starling.display::DisplayObject")
            {
               throw new §_-rU§();
            }
         }
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this.§_-O5§ = 0);
         if(_loc2_)
         {
            var _loc1_:*;
            §§push(_loc1_ = §§pop());
         }
         §§pop().§_-eM§ = §§pop();
         §§push(_loc1_);
         if(_loc2_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§_-ov§ = §§pop();
         §§push(_loc1_);
         if(_loc2_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().mY = §§pop();
         §§pop().mX = _loc1_;
         §§push(this);
         §§push(this);
         §§push(this.mAlpha = 1);
         if(!_loc3_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§_-ML§ = §§pop();
         §§pop().§_-1C§ = _loc1_;
         if(!(_loc3_ && this))
         {
            this.§_-FU§ = this.§_-nX§ = true;
            if(_loc2_ || _loc1_)
            {
               addr117:
               this.§_-R-§ = -1;
            }
            return;
         }
         §§goto(addr117);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.removeEventListeners();
            if(_loc1_ || this)
            {
               addr36:
               §§push(this.§_-iw§);
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr57:
                        this.§_-iw§.removeChild(this);
                     }
                  }
                  return;
               }
            }
            §§goto(addr57);
         }
         §§goto(addr36);
      }
      
      public function §_-Lh§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-iw§);
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr62);
               }
               §§goto(addr46);
            }
            addr42:
            this.§_-iw§.removeChild(this);
            §§goto(addr40);
         }
         addr40:
         if(_loc3_)
         {
            addr46:
            if(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr62:
                  this.dispose();
               }
            }
         }
      }
      
      public function §_-OX§(param1:DisplayObject) : Matrix
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Matrix = null;
         var _loc3_:Matrix = null;
         if(!_loc7_)
         {
            if(param1 == this)
            {
               if(_loc8_)
               {
                  return new Matrix();
               }
            }
            else if(param1 != null)
            {
               if(param1.§_-iw§ == this)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_ = param1.§_-hD§;
                     if(!_loc7_)
                     {
                        _loc3_.invert();
                        if(!_loc8_)
                        {
                           addr87:
                           if(param1 == this.§_-iw§)
                           {
                              if(!_loc7_)
                              {
                                 return this.§_-hD§;
                              }
                              addr96:
                              var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
                              var _loc5_:DisplayObject = null;
                              var _loc6_:DisplayObject = this;
                              if(!(_loc7_ && this))
                              {
                                 while(_loc6_)
                                 {
                                    _loc4_.push(_loc6_);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc6_.parent;
                                 }
                              }
                              _loc6_ = param1;
                              if(!(_loc7_ && param1))
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(Boolean(_loc6_));
                                    if(_loc8_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             addr166:
                                             §§pop();
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_.indexOf(_loc6_) == -1);
                                                   addr179:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         break loop1;
                                                      }
                                                      _loc5_ = _loc6_;
                                                      _loc2_ = new Matrix();
                                                      _loc6_ = this;
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         loop2:
                                                         while(_loc6_ != _loc5_)
                                                         {
                                                            _loc2_.concat(_loc6_.§_-hD§);
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc6_ = _loc6_.parent;
                                                               continue loop2;
                                                            }
                                                         }
                                                         _loc3_ = new Matrix();
                                                         _loc6_ = param1;
                                                         if(!_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_ == _loc5_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc3_.invert();
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  break;
                                                               }
                                                               _loc3_.concat(_loc6_.§_-hD§);
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               _loc6_ = _loc6_.parent;
                                                            }
                                                         }
                                                         _loc2_.concat(_loc3_);
                                                         addr273:
                                                         return _loc2_;
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                }
                                                addr174:
                                             }
                                             break;
                                          }
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr166);
                                 }
                                 if(_loc6_ == null)
                                 {
                                    if(!_loc7_)
                                    {
                                       throw new ArgumentError("Object not connected to target");
                                    }
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr96);
                        }
                     }
                     return _loc3_;
                  }
                  §§goto(addr96);
               }
               §§goto(addr87);
            }
         }
         _loc2_ = new Matrix();
         _loc6_ = this;
         while(_loc6_)
         {
            _loc2_.concat(_loc6_.§_-hD§);
            if(!(_loc8_ || param1))
            {
               break;
            }
            _loc6_ = _loc6_.parent;
         }
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-rk§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(Boolean(param2));
            §§push(Boolean(param2));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     §§goto(addr46);
                  }
                  §§push(!§§pop());
               }
               addr46:
               §§goto(addr41);
            }
            addr41:
            if(!this.§_-FU§ || this.§_-nX§)
            {
               §§push(null);
               if(_loc4_ || param1)
               {
                  return §§pop();
               }
            }
            else if(this.getBounds(this).containsPoint(param1))
            {
               §§goto(addr76);
            }
            else
            {
               §§push(null);
            }
            return §§pop();
         }
         addr76:
         return this;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Matrix = new Matrix();
         var _loc3_:DisplayObject = this;
         while(_loc3_)
         {
            _loc2_.concat(_loc3_.§_-hD§);
            if(!_loc5_)
            {
               break;
            }
            _loc3_ = _loc3_.parent;
         }
         return _loc2_.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Matrix = new Matrix();
         var _loc3_:DisplayObject = this;
         while(true)
         {
            if(!_loc3_)
            {
               if(!(_loc5_ && this))
               {
                  break;
               }
               §§goto(addr62);
            }
            _loc2_.concat(_loc3_.§_-hD§);
            if(!(_loc4_ || param1))
            {
               break;
            }
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         addr62:
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-K6§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(!_loc4_)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc4_ && _loc2_))
               {
                  _loc2_ = param1 as TouchEvent;
                  if(_loc3_)
                  {
                     if(_loc2_.timestamp == this.§_-R-§)
                     {
                        if(_loc3_ || param1)
                        {
                           §§goto(addr55);
                        }
                     }
                     this.§_-R-§ = _loc2_.timestamp;
                     addr74:
                     super.dispatchEvent(param1);
                     §§goto(addr77);
                  }
                  addr55:
                  return;
               }
               addr77:
               return;
            }
         }
         §§goto(addr74);
      }
      
      function §_-Ux§(param1:DisplayObjectContainer) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §_-Gg§();
         if(_loc7_)
         {
            §§push(Boolean(param1 != this.§_-iw§));
            §§push(Boolean(param1 != this.§_-iw§));
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        addr54:
                        §§push(Boolean(this.§_-iw§));
                        if(!(_loc6_ && _loc3_))
                        {
                           addr65:
                           addr66:
                           if(§§pop())
                           {
                              addr67:
                              §§pop();
                              addr75:
                              if(_loc7_)
                              {
                                 §§push(_loc2_.length > 0);
                              }
                              var _loc4_:int = 0;
                              var _loc5_:* = _loc2_;
                              loop0:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc5_,_loc4_));
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                       if(_loc7_ || _loc3_)
                                       {
                                          this.removeEventListeningObject(this,_loc3_);
                                       }
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             addr127:
                                             this.§_-iw§ = param1;
                                             if(!_loc6_)
                                             {
                                                §§push(Boolean(this.§_-iw§));
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr141:
                                                         §§pop();
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr161:
                                                         _loc4_ = 0;
                                                         if(_loc7_)
                                                         {
                                                            _loc5_ = _loc2_;
                                                            if(!_loc7_)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc5_,_loc4_));
                                                               break loop0;
                                                            }
                                                            addr193:
                                                            addr194:
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(_loc2_.length > 0);
                                                            }
                                                            return;
                                                            addr192:
                                                            addr190:
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr192);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                    if(!_loc6_)
                                    {
                                       this.addEventListeningObject(this,_loc3_);
                                    }
                                    continue;
                                 }
                                 §§goto(addr193);
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr75);
                           }
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr67);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr66);
         }
         §§goto(addr54);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§_-iw§);
            if(_loc4_ || param1)
            {
               if(!§§pop())
               {
               }
               §§goto(addr47);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr47:
         if(_loc4_)
         {
            §§push(this.§_-iw§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§_-iw§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr48:
                     this.§_-iw§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function §_-vF§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.mX);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() != §§pop());
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && this))
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!(_loc2_ && this))
                        {
                           §§push(this.mY);
                           §§push(0);
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop() != §§pop());
                              if(!_loc2_)
                              {
                                 addr61:
                                 if(§§pop())
                                 {
                                    addr62:
                                    param1.prependTranslation(this.mX,this.mY,0);
                                    if(!_loc2_)
                                    {
                                       addr71:
                                       §§push(this.§_-O5§);
                                       if(_loc3_ || param1)
                                       {
                                          §§push(0);
                                          if(!_loc2_)
                                          {
                                             addr83:
                                             if(§§pop() != §§pop())
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   param1.prependRotation(this.§_-O5§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                   addr102:
                                                   §§push(this.§_-1C§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() != §§pop());
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               addr128:
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  addr133:
                                                                  §§push(this.§_-ML§ != 1);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     param1.prependScale(this.§_-1C§,this.§_-ML§,1);
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               addr152:
                                                               §§push(this.§_-ov§);
                                                               §§push(0);
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  addr160:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     addr168:
                                                                     §§push(!§§pop());
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        addr176:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              addr185:
                                                                              §§pop();
                                                                              addr189:
                                                                              §§push(this.§_-eM§ == 0);
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     addr198:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc2_ && _loc3_)
                                                                        {
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     addr213:
                                                                     param1.prependTranslation(-this.§_-ov§,-this.§_-eM§,0);
                                                                     return;
                                                                     §§push(!§§pop());
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr189);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr71);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr61);
               }
               §§goto(addr128);
            }
            §§goto(addr185);
         }
         §§goto(addr160);
      }
      
      public function get §_-hD§() : Matrix
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Matrix = new Matrix();
         §§push(this.§_-ov§);
         if(!(_loc3_ && this))
         {
            §§push(0);
            if(!_loc3_)
            {
               §§push(§§pop() == §§pop());
               if(_loc2_)
               {
                  §§push(!§§pop());
                  §§push(!§§pop());
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        addr45:
                        §§push(this.§_-eM§);
                        §§push(0);
                        if(_loc2_ || this)
                        {
                           addr55:
                           addr53:
                           if(§§pop() != §§pop())
                           {
                              _loc1_.translate(-this.§_-ov§,-this.§_-eM§);
                           }
                           §§push(this.§_-1C§);
                           §§push(1);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() != §§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && this))
                                 {
                                    addr91:
                                    if(!§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop();
                                          §§push(this.§_-ML§);
                                          if(!_loc3_)
                                          {
                                             addr107:
                                             §§push(§§pop() != 1);
                                             if(!_loc3_)
                                             {
                                                addr111:
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      _loc1_.scale(this.§_-1C§,this.§_-ML§);
                                                      if(_loc2_)
                                                      {
                                                         addr127:
                                                         §§push(this.§_-O5§);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  _loc1_.rotate(this.§_-O5§);
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                               §§push(this.mX);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr165:
                                                                  §§push(0);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr176:
                                                                        §§push(!§§pop());
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           addr184:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr193:
                                                                                 §§pop();
                                                                                 addr194:
                                                                                 §§goto(addr206);
                                                                              }
                                                                           }
                                                                           addr206:
                                                                           §§goto(addr205);
                                                                        }
                                                                        addr205:
                                                                        §§goto(addr197);
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                                  addr197:
                                                                  §§goto(addr196);
                                                               }
                                                               addr196:
                                                               if(this.mY != 0)
                                                               {
                                                                  _loc1_.translate(this.mX,this.mY);
                                                               }
                                                               return _loc1_;
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr127);
                                             }
                                             §§goto(addr194);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr91);
               }
               §§goto(addr176);
            }
            §§goto(addr53);
         }
         §§goto(addr45);
      }
      
      public function get §_-cB§() : Rectangle
      {
         return this.getBounds(this.§_-iw§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-iw§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§_-1C§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ != 0)
            {
               if(_loc4_)
               {
                  addr49:
                  §§push(this);
                  §§push(param1);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleX = §§pop();
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
            }
            else
            {
               this.scaleX = 1;
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§_-iw§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-ML§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ != 0)
            {
               if(_loc4_)
               {
                  §§push(this);
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleY = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr75:
                  }
               }
            }
            else
            {
               this.scaleY = 1;
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function get root() : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(!(_loc3_ && this))
               {
                  continue loop0;
               }
            }
            return _loc1_;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.addEventListener(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               addr33:
               this.addEventListeningObject(this,param1);
            }
            return;
         }
         §§goto(addr33);
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.removeEventListener(param1,param2);
            if(_loc3_)
            {
               if(!hasEventListener(param1))
               {
                  if(!_loc4_)
                  {
                     addr41:
                     this.removeEventListeningObject(this,param1);
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §_-Gg§();
         if(_loc7_ || this)
         {
            super.removeEventListeners(param1);
            if(!(_loc6_ && this))
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         if(param1 == null)
         {
            addr48:
            for each(_loc3_ in _loc2_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc6_ && this)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mX = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mY = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§_-ov§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-ov§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§_-eM§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-eM§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§_-1C§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-1C§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§_-ML§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-ML§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§_-O5§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            §§push(-Math.PI);
            if(_loc2_ || param1)
            {
               if(§§pop() >= §§pop())
               {
                  if(_loc2_)
                  {
                     addr57:
                  }
                  while(true)
                  {
                     §§push(param1);
                     addr86:
                     while(true)
                     {
                        if(§§pop() <= Math.PI)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§goto(addr94);
                        }
                        §§push(param1);
                        if(_loc2_ || this)
                        {
                           §§push(Math.PI * 2);
                           break loop0;
                        }
                     }
                     addr78:
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(Math.PI * 2);
                     if(_loc2_)
                     {
                        §§push(Number(§§pop() + §§pop()));
                        if(!_loc3_)
                        {
                           param1 = §§pop();
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr57);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     param1 = §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr78);
                     }
                  }
                  addr75:
               }
               this.§_-O5§ = param1;
               addr94:
               return;
            }
            break;
         }
         while(true)
         {
            §§push(Number(§§pop() - §§pop()));
            if(_loc2_)
            {
               §§goto(addr75);
            }
            §§goto(addr86);
         }
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mAlpha = Math.max(0,Math.min(1,param1));
         }
      }
      
      public function get visible() : Boolean
      {
         return this.§_-FU§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-FU§ = param1;
         }
      }
      
      public function get §_-pE§() : Boolean
      {
         return this.§_-nX§;
      }
      
      public function set §_-pE§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-nX§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-iw§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
   }
}
