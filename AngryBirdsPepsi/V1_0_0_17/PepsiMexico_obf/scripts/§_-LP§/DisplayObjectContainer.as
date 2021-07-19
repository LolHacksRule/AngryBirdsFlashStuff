package §_-LP§
{
   import §_-HT§.§_-rU§;
   import §_-gY§.§_-K6§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
       
      
      private var §_-ht§:Vector.<DisplayObject>;
      
      private var §_-hY§:Matrix3D;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     throw new §_-rU§();
                  }
               }
            }
         }
         this.§_-ht§ = new Vector.<DisplayObject>(0);
         if(_loc2_)
         {
            this.§_-hY§ = new Matrix3D();
         }
      }
      
      override public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§_-ht§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            super.dispose();
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2);
         if(!(_loc4_ && this))
         {
            §§push(0);
            if(!_loc4_)
            {
               §§push(§§pop() >= §§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        if(!(_loc4_ && this))
                        {
                           addr55:
                           if(param2 > this.numChildren)
                           {
                              throw new RangeError("Invalid child index");
                           }
                           if(_loc3_ || this)
                           {
                              param1.§_-Lh§();
                              if(_loc3_)
                              {
                                 this.§_-ht§.splice(param2,0,param1);
                                 param1.§_-Ux§(this);
                                 addr76:
                                 param1.dispatchEvent(new Event(Event.ADDED));
                              }
                              if(stage)
                              {
                                 if(_loc3_)
                                 {
                                    param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                    return;
                                    addr99:
                                 }
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr99);
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_ != -1)
            {
               if(_loc4_ || _loc3_)
               {
                  this.removeChildAt(_loc3_,param2);
               }
            }
         }
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr41:
                           §§pop();
                           §§goto(addr116);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           _loc3_ = this.§_-ht§[param1];
                           _loc3_.dispatchEvent(new Event(Event.§_-dC§));
                           if(_loc4_ || _loc3_)
                           {
                              if(stage)
                              {
                                 if(_loc4_)
                                 {
                                    _loc3_.dispatchEventOnChildren(new Event(Event.§_-av§));
                                 }
                                 §§goto(addr111);
                              }
                              _loc3_.§_-Ux§(null);
                              this.§_-ht§.splice(param1,1);
                              if(param2)
                              {
                                 _loc3_.dispose();
                              }
                           }
                           addr111:
                           §§goto(addr116);
                        }
                        addr116:
                        if(_loc4_ || param1)
                        {
                           addr59:
                           §§push(param1 < this.numChildren);
                        }
                        return;
                     }
                     throw new RangeError("Invalid child index");
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr41);
      }
      
      public function §_-12§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc6_ || param3)
            {
               §§push(0);
               if(_loc6_ || param3)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(!(_loc5_ && this))
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr65:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       addr73:
                                       §§push(this.numChildren);
                                       if(_loc6_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_ || this)
                                          {
                                          }
                                          §§goto(addr91);
                                       }
                                       param2 = §§pop();
                                    }
                                    §§goto(addr87);
                                 }
                                 addr87:
                                 §§push(param1);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr91);
                              }
                              addr91:
                              var _loc4_:* = §§pop();
                              while(_loc4_ <= param2)
                              {
                                 this.removeChildAt(param1,param3);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 _loc4_++;
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              return;
                              §§push(int(§§pop()));
                           }
                           §§goto(addr73);
                        }
                     }
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr91);
         }
         §§goto(addr73);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         return this.§_-ht§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc6_:* = this.§_-ht§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(!(_loc7_ && this))
                  {
                     if(_loc2_.name != param1)
                     {
                        continue;
                     }
                     if(!(_loc8_ || param1))
                     {
                        continue;
                     }
                  }
                  return _loc2_;
               }
               if(_loc8_ || _loc2_)
               {
                  if(!(_loc7_ && this))
                  {
                     if(_loc8_)
                     {
                        _loc5_ = 0;
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc6_ = this.§_-ht§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break loop0;
                           }
                           addr145:
                           addr144:
                           addr142:
                        }
                        §§goto(addr145);
                     }
                     return null;
                  }
                  §§goto(addr145);
               }
               §§goto(addr144);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc5_,_loc6_);
               _loc3_ = _loc2_ as DisplayObjectContainer;
               if(_loc8_ || this)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               if(_loc4_ = _loc3_.getChildByName(param1))
               {
                  if(!(_loc7_ && param1))
                  {
                     return _loc4_;
                  }
               }
               continue;
            }
            §§goto(addr145);
         }
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§_-ht§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc3_ == -1)
            {
               if(_loc5_)
               {
                  throw new ArgumentError("Not a child of this container");
               }
            }
            this.§_-ht§.splice(_loc3_,1);
            if(!(_loc4_ && param1))
            {
               this.§_-ht§.splice(param2,0,param1);
            }
         }
      }
      
      public function §_-aK§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(!(_loc5_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §§push(_loc3_);
            if(_loc6_ || param2)
            {
               §§push(-1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              addr86:
                              addr85:
                              addr84:
                              addr83:
                              if(_loc4_ == -1)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    throw new ArgumentError("Not a child of this container");
                                 }
                              }
                              this.§_-jp§(_loc3_,_loc4_);
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr85);
            }
            §§goto(addr84);
         }
         §§goto(addr83);
      }
      
      public function §_-jp§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!_loc6_)
         {
            this.§_-ht§[param1] = _loc4_;
            if(_loc5_)
            {
               addr46:
               this.§_-ht§[param2] = _loc3_;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_)
         {
            if(param1 == this)
            {
               if(!_loc6_)
               {
                  §§goto(addr23);
               }
            }
            var _loc3_:int = 0;
            var _loc4_:* = this.§_-ht§;
            while(true)
            {
               for each(_loc2_ in _loc4_)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(_loc2_ is DisplayObjectContainer);
                     if(!(_loc6_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§push((_loc2_ as DisplayObjectContainer).contains(param1));
                           if(_loc5_)
                           {
                              addr72:
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        else
                        {
                           if(_loc2_ != param1)
                           {
                              continue;
                           }
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           §§push(true);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr72);
                  }
                  break;
               }
               return false;
            }
            §§push(true);
            if(!(_loc6_ && param1))
            {
               return §§pop();
            }
            addr110:
            return §§pop();
         }
         addr23:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc3_:Matrix = null;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:DisplayObject = null;
         var _loc10_:Rectangle = null;
         var _loc2_:int = this.§_-ht§.length;
         §§push(_loc2_);
         if(_loc14_ || _loc3_)
         {
            §§push(0);
            if(!(_loc13_ && this))
            {
               if(§§pop() == §§pop())
               {
                  _loc3_ = §_-OX§(param1);
                  _loc4_ = _loc3_.transformPoint(new Point(x,y));
                  if(_loc14_)
                  {
                     return new Rectangle(_loc4_.x,_loc4_.y);
                  }
               }
               §§push(_loc2_);
               if(!_loc13_)
               {
                  addr82:
                  if(§§pop() == 1)
                  {
                     return this.§_-ht§[0].getBounds(param1);
                  }
                  §§push(Number(Number.MAX_VALUE));
                  if(!(_loc13_ && param1))
                  {
                     _loc5_ = §§pop();
                     §§push(-Number.MAX_VALUE);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           _loc6_ = §§pop();
                           if(!(_loc13_ && param1))
                           {
                              §§push(Number(Number.MAX_VALUE));
                              if(!_loc13_)
                              {
                                 addr129:
                                 _loc7_ = §§pop();
                                 §§push(-Number.MAX_VALUE);
                                 if(_loc14_ || _loc3_)
                                 {
                                    addr141:
                                    _loc8_ = Number(§§pop());
                                 }
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr141);
               }
               addr143:
               for each(_loc9_ in this.§_-ht§)
               {
                  _loc10_ = _loc9_.getBounds(param1);
                  if(!_loc14_)
                  {
                     continue;
                  }
                  §§push(Number(Math.min(_loc5_,_loc10_.x)));
                  if(!(_loc13_ && param1))
                  {
                     _loc5_ = §§pop();
                     if(_loc13_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(Number(Math.max(_loc6_,_loc10_.x + _loc10_.width)));
                     if(_loc14_)
                     {
                        _loc6_ = §§pop();
                        if(_loc14_ || _loc3_)
                        {
                           §§push(Number(Math.min(_loc7_,_loc10_.y)));
                           if(!_loc13_)
                           {
                              addr210:
                              _loc7_ = §§pop();
                              if(!_loc14_)
                              {
                                 continue;
                              }
                           }
                           addr222:
                           _loc8_ = §§pop();
                           continue;
                        }
                        §§goto(addr222);
                        §§push(Number(Math.max(_loc8_,_loc10_.y + _loc10_.height)));
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr222);
               }
               return new Rectangle(_loc5_,_loc7_,_loc6_ - _loc5_,_loc8_ - _loc7_);
            }
         }
         §§goto(addr82);
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:DisplayObject = null;
         var _loc6_:Matrix = null;
         var _loc7_:Point = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || this)
         {
            §§push(param2);
            if(!(_loc9_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr58);
               }
               addr50:
               §§pop();
               if(_loc10_)
               {
                  §§push(!visible);
                  if(!_loc9_)
                  {
                     addr58:
                     if(!§§pop())
                     {
                        if(!_loc9_)
                        {
                           addr61:
                           §§pop();
                           if(_loc10_)
                           {
                              addr66:
                              if(!§_-pE§)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    §§goto(addr74);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr66);
               }
               var _loc3_:int = this.§_-ht§.length;
               §§push(_loc3_);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               while(_loc4_ >= 0)
               {
                  _loc5_ = this.§_-ht§[_loc4_];
                  if(_loc10_ || param1)
                  {
                     §§push(param2);
                     if(!_loc9_)
                     {
                        §§push(!§§pop());
                        §§push(!§§pop());
                        if(_loc10_ || param1)
                        {
                           if(!§§pop())
                           {
                              §§pop();
                              if(_loc10_)
                              {
                                 §§push(_loc5_.visible);
                                 if(!_loc9_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§push(§§pop());
                                 if(_loc10_ || param2)
                                 {
                                    addr143:
                                    if(§§pop())
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             addr175:
                                             §§push(_loc5_.§_-pE§);
                                             if(!_loc9_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                addr178:
                                                _loc7_ = (_loc6_ = §_-OX§(_loc5_)).transformPoint(param1);
                                                if(_loc8_ = _loc5_.hitTestPoint(_loc7_,param2))
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      return _loc8_;
                                                   }
                                                }
                                             }
                                             §§push(_loc4_);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          continue;
                                       }
                                    }
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       §§pop();
                                       if(_loc10_)
                                       {
                                          §§goto(addr175);
                                          §§push(_loc5_.alpha > 0);
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr178);
               }
               return null;
            }
            §§goto(addr66);
         }
         addr74:
         return null;
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param2);
            if(!_loc7_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc6_ || _loc3_)
               {
                  addr36:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               if(_loc6_)
               {
                  addr40:
                  param1.§_-TX§(this.§_-hY§);
               }
               for each(_loc3_ in this.§_-ht§)
               {
                  if(_loc6_ || this)
                  {
                     §§push(_loc3_.alpha);
                     if(!_loc7_)
                     {
                        §§push(§§pop() != 0);
                        §§push(§§pop() != 0);
                        if(!(_loc7_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(_loc3_.visible);
                                    if(_loc6_ || this)
                                    {
                                       addr102:
                                       §§push(Boolean(§§pop()));
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§pop();
                                                if(_loc7_)
                                                {
                                                   continue;
                                                }
                                                addr111:
                                                §§push(_loc3_.scaleX);
                                                if(_loc6_)
                                                {
                                                   addr115:
                                                   §§push(0);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr135:
                                                            if(§§pop())
                                                            {
                                                               addr136:
                                                               §§pop();
                                                               §§push(_loc3_.scaleY == 0);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr145:
                                                               param1.§_-FA§(_loc3_);
                                                               _loc3_.render(param1,param2);
                                                               param1.§_-2v§(this.§_-hY§);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr136);
                                          }
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr145);
               }
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr40);
      }
      
      public function §_-0v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1.bubbles)
            {
               if(_loc2_ || _loc3_)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
            }
            else
            {
               this.dispatchEventOnChildren(param1);
            }
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = null;
         var _loc3_:DisplayObject = null;
         _loc2_ = this.§_-2U§(this,param1.type,_loc2_);
         if(_loc7_)
         {
            if(_loc2_)
            {
               addr39:
               for each(_loc3_ in _loc2_)
               {
                  if(_loc7_ || param1)
                  {
                     _loc3_.dispatchEvent(param1);
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §_-2U§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : Vector.<DisplayObject>
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || param2)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc9_ || param3)
               {
                  if(param3 == null)
                  {
                     if(_loc9_ || param2)
                     {
                        param3 = new Vector.<DisplayObject>();
                     }
                     §§goto(addr68);
                  }
                  param3.push(param1);
                  if(_loc8_)
                  {
                  }
                  §§goto(addr70);
               }
            }
            addr68:
            if(_loc4_)
            {
               addr70:
               for each(_loc5_ in _loc4_.§_-ht§)
               {
                  param3 = this.§_-2U§(_loc5_,param2,param3);
               }
            }
            return param3;
         }
         §§goto(addr70);
      }
      
      public function get numChildren() : int
      {
         return this.§_-ht§.length;
      }
   }
}
