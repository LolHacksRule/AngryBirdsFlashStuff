package § N§
{
   import §5Z§.§4]§;
   import §7!O§.§%6§;
   import §7!O§.§^!§;
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
      
      private static var §+M§:Vector.<DisplayObject>;
      
      private static var §`;§:Rectangle;
      
      private static var §"!§:Matrix;
      
      private static var §#i§:Matrix;
      
      protected static var §#E§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+M§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §`;§ = new Rectangle();
               addr70:
               if(_loc1_ || DisplayObject)
               {
                  §#i§ = new Matrix();
                  do
                  {
                     §#E§ = 0;
                  }
                  while(!(_loc1_ || DisplayObject));
                  
                  addr77:
                  if(!_loc1_)
                  {
                     while(_loc1_)
                     {
                        §§goto(addr70);
                        §§goto(addr77);
                     }
                     while(true)
                     {
                        §"!§ = new Matrix();
                        §§goto(addr68);
                     }
                     addr68:
                     addr83:
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      private var §]!B§:Number;
      
      private var §5G§:Number;
      
      private var §%O§:Number;
      
      private var §&!I§:Number;
      
      private var §!1§:Number;
      
      private var §%!5§:Number;
      
      private var § !'§:Number;
      
      private var §7"§:Number;
      
      private var §%!Q§:Boolean;
      
      private var §8Y§:Boolean;
      
      private var mName:String;
      
      private var §,e§:Number;
      
      private var §'#§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!§();
         }
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this.§ !'§ = 0);
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push(_loc1_ = §§pop());
         }
         §§pop().§&!I§ = §§pop();
         §§push(_loc1_);
         if(_loc2_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§%O§ = §§pop();
         §§push(_loc1_);
         if(_loc2_ || this)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§5G§ = §§pop();
         §§pop().§]!B§ = _loc1_;
         §§push(this);
         §§push(this);
         §§push(this.§7"§ = 1);
         if(!_loc3_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().§%!5§ = §§pop();
         §§pop().§!1§ = _loc1_;
         if(_loc2_)
         {
            this.§%!Q§ = this.§8Y§ = true;
         }
         this.§,e§ = -1;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §3!I§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§'#§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'#§);
                     addr58:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr60:
                        while(true)
                        {
                        }
                     }
                  }
                  addr56:
               }
               for(; param1; §§goto(addr60))
               {
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     this.dispose();
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr56);
               }
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr60);
      }
      
      public function §>!B§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
         §§push(param1 == this.§'#§);
         loop0:
         while(true)
         {
            §§push(§§pop());
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     §§push(param1 == null);
                     §§push(param1 == null);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§'#§ == null);
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(this.§%O§);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr212:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                          }
                                       }
                                       addr211:
                                    }
                                    else
                                    {
                                       if(param1 == null)
                                       {
                                          break;
                                       }
                                       if(param1.§'#§ == this)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             param1.§>!B§(this,param2);
                                             if(!(_loc6_ && this))
                                             {
                                                param2.invert();
                                                addr323:
                                             }
                                             else
                                             {
                                                addr308:
                                                if(true)
                                                {
                                                   var _loc3_:DisplayObject = null;
                                                   var _loc4_:DisplayObject = this;
                                                   if(_loc5_)
                                                   {
                                                      addr343:
                                                      if(_loc4_)
                                                      {
                                                         §+M§.push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            addr339:
                                                            _loc4_ = _loc4_.parent;
                                                            §§goto(addr343);
                                                         }
                                                      }
                                                      _loc4_ = param1;
                                                      if(_loc5_ || this)
                                                      {
                                                         addr361:
                                                         §§push(Boolean(_loc4_));
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr382:
                                                                     addr377:
                                                                     if(§+M§.indexOf(_loc4_) == -1)
                                                                     {
                                                                        _loc4_ = _loc4_.parent;
                                                                        §§goto(addr361);
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr385:
                                                                        if(_loc4_ == null)
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              throw new ArgumentError("Object not connected to target");
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc3_ = _loc4_;
                                                                     _loc4_ = this;
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr435:
                                                                        if(_loc4_ != _loc3_)
                                                                        {
                                                                           _loc4_.§>!B§(_loc4_.§'#§,§"!§);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              param2.concat(§"!§);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 _loc4_ = _loc4_.parent;
                                                                                 §§goto(addr435);
                                                                              }
                                                                              addr447:
                                                                              _loc4_ = param1;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr490:
                                                                                 if(_loc4_ != _loc3_)
                                                                                 {
                                                                                    _loc4_.§>!B§(_loc4_.§'#§,§"!§);
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §#i§.concat(§"!§);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr486:
                                                                                          _loc4_ = _loc4_.parent;
                                                                                          §§goto(addr490);
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    §§goto(addr486);
                                                                                 }
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    addr500:
                                                                                    §#i§.invert();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr504:
                                                                                       param2.concat(§#i§);
                                                                                       §§goto(addr507);
                                                                                    }
                                                                                    addr507:
                                                                                    return param2;
                                                                                 }
                                                                              }
                                                                              §§goto(addr504);
                                                                           }
                                                                           addr445:
                                                                           §#i§.identity();
                                                                           §§goto(addr447);
                                                                        }
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§goto(addr445);
                                                                        }
                                                                        §§goto(addr447);
                                                                     }
                                                                     §§goto(addr445);
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr377);
                                                   }
                                                   §§goto(addr339);
                                                }
                                             }
                                             return param2;
                                          }
                                          addr303:
                                          §+M§.length = 0;
                                          addr320:
                                          if(_loc6_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§goto(addr320);
                                             }
                                             §§goto(addr323);
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr303);
                                    }
                                 }
                                 addr240:
                                 _loc4_ = this;
                                 addr274:
                                 if(_loc4_)
                                 {
                                    _loc4_.§>!B§(_loc4_.§'#§,§"!§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       param2.concat(§"!§);
                                    }
                                    _loc4_ = _loc4_.parent;
                                    §§goto(addr274);
                                 }
                                 return param2;
                                 addr207:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 §§push(!§§pop());
                                 loop6:
                                 while(_loc5_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(this.§&!I§);
                                       §§push(0);
                                       do
                                       {
                                          §§push(§§pop() != §§pop());
                                       }
                                       while(!_loc6_);
                                       
                                       continue loop0;
                                       addr183:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          param2.translate(-this.§%O§,-this.§&!I§);
                                       }
                                       §§push(this.§!1§);
                                       §§push(1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             loop11:
                                             for(; _loc5_; §§push(§§pop()),if(_loc6_ && _loc3_)
                                             {
                                                continue;
                                             },if(_loc6_ && this)
                                             {
                                                continue loop6;
                                             },if(!§§pop())
                                             {
                                                §§goto(addr121);
                                             },§§goto(addr77))
                                             {
                                                if(!§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr178:
                                                      while(true)
                                                      {
                                                         §§push(this.§%!5§);
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(1);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               while(_loc5_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() != §§pop());
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop12;
                                                               addr149:
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         param2.scale(this.§!1§,this.§%!5§);
                                                         addr123:
                                                         §§push(this.§ !'§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     param2.rotate(this.§ !'§);
                                                                  }
                                                                  §§push(this.§]!B§);
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr92:
                                                                     addr77:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr96);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr183);
                                                                        }
                                                                     }
                                                                     addr77:
                                                                     addr121:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           param2.translate(this.§]!B§,this.§5G§);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr240);
                                                                        }
                                                                     }
                                                                     return param2;
                                                                     §§pop();
                                                                     §§push(this.§5G§);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr123);
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr207);
            }
         }
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §%6§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(Boolean(param2));
         §§push(Boolean(param2));
         while(§§pop())
         {
            §§pop();
            §§push(this.§%!Q§);
            if(!(_loc3_ && param2))
            {
               §§push(!§§pop());
            }
            §§push(§§pop());
            if(!(_loc3_ && param2))
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(!this.§8Y§);
                  break;
               }
               break;
            }
         }
         if(§§pop())
         {
            if(!(_loc3_ && param1))
            {
               return null;
            }
            else
            {
               loop1:
               while(true)
               {
                  addr30:
                  while(this.getBounds(this,§`;§).containsPoint(param1))
                  {
                     if(!_loc3_)
                     {
                        return this;
                     }
                     continue loop1;
                  }
                  §§push(null);
                  if(_loc4_ || param2)
                  {
                     return §§pop();
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr30);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §#i§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>!B§(_loc2_.§'#§,§"!§);
            if(_loc3_)
            {
               §#i§.concat(§"!§);
               if(!(_loc3_ || this))
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §#i§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §#i§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  addr81:
                  §#i§.invert();
                  break;
               }
               break;
            }
            _loc2_.§>!B§(_loc2_.§'#§,§"!§);
            if(!(_loc3_ && param1))
            {
               §#i§.concat(§"!§);
               if(_loc4_ || param1)
               {
                  continue;
               }
               §§goto(addr81);
            }
            break;
            §§goto(addr81);
         }
         return §#i§.transformPoint(param1);
      }
      
      public function render(param1:§4]§, param2:Number) : void
      {
         throw new §%6§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_ || this)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr47:
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc4_)
                  {
                     if(_loc2_.timestamp == this.§,e§)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr88);
                  }
                  this.§,e§ = _loc2_.timestamp;
               }
               §§goto(addr88);
            }
            addr88:
            super.dispatchEvent(param1);
            return;
         }
         §§goto(addr47);
      }
      
      function §7]§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc8_)
            {
               §§push(!§§pop());
               if(!(_loc7_ && this))
               {
                  addr45:
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
                  §§pop();
                  if(_loc8_)
                  {
                     §§push(_loc2_ == null);
                     if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr71:
                     if(_loc2_ == this)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
                        }
                     }
                     _loc3_ = §&O§();
                     if(_loc8_)
                     {
                        §§push(Boolean(param1 != this.§'#§));
                        §§push(Boolean(param1 != this.§'#§));
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 §§push(this.§'#§);
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc7_)
                                    {
                                       addr120:
                                       §§push(§§pop());
                                       if(!_loc7_)
                                       {
                                          addr133:
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                addr136:
                                                §§pop();
                                                §§push(_loc3_.length > 0);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§push(0);
                                             if(!(_loc7_ && this))
                                             {
                                                var _loc5_:* = §§pop();
                                                if(_loc8_ || _loc2_)
                                                {
                                                   var _loc6_:* = _loc3_;
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                         if(_loc8_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     addr201:
                                                                     this.§'#§ = param1;
                                                                     §§push(Boolean(this.§'#§));
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        addr215:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§pop();
                                                                              addr223:
                                                                              if(_loc3_.length > 0)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr227:
                                                                                    _loc5_ = 0;
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       _loc6_ = _loc3_;
                                                                                       if(_loc7_ && param1)
                                                                                       {
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc6_,_loc5_));
                                                                                          break loop1;
                                                                                       }
                                                                                       addr268:
                                                                                    }
                                                                                    addr272:
                                                                                    return;
                                                                                    addr271:
                                                                                 }
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               addr270:
                                                               §§goto(addr272);
                                                            }
                                                            else
                                                            {
                                                               _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                               if(_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.removeEventListeningObject(this,_loc4_);
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(§§pop())
                                                      {
                                                         _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                         if(_loc8_)
                                                         {
                                                            this.addEventListeningObject(this,_loc4_);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr227);
                  }
               }
               §§push(!§§pop());
               continue;
            }
            §§goto(addr45);
         }
         if(!_loc8_)
         {
         }
         §§goto(addr71);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§'#§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr52:
                     this.§'#§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§'#§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr42:
                     this.§'#§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
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
      
      public function get §5!H§() : Matrix
      {
         return this.§>!B§(this.§'#§);
      }
      
      public function get §>P§() : Rectangle
      {
         return this.getBounds(this.§'#§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§'#§,§`;§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!1§ = 1;
         }
         §§push(this.width);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     addr84:
                     §§push(this);
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr96:
                  }
                  return;
               }
               §§goto(addr96);
            }
         }
         §§goto(addr84);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§'#§,§`;§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§%!5§ = 1;
         }
         §§push(this.height);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!_loc3_)
               {
                  addr85:
               }
               return;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
         }
         §§goto(addr85);
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
               if(_loc3_ || _loc2_)
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
         if(_loc4_)
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(!_loc4_);
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.removeEventListener(param1,param2);
            loop0:
            for(; !hasEventListener(param1); while(true)
            {
               if(!(_loc3_ && this))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc4_ || param1))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.removeEventListeningObject(this,param1);
            §§goto(addr65);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §&O§();
         if(!(_loc7_ && param1))
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               if(param1 == null)
               {
                  addr48:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_ && _loc3_)
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
         §§goto(addr48);
      }
      
      public function §>m§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§ !'§ == 0);
            §§push(this.§ !'§ == 0);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(this.§!1§);
                     while(true)
                     {
                        §§push(1);
                        addr367:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                        }
                        addr339:
                        §§push(this.§]!B§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr357:
                        §§push(§§pop() + this.§%O§ != 0);
                        if(!(§§pop() + this.§%O§ != 0))
                        {
                           addr361:
                           §§pop();
                           addr296:
                           §§push(this.§5G§ + this.§&!I§);
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr300:
                              §§push(§§pop() != §§pop());
                              if(_loc3_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr339);
                                    }
                                    else
                                    {
                                       §§push(this.§]!B§);
                                       loop10:
                                       while(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(0);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         while(!_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr285:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr286:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(this.§5G§ == 0);
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr285:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  do
                                                                  {
                                                                     param1.prependTranslation(this.§]!B§,this.§5G§,0);
                                                                  }
                                                                  while(_loc2_ || param1);
                                                                  
                                                                  §§goto(addr286);
                                                                  addr245:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§ !'§);
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                            continue loop1;
                                                            loop23:
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%!5§);
                                                                     addr139:
                                                                     addr189:
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        if(!(_loc2_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() == §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           addr149:
                                                                           while(!_loc3_)
                                                                           {
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop() != §§pop());
                                                                              while(true)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              addr195:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr357);
                                                                           }
                                                                        }
                                                                        break;
                                                                        §§goto(addr139);
                                                                     }
                                                                     addr94:
                                                                     §§goto(addr296);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§goto(addr24);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr153:
                                                                     while(true)
                                                                     {
                                                                        param1.prependScale(this.§!1§,this.§%!5§,1);
                                                                        if(_loc3_ && param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              param1.prependTranslation(this.§]!B§ + this.§%O§,this.§5G§ + this.§&!I§,0);
                                                                              continue loop1;
                                                                           }
                                                                           addr304:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr167:
                                                                        }
                                                                     }
                                                                     addr153:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%O§);
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() != §§pop());
                                                                           loop32:
                                                                           while(_loc2_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!(_loc2_ || param1))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              addr370:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(this.§%!5§);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1);
                                                                                       addr329:
                                                                                       while(_loc2_ || this)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                       }
                                                                                       addr168:
                                                                                       §§goto(addr367);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§!1§);
                                                                                          if(!(_loc2_ || this))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr189);
                                                                                          §§push(1);
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop20;
                                                                                             addr71:
                                                                                             if(!(_loc2_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                param1.prependTranslation(this.§%O§,this.§&!I§,0);
                                                                                                addr87:
                                                                                                if(!(_loc2_ || param1))
                                                                                                {
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§&!I§);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr35:
                                                                                                         if(!(_loc2_ || param1))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            if(!(_loc3_ && this))
                                                                                                            {
                                                                                                               while(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr71);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr153);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr24:
                                                                                                               return;
                                                                                                               addr65:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr285);
                                                                                                            }
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr361);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr139);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                   addr135:
                                                                                                }
                                                                                                §§goto(addr94);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   param1.prependRotation(this.§ !'§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr149);
                                                                        }
                                                                     }
                                                                     §§goto(addr167);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr300);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr357);
                                          }
                                          §§goto(addr357);
                                       }
                                       §§goto(addr361);
                                    }
                                 }
                              }
                              addr302:
                              if(§§pop())
                              {
                                 §§goto(addr304);
                              }
                              else
                              {
                                 addr260:
                                 §§goto(addr24);
                              }
                           }
                           §§goto(addr329);
                        }
                        §§goto(addr302);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr370);
               }
            }
         }
         §§goto(addr153);
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]!B§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5G§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§%O§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§%O§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§&!I§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&!I§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§!1§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!1§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§%!5§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!5§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§ !'§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(-Math.PI);
               if(_loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     do
                     {
                        loop2:
                        while(true)
                        {
                           if(param1 <= Math.PI)
                           {
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop1;
                              }
                              if(!_loc3_)
                              {
                                 this.§ !'§ = param1;
                                 continue loop1;
                              }
                           }
                           else
                           {
                              §§push(param1);
                              §§push(Math.PI * 2);
                              loop3:
                              while(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() - §§pop());
                                 while(!(_loc3_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc3_ && _loc2_)
                                    {
                                       addr113:
                                       §§push(Math.PI * 2);
                                       break loop3;
                                    }
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 param1 = §§pop();
                                 break loop2;
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr126);
                              addr73:
                           }
                           §§goto(addr107);
                        }
                        continue loop0;
                     }
                     while(!_loc2_);
                     
                     return;
                  }
                  §§push(param1);
                  §§goto(addr113);
               }
               §§goto(addr73);
            }
            §§goto(addr81);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§7"§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() < 0);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr57:
                           §§push(0);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           addr71:
                           §§push(Number(1));
                           if(_loc2_)
                           {
                           }
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr70);
               }
               addr70:
               if(param1 > 1)
               {
                  §§goto(addr71);
               }
               else
               {
                  §§push(Number(param1));
               }
               §§goto(addr78);
            }
            §§goto(addr57);
         }
         addr78:
         §§pop().§7"§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§%!Q§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!Q§ = param1;
         }
      }
      
      public function get §!!"§() : Boolean
      {
         return this.§8Y§;
      }
      
      public function set §!!"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§8Y§ = param1;
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
         if(!_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§'#§;
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
