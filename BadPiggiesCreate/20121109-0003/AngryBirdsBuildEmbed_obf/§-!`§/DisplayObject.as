package §-!`§
{
   import §6!@§.§;!%§;
   import §6!@§.§<!h§;
   import §@!X§.§"W§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §@!#§:Vector.<DisplayObject>;
      
      private static var §`p§:Rectangle;
      
      private static var §`!3§:Matrix;
      
      private static var §'b§:Matrix;
      
      protected static var §'s§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@!#§ = new Vector.<DisplayObject>(0);
            if(!(_loc1_ && _loc2_))
            {
               §`p§ = new Rectangle();
               if(_loc2_ || _loc1_)
               {
                  addr70:
                  §`!3§ = new Matrix();
                  if(!_loc1_)
                  {
                     §'b§ = new Matrix();
                     if(_loc1_)
                     {
                     }
                     §§goto(addr85);
                  }
                  §'s§ = 0;
               }
            }
            addr85:
            return;
         }
         §§goto(addr70);
      }
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §-!V§:Number;
      
      private var §;!A§:Number;
      
      private var §&!^§:Number;
      
      private var §7?§:Number;
      
      private var §;i§:Number;
      
      private var §["§:Number;
      
      private var § I§:Boolean;
      
      private var §6!A§:Boolean;
      
      private var mName:String;
      
      private var §@!!§:Number;
      
      private var §5!'§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && this))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  §§goto(addr38);
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§;i§ = 0);
                  if(!_loc2_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§;!A§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§-!V§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().mY = §§pop();
                  §§pop().mX = _loc1_;
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§["§ = 1);
                     if(_loc3_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§7?§ = §§pop();
                     §§pop().§&!^§ = _loc1_;
                     addr125:
                     this.§ I§ = this.§6!A§ = true;
                  }
                  this.§@!!§ = -1;
                  return;
               }
            }
            §§goto(addr125);
         }
         addr38:
         throw new §;!%§();
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §`!9§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5!'§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr42:
                     this.§5!'§.removeChild(this);
                     if(!_loc3_)
                     {
                        addr46:
                        if(param1)
                        {
                           if(_loc2_ || param1)
                           {
                              addr55:
                              this.dispose();
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr46);
            }
            §§goto(addr42);
         }
         §§goto(addr55);
      }
      
      public function §+y§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
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
            §§push(param1 == this.§5!'§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§pop();
                        addr216:
                        addr225:
                        §§push(param1 == null);
                        §§push(param1 == null);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(this.§5!'§ == null);
                           }
                        }
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              addr224:
                              §§push(this.mY != 0);
                           }
                        }
                        if(§§pop())
                        {
                           param2.translate(this.mX,this.mY);
                           addr226:
                        }
                        §§goto(addr242);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.§-!V§);
                        §§push(0);
                        if(!_loc6_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc6_ && this))
                           {
                              §§push(!§§pop());
                              §§push(!§§pop());
                              if(_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(this.§;!A§);
                                          if(!_loc6_)
                                          {
                                             §§push(0);
                                             if(_loc5_)
                                             {
                                                addr115:
                                                §§push(§§pop() == §§pop());
                                                if(_loc5_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr126:
                                                      if(§§pop())
                                                      {
                                                         param2.translate(-this.§-!V§,-this.§;!A§);
                                                      }
                                                      §§push(this.§&!^§);
                                                      §§push(1);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr153:
                                                            §§push(!§§pop());
                                                            §§push(!§§pop());
                                                            if(_loc5_ || param2)
                                                            {
                                                               addr162:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr165:
                                                                     §§pop();
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr178:
                                                                        if(this.§7?§ != 1)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr181:
                                                                              param2.scale(this.§&!^§,this.§7?§);
                                                                              addr187:
                                                                              §§push(this.§;i§);
                                                                              §§push(0);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 §§push(this.mX);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr211:
                                                                                       §§push(§§pop() != §§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr216);
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr211);
                                                                           }
                                                                           addr198:
                                                                           param2.rotate(this.§;i§);
                                                                           if(!_loc5_)
                                                                           {
                                                                           }
                                                                           addr242:
                                                                           return param2;
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     if(param1 == null)
                     {
                        var _loc4_:DisplayObject = this;
                        while(_loc4_)
                        {
                           _loc4_.§+y§(_loc4_.§5!'§,§`!3§);
                           if(!_loc5_)
                           {
                              break;
                           }
                           param2.concat(§`!3§);
                           if(!_loc5_)
                           {
                              break;
                           }
                           _loc4_ = _loc4_.parent;
                        }
                        return param2;
                     }
                     if(param1.§5!'§ == this)
                     {
                        if(_loc5_ || param1)
                        {
                           param1.§+y§(this,param2);
                           if(_loc5_)
                           {
                              addr291:
                              param2.invert();
                              if(_loc6_)
                              {
                                 addr304:
                                 §@!#§.length = 0;
                                 var _loc3_:DisplayObject = null;
                                 _loc4_ = this;
                                 if(_loc5_)
                                 {
                                    loop0:
                                    while(_loc4_)
                                    {
                                       §@!#§.push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc4_ = _loc4_.parent;
                                          continue loop0;
                                       }
                                    }
                                    _loc4_ = param1;
                                    if(!(_loc6_ && param2))
                                    {
                                       while(true)
                                       {
                                          §§push(Boolean(_loc4_));
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          §§pop();
                                          if(_loc5_ || this)
                                          {
                                             §§push(§@!#§.indexOf(_loc4_) == -1);
                                             continue;
                                          }
                                       }
                                       if(!_loc6_)
                                       {
                                          if(_loc4_ == null)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr378);
                                             }
                                          }
                                          _loc3_ = _loc4_;
                                          _loc4_ = this;
                                          if(_loc5_ || this)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                if(_loc4_ == _loc3_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc4_.§+y§(_loc4_.§5!'§,§`!3§);
                                                   if(!(_loc5_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      param2.concat(§`!3§);
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                addr425:
                                                _loc4_ = param1;
                                                if(_loc5_ || _loc3_)
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(_loc4_ == _loc3_)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            addr478:
                                                            §'b§.invert();
                                                            if(!_loc6_)
                                                            {
                                                               param2.concat(§'b§);
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      _loc4_.§+y§(_loc4_.§5!'§,§`!3§);
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §'b§.concat(§`!3§);
                                                            if(_loc6_ && this)
                                                            {
                                                               break;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr478);
                                                         addr444:
                                                      }
                                                      break;
                                                      §§goto(addr478);
                                                   }
                                                   return param2;
                                                }
                                                §§goto(addr444);
                                             }
                                             §'b§.identity();
                                             §§goto(addr425);
                                          }
                                          §§goto(addr409);
                                       }
                                    }
                                    addr378:
                                    throw new ArgumentError("Object not connected to target");
                                 }
                                 §§goto(addr322);
                              }
                           }
                           return param2;
                        }
                        §§goto(addr291);
                     }
                     §§goto(addr304);
                  }
               }
               §§goto(addr216);
            }
            §§goto(addr153);
         }
         §§goto(addr181);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §<!h§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(Boolean(param2));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     §§pop();
                     §§push(this.§ I§);
                     if(_loc4_)
                     {
                        §§push(!§§pop());
                        if(_loc4_ || _loc3_)
                        {
                           addr61:
                           if(!§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(_loc4_ || param1)
                                 {
                                    §§push(this.§6!A§);
                                    if(_loc4_ || param1)
                                    {
                                       addr92:
                                       if(!§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             addr95:
                                             §§push(null);
                                             if(_loc4_ || this)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr113:
                                             §§push(null);
                                          }
                                          return §§pop();
                                       }
                                       if(this.getBounds(this,§`p§).containsPoint(param1))
                                       {
                                          return this;
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr95);
                              }
                           }
                        }
                        §§goto(addr92);
                     }
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr61);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §'b§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§+y§(_loc2_.§5!'§,§`!3§);
            if(!(_loc3_ || _loc2_))
            {
               break;
            }
            §'b§.concat(§`!3§);
            if(!(_loc3_ || _loc2_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §'b§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §'b§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  §'b§.invert();
                  break;
               }
               break;
            }
            _loc2_.§+y§(_loc2_.§5!'§,§`!3§);
            if(_loc3_ && _loc3_)
            {
               break;
            }
            §'b§.concat(§`!3§);
            if(!_loc4_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §'b§.transformPoint(param1);
      }
      
      public function render(param1:§"W§, param2:Number) : void
      {
         throw new §<!h§("Method needs to be implemented in subclass");
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
               if(_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(_loc4_)
                  {
                     if(_loc2_.timestamp == this.§@!!§)
                     {
                        if(!(_loc3_ && this))
                        {
                           return;
                        }
                     }
                     this.§@!!§ = _loc2_.timestamp;
                  }
               }
               §§goto(addr82);
            }
            super.dispatchEvent(param1);
         }
         addr82:
      }
      
      function § P§(param1:DisplayObjectContainer) : void
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
               if(!(_loc7_ || this))
               {
                  continue;
               }
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
               §§pop();
               if(!_loc7_)
               {
                  §§goto(addr80);
               }
               §§push(_loc2_ == null);
               if(!(_loc7_ || this))
               {
                  continue;
               }
            }
         }
         if(_loc7_ || param1)
         {
            if(_loc2_ == this)
            {
               if(!(_loc8_ && this))
               {
                  §§goto(addr80);
               }
            }
            _loc3_ = §%]§();
            §§push(param1 == this.§5!'§);
            if(!(_loc8_ && _loc2_))
            {
               §§push(!§§pop());
            }
            §§push(Boolean(§§pop()));
            §§push(Boolean(§§pop()));
            if(_loc7_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(this.§5!'§);
                  if(_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc8_ && param1))
                     {
                        addr122:
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc3_.length > 0);
                           }
                           if(§§pop())
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(0);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    var _loc5_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       var _loc6_:* = _loc3_;
                                       if(!_loc7_)
                                       {
                                       }
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc6_,_loc5_));
                                          if(!(_loc8_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                if(_loc7_ || param1)
                                                {
                                                   this.removeEventListeningObject(this,_loc4_);
                                                }
                                                continue;
                                             }
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr208:
                                                   this.§5!'§ = param1;
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr288);
                                          }
                                          break;
                                       }
                                       for(; §§pop(); §§goto(addr285))
                                       {
                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                          if(_loc8_ && param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr287);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr244);
                              }
                           }
                           §§goto(addr208);
                        }
                        addr222:
                        §§goto(addr221);
                     }
                     addr221:
                     §§goto(addr220);
                  }
                  addr220:
                  §§push(Boolean(this.§5!'§));
                  if(Boolean(this.§5!'§))
                  {
                     if(!(_loc8_ && param1))
                     {
                        §§pop();
                        addr231:
                        §§push(_loc3_.length > 0);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        addr244:
                        _loc5_ = 0;
                        if(_loc7_ || param1)
                        {
                           addr262:
                           _loc6_ = _loc3_;
                           if(_loc7_)
                           {
                              addr285:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 break loop1;
                              }
                              addr285:
                           }
                           while(true)
                           {
                              this.addEventListeningObject(this,_loc4_);
                              §§goto(addr285);
                           }
                           addr281:
                        }
                        addr288:
                     }
                  }
                  return;
               }
               §§goto(addr122);
            }
            §§goto(addr222);
         }
         addr80:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§5!'§);
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  if(_loc3_ || param2)
                  {
                     addr52:
                     this.§5!'§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§5!'§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr48:
                     this.§5!'§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §#d§() : Matrix
      {
         return this.§+y§(this.§5!'§);
      }
      
      public function get §+!;§() : Rectangle
      {
         return this.getBounds(this.§5!'§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§5!'§,§`p§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&!^§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ != 0)
            {
               if(_loc4_ || this)
               {
                  §§push(this);
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleX = §§pop();
                  if(!_loc4_)
                  {
                  }
               }
            }
            else
            {
               this.scaleX = 1;
            }
         }
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§5!'§,§`p§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§7?§ = 1;
         }
         §§push(this.height);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ != 0)
            {
               if(_loc3_ || param1)
               {
                  §§push(this);
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(§§pop() / _loc2_);
                  }
                  §§pop().scaleY = §§pop();
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               this.scaleY = 1;
            }
         }
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
               if(!(_loc3_ && _loc3_))
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
         if(_loc3_)
         {
            super.addEventListener(param1,param2);
            if(_loc3_)
            {
               addr24:
               this.addEventListeningObject(this,param1);
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.removeEventListener(param1,param2);
            if(!_loc3_)
            {
               if(!hasEventListener(param1))
               {
                  if(!_loc3_)
                  {
                     this.removeEventListeningObject(this,param1);
                  }
               }
            }
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §%]§();
         if(_loc7_)
         {
            super.removeEventListeners(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         if(param1 == null)
         {
            addr49:
            for each(_loc3_ in _loc2_)
            {
               if(_loc7_ || _loc2_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc7_ || _loc2_)
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
         if(!_loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mY = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§-!V§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-!V§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§;!A§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§;!A§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§&!^§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§&!^§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§7?§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7?§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§;i§;
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
               if(§§pop() < §§pop())
               {
                  §§push(param1);
                  §§push(Math.PI * 2);
                  if(_loc2_)
                  {
                     §§push(Number(§§pop() + §§pop()));
                     if(!(_loc3_ && param1))
                     {
                        continue;
                     }
                  }
                  break;
               }
               if(!_loc2_)
               {
               }
               while(true)
               {
                  §§push(param1);
                  addr96:
                  while(true)
                  {
                     if(§§pop() <= Math.PI)
                     {
                        if(_loc2_)
                        {
                           this.§;i§ = param1;
                        }
                        §§goto(addr104);
                     }
                     §§push(param1);
                     §§push(Math.PI * 2);
                     break loop0;
                  }
               }
               addr95:
               while(true)
               {
                  param1 = §§pop();
                  if(_loc2_ || param1)
                  {
                     §§goto(addr95);
                  }
                  break;
               }
               addr104:
               return;
               addr87:
            }
            break;
         }
         while(true)
         {
            §§push(Number(§§pop() - §§pop()));
            if(!_loc3_)
            {
               §§goto(addr87);
            }
            §§goto(addr96);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§["§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           §§push(!_loc3_ ? Number(§§pop()) : Number(§§pop()));
                        }
                        else
                        {
                           addr67:
                           §§push(Number(1));
                           if(!(_loc3_ && this))
                           {
                              addr76:
                           }
                        }
                        §§goto(addr79);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr66);
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr66);
               }
               addr66:
               if(§§pop() > 1)
               {
                  §§goto(addr67);
               }
               else
               {
                  §§goto(addr78);
                  §§push(param1);
               }
               §§goto(addr79);
            }
            §§goto(addr67);
         }
         addr79:
         §§pop().§["§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§ I§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§ I§ = param1;
         }
      }
      
      public function get §[,§() : Boolean
      {
         return this.§6!A§;
      }
      
      public function set §[,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§6!A§ = param1;
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
         if(!(_loc2_ && param1))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§5!'§;
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
