package §&o§
{
   import §'j§.transformCoords;
   import §<t§.§ !'§;
   import §=!0§.§2N§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §2$§:Matrix;
      
      private static var §#w§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §2$§ = new Matrix();
            if(!_loc2_)
            {
               §#w§ = new Point();
            }
         }
      }
      
      private var §!§:Vector.<DisplayObject>;
      
      private var §2!;§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_ || this)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(!(_loc1_ && this))
                  {
                     throw new § !'§();
                  }
               }
               else
               {
                  addr70:
                  this.§!§ = new Vector.<DisplayObject>(0);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§!§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  super.dispose();
                  break;
               }
               break;
            }
            this.§!§[_loc2_].dispose();
            if(!_loc3_)
            {
               break;
            }
            _loc2_++;
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function §"[§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§!§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ || this)
               {
                  addr83:
                  this.addChild(param1);
                  break;
               }
               break;
            }
            if(param1.z < this.§!§[_loc3_].z)
            {
               if(!_loc4_)
               {
                  this.addChildAt(param1,_loc3_);
                  if(!_loc4_)
                  {
                     return;
                  }
                  §§goto(addr83);
               }
               break;
            }
            continue;
            §§goto(addr83);
         }
         while(_loc3_++, !(_loc4_ && param1));
         
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc3_ || param1)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§pop();
                           if(_loc3_ || this)
                           {
                              addr73:
                              if(param2 > this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              param1.§?!E§();
                              if(_loc3_)
                              {
                                 §§goto(addr78);
                              }
                           }
                           §§goto(addr86);
                        }
                     }
                  }
               }
            }
            §§goto(addr73);
         }
         addr78:
         this.§!§.splice(param2,0,param1);
         if(_loc3_)
         {
            addr86:
            param1.§%z§(this);
            if(_loc3_ || param1)
            {
            }
         }
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ != -1)
            {
               if(!_loc5_)
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
         if(_loc4_ || this)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param2)
                        {
                           addr44:
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr66:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc4_ || this)
                              {
                              }
                              §§goto(addr120);
                           }
                           _loc3_ = this.§!§[param1];
                           if(!_loc5_)
                           {
                              _loc3_.§%z§(null);
                              if(!_loc5_)
                              {
                                 this.§!§.splice(param1,1);
                                 if(_loc4_ || param1)
                                 {
                                    if(param2)
                                    {
                                       if(_loc4_)
                                       {
                                          addr113:
                                          _loc3_.dispose();
                                       }
                                    }
                                    §§goto(addr120);
                                 }
                              }
                           }
                           §§goto(addr113);
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr44);
               }
            }
            §§goto(addr66);
         }
         addr120:
      }
      
      public function §]?§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(!(_loc5_ && param3))
                           {
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr66:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(this.numChildren);
                                       if(_loc6_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_)
                                          {
                                             addr82:
                                             param2 = §§pop();
                                             addr93:
                                             §§push(param1);
                                             if(!(_loc5_ && this))
                                             {
                                                addr101:
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          §§goto(addr101);
                                       }
                                       var _loc4_:* = §§pop();
                                       while(_loc4_ <= param2)
                                       {
                                          this.removeChildAt(param1,param3);
                                          if(!(_loc6_ || this))
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
                                    }
                                 }
                                 §§goto(addr93);
                              }
                           }
                           §§goto(addr82);
                        }
                     }
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr101);
         }
         §§goto(addr82);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§goto(addr69);
                           }
                           return this.§!§[param1];
                        }
                     }
                  }
               }
               §§goto(addr69);
            }
            addr69:
            if(param1 < this.numChildren)
            {
               if(!(_loc3_ || param1))
               {
                  §§goto(addr82);
               }
            }
            §§goto(addr82);
         }
         addr82:
         throw new RangeError("Invalid child index");
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§!§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§!§[_loc3_].name == param1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return this.§!§[_loc3_];
               }
            }
            _loc3_++;
            if(_loc4_)
            {
               break;
            }
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§!§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ == -1)
            {
               if(!(_loc4_ && param2))
               {
                  throw new ArgumentError("Not a child of this container");
               }
               addr79:
               this.§!§.splice(param2,0,param1);
            }
            else
            {
               this.§!§.splice(_loc3_,1);
               if(_loc5_ || param2)
               {
                  §§goto(addr79);
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §`P§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            if(_loc6_ || this)
            {
               §§push(-1);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(!(_loc5_ && this))
                           {
                              addr102:
                              if(_loc4_ == -1)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    throw new ArgumentError("Not a child of this container");
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr120);
                           }
                           this.§`s§(_loc3_,_loc4_);
                           §§goto(addr120);
                        }
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         addr120:
      }
      
      public function §`s§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc5_ && _loc3_))
         {
            this.§!§[param1] = _loc4_;
            if(!_loc5_)
            {
               this.§!§[param2] = _loc3_;
            }
         }
      }
      
      public function §7V§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!§ = this.§!§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc7_)
         {
            if(param1 == this)
            {
               if(_loc7_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:int = this.§!§.length;
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  return false;
               }
               §§push(Boolean(_loc5_ = (_loc4_ = this.§!§[_loc3_]) as DisplayObjectContainer));
               if(_loc7_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(!(_loc6_ && this))
                        {
                           §§push(_loc5_.contains(param1));
                           if(!_loc6_)
                           {
                              §§goto(addr88);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr125);
                     }
                     addr88:
                     §§push(Boolean(§§pop()));
                     if(_loc7_ || this)
                     {
                        addr96:
                        if(!§§pop())
                        {
                           if(_loc4_ == param1)
                           {
                              if(_loc7_)
                              {
                                 addr125:
                                 §§push(true);
                                 break;
                              }
                           }
                           else
                           {
                              _loc3_++;
                           }
                           continue;
                        }
                        if(!(_loc7_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(true);
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr96);
               }
               break;
            }
            return §§pop();
         }
         addr30:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         if(!_loc10_)
         {
            if(param2 == null)
            {
               addr32:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§!§.length;
            if(!_loc10_)
            {
               §§push(_loc3_);
               if(!(_loc10_ && param2))
               {
                  §§push(0);
                  if(!(_loc10_ && param2))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc11_)
                        {
                           §&M§(param1,§2$§);
                           transformCoords(§2$§,0,0,§#w§);
                           param2.x = §#w§.x;
                           param2.y = §#w§.y;
                           param2.width = param2.height = 0;
                           if(!(_loc10_ && this))
                           {
                              return param2;
                           }
                        }
                        addr154:
                        §§push(Number(Number.MAX_VALUE));
                        if(!_loc10_)
                        {
                           addr159:
                           _loc6_ = §§pop();
                           if(_loc11_)
                           {
                              addr173:
                              §§push(-Number.MAX_VALUE);
                              if(!(_loc10_ && this))
                              {
                                 addr172:
                                 §§push(Number(§§pop()));
                              }
                              _loc7_ = §§pop();
                              if(!(_loc10_ && this))
                              {
                                 addr182:
                                 _loc8_ = 0;
                                 addr181:
                              }
                           }
                           addr183:
                           while(true)
                           {
                              if(_loc8_ < _loc3_)
                              {
                                 this.§!§[_loc8_].getBounds(param1,param2);
                                 if(!_loc10_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc11_ || this)
                                    {
                                       §§push(§§pop() < param2.x);
                                       if(_loc11_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(_loc4_);
                                                if(_loc11_)
                                                {
                                                   addr238:
                                                   §§push(Number(Number(§§pop())));
                                                   if(_loc11_ || param1)
                                                   {
                                                      _loc4_ = §§pop();
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(§§pop() > param2.right);
                                                         if(_loc11_ || param2)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  §§push(Number(_loc5_));
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     addr294:
                                                                     _loc5_ = Number(§§pop());
                                                                     addr293:
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        §§push(_loc6_ < param2.y);
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           addr313:
                                                                           if(§§pop())
                                                                           {
                                                                              §§push(Number(_loc6_));
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(Number(param2.y));
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                              }
                                                                              addr332:
                                                                              if(§§pop() > param2.bottom)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr342:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(Number(param2.bottom));
                                                                              _loc7_ = Number(§§pop());
                                                                              _loc8_++;
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     break;
                                                                     addr282:
                                                                  }
                                                                  _loc6_ = Number(§§pop());
                                                                  §§push(_loc7_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr396);
                                                            }
                                                            else
                                                            {
                                                               §§push(Number(param2.right));
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  §§goto(addr293);
                                                               }
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr396);
                                          }
                                          else
                                          {
                                             §§push(Number(param2.x));
                                          }
                                          §§goto(addr238);
                                       }
                                    }
                                    §§goto(addr332);
                                 }
                                 break;
                              }
                              if(!(_loc10_ && this))
                              {
                                 param2.x = _loc4_;
                                 addr374:
                                 param2.y = _loc6_;
                                 if(_loc11_ || _loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr401);
                              }
                              addr396:
                              param2.height = _loc7_ - _loc6_;
                              addr401:
                              return param2;
                              §§goto(addr374);
                           }
                           param2.width = _loc5_ - _loc4_;
                           if(!(_loc10_ && this))
                           {
                              §§goto(addr396);
                           }
                           §§goto(addr374);
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(!(_loc10_ && param2))
                        {
                           addr107:
                           if(§§pop() == 1)
                           {
                              if(_loc11_)
                              {
                                 return this.§!§[0].getBounds(param1,param2);
                              }
                              §§goto(addr181);
                           }
                           else
                           {
                              addr120:
                              §§push(Number(Number.MAX_VALUE));
                              if(!_loc10_)
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(-Number.MAX_VALUE);
                                    if(!(_loc10_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc11_ || param2)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             §§goto(addr154);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr182);
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr120);
         }
         §§goto(addr32);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!_loc10_)
         {
            §§push(param2);
            if(!_loc10_)
            {
               §§push(Boolean(§§pop()));
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || _loc3_)
                        {
                           §§pop();
                           if(!(_loc10_ && this))
                           {
                              §§push(!visible);
                              if(!(_loc10_ && param2))
                              {
                                 addr63:
                                 if(!§§pop())
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       addr72:
                                       §§pop();
                                       if(_loc10_)
                                       {
                                       }
                                       §§goto(addr95);
                                    }
                                 }
                              }
                              §§goto(addr87);
                           }
                           §§push(!§3!D§);
                        }
                        §§goto(addr63);
                     }
                     addr87:
                     if(§§pop())
                     {
                        if(_loc9_ || param2)
                        {
                           addr95:
                           return null;
                        }
                     }
                     var _loc3_:Number = param1.x;
                     var _loc4_:Number = param1.y;
                     var _loc5_:int;
                     §§push(_loc5_ = this.§!§.length);
                     if(_loc9_)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     var _loc6_:* = §§pop();
                     while(_loc6_ >= 0)
                     {
                        _loc7_ = this.§!§[_loc6_];
                        if(_loc9_ || param2)
                        {
                           §&M§(_loc7_,§2$§);
                           if(!_loc10_)
                           {
                              transformCoords(§2$§,_loc3_,_loc4_,§#w§);
                           }
                        }
                        if(_loc8_ = _loc7_.hitTest(§#w§,param2))
                        {
                           if(_loc9_)
                           {
                              return _loc8_;
                           }
                        }
                        else
                        {
                           §§push(_loc6_);
                           if(_loc9_ || param2)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                        }
                     }
                     return null;
                  }
                  §§goto(addr63);
               }
               §§goto(addr72);
            }
            §§goto(addr63);
         }
         §§goto(addr72);
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_ || param1)
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(!_loc6_)
               {
                  addr35:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr37);
            }
            §§goto(addr35);
         }
         addr37:
         var _loc3_:int = this.§!§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§!§[_loc4_]).alpha);
            if(!_loc6_)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(_loc7_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc7_ || param2)
                           {
                              §§push(_loc5_.visible);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc7_ || param1)
                                 {
                                    addr107:
                                    §§push(§§pop());
                                    if(!(_loc6_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             §§pop();
                                             if(!_loc6_)
                                             {
                                                §§push(_loc5_.scaleX);
                                                if(!_loc6_)
                                                {
                                                   addr130:
                                                   §§push(0);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr141:
                                                         §§push(!§§pop());
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr150:
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§pop();
                                                                  addr172:
                                                                  addr171:
                                                                  addr159:
                                                                  §§push(_loc5_.scaleY == 0);
                                                                  if(_loc6_)
                                                                  {
                                                                  }
                                                                  addr176:
                                                                  if(§§pop())
                                                                  {
                                                                     param1.§#[§();
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr181:
                                                                     param1.§34§(_loc5_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc5_.render(param1,param2);
                                                                     if(_loc7_)
                                                                     {
                                                                        param1.include();
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                                  _loc4_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr176);
                                                               §§push(!§§pop());
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr172);
                                       }
                                    }
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr130);
         }
      }
      
      public function §5f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.bubbles)
            {
               if(_loc3_)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
            }
         }
         this.dispatchEventOnChildren(param1);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc5_)
         {
            this.§8r§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_].dispatchEvent(param1);
            if(!_loc5_)
            {
               _loc4_++;
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
            }
         }
      }
      
      private function §8r§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!_loc9_)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc8_)
               {
                  addr46:
                  param3.push(param1);
                  if(!_loc9_)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr53);
               }
            }
            addr51:
            if(_loc4_)
            {
               addr53:
               §§push(int((_loc5_ = _loc4_.§!§).length));
               if(_loc8_)
               {
                  _loc6_ = §§pop();
                  if(!_loc9_)
                  {
                     addr76:
                     _loc7_ = 0;
                  }
                  while(_loc7_ < _loc6_)
                  {
                     this.§8r§(_loc5_[_loc7_],param2,param3);
                     if(_loc9_)
                     {
                        break;
                     }
                     _loc7_++;
                     if(_loc9_ && this)
                     {
                        break;
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr76);
            }
            addr99:
            return;
         }
         §§goto(addr46);
      }
      
      public function get numChildren() : int
      {
         return this.§!§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!_loc5_)
         {
            this.§2!;§ = param1;
         }
         for each(_loc2_ in this.§!§)
         {
            if(!_loc5_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§2!;§;
      }
   }
}
