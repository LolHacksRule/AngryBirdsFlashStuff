package §#!,§
{
   import §+8§.§0K§;
   import §+8§.§4J§;
   import §7!>§.RenderSupport;
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
      
      private static var §6i§:Vector.<DisplayObject>;
      
      private static var §"!0§:Rectangle;
      
      private static var §]!C§:Matrix;
      
      private static var §!!G§:Matrix;
      
      protected static var §0!_§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || DisplayObject)
         {
            §6i§ = new Vector.<DisplayObject>(0);
            loop0:
            while(true)
            {
               §"!0§ = new Rectangle();
               while(true)
               {
                  §]!C§ = new Matrix();
                  continue loop0;
                  addr58:
                  if(_loc2_)
                  {
                     loop4:
                     while(true)
                     {
                        §0!_§ = 0;
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        addr56:
                        while(_loc2_)
                        {
                           §§goto(addr58);
                           continue loop4;
                        }
                        continue loop0;
                     }
                     return;
                     addr70:
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private var §1X§:Number;
      
      private var §`J§:Number;
      
      private var §1l§:Number;
      
      private var §%!N§:Number;
      
      private var §#!e§:Number;
      
      private var §,;§:Number;
      
      private var §&Z§:Number;
      
      private var §%g§:Number;
      
      private var §#r§:Boolean;
      
      private var §14§:Boolean;
      
      private var mName:String;
      
      private var §^!V§:Number;
      
      private var §;4§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_ || _loc2_)
                  {
                     throw new §0K§();
                  }
                  addr54:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§&Z§ = 0);
                  if(_loc2_ || _loc3_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§%!N§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§1l§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§`J§ = §§pop();
                  §§pop().§1X§ = _loc1_;
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§%g§ = 1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§,;§ = §§pop();
                     §§pop().§#!e§ = _loc1_;
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr153);
                     }
                     §§goto(addr164);
                  }
               }
               §§goto(addr54);
            }
            addr153:
            this.§#r§ = this.§14§ = true;
            if(_loc2_)
            {
               addr164:
               this.§^!V§ = -1;
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.removeEventListeners();
         }
      }
      
      public function §implements§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;4§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     §§push(this.§;4§);
                     while(true)
                     {
                        §§pop().removeChild(this);
                     }
                     addr72:
                  }
                  while(true)
                  {
                     continue loop0;
                     addr49:
                     if(!(_loc2_ && param1))
                     {
                        this.dispose();
                     }
                     if(!_loc2_)
                     {
                        addr20:
                        return;
                        addr61:
                     }
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr61);
      }
      
      public function §@!7§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §4J§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(this.getBounds(this,§"!0§).containsPoint(param1))
                                 {
                                    if(!_loc4_)
                                    {
                                       return this;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_ || param1)
                                    {
                                       break;
                                    }
                                    addr103:
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          break loop10;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§#r§);
                                          addr118:
                                          addr162:
                                          while(!_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop5;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§14§);
                                          if(_loc3_)
                                          {
                                             addr64:
                                             if(_loc3_ || param2)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      addr92:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      addr138:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr92);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             while(_loc3_ || this)
                                             {
                                                §§pop();
                                                continue loop12;
                                                §§goto(addr64);
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr92);
                                       }
                                       addr156:
                                    }
                                 }
                                 §§push(null);
                                 if(_loc3_ || param1)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr103);
                           }
                           addr113:
                           return §§pop();
                           §§push(null);
                        }
                        §§goto(addr162);
                     }
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §!!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!7§(_loc2_.§;4§,§]!C§);
            if(_loc4_)
            {
               break;
            }
            §!!G§.concat(§]!C§);
            if(_loc4_ && _loc2_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §!!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §!!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  §!!G§.invert();
                  break;
               }
               break;
            }
            _loc2_.§@!7§(_loc2_.§;4§,§]!C§);
            if(!_loc3_)
            {
               break;
            }
            §!!G§.concat(§]!C§);
            if(_loc4_ && this)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §!!G§.transformPoint(param1);
      }
      
      public function render(param1:RenderSupport, param2:Number) : void
      {
         throw new §4J§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_ = param1 as TouchEvent;
                  if(_loc3_ || param1)
                  {
                     if(_loc2_.timestamp == this.§^!V§)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           return;
                        }
                     }
                  }
                  this.§^!V§ = _loc2_.timestamp;
               }
               §§goto(addr89);
            }
            super.dispatchEvent(param1);
         }
         addr89:
      }
      
      function §+9§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc8_ && param1))
            {
               §§push(!§§pop());
               if(!(_loc7_ || _loc2_))
               {
                  continue;
               }
               §§push(Boolean(§§pop()));
               if(!_loc8_)
               {
                  addr52:
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        addr64:
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(_loc2_ == null);
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                              if(_loc8_)
                              {
                                 continue;
                              }
                           }
                        }
                        else
                        {
                           addr95:
                           _loc3_ = §<c§();
                           if(!(_loc8_ && this))
                           {
                              §§push(param1 == this.§;4§);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc8_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc8_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   §§pop();
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§push(this.§;4§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            addr164:
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc7_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(_loc3_.length > 0);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr202:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 addr210:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr213:
                                                                                       §§push(0);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             var _loc6_:* = _loc3_;
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               addr267:
                                                                                                               if(_loc7_ || param1)
                                                                                                               {
                                                                                                                  addr275:
                                                                                                                  this.§;4§ = param1;
                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr287:
                                                                                                                     §§push(Boolean(this.§;4§));
                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr299:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr307);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr327);
                                                                                                                        }
                                                                                                                        §§goto(addr299);
                                                                                                                     }
                                                                                                                     §§goto(addr307);
                                                                                                                  }
                                                                                                                  §§goto(addr330);
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            §§goto(addr330);
                                                                                                         }
                                                                                                         addr380:
                                                                                                         §§goto(addr330);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                         if(_loc8_ && this)
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
                                                                                                for(; §§pop(); §§goto(addr378))
                                                                                                {
                                                                                                   _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                   if(!(_loc7_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr373);
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                             §§goto(addr243);
                                                                                          }
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr275);
                                                                              }
                                                                           }
                                                                           addr307:
                                                                           §§pop();
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              addr315:
                                                                              §§push(_loc3_.length > 0);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 addr327:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr331:
                                                                                       _loc5_ = 0;
                                                                                       addr330:
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          _loc6_ = _loc3_;
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             addr378:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                break loop1;
                                                                                             }
                                                                                             addr378:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.addEventListeningObject(this,_loc4_);
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          addr373:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                       §§goto(addr299);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr331);
                        }
                     }
                     §§push(Boolean(§§pop()));
                  }
                  continue;
               }
               §§goto(addr64);
            }
            §§goto(addr52);
         }
         if(!(_loc8_ && _loc3_))
         {
            if(_loc2_ == this)
            {
               if(_loc7_)
               {
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
         }
         §§goto(addr95);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§;4§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr48:
                     this.§;4§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§;4§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
               }
               §§goto(addr58);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr58:
         if(_loc4_ || param2)
         {
            §§push(this.§;4§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §2!6§() : Matrix
      {
         return this.§@!7§(this.§;4§);
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§;4§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§;4§,§"!0§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§#!e§ = 1;
         }
         §§push(this.width);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ || _loc3_))
               {
                  addr95:
               }
               return;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
         }
         §§goto(addr95);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§;4§,§"!0§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,;§ = 1;
         }
         §§push(this.height);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!_loc4_)
               {
                  if(_loc4_ && _loc2_)
                  {
                     addr73:
                     §§push(this);
                     §§push(param1);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr85:
                  }
                  return;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr73);
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
               if(!(_loc2_ && _loc2_))
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
         if(_loc4_ || param1)
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
         if(_loc4_ || param2)
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
               if(_loc3_ && param1)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.removeEventListeningObject(this,param1);
            §§goto(addr67);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §<c§();
         if(_loc7_ || this)
         {
            super.removeEventListeners(param1);
            if(!_loc6_)
            {
               if(param1 == null)
               {
                  addr50:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc7_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc6_ && _loc3_)
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
         §§goto(addr50);
      }
      
      public function §#!9§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§&Z§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§#!e§);
                                       while(true)
                                       {
                                          §§push(1);
                                          addr621:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr622:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          addr499:
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          addr510:
                                          §§push(this.§%!N§);
                                          if(!(_loc2_ && this))
                                          {
                                             addr519:
                                             §§push(§§pop() + §§pop());
                                             §§push(0);
                                             if(_loc2_)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop20:
                                                      while(_loc3_ || this)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§1X§);
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop23:
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop27:
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop28:
                                                                                 while(!(_loc2_ && param1))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop30:
                                                                                          while(!(_loc2_ && _loc3_))
                                                                                          {
                                                                                             §§push(this.§`J§);
                                                                                             loop31:
                                                                                             while(!(_loc2_ && param1))
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         continue loop29;
                                                                                                         addr180:
                                                                                                         if(_loc2_ && _loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc2_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                         loop61:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               loop62:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop65:
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || this)
                                                                                                                                       {
                                                                                                                                          param1.prependTranslation(this.§1l§,this.§%!N§,0);
                                                                                                                                          break loop61;
                                                                                                                                       }
                                                                                                                                       addr462:
                                                                                                                                       break;
                                                                                                                                       addr540:
                                                                                                                                    }
                                                                                                                                    loop52:
                                                                                                                                    while(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr380:
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(this.§,;§);
                                                                                                                                          loop53:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             loop44:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(1);
                                                                                                                                                   loop45:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            addr344:
                                                                                                                                                            addr579:
                                                                                                                                                            while(!(_loc2_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              break loop62;
                                                                                                                                                                           }
                                                                                                                                                                           addr364:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break loop30;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr462);
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               break loop28;
                                                                                                                                                            }
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         addr343:
                                                                                                                                                      }
                                                                                                                                                      §§push(1);
                                                                                                                                                      addr273:
                                                                                                                                                      break;
                                                                                                                                                      if(_loc2_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc2_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc3_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop6;
                                                                                                                                                               }
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               while(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  continue loop61;
                                                                                                                                                               }
                                                                                                                                                               while(!(_loc2_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  while(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 param1.prependTranslation(this.§1X§,this.§`J§,0);
                                                                                                                                                                                 break loop52;
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              §§goto(addr380);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop30;
                                                                                                                                                                           addr446:
                                                                                                                                                                        }
                                                                                                                                                                        addr388:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§&Z§);
                                                                                                                                                                           addr391:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              addr392:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       param1.prependRotation(this.§&Z§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                                       addr407:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr393:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break loop52;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr622);
                                                                                                                                                               }
                                                                                                                                                               if(_loc2_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               §§pop();
                                                                                                                                                               addr599:
                                                                                                                                                               if(!(_loc3_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  break loop53;
                                                                                                                                                               }
                                                                                                                                                               addr544:
                                                                                                                                                               §§push(this.§`J§);
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr499);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               addr544:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr344);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  param1.prependScale(this.§#!e§,this.§,;§,1);
                                                                                                                                                                  loop57:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr246:
                                                                                                                                                                     addr635:
                                                                                                                                                                     loop64:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc3_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop57;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr556:
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr565:
                                                                                                                                                                              §§push(this.§1X§);
                                                                                                                                                                              §§push(this.§1l§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr568);
                                                                                                                                                                                 break loop23;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr544);
                                                                                                                                                                              addr567:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr255:
                                                                                                                                                                        §§push(this.§%!N§);
                                                                                                                                                                        if(!(_loc2_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc2_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr41:
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(!(_loc2_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop1;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop62;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr63:
                                                                                                                                                                                       if(_loc3_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          if(_loc2_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         continue loop64;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr343);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr352);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr370:
                                                                                                                                                                                                while(_loc3_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   continue loop52;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr523);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                             addr227:
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop61;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc3_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                continue loop62;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr579);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr523);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          addr625:
                                                                                                                                                                                          while(!(_loc2_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             break loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                          §§goto(addr63);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr624:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr577:
                                                                                                                                                                                    §§goto(addr579);
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr442);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr624);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr180);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr41);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                 addr178:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr392);
                                                                                                                                                                           }
                                                                                                                                                                           addr568:
                                                                                                                                                                           break loop45;
                                                                                                                                                                        }
                                                                                                                                                                        addr175:
                                                                                                                                                                        while(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           §§goto(addr255);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop53;
                                                                                                                                                                        §§goto(addr178);
                                                                                                                                                                        §§goto(addr568);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr544);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr599);
                                                                                                                                                               addr321:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr175);
                                                                                                                                                            }
                                                                                                                                                            addr162:
                                                                                                                                                            if(!(_loc2_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  break loop65;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr393);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr407);
                                                                                                                                                            addr104:
                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc2_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop65;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop26;
                                                                                                                                                               }
                                                                                                                                                               continue loop29;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr519);
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr577);
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr391);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       §§goto(addr446);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr388);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr246);
                                                                                                                                 }
                                                                                                                                 §§goto(addr392);
                                                                                                                              }
                                                                                                                              break loop61;
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr227);
                                                                                                                     }
                                                                                                                     §§goto(addr364);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr370);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr319);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               §§goto(addr579);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr316);
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc2_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr162);
                                                                                                         }
                                                                                                         §§goto(addr321);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr565);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr544);
                                                                                             }
                                                                                             §§goto(addr519);
                                                                                          }
                                                                                          param1.prependTranslation(this.§1X§ + this.§1l§,this.§`J§ + this.§%!N§,0);
                                                                                          §§goto(addr540);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr444);
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr591);
                                                                                    }
                                                                                    §§goto(addr523);
                                                                                 }
                                                                                 §§goto(addr625);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    break loop20;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr510);
                                                               }
                                                            }
                                                            §§goto(addr556);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr635);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr523);
                                             §§push(§§pop() == §§pop());
                                          }
                                          §§goto(addr567);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr63);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr407);
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1X§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`J§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§1l§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1l§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§%!N§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!N§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§#!e§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#!e§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§,;§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,;§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§&Z§;
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
               if(_loc2_ || param1)
               {
                  §§push(-Math.PI);
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop1:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(§§pop() <= Math.PI)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                addr136:
                                                param1 = Number(§§pop());
                                                continue loop0;
                                             }
                                             §§push(Math.PI * 2);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr121:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr122:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr121);
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr122);
                              }
                              addr65:
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              §§push(Math.PI * 2);
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr136);
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr120);
               }
               §§goto(addr136);
            }
            §§goto(addr121);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§%g§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(!(_loc3_ && this))
            {
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc2_)
                              {
                                 addr83:
                              }
                           }
                           §§goto(addr93);
                        }
                        else
                        {
                           §§goto(addr79);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_ || this)
                        {
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr83);
                  }
                  addr78:
                  if(§§pop() > 1)
                  {
                     addr79:
                     §§push(Number(1));
                     if(_loc2_)
                     {
                        §§goto(addr83);
                     }
                     else
                     {
                        addr92:
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr93);
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr92);
            }
            §§goto(addr79);
         }
         addr93:
         §§pop().§%g§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§#r§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#r§ = param1;
         }
      }
      
      public function get §<@§() : Boolean
      {
         return this.§14§;
      }
      
      public function set §<@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§14§ = param1;
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
         if(!(_loc2_ && _loc3_))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§;4§;
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
