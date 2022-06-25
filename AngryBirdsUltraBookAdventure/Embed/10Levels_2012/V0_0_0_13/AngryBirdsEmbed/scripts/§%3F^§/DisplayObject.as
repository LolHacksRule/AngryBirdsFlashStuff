package §?^§
{
   import §&p§.§`G§;
   import §]c§.§4_§;
   import §]c§.§^!"§;
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
      
      private static var §&!%§:Vector.<DisplayObject>;
      
      private static var §;;§:Rectangle;
      
      private static var §-!#§:Matrix;
      
      private static var §^%§:Matrix;
      
      protected static var §]j§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!%§ = new Vector.<DisplayObject>(0);
            if(!(_loc1_ && _loc1_))
            {
               §;;§ = new Rectangle();
               if(_loc2_ || _loc1_)
               {
                  §-!#§ = new Matrix();
                  if(!_loc1_)
                  {
                     addr71:
                     §^%§ = new Matrix();
                     if(_loc1_)
                     {
                     }
                     §§goto(addr80);
                  }
               }
               §]j§ = 0;
               addr80:
               return;
            }
         }
         §§goto(addr71);
      }
      
      private var §5!>§:Number;
      
      private var §#!$§:Number;
      
      private var §^A§:Number;
      
      private var §6W§:Number;
      
      private var §4^§:Number;
      
      private var §6!H§:Number;
      
      private var §+H§:Number;
      
      private var §&k§:Number;
      
      private var §#!8§:Boolean;
      
      private var §9C§:Boolean;
      
      private var mName:String;
      
      private var §#]§:Number;
      
      private var §?@§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!"§();
         }
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this.§+H§ = 0);
         if(_loc2_ || _loc1_)
         {
            var _loc1_:*;
            §§push(_loc1_ = §§pop());
         }
         §§pop().§6W§ = §§pop();
         §§push(_loc1_);
         if(_loc2_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§^A§ = §§pop();
         §§push(_loc1_);
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§#!$§ = §§pop();
         §§pop().§5!>§ = _loc1_;
         §§push(this);
         §§push(this);
         §§push(this.§&k§ = 1);
         if(!_loc3_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§6!H§ = §§pop();
         §§pop().§4^§ = _loc1_;
         if(_loc2_)
         {
            this.§#!8§ = this.§9C§ = true;
            this.§#]§ = -1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
         }
      }
      
      public function §#!1§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§?@§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               §§goto(addr51);
            }
            addr42:
            this.§?@§.removeChild(this);
            §§goto(addr40);
         }
         addr40:
         if(!(_loc3_ && _loc2_))
         {
            addr51:
            if(param1)
            {
               if(_loc2_)
               {
                  this.dispose();
               }
            }
         }
      }
      
      public function §<^§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2)
            {
               param2.identity();
               if(_loc6_)
               {
                  addr30:
                  if(param1 == this)
                  {
                     if(!(_loc5_ && param1))
                     {
                        return param2;
                     }
                     addr146:
                     §§push(this.§4^§);
                     if(!_loc5_)
                     {
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc6_ || param2)
                           {
                              §§goto(addr162);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr209);
                  }
                  else
                  {
                     §§push(param1 == this.§?@§);
                     §§push(param1 == this.§?@§);
                     if(_loc6_ || this)
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§pop();
                              §§push(param1 == null);
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc5_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          §§pop();
                                          §§push(this.§?@§ == null);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr86);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr261);
                                    }
                                    addr86:
                                    if(§§pop())
                                    {
                                       §§push(this.§^A§);
                                       §§push(0);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§§pop() != §§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                addr109:
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§push(this.§6W§);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§push(0);
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr130:
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               addr138:
                                                               param2.translate(-this.§^A§,-this.§6W§);
                                                            }
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr219);
                                    }
                                    else if(param1 != null)
                                    {
                                       if(param1.§?@§ == this)
                                       {
                                          if(!_loc5_)
                                          {
                                             param1.§<^§(this,param2);
                                             if(_loc6_ || _loc3_)
                                             {
                                                param2.invert();
                                                if(!(_loc5_ && param2))
                                                {
                                                   return param2;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr374:
                                             §&!%§.length = 0;
                                          }
                                          var _loc3_:DisplayObject = null;
                                          var _loc4_:DisplayObject = this;
                                          if(_loc6_)
                                          {
                                             loop1:
                                             while(_loc4_)
                                             {
                                                §&!%§.push(_loc4_);
                                                if(_loc5_ && param2)
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
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   §§push(Boolean(_loc4_));
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr427:
                                                            §§pop();
                                                            if(!(_loc6_ || param2))
                                                            {
                                                               break;
                                                            }
                                                            addr440:
                                                            if(§&!%§.indexOf(_loc4_) != -1)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr448);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   §§goto(addr427);
                                                }
                                                if(_loc4_ == null)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr448);
                                                   }
                                                }
                                                _loc3_ = _loc4_;
                                                _loc4_ = this;
                                                if(!_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc4_ != _loc3_)
                                                      {
                                                         _loc4_.§<^§(_loc4_.§?@§,§-!#§);
                                                         if(_loc6_)
                                                         {
                                                            param2.concat(§-!#§);
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_ = param1;
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc4_ == _loc3_)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §^%§.invert();
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr552:
                                                                     param2.concat(§^%§);
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            _loc4_.§<^§(_loc4_.§?@§,§-!#§);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §^%§.concat(§-!#§);
                                                               if(_loc6_ || this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr552);
                                                            }
                                                            break;
                                                            §§goto(addr552);
                                                         }
                                                         return param2;
                                                         addr533:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_ = _loc4_.parent;
                                                         §§goto(addr533);
                                                      }
                                                   }
                                                   §^%§.identity();
                                                   §§goto(addr490);
                                                   addr483:
                                                }
                                                while(true)
                                                {
                                                   _loc4_ = _loc4_.parent;
                                                   §§goto(addr483);
                                                }
                                             }
                                             addr448:
                                             throw new ArgumentError("Object not connected to target");
                                          }
                                          §§goto(addr397);
                                       }
                                       §§goto(addr374);
                                    }
                                    §§goto(addr308);
                                 }
                                 §§goto(addr109);
                              }
                              addr162:
                              §§push(!§§pop());
                              §§push(!§§pop());
                              if(!(_loc5_ && this))
                              {
                                 addr170:
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       addr177:
                                       §§push(this.§6!H§ == 1);
                                       if(_loc6_)
                                       {
                                          addr180:
                                          §§push(!§§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             addr188:
                                             if(§§pop())
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   param2.scale(this.§4^§,this.§6!H§);
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr209:
                                                      §§push(this.§+H§);
                                                      §§push(0);
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr219:
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               param2.rotate(this.§+H§);
                                                               addr231:
                                                               §§push(this.§5!>§);
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     addr248:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr294);
                                             }
                                             §§goto(addr209);
                                          }
                                          addr257:
                                          §§goto(addr258);
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr188);
                              }
                              addr258:
                              §§push(!§§pop());
                              if(!!§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr261:
                                    §§pop();
                                    §§goto(addr308);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc5_ && _loc3_)
                                 {
                                    addr308:
                                    if(_loc6_)
                                    {
                                       addr277:
                                       §§push(this.§#!$§ == 0);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr285:
                                          §§push(!§§pop());
                                       }
                                    }
                                    _loc4_ = this;
                                    while(_loc4_)
                                    {
                                       _loc4_.§<^§(_loc4_.§?@§,§-!#§);
                                       if(_loc6_)
                                       {
                                          param2.concat(§-!#§);
                                          if(_loc5_ && param1)
                                          {
                                             break;
                                          }
                                       }
                                       _loc4_ = _loc4_.parent;
                                    }
                                    return param2;
                                 }
                                 addr294:
                                 param2.translate(this.§5!>§,this.§#!$§);
                                 §§goto(addr300);
                              }
                              addr300:
                              return param2;
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr257);
               }
               §§goto(addr138);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr30);
         }
         §§goto(addr294);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §4_§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Boolean(param2));
            §§push(Boolean(param2));
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(this.§#!8§);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        addr49:
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(this.§9C§);
                           if(_loc3_)
                           {
                           }
                           addr66:
                           if(§§pop())
                           {
                              if(_loc4_ || param1)
                              {
                                 addr74:
                                 §§push(null);
                                 if(_loc4_ || _loc3_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr94:
                                 §§push(null);
                              }
                              return §§pop();
                           }
                           if(this.getBounds(this,§;;§).containsPoint(param1))
                           {
                              if(!_loc3_)
                              {
                                 return this;
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr66);
                     }
                  }
                  §§push(!§§pop());
               }
               §§goto(addr66);
            }
            §§goto(addr49);
         }
         §§goto(addr74);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §^%§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§<^§(_loc2_.§?@§,§-!#§);
            if(_loc4_)
            {
               §^%§.concat(§-!#§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §^%§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §^%§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && this))
               {
                  addr76:
                  §^%§.invert();
                  break;
               }
               break;
            }
            _loc2_.§<^§(_loc2_.§?@§,§-!#§);
            if(_loc4_ || _loc3_)
            {
               §^%§.concat(§-!#§);
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr76);
            }
            break;
            §§goto(addr76);
         }
         return §^%§.transformPoint(param1);
      }
      
      public function render(param1:§`G§, param2:Number) : void
      {
         throw new §4_§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_ || param1)
         {
            if(param1 is TouchEvent)
            {
               if(_loc3_)
               {
                  addr42:
                  _loc2_ = param1 as TouchEvent;
                  if(_loc3_)
                  {
                     if(_loc2_.timestamp == this.§#]§)
                     {
                        if(_loc3_ || this)
                        {
                           return;
                        }
                        addr83:
                        super.dispatchEvent(param1);
                     }
                     else
                     {
                        this.§#]§ = _loc2_.timestamp;
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr83);
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr42);
      }
      
      function §1!"§(param1:DisplayObjectContainer) : void
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
               if(!(_loc8_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        addr48:
                        §§pop();
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(_loc2_ == null);
                           if(_loc7_)
                           {
                              addr62:
                              if(§§pop())
                              {
                                 if(_loc7_ || this)
                                 {
                                    if(_loc2_ == this)
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 }
                                 throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
                              }
                              continue;
                           }
                           §§goto(addr62);
                        }
                        break;
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr48);
         }
         _loc3_ = §`1§();
         §§push(param1 != this.§?@§);
         if(_loc7_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc7_)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     addr105:
                     §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(this.§?@§);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc8_ && _loc3_))
                           {
                              addr141:
                              §§push(§§pop());
                              if(_loc7_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       §§pop();
                                       if(!_loc8_)
                                       {
                                          §§push(_loc3_.length > 0);
                                          if(_loc7_)
                                          {
                                             addr161:
                                             if(§§pop())
                                             {
                                                §§push(0);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   var _loc5_:* = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      var _loc6_:* = _loc3_;
                                                      if(_loc8_)
                                                      {
                                                      }
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                               if(!_loc8_)
                                                               {
                                                                  this.removeEventListeningObject(this,_loc4_);
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr200:
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     addr208:
                                                                     this.§?@§ = param1;
                                                                  }
                                                                  §§push(Boolean(this.§?@§));
                                                                  if(Boolean(this.§?@§))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc7_)
                                                                        {
                                                                           addr225:
                                                                           if(_loc3_.length > 0)
                                                                           {
                                                                              addr227:
                                                                              _loc5_ = 0;
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 addr235:
                                                                                 _loc6_ = _loc3_;
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc6_,_loc5_));
                                                                                       break loop3;
                                                                                    }
                                                                                    addr277:
                                                                                    return;
                                                                                    addr273:
                                                                                    addr276:
                                                                                    addr275:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.addEventListeningObject(this,_loc4_);
                                                                                    §§goto(addr273);
                                                                                 }
                                                                                 addr269:
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr277);
                                                         }
                                                         else
                                                         {
                                                            _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                            if(_loc8_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr161);
                              }
                           }
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr141);
               }
               §§goto(addr200);
            }
            §§goto(addr105);
         }
         §§goto(addr141);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§?@§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr50:
         if(_loc3_ || param2)
         {
            §§push(this.§?@§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§?@§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr50:
         if(!_loc4_)
         {
            §§push(this.§?@§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §=_§() : Matrix
      {
         return this.§<^§(this.§?@§);
      }
      
      public function get §4!5§() : Rectangle
      {
         return this.getBounds(this.§?@§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§?@§,§;;§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§4^§ = 1;
         }
         §§push(this.width);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            if(_loc2_ != 0)
            {
               if(_loc3_)
               {
                  addr64:
                  §§push(this);
                  §§push(param1);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleX = §§pop();
                  if(_loc4_)
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
         §§goto(addr64);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§?@§,§;;§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§6!H§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && _loc2_))
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
                  addr65:
                  §§push(this);
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleY = §§pop();
                  if(_loc3_)
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
         §§goto(addr65);
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
               if(_loc2_ || _loc2_)
               {
                  continue loop0;
               }
            }
            return _loc1_;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.addEventListener(param1,param2);
            if(!_loc3_)
            {
               this.addEventListeningObject(this,param1);
            }
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.removeEventListener(param1,param2);
            if(_loc4_ || _loc3_)
            {
               if(!hasEventListener(param1))
               {
                  if(!_loc3_)
                  {
                     addr51:
                     this.removeEventListeningObject(this,param1);
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §`1§();
         if(!_loc7_)
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               if(param1 == null)
               {
                  addr43:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_ && this)
                  {
                  }
               }
               else
               {
                  this.removeEventListeningObject(this,param1);
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §5!F§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§+H§);
            if(!_loc2_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(this.§4^§);
                           if(!(_loc2_ && this))
                           {
                              §§push(1);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc2_)
                                 {
                                    addr59:
                                    §§push(§§pop());
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || this)
                                          {
                                             §§pop();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(this.§6!H§);
                                                §§push(1);
                                                if(!(_loc2_ && param1))
                                                {
                                                   addr93:
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr101:
                                                      if(§§pop())
                                                      {
                                                         §§push(this.§5!>§);
                                                         §§push(this.§^A§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc2_)
                                                            {
                                                               §§push(0);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  addr120:
                                                                  §§push(§§pop() != §§pop());
                                                                  §§push(§§pop() != §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§pop();
                                                                        §§push(this.§#!$§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this.§6W§);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr145:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          addr156:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             param1.prependTranslation(this.§5!>§ + this.§^A§,this.§#!$§ + this.§6W§,0);
                                                                                             addr157:
                                                                                             if(!(_loc3_ || _loc2_))
                                                                                             {
                                                                                                addr239:
                                                                                                param1.prependRotation(this.§+H§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                §§push(this.§4^§);
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() != §§pop());
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc3_ || this)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§6!H§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr298:
                                                                                                                     §§push(§§pop() != 1);
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr307:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr310:
                                                                                                                              param1.prependScale(this.§4^§,this.§6!H§,1);
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr339:
                                                                                                                           §§push(this.§6W§ == 0);
                                                                                                                           if(!(_loc2_ && param1))
                                                                                                                           {
                                                                                                                              addr348:
                                                                                                                              addr349:
                                                                                                                              if(this.§^A§ != 0)
                                                                                                                              {
                                                                                                                                 if(!(_loc2_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    param1.prependTranslation(this.§^A§,this.§6W§,0);
                                                                                                                                 }
                                                                                                                                 §§goto(addr364);
                                                                                                                              }
                                                                                                                              addr364:
                                                                                                                              return;
                                                                                                                              §§push(!§§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr349);
                                                                                                                     }
                                                                                                                     §§goto(addr348);
                                                                                                                  }
                                                                                                                  §§goto(addr349);
                                                                                                               }
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr187:
                                                                                             }
                                                                                             §§goto(addr364);
                                                                                          }
                                                                                          §§goto(addr187);
                                                                                       }
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr213:
                                                                                       §§pop();
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr221:
                                                                                          addr219:
                                                                                          if(this.§#!$§ != 0)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                param1.prependTranslation(this.§5!>§,this.§#!$§,0);
                                                                                             }
                                                                                          }
                                                                                          §§push(this.§+H§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr235:
                                                                                             §§push(0);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(§§pop() != §§pop())
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr239);
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr193:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    addr209:
                                                                                    §§push(§§pop());
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr212:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                       §§goto(addr221);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr348);
                                                                              }
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr145);
                                                            }
                                                            else
                                                            {
                                                               addr192:
                                                               §§goto(addr193);
                                                               §§push(0);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§5!>§);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr192);
                                                         }
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr101);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr348);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr349);
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr209);
               }
               §§goto(addr193);
            }
            §§goto(addr235);
         }
         §§goto(addr239);
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!>§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#!$§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§^A§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^A§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§6W§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6W§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§4^§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4^§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§6!H§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§6!H§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§+H§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            §§push(-Math.PI);
            if(!_loc2_)
            {
               if(§§pop() >= §§pop())
               {
                  if(_loc2_ && param1)
                  {
                  }
                  while(true)
                  {
                     §§push(param1);
                     §§goto(addr95);
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_ || this)
                  {
                     continue;
                  }
                  addr77:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ || param1)
                     {
                        addr95:
                        param1 = §§pop();
                        if(_loc2_ && _loc2_)
                        {
                           §§goto(addr117);
                        }
                        else
                        {
                           addr117:
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(§§pop() <= Math.PI)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        this.§+H§ = param1;
                        break;
                     }
                     break;
                  }
                  §§push(param1);
                  §§push(Math.PI * 2);
                  break loop0;
               }
               addr117:
               return;
               addr104:
            }
            break;
         }
         while(true)
         {
            §§push(§§pop() - §§pop());
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr77);
            }
            §§goto(addr104);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§&k§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(param1 < 0);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                           if(_loc2_)
                           {
                              addr75:
                           }
                           §§goto(addr85);
                        }
                     }
                     else
                     {
                        §§goto(addr71);
                     }
                     §§goto(addr75);
                  }
                  else
                  {
                     §§push(param1 > 1);
                  }
                  §§goto(addr71);
               }
               if(§§pop())
               {
                  addr71:
                  §§push(Number(1));
                  if(!_loc2_)
                  {
                     §§goto(addr75);
                  }
                  else
                  {
                     addr84:
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr84);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr71);
         }
         addr85:
         §§pop().§&k§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§#!8§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#!8§ = param1;
         }
      }
      
      public function get §-j§() : Boolean
      {
         return this.§9C§;
      }
      
      public function set §-j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9C§ = param1;
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
         if(!(_loc3_ && this))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§?@§;
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
