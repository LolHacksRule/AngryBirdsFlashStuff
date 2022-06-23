package §?^§
{
   import §&p§.§`G§;
   import §8f§.transformCoords;
   import §]c§.§^!"§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §-!#§:Matrix;
      
      private static var §8b§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || DisplayObjectContainer)
         {
            §-!#§ = new Matrix();
            if(!_loc1_)
            {
               addr30:
               §8b§ = new Point();
            }
            return;
         }
         §§goto(addr30);
      }
      
      private var §#!'§:Vector.<DisplayObject>;
      
      private var §#!A§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               §§goto(addr32);
            }
            §§goto(addr54);
         }
         addr32:
         if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
         {
            if(_loc1_ || _loc2_)
            {
               addr54:
               throw new §^!"§();
            }
         }
         this.§#!'§ = new Vector.<DisplayObject>(0);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§#!'§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc4_ && _loc1_))
               {
                  super.dispose();
                  break;
               }
               break;
            }
            this.§#!'§[_loc2_].dispose();
            if(!(_loc3_ || _loc2_))
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc3_ || this)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr41:
                           §§pop();
                           if(!(_loc4_ && param1))
                           {
                              addr63:
                              if(param2 > this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr66);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr63);
         }
         addr66:
         param1.§#!1§();
         if(_loc3_)
         {
            this.§#!'§.splice(param2,0,param1);
            param1.§1!"§(this);
            if(!(_loc4_ && param1))
            {
               addr96:
               param1.dispatchEvent(new Event(Event.ADDED,true));
               if(stage)
               {
                  if(_loc3_ || param1)
                  {
                     addr112:
                     param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                  }
               }
            }
            §§goto(addr112);
         }
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
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
            if(_loc3_ != -1)
            {
               if(_loc5_)
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              addr67:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr133);
                           }
                           _loc3_ = this.§#!'§[param1];
                           if(!(_loc4_ && this))
                           {
                              _loc3_.dispatchEvent(new Event(Event.§5!=§,true));
                              if(stage)
                              {
                                 if(_loc5_)
                                 {
                                    _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                    if(_loc5_)
                                    {
                                       addr112:
                                       _loc3_.§1!"§(null);
                                    }
                                 }
                                 this.§#!'§.splice(param1,1);
                                 if(_loc5_)
                                 {
                                    if(param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc3_.dispose();
                                       }
                                    }
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr112);
                        }
                     }
                  }
               }
            }
            §§goto(addr67);
         }
         addr133:
      }
      
      public function §+!;§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           addr37:
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(param2);
                              if(!(_loc5_ && this))
                              {
                                 addr61:
                                 addr60:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       addr69:
                                       §§push(this.numChildren);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(!_loc5_)
                                          {
                                             param2 = §§pop();
                                          }
                                          §§goto(addr97);
                                       }
                                       addr97:
                                       var _loc4_:int = §§pop();
                                       §§goto(addr96);
                                    }
                                 }
                                 §§push(param1);
                                 if(_loc6_)
                                 {
                                    addr96:
                                    while(_loc4_ <= param2)
                                    {
                                       this.removeChildAt(param1,param3);
                                       if(!_loc5_)
                                       {
                                          _loc4_++;
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr37);
               }
               §§goto(addr60);
            }
            §§goto(addr97);
         }
         §§goto(addr69);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(0);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc2_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr77:
                           §§pop();
                           if(!_loc2_)
                           {
                              §§goto(addr84);
                           }
                           §§goto(addr87);
                        }
                     }
                     addr84:
                     §§goto(addr83);
                  }
                  §§goto(addr77);
               }
               addr83:
               §§goto(addr81);
            }
            addr81:
            §§goto(addr80);
         }
         addr80:
         if(param1 < this.numChildren)
         {
            if(_loc3_)
            {
               addr87:
               return this.§#!'§[param1];
            }
         }
         throw new RangeError("Invalid child index");
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§#!'§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§#!'§[_loc3_].name == param1)
            {
               if(!_loc4_)
               {
                  return this.§#!'§[_loc3_];
               }
            }
            _loc3_++;
            if(!(_loc5_ || this))
            {
               break;
            }
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§#!'§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc3_ == -1)
            {
               if(!(_loc5_ && param2))
               {
                  §§goto(addr55);
               }
            }
            this.§#!'§.splice(_loc3_,1);
            if(!_loc5_)
            {
               this.§#!'§.splice(param2,0,param1);
            }
            return;
         }
         addr55:
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §;P§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param2))
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               §§push(-1);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr91);
         }
         addr85:
         §§pop();
         if(_loc5_)
         {
            addr91:
            if(_loc4_ == -1)
            {
               if(_loc5_)
               {
                  throw new ArgumentError("Not a child of this container");
               }
            }
         }
         this.§8!<§(_loc3_,_loc4_);
      }
      
      public function §8!<§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && param2))
         {
            this.§#!'§[param1] = _loc4_;
            if(!(_loc6_ && _loc3_))
            {
               this.§#!'§[param2] = _loc3_;
            }
         }
      }
      
      public function §=!<§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!'§ = this.§#!'§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 == this)
            {
               if(_loc6_)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§#!'§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               return false;
            }
            §§push(Boolean(_loc5_ = (_loc4_ = this.§#!'§[_loc3_]) as DisplayObjectContainer));
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc5_.contains(param1));
                        if(_loc6_ || _loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc7_ && this))
                           {
                              addr100:
                              if(§§pop())
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(true);
                                    if(_loc6_ || _loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr134:
                                    if(_loc4_ != param1)
                                    {
                                       _loc3_++;
                                       continue;
                                    }
                                    if(!(_loc6_ || this))
                                    {
                                       continue;
                                    }
                                    return true;
                                 }
                                 return §§pop();
                              }
                           }
                           break;
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr100);
            }
            break;
         }
         return §§pop();
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
         if(!(_loc10_ && this))
         {
            if(param2 == null)
            {
               addr37:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§#!'§.length;
            if(_loc11_ || param2)
            {
               §§push(_loc3_);
               if(_loc11_ || param2)
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §<^§(param1,§-!#§);
                        if(!(_loc10_ && _loc3_))
                        {
                           transformCoords(§-!#§,0,0,§8b§);
                           param2.x = §8b§.x;
                        }
                        param2.y = §8b§.y;
                        if(!_loc10_)
                        {
                           param2.width = param2.height = 0;
                           if(!_loc10_)
                           {
                              return param2;
                           }
                           §§goto(addr180);
                        }
                        else
                        {
                           addr137:
                           §§push(Number(Number.MAX_VALUE));
                           if(_loc11_ || param1)
                           {
                              _loc4_ = §§pop();
                              §§push(-Number.MAX_VALUE);
                              if(!_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_ || param1)
                                 {
                                    _loc5_ = §§pop();
                                    addr162:
                                    §§push(Number(Number.MAX_VALUE));
                                    if(!(_loc10_ && param2))
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr180:
                                          addr196:
                                          §§push(-Number.MAX_VALUE);
                                          if(!_loc10_)
                                          {
                                             addr195:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc7_ = §§pop();
                                          addr198:
                                          _loc8_ = 0;
                                          §§goto(addr197);
                                       }
                                       addr197:
                                       while(true)
                                       {
                                          if(_loc8_ >= _loc3_)
                                          {
                                             if(_loc11_ || _loc3_)
                                             {
                                                addr374:
                                                param2.x = _loc4_;
                                                if(!_loc10_)
                                                {
                                                   addr379:
                                                   param2.y = _loc6_;
                                                   if(!_loc10_)
                                                   {
                                                      param2.width = _loc5_ - _loc4_;
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                             §§goto(addr379);
                                          }
                                          else
                                          {
                                             this.§#!'§[_loc8_].getBounds(param1,param2);
                                             if(!_loc10_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(§§pop() < param2.x);
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            addr236:
                                                            §§push(_loc4_);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  addr252:
                                                                  _loc4_ = Number(§§pop());
                                                                  addr251:
                                                                  §§push(_loc5_ > param2.right);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           addr273:
                                                                           §§push(Number(_loc5_));
                                                                           if(_loc11_)
                                                                           {
                                                                              addr287:
                                                                              _loc5_ = Number(§§pop());
                                                                              §§push(_loc6_);
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() < param2.y);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr302:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc11_ || param2)
                                                                                       {
                                                                                          addr316:
                                                                                          _loc6_ = Number(Number(_loc6_));
                                                                                          §§push(_loc7_);
                                                                                          if(_loc10_ && param2)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr329:
                                                                                          if(§§pop() <= param2.bottom)
                                                                                          {
                                                                                             §§push(Number(param2.bottom));
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr347:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc10_ && param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                          addr311:
                                                                                       }
                                                                                       addr338:
                                                                                       §§push(Number(_loc7_));
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(param2.y));
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              §§goto(addr311);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Number(param2.right));
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           §§goto(addr287);
                                                                        }
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      else
                                                      {
                                                         §§push(Number(param2.x));
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr236);
                                          }
                                       }
                                       param2.height = _loc7_ - _loc6_;
                                       addr396:
                                       return param2;
                                    }
                                    §§goto(addr196);
                                 }
                              }
                           }
                        }
                        §§goto(addr195);
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(!(_loc10_ && param2))
                        {
                           §§push(1);
                        }
                        §§goto(addr198);
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        return this.§#!'§[0].getBounds(param1,param2);
                     }
                     §§goto(addr162);
                  }
                  else
                  {
                     §§goto(addr137);
                  }
                  §§goto(addr195);
               }
               §§goto(addr180);
            }
            §§goto(addr137);
         }
         §§goto(addr37);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_)
         {
            §§push(param2);
            if(!(_loc9_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc10_)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           addr47:
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(!visible);
                              if(_loc10_)
                              {
                                 addr54:
                                 if(!§§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                    }
                                 }
                                 §§goto(addr68);
                              }
                              §§pop();
                              if(_loc9_ && param1)
                              {
                              }
                              §§goto(addr86);
                           }
                           addr68:
                           if(§§pop())
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§goto(addr86);
                              }
                           }
                           var _loc3_:Number = param1.x;
                           var _loc4_:Number = param1.y;
                           var _loc5_:int;
                           §§push(_loc5_ = this.§#!'§.length);
                           if(!(_loc9_ && this))
                           {
                              §§push(int(§§pop() - 1));
                           }
                           var _loc6_:* = §§pop();
                           while(_loc6_ >= 0)
                           {
                              _loc7_ = this.§#!'§[_loc6_];
                              if(!(_loc9_ && _loc3_))
                              {
                                 §<^§(_loc7_,§-!#§);
                                 if(!_loc9_)
                                 {
                                    transformCoords(§-!#§,_loc3_,_loc4_,§8b§);
                                 }
                              }
                              if(_loc8_ = _loc7_.hitTest(§8b§,param2))
                              {
                                 if(_loc10_ || this)
                                 {
                                    return _loc8_;
                                 }
                              }
                              else
                              {
                                 §§push(_loc6_);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc6_ = §§pop();
                              }
                           }
                           return null;
                           §§push(!§-j§);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr47);
         }
         addr86:
         return null;
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() * this.alpha);
               if(!_loc6_)
               {
                  addr30:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr32);
            }
            §§goto(addr30);
         }
         addr32:
         var _loc3_:int = this.§#!'§.length;
         var _loc4_:int = 0;
         for(; _loc4_ < _loc3_; _loc4_++)
         {
            §§push((_loc5_ = this.§#!'§[_loc4_]).alpha);
            if(_loc7_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && param2))
                  {
                     §§push(!§§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc7_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || param2)
                              {
                                 §§pop();
                                 addr95:
                                 §§push(Boolean(_loc5_.visible));
                                 §§push(Boolean(_loc5_.visible));
                                 if(!_loc6_)
                                 {
                                    addr98:
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr101:
                                          §§pop();
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(_loc5_.scaleX);
                                             if(_loc7_)
                                             {
                                                addr113:
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   addr116:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr125:
                                                      §§push(!§§pop());
                                                      if(!§§pop())
                                                      {
                                                         if(_loc7_ || param2)
                                                         {
                                                            §§pop();
                                                            addr158:
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               addr155:
                                                               §§push(_loc5_.scaleY == 0);
                                                            }
                                                            param1.§<<§();
                                                            param1.§5!F§(_loc5_);
                                                            _loc5_.render(param1,param2);
                                                            param1.§8S§();
                                                            continue;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr158);
                                                }
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr158);
                                       }
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr125);
               }
               §§goto(addr116);
            }
            §§goto(addr113);
         }
      }
      
      public function §]d§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1.bubbles)
            {
               if(!_loc2_)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_ || _loc2_)
         {
            this.§7!3§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_].dispatchEvent(param1);
            if(_loc5_ && _loc2_)
            {
               break;
            }
            _loc4_++;
            if(!(_loc6_ || param1))
            {
               break;
            }
         }
      }
      
      private function §7!3§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc8_)
         {
            if(param1.hasEventListener(param2))
            {
               if(!(_loc9_ && param1))
               {
                  addr51:
                  param3.push(param1);
                  if(!(_loc9_ && param3))
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr63);
               }
            }
            addr61:
            if(_loc4_)
            {
               addr63:
               §§push(int((_loc5_ = _loc4_.§#!'§).length));
               if(_loc8_)
               {
                  _loc6_ = §§pop();
                  if(_loc8_)
                  {
                     addr86:
                     _loc7_ = 0;
                  }
                  while(_loc7_ < _loc6_)
                  {
                     this.§7!3§(_loc5_[_loc7_],param2,param3);
                     if(!(_loc9_ && this))
                     {
                        _loc7_++;
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr86);
            }
            addr109:
            return;
         }
         §§goto(addr51);
      }
      
      public function get numChildren() : int
      {
         return this.§#!'§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!_loc5_)
         {
            this.§#!A§ = param1;
         }
         for each(_loc2_ in this.§#!'§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§#!A§;
      }
   }
}
