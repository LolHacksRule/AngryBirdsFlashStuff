package §&o§
{
   import §<t§.§ !'§;
   import §<t§.§%!<§;
   import §=!0§.§2N§;
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
      
      private static var §7B§:Vector.<DisplayObject>;
      
      private static var §7!"§:Rectangle = new Rectangle();
      
      private static var §2$§:Matrix;
      
      private static var §;!9§:Matrix = new Matrix();
      
      protected static var §49§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7B§ = new Vector.<DisplayObject>(0);
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr43);
            }
            §§goto(addr64);
         }
         addr43:
         if(_loc1_ || _loc2_)
         {
            addr64:
            §2$§ = new Matrix();
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr75);
            }
            §§goto(addr86);
         }
         addr75:
         if(_loc1_ || DisplayObject)
         {
            addr86:
            §49§ = 0;
         }
      }
      
      private var §-`§:Number;
      
      private var §4J§:Number;
      
      private var §!!J§:Number;
      
      private var §[R§:Number;
      
      private var §"+§:Number;
      
      private var §+!-§:Number;
      
      private var §&k§:Number;
      
      private var §1!K§:Number;
      
      private var §?;§:Boolean;
      
      private var §"!F§:Boolean;
      
      private var §,!E§:Number;
      
      private var mName:String;
      
      private var §]!3§:Number;
      
      private var §=+§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(getQualifiedClassName(this) == "starling.display::DisplayObject")
            {
               throw new § !'§();
            }
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.§&k§ = 0);
            if(!(_loc2_ && _loc3_))
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().§[R§ = §§pop();
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§!!J§ = §§pop();
            §§push(_loc1_);
            if(!(_loc2_ && _loc2_))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§4J§ = §§pop();
            §§pop().§-`§ = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               §§push(this);
               §§push(this);
               §§push(this.§1!K§ = 1);
               if(_loc3_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§+!-§ = §§pop();
               §§pop().§"+§ = _loc1_;
               if(!_loc2_)
               {
                  addr123:
                  this.§?;§ = this.§"!F§ = true;
               }
               this.§]!3§ = -1;
            }
            return;
         }
         §§goto(addr123);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §?!E§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§=+§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr75);
               }
               §§goto(addr66);
            }
            addr57:
            this.§=+§.removeChild(this);
            if(!(_loc3_ && _loc2_))
            {
               addr66:
               if(param1)
               {
                  if(!(_loc3_ && this))
                  {
                     addr75:
                     this.dispose();
                  }
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §&M§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            if(param2)
            {
               param2.identity();
            }
            else
            {
               param2 = new Matrix();
            }
            if(param1 == this)
            {
               return param2;
            }
            §§push(param1 == this.§=+§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop());
               if(_loc5_ || param2)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           addr69:
                           §§push(param1 == null);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop());
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§=+§ == null);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr102);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr154);
                  }
                  addr102:
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(this.§!!J§);
                        §§push(0);
                        if(!_loc6_)
                        {
                           §§push(§§pop() != §§pop());
                           §§push(§§pop() != §§pop());
                           if(_loc5_ || _loc3_)
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(_loc5_ || param2)
                                 {
                                    §§push(this.§[R§);
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       addr135:
                                       §§push(§§pop() != §§pop());
                                       if(_loc5_)
                                       {
                                          addr138:
                                          if(§§pop())
                                          {
                                             addr139:
                                             param2.translate(-this.§!!J§,-this.§[R§);
                                          }
                                          §§push(this.§"+§);
                                          §§push(1);
                                          if(_loc5_)
                                          {
                                             addr154:
                                             §§push(§§pop() != §§pop());
                                             §§push(§§pop() != §§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                addr162:
                                                if(!§§pop())
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§pop();
                                                      §§push(this.§+!-§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr181:
                                                         §§push(§§pop() == 1);
                                                         if(_loc5_)
                                                         {
                                                            addr185:
                                                            addr184:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  param2.scale(this.§"+§,this.§+!-§);
                                                               }
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         addr225:
                                                         §§goto(addr224);
                                                      }
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         addr212:
                                                         §§push(§§pop() != §§pop());
                                                         if(!(§§pop() != §§pop()))
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§pop();
                                                               addr221:
                                                               addr224:
                                                               addr226:
                                                               §§push(this.§&k§);
                                                               §§push(0);
                                                               if(_loc5_)
                                                               {
                                                                  addr199:
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     addr200:
                                                                     param2.rotate(this.§&k§);
                                                                  }
                                                                  §§push(this.§-`§);
                                                               }
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     param2.translate(this.§-`§,this.§4J§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr258);
                                                                     }
                                                                  }
                                                               }
                                                               return param2;
                                                               §§push(this.§4J§);
                                                               §§push(0);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr181);
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr199);
                     }
                  }
                  else if(param1 != null)
                  {
                     if(param1.§=+§ == this)
                     {
                        if(!_loc6_)
                        {
                           param1.§&M§(this,param2);
                           if(_loc5_ || param2)
                           {
                              param2.invert();
                              if(!(_loc5_ || param2))
                              {
                                 addr315:
                                 §7B§.length = 0;
                                 var _loc3_:DisplayObject = null;
                                 var _loc4_:DisplayObject = this;
                                 if(!_loc6_)
                                 {
                                    loop1:
                                    while(_loc4_)
                                    {
                                       §7B§.push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc4_ = _loc4_.parent;
                                          continue loop1;
                                       }
                                    }
                                    _loc4_ = param1;
                                    if(_loc5_ || param2)
                                    {
                                       while(true)
                                       {
                                          §§push(Boolean(_loc4_));
                                          if(_loc5_ || param2)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   addr373:
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr381:
                                                   if(§7B§.indexOf(_loc4_) != -1)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc4_ == null)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr389);
                                                            }
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr381);
                                          }
                                          §§goto(addr373);
                                       }
                                       _loc3_ = _loc4_;
                                       _loc4_ = this;
                                       if(_loc5_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             if(_loc4_ == _loc3_)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr434:
                                                   §;!9§.identity();
                                                   break;
                                                }
                                                break;
                                             }
                                             _loc4_.§&M§(_loc4_.§=+§,§2$§);
                                             if(!_loc6_)
                                             {
                                                param2.concat(§2$§);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc4_ = _loc4_.parent;
                                          }
                                          _loc4_ = param1;
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                if(_loc4_ == _loc3_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr484);
                                                   }
                                                   break;
                                                }
                                                _loc4_.§&M§(_loc4_.§=+§,§2$§);
                                                if(!_loc6_)
                                                {
                                                   §;!9§.concat(§2$§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr484);
                                                }
                                                break;
                                                §§goto(addr484);
                                             }
                                             param2.concat(§;!9§);
                                          }
                                          addr484:
                                          §;!9§.invert();
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             break loop4;
                                          }
                                          return param2;
                                       }
                                       §§goto(addr434);
                                    }
                                    addr389:
                                    throw new ArgumentError("Object not connected to target");
                                 }
                                 §§goto(addr333);
                              }
                           }
                        }
                        return param2;
                     }
                     §§goto(addr315);
                  }
                  addr258:
                  _loc4_ = this;
                  while(_loc4_)
                  {
                     _loc4_.§&M§(_loc4_.§=+§,§2$§);
                     param2.concat(§2$§);
                     _loc4_ = _loc4_.parent;
                  }
                  return param2;
               }
               §§goto(addr162);
            }
            §§goto(addr135);
         }
         §§goto(addr69);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §%!<§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(Boolean(param2));
            if(_loc3_)
            {
               §§push(§§pop());
               if(!(_loc4_ && param2))
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(this.§?;§);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr53:
                        §§push(!§§pop());
                        if(!!§§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr56);
                           }
                        }
                        §§goto(addr79);
                     }
                     addr56:
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(this.§"!F§);
                        if(!(_loc4_ && this))
                        {
                           addr79:
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(null);
                                 if(_loc3_ || param1)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr107:
                                 §§push(null);
                              }
                              return §§pop();
                           }
                           addr98:
                           if(this.getBounds(this,§7!"§).containsPoint(param1))
                           {
                              §§goto(addr105);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr79);
                     }
                     addr105:
                     return this;
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr98);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §;!9§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&M§(_loc2_.§=+§,§2$§);
            if(_loc4_)
            {
               break;
            }
            §;!9§.concat(§2$§);
            if(!_loc3_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §;!9§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §;!9§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  addr75:
                  §;!9§.invert();
                  break;
               }
               break;
            }
            _loc2_.§&M§(_loc2_.§=+§,§2$§);
            if(_loc3_ || _loc2_)
            {
               §;!9§.concat(§2$§);
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr75);
            }
            break;
            §§goto(addr75);
         }
         return §;!9§.transformPoint(param1);
      }
      
      public function render(param1:§2N§, param2:Number) : void
      {
         throw new §%!<§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(!_loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(!_loc3_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc2_.timestamp == this.§]!3§)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr79);
                  }
                  this.§]!3§ = _loc2_.timestamp;
               }
            }
            §§goto(addr79);
         }
         addr79:
         super.dispatchEvent(param1);
      }
      
      function §%z§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!_loc8_)
            {
               §§push(!§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        addr43:
                        §§pop();
                        if(!(_loc8_ && this))
                        {
                           §§push(_loc2_ == null);
                           if(!_loc8_)
                           {
                              addr57:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 if(_loc2_ == this)
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       break;
                                    }
                                 }
                              }
                              _loc3_ = §'+§();
                              §§push(param1 == this.§=+§);
                              if(_loc7_ || this)
                              {
                                 §§push(Boolean(!§§pop()));
                                 §§push(Boolean(!§§pop()));
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§pop();
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(this.§=+§);
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr119:
                                                §§push(Boolean(§§pop()));
                                                §§push(Boolean(§§pop()));
                                                if(_loc7_ || _loc2_)
                                                {
                                                   addr137:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§pop();
                                                         §§push(_loc3_.length > 0);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr157:
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     var _loc5_:* = §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        var _loc6_:* = _loc3_;
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                        }
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc6_,_loc5_));
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    this.removeEventListeningObject(this,_loc4_);
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr219:
                                                                                    this.§=+§ = param1;
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr228:
                                                                                       §§push(Boolean(this.§=+§));
                                                                                       if(Boolean(this.§=+§))
                                                                                       {
                                                                                          addr229:
                                                                                          §§pop();
                                                                                          addr234:
                                                                                          if(_loc3_.length > 0)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr238:
                                                                                                _loc5_ = 0;
                                                                                                addr237:
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   _loc6_ = _loc3_;
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      addr283:
                                                                                                      return;
                                                                                                      addr279:
                                                                                                      addr282:
                                                                                                      addr281:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.addEventListeningObject(this,_loc4_);
                                                                                                      §§goto(addr279);
                                                                                                   }
                                                                                                   addr275:
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       §§goto(addr234);
                                                                                    }
                                                                                    §§goto(addr237);
                                                                                    addr218:
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr283);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr157);
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr57);
                        }
                        break;
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr43);
         }
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§=+§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr46:
         if(_loc4_)
         {
            §§push(this.§=+§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§=+§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr46:
         if(!_loc3_)
         {
            §§push(this.§=+§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §=E§() : Matrix
      {
         return this.§&M§(this.§=+§);
      }
      
      public function get §4U§() : Rectangle
      {
         return this.getBounds(this.§=+§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§=+§,§7!"§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§"+§ = 1;
         }
         §§push(this.width);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            if(_loc2_ != 0)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr69:
                  §§push(this);
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleX = §§pop();
                  if(_loc4_ && this)
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
         §§goto(addr69);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§=+§,§7!"§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+!-§ = 1;
         }
         §§push(this.height);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != 0)
            {
               if(!_loc3_)
               {
                  addr60:
                  §§push(this);
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleY = §§pop();
                  if(_loc4_ || this)
                  {
                  }
                  §§goto(addr83);
               }
            }
            else
            {
               this.scaleY = 1;
            }
            addr83:
            return;
         }
         §§goto(addr60);
      }
      
      public function get root() : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(_loc3_)
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
         if(_loc3_ || _loc3_)
         {
            super.addEventListener(param1,param2);
            if(!_loc4_)
            {
               this.addEventListeningObject(this,param1);
            }
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.removeEventListener(param1,param2);
            if(!(_loc3_ && _loc3_))
            {
               if(!hasEventListener(param1))
               {
                  if(_loc4_)
                  {
                     addr46:
                     this.removeEventListeningObject(this,param1);
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §'+§();
         if(_loc7_)
         {
            super.removeEventListeners(param1);
            if(_loc7_ || _loc2_)
            {
               §§goto(addr46);
            }
            §§goto(addr59);
         }
         addr46:
         if(param1 == null)
         {
            addr59:
            for each(_loc3_ in _loc2_)
            {
               if(_loc7_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(!_loc7_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §34§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§&k§ == 0);
            §§push(this.§&k§ == 0);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§pop();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr47:
                        §§push(this.§"+§);
                        §§push(1);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr58:
                           §§push(§§pop() == §§pop());
                           §§push(§§pop() == §§pop());
                           if(!(_loc2_ && this))
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(this.§+!-§);
                                    §§push(1);
                                    if(!_loc2_)
                                    {
                                       addr81:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(this.§-`§ + this.§!!J§);
                                             §§push(0);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() != §§pop());
                                                §§push(§§pop() != §§pop());
                                                if(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(this.§4J§ + this.§[R§);
                                                         §§push(0);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  addr135:
                                                                  if(§§pop())
                                                                  {
                                                                     param1.prependTranslation(this.§-`§ + this.§!!J§,this.§4J§ + this.§[R§,0);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr318:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr326:
                                                                        param1.prependTranslation(this.§!!J§,this.§[R§,0);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            else
                                                            {
                                                               addr278:
                                                               §§push(!§§pop());
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr287:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§pop();
                                                                        addr308:
                                                                        §§push(this.§[R§ == 0);
                                                                        if(_loc2_ && _loc2_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         else
                                                         {
                                                            addr245:
                                                            §§push(§§pop() != §§pop());
                                                            §§push(§§pop() != §§pop());
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  addr257:
                                                                  §§push(this.§+!-§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr264:
                                                                     if(§§pop() != 1)
                                                                     {
                                                                        addr265:
                                                                        param1.prependScale(this.§"+§,this.§+!-§,1);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr274:
                                                                           §§goto(addr278);
                                                                           §§push(this.§!!J§ == 0);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      else
                                                      {
                                                         addr186:
                                                         if(this.§4J§ != 0)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               param1.prependTranslation(this.§-`§,this.§4J§,0);
                                                               addr206:
                                                               §§push(this.§&k§);
                                                               §§push(0);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     param1.prependRotation(this.§&k§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        addr235:
                                                                        §§push(this.§"+§);
                                                                        §§push(1);
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            addr333:
                                                            return;
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                   }
                                                   §§goto(addr135);
                                                }
                                                else
                                                {
                                                   addr182:
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          §§push(this.§-`§ == 0);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr287);
                                             }
                                             §§goto(addr186);
                                          }
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr318);
               }
               §§goto(addr58);
            }
            §§goto(addr182);
         }
         §§goto(addr47);
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-`§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4J§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§,!E§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§=+§)
            {
               if(!_loc3_)
               {
                  addr23:
                  this.§,!E§ = param1;
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function get pivotX() : Number
      {
         return this.§!!J§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!J§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§[R§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[R§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§"+§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"+§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§+!-§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§+!-§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§&k§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(param1 > Math.PI)
         {
            if(_loc3_)
            {
               §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
               if(_loc3_ || this)
               {
                  _loc2_ = §§pop();
                  §§push(param1);
               }
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  §§push(Math.PI * 2);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        addr74:
                        param1 = Number(§§pop() - §§pop());
                        §§push(param1);
                        §§push(-Math.PI);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                              if(_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 §§push(param1);
                                 §§push(_loc2_);
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr126);
                                 }
                                 addr126:
                                 addr125:
                                 §§push(§§pop() + §§pop() * (Math.PI * 2));
                                 if(_loc3_)
                                 {
                                    addr129:
                                    §§push(Number(§§pop()));
                                 }
                                 param1 = §§pop();
                                 §§goto(addr131);
                              }
                              §§goto(addr129);
                           }
                           addr131:
                           this.§&k§ = param1;
                           return;
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr125);
               }
               §§goto(addr74);
            }
            §§goto(addr126);
         }
         §§goto(addr74);
      }
      
      public function get alpha() : Number
      {
         return this.§1!K§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(!(_loc2_ && _loc2_))
            {
               §§push(param1 < 0);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     §§push(!_loc2_ ? Number(0) : Number(1));
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        addr73:
                        if(§§pop() > 1)
                        {
                           §§goto(addr74);
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_ || _loc2_)
                           {
                           }
                           §§goto(addr86);
                        }
                     }
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr86);
               }
               §§goto(addr73);
            }
            §§goto(addr60);
         }
         addr86:
         §§pop().§1!K§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§?;§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§?;§ = param1;
         }
      }
      
      public function get §3!D§() : Boolean
      {
         return this.§"!F§;
      }
      
      public function set §3!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§"!F§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§=+§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function set color(param1:uint) : void
      {
      }
   }
}
