package §-!`§
{
   import §6!@§.§;!%§;
   import §6x§.transformCoords;
   import §@!X§.§"W§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §`!3§:Matrix;
      
      private static var §;!'§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || DisplayObjectContainer)
         {
            §`!3§ = new Matrix();
            if(!(_loc1_ && DisplayObjectContainer))
            {
               addr45:
               §;!'§ = new Point();
            }
            return;
         }
         §§goto(addr45);
      }
      
      private var §[a§:Vector.<DisplayObject>;
      
      private var §+h§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(_loc2_ || this)
                  {
                     throw new §;!%§();
                  }
               }
               this.§[a§ = new Vector.<DisplayObject>(0);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§[a§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               §§goto(addr57);
            }
            this.§[a§[_loc2_].dispose();
            if(_loc3_)
            {
               _loc2_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
         super.dispose();
         addr57:
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              addr63:
                              if(param2 > this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc3_)
                              {
                                 param1.§`!9§();
                                 if(_loc3_)
                                 {
                                    this.§[a§.splice(param2,0,param1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr93:
                                       param1.§ P§(this);
                                       param1.dispatchEvent(new Event(Event.ADDED,true));
                                    }
                                    if(stage)
                                    {
                                       param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                       if(!_loc3_)
                                       {
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                                 addr118:
                                 return;
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            if(_loc3_ != -1)
            {
               if(!_loc4_)
               {
                  this.removeChildAt(_loc3_,param2);
               }
            }
         }
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr40:
                           §§pop();
                           §§goto(addr65);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr65:
                           if(!(_loc4_ && param2))
                           {
                              addr61:
                              §§push(param1 < this.numChildren);
                           }
                           _loc3_ = this.§[a§[param1];
                           if(!_loc4_)
                           {
                              _loc3_.dispatchEvent(new Event(Event.§1c§,true));
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr97);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr97);
                        }
                        addr97:
                        if(stage)
                        {
                           _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                        }
                        _loc3_.§ P§(null);
                        if(_loc5_)
                        {
                           this.§[a§.splice(param1,1);
                           if(param2)
                           {
                              if(!_loc4_)
                              {
                                 addr119:
                                 _loc3_.dispose();
                              }
                           }
                        }
                        return;
                     }
                     throw new RangeError("Invalid child index");
                  }
                  §§goto(addr40);
               }
            }
            §§goto(addr61);
         }
         §§goto(addr40);
      }
      
      public function removeChildren(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           addr36:
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(_loc5_ || param2)
                              {
                                 addr60:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(this.numChildren);
                                       if(_loc5_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc5_)
                                          {
                                             addr71:
                                             param2 = §§pop();
                                             §§push(param1);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr71);
                              }
                              var _loc4_:* = §§pop();
                              while(_loc4_ <= param2)
                              {
                                 this.removeChildAt(param1,param3);
                                 if(_loc5_ || param2)
                                 {
                                    _loc4_++;
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr36);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr71);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           §§pop();
                           §§goto(addr72);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§goto(addr72);
                     }
                  }
                  throw new RangeError("Invalid child index");
               }
            }
            §§goto(addr68);
         }
         addr72:
         if(_loc3_)
         {
            addr68:
            §§push(param1 < this.numChildren);
         }
         return this.§[a§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§[a§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§[a§[_loc3_].name == param1)
            {
               if(!(_loc5_ && param1))
               {
                  return this.§[a§[_loc3_];
               }
            }
            _loc3_++;
            if(!(_loc4_ || this))
            {
               break;
            }
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§[a§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ == -1)
            {
               if(_loc5_)
               {
                  throw new ArgumentError("Not a child of this container");
               }
               addr64:
               this.§[a§.splice(param2,0,param1);
            }
            else
            {
               addr57:
               this.§[a§.splice(_loc3_,1);
               if(_loc5_)
               {
                  §§goto(addr64);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §4g§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(-1);
               if(_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || this)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr80:
                           §§pop();
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr91);
                           }
                           §§goto(addr94);
                        }
                     }
                     addr91:
                     §§goto(addr90);
                  }
                  §§goto(addr80);
               }
               addr90:
               §§goto(addr89);
            }
            addr89:
            §§goto(addr88);
         }
         addr88:
         if(_loc4_ == -1)
         {
            if(_loc5_)
            {
               addr94:
               throw new ArgumentError("Not a child of this container");
            }
         }
         else
         {
            this.§]i§(_loc3_,_loc4_);
         }
      }
      
      public function §]i§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc5_ && param1))
         {
            this.§[a§[param1] = _loc4_;
            if(_loc6_)
            {
               this.§[a§[param2] = _loc3_;
            }
         }
      }
      
      public function §&!r§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§[a§ = this.§[a§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!_loc7_)
         {
            if(param1 == this)
            {
               if(_loc6_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:int = this.§[a§.length;
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  return false;
               }
               §§push(Boolean(_loc5_ = (_loc4_ = this.§[a§[_loc3_]) as DisplayObjectContainer));
               if(!(_loc7_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc2_)
                     {
                        §§pop();
                        if(_loc6_ || this)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!_loc7_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc7_)
                              {
                                 addr116:
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr116);
                  }
               }
               addr95:
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  addr124:
                  if(_loc4_ == param1)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§goto(addr135);
                     }
                     continue;
                  }
               }
               _loc3_++;
               continue;
               addr116:
               return §§pop();
            }
            §§push(true);
            if(!_loc6_)
            {
               addr135:
               return true;
            }
            §§goto(addr116);
         }
         addr29:
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
         if(_loc11_)
         {
            if(param2 == null)
            {
               addr32:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§[a§.length;
            §§push(_loc3_);
            if(!_loc10_)
            {
               §§push(0);
               if(!(_loc10_ && param2))
               {
                  if(§§pop() == §§pop())
                  {
                     §+y§(param1,§`!3§);
                     transformCoords(§`!3§,0,0,§;!'§);
                     if(_loc11_)
                     {
                        param2.x = §;!'§.x;
                        param2.y = §;!'§.y;
                        if(!(_loc10_ && this))
                        {
                           param2.width = param2.height = 0;
                        }
                        return param2;
                     }
                     §§goto(addr113);
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(_loc11_)
                     {
                        §§push(1);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr173);
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc10_)
                  {
                     return this.§[a§[0].getBounds(param1,param2);
                  }
               }
               else
               {
                  addr113:
                  §§push(Number(Number.MAX_VALUE));
                  if(_loc11_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc10_)
                     {
                        §§push(-Number.MAX_VALUE);
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                           if(_loc11_ || this)
                           {
                              §§goto(addr139);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr150);
                  }
                  addr139:
                  _loc5_ = §§pop();
                  §§push(Number(Number.MAX_VALUE));
                  if(!(_loc10_ && this))
                  {
                     addr150:
                     _loc6_ = §§pop();
                     §§goto(addr174);
                  }
                  _loc7_ = §§pop();
                  if(_loc11_ || param2)
                  {
                     addr173:
                     _loc8_ = 0;
                     §§goto(addr174);
                  }
                  addr174:
                  if(_loc11_)
                  {
                     §§push(-Number.MAX_VALUE);
                     if(_loc11_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  while(true)
                  {
                     if(_loc8_ >= _loc3_)
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           addr371:
                           param2.x = _loc4_;
                           addr374:
                           param2.y = _loc6_;
                           param2.width = _loc5_ - _loc4_;
                           break;
                        }
                        §§goto(addr387);
                     }
                     this.§[a§[_loc8_].getBounds(param1,param2);
                     §§push(_loc4_);
                     if(_loc11_ || _loc3_)
                     {
                        §§push(§§pop() < param2.x);
                        if(!_loc10_)
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 §§push(Number(_loc4_));
                                 if(!(_loc10_ && param2))
                                 {
                                    addr229:
                                    §§push(Number(§§pop()));
                                    if(_loc11_ || param1)
                                    {
                                       _loc4_ = §§pop();
                                       if(!(_loc11_ || param2))
                                       {
                                          continue;
                                       }
                                       §§push(_loc5_ > param2.right);
                                       if(_loc11_)
                                       {
                                          if(§§pop())
                                          {
                                             addr260:
                                             §§push(Number(Number(_loc5_)));
                                             if(!(_loc10_ && param2))
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(_loc6_ < param2.y);
                                                   if(_loc11_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               addr303:
                                                               §§push(Number(§§pop()));
                                                               if(_loc11_ || param2)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr316:
                                                                  if(_loc7_ > param2.bottom)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           addr340:
                                                                           _loc7_ = Number(Number(§§pop()));
                                                                           addr339:
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr343:
                                                                              _loc8_++;
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(Number(param2.bottom));
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        §§goto(addr339);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr340);
                                                               addr299:
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr303);
                                                         §§push(Number(param2.y));
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                else
                                                {
                                                   §§goto(addr371);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(param2.right));
                                             if(_loc11_)
                                             {
                                                §§goto(addr260);
                                             }
                                          }
                                          §§goto(addr340);
                                       }
                                       §§goto(addr316);
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr260);
                           }
                           else
                           {
                              §§push(Number(param2.x));
                              if(!(_loc10_ && param2))
                              {
                                 §§goto(addr229);
                              }
                           }
                        }
                        §§goto(addr316);
                     }
                     §§goto(addr303);
                     §§goto(addr371);
                  }
                  param2.height = _loc7_ - _loc6_;
                  addr387:
                  return param2;
               }
               §§goto(addr150);
            }
            §§goto(addr173);
         }
         §§goto(addr32);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc10_ && this))
         {
            §§push(param2);
            if(!(_loc10_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc9_ || _loc3_)
               {
                  addr45:
                  §§push(§§pop());
                  if(!(_loc10_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(!visible);
                              if(_loc9_ || _loc3_)
                              {
                                 addr68:
                                 if(!§§pop())
                                 {
                                    if(_loc10_ && param2)
                                    {
                                    }
                                 }
                                 §§goto(addr92);
                              }
                              §§pop();
                              if(!_loc10_)
                              {
                                 addr92:
                                 if(§§pop())
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §§goto(addr100);
                                    }
                                    else
                                    {
                                       §§goto(addr102);
                                    }
                                 }
                                 addr102:
                                 var _loc3_:Number = param1.x;
                                 var _loc4_:Number = param1.y;
                                 var _loc5_:int;
                                 §§push(_loc5_ = this.§[a§.length);
                                 if(_loc9_)
                                 {
                                    §§push(int(§§pop() - 1));
                                 }
                                 var _loc6_:* = §§pop();
                                 while(true)
                                 {
                                    if(_loc6_ < 0)
                                    {
                                       return null;
                                    }
                                    _loc7_ = this.§[a§[_loc6_];
                                    if(_loc9_)
                                    {
                                       §+y§(_loc7_,§`!3§);
                                       if(!_loc10_)
                                       {
                                          addr137:
                                          transformCoords(§`!3§,_loc3_,_loc4_,§;!'§);
                                       }
                                       if(_loc8_ = _loc7_.hitTest(§;!'§,param2))
                                       {
                                          if(_loc9_ || this)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc6_);
                                          if(_loc9_ || this)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc6_ = §§pop();
                                       }
                                       continue;
                                    }
                                    §§goto(addr137);
                                 }
                                 return _loc8_;
                                 §§push(!§[,§);
                              }
                              §§goto(addr102);
                           }
                           addr100:
                           return null;
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr45);
         }
         §§goto(addr102);
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_ || this)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_ || _loc3_)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr42);
            }
            §§goto(addr40);
         }
         addr42:
         var _loc3_:int = this.§[a§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§[a§[_loc4_]).alpha);
            if(!(_loc6_ && this))
            {
               §§push(0);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              addr99:
                              §§pop();
                              if(!(_loc6_ && param2))
                              {
                                 §§push(_loc5_.visible);
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_)
                                    {
                                       addr114:
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          addr117:
                                          if(§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                addr120:
                                                §§pop();
                                                §§push(_loc5_.scaleX);
                                                if(_loc7_)
                                                {
                                                   addr125:
                                                   §§push(0);
                                                   if(!_loc6_)
                                                   {
                                                      addr128:
                                                      §§push(§§pop() != §§pop());
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr137:
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§pop();
                                                               addr145:
                                                               addr144:
                                                               §§push(_loc5_.scaleY == 0);
                                                               if(_loc6_ && param2)
                                                               {
                                                               }
                                                               addr164:
                                                               if(§§pop())
                                                               {
                                                                  param1.§ !^§();
                                                                  param1.§<N§(_loc5_);
                                                                  _loc5_.render(param1,param2);
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     param1.§-%§();
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                               _loc4_++;
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr164);
                                                      §§push(!§§pop());
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr144);
                                             }
                                          }
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr99);
               }
               §§goto(addr128);
            }
            §§goto(addr125);
         }
      }
      
      public function §7!m§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1.bubbles)
            {
               if(!(_loc3_ && this))
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
            }
            this.dispatchEventOnChildren(param1);
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc5_)
         {
            this.§?F§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_].dispatchEvent(param1);
            if(!(_loc5_ && param1))
            {
               _loc4_++;
               if(!(_loc6_ || this))
               {
                  break;
               }
            }
         }
      }
      
      private function §?F§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || param1)
         {
            if(param1.hasEventListener(param2))
            {
               if(!(_loc8_ && param2))
               {
                  addr57:
                  param3.push(param1);
                  if(!_loc8_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr64);
               }
            }
            addr62:
            if(_loc4_)
            {
               addr64:
               §§push(int((_loc5_ = _loc4_.§[a§).length));
               if(_loc9_ || param2)
               {
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     addr92:
                     _loc7_ = 0;
                  }
                  while(_loc7_ < _loc6_)
                  {
                     this.§?F§(_loc5_[_loc7_],param2,param3);
                     if(!(_loc8_ && param1))
                     {
                        _loc7_++;
                        if(!(_loc9_ || param3))
                        {
                           break;
                        }
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr92);
            }
            addr120:
            return;
         }
         §§goto(addr57);
      }
      
      public function get numChildren() : int
      {
         return this.§[a§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc5_ && this))
         {
            this.§+h§ = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§[a§)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§+h§;
      }
   }
}
