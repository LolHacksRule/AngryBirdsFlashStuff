package §6!7§
{
   import §"v§.§2!;§;
   import §"v§.§^n§;
   import §0P§.RenderSupport;
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
      
      private static var § -§:Vector.<DisplayObject>;
      
      private static var §%Z§:Rectangle;
      
      private static var §18§:Matrix;
      
      private static var §#!#§:Matrix;
      
      protected static var §+S§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § -§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §%Z§ = new Rectangle();
               loop1:
               while(true)
               {
                  §18§ = new Matrix();
                  while(true)
                  {
                     §#!#§ = new Matrix();
                     loop3:
                     while(_loc1_ || DisplayObject)
                     {
                        while(true)
                        {
                           §+S§ = 0;
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private var §`!%§:Number;
      
      private var §else§:Number;
      
      private var §0!>§:Number;
      
      private var §+<§:Number;
      
      private var §?@§:Number;
      
      private var §-Z§:Number;
      
      private var §1!8§:Number;
      
      private var §7!T§:Number;
      
      private var §8!J§:Boolean;
      
      private var §[!W§:Boolean;
      
      private var mName:String;
      
      private var §`b§:Number;
      
      private var §+w§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr34);
                  }
                  else
                  {
                     addr94:
                     §§push(this);
                     §§push(this);
                     §§push(this.§7!T§ = 1);
                     if(!(_loc3_ && _loc1_))
                     {
                        var _loc1_:*;
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§-Z§ = §§pop();
                     §§pop().§?@§ = _loc1_;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§8!J§ = this.§[!W§ = true;
                        if(_loc2_ || _loc1_)
                        {
                        }
                        §§goto(addr152);
                     }
                     this.§`b§ = -1;
                  }
               }
               else
               {
                  addr44:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§1!8§ = 0);
                  if(!_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§+<§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§0!>§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§else§ = §§pop();
                  §§pop().§`!%§ = _loc1_;
                  if(_loc2_)
                  {
                     §§goto(addr94);
                  }
               }
               addr152:
               return;
            }
            §§goto(addr44);
         }
         addr34:
         throw new §2!;§();
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §#g§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§+w§);
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
                  if(_loc3_)
                  {
                     §§push(this.§+w§);
                     while(true)
                     {
                        §§pop().removeChild(this);
                     }
                     addr77:
                  }
                  loop1:
                  while(true)
                  {
                     continue loop0;
                     addr59:
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           addr35:
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr77);
         }
         §§goto(addr56);
      }
      
      public function §[!4§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         throw new §^n§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
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
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§8!J§);
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                continue loop2;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(!§§pop())
                                             {
                                                while(this.getBounds(this,§%Z§).containsPoint(param1))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc3_ || param2))
                                                      {
                                                         break loop10;
                                                      }
                                                      if(_loc3_ || param2)
                                                      {
                                                         return this;
                                                      }
                                                      loop9:
                                                      while(!(_loc4_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§[!W§);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr96:
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr163:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(null);
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr130);
                                             }
                                             addr127:
                                             addr130:
                                             return §§pop();
                                             §§push(null);
                                             addr127:
                                          }
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr163);
                                    if(_loc4_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!(_loc3_ || this))
                                    {
                                       continue loop4;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr127);
                                 }
                              }
                           }
                        }
                        §§goto(addr127);
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §#!#§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§[!4§(_loc2_.§+w§,§18§);
            if(_loc4_ || _loc2_)
            {
               §#!#§.concat(§18§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §#!#§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §#!#§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && param1))
               {
                  addr88:
                  §#!#§.invert();
                  break;
               }
               break;
            }
            _loc2_.§[!4§(_loc2_.§+w§,§18§);
            if(!(_loc4_ && _loc3_))
            {
               §#!#§.concat(§18§);
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr88);
            }
            break;
            §§goto(addr88);
         }
         return §#!#§.transformPoint(param1);
      }
      
      public function render(param1:RenderSupport, param2:Number) : void
      {
         throw new §^n§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(_loc4_ || _loc2_)
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc3_)
                  {
                     if(_loc2_.timestamp == this.§`b§)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                  }
                  this.§`b§ = _loc2_.timestamp;
               }
               §§goto(addr80);
            }
            super.dispatchEvent(param1);
         }
         addr80:
      }
      
      function §6w§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc7_ && _loc3_))
            {
               §§push(!§§pop());
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc8_ || param1)
                  {
                  }
                  addr73:
                  §§push(!§§pop());
                  if(_loc8_ || _loc2_)
                  {
                     addr81:
                     §§push(Boolean(§§pop()));
                  }
                  continue;
               }
               §§push(§§pop());
               if(_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  continue;
               }
               if(!(_loc8_ || this))
               {
                  continue;
               }
               §§pop();
               if(_loc7_)
               {
                  §§goto(addr95);
               }
               §§push(_loc2_ == null);
               if(_loc8_)
               {
                  §§goto(addr73);
               }
               §§goto(addr81);
            }
            §§goto(addr73);
         }
         if(!_loc7_)
         {
            if(_loc2_ == this)
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr95);
               }
            }
            _loc3_ = §8!$§();
            if(_loc8_ || _loc3_)
            {
               §§push(param1 == this.§+w§);
               if(_loc8_ || _loc2_)
               {
                  §§push(!§§pop());
                  if(_loc8_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc8_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc7_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§pop();
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(this.§+w§);
                                       if(_loc8_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             addr185:
                                             §§push(§§pop());
                                             if(_loc8_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc8_)
                                                {
                                                   addr191:
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc3_.length > 0);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc7_)
                                                               {
                                                                  addr216:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        addr224:
                                                                        §§push(0);
                                                                        if(_loc8_)
                                                                        {
                                                                           var _loc5_:* = §§pop();
                                                                           if(!_loc7_)
                                                                           {
                                                                              var _loc6_:* = _loc3_;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc6_,_loc5_));
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr281:
                                                                                                   this.§+w§ = param1;
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      addr291:
                                                                                                      addr293:
                                                                                                      §§push(Boolean(this.§+w§));
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr296:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc8_ || _loc2_)
                                                                                                         {
                                                                                                            addr305:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc7_ && _loc2_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr323:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr327:
                                                                                                                     _loc5_ = 0;
                                                                                                                     addr326:
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr335:
                                                                                                                        _loc6_ = _loc3_;
                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                              break loop3;
                                                                                                                           }
                                                                                                                           addr378:
                                                                                                                           return;
                                                                                                                           addr374:
                                                                                                                           addr377:
                                                                                                                           addr376:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.addEventListeningObject(this,_loc4_);
                                                                                                                           §§goto(addr374);
                                                                                                                        }
                                                                                                                        addr369:
                                                                                                                     }
                                                                                                                     §§goto(addr377);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr378);
                                                                                                            }
                                                                                                            §§goto(addr323);
                                                                                                         }
                                                                                                         §§goto(addr305);
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   §§push(_loc3_.length > 0);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr322:
                                                                                                      §§goto(addr323);
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.removeEventListeningObject(this,_loc4_);
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                       if(_loc7_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr335);
                                                                        }
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr323);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr305);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr296);
               }
               §§goto(addr216);
            }
            §§goto(addr291);
         }
         addr95:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§+w§);
            if(!_loc4_)
            {
               if(§§pop())
               {
               }
               §§goto(addr47);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr47:
         if(!_loc4_)
         {
            §§push(this.§+w§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§+w§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr49:
                     this.§+w§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §&!f§() : Matrix
      {
         return this.§[!4§(this.§+w§);
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§+w§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§+w§,§%Z§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§?@§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ && _loc3_))
               {
                  addr73:
               }
               else
               {
                  addr91:
               }
               return;
            }
            if(_loc4_)
            {
               §§push(this);
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
            §§goto(addr91);
         }
         §§goto(addr73);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§+w§,§%Z§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§-Z§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     addr74:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr81:
                  }
                  else
                  {
                     addr70:
                  }
                  return;
               }
               §§goto(addr81);
            }
            §§goto(addr74);
         }
         §§goto(addr70);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.addEventListener(param1,param2);
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(!_loc4_)
            {
               this.removeEventListeningObject(this,param1);
            }
            if(!(_loc4_ && this))
            {
               break;
            }
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §8!$§();
         if(!_loc7_)
         {
            super.removeEventListeners(param1);
            if(!(_loc7_ && _loc3_))
            {
               if(param1 == null)
               {
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc6_ || this)
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
         §§goto(addr49);
      }
      
      public function §'d§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§1!8§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr594:
                                    while(true)
                                    {
                                       §§push(this.§?@§);
                                       addr576:
                                       while(true)
                                       {
                                          §§push(1);
                                          addr577:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr578:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr593:
                              }
                              while(true)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop13:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop14:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.§-Z§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr526:
                                                            while(true)
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§`!%§);
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(0);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       loop27:
                                                                                       for(; !_loc3_; if(!(_loc2_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       },if(_loc2_ || this)
                                                                                       {
                                                                                          §§goto(addr214);
                                                                                          §§push(Boolean(§§pop()));
                                                                                       },§§goto(addr553),§§push(Boolean(§§pop())))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop28:
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(this.§else§);
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            loop31:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     loop32:
                                                                                                                     for(; _loc2_; if(!(_loc2_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },§§goto(addr277),§§push(!§§pop()))
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           loop34:
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param1.prependTranslation(this.§`!%§,this.§else§,0);
                                                                                                                                       addr413:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr405:
                                                                                                                                 }
                                                                                                                                 loop38:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§1!8§);
                                                                                                                                    while(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc2_ || param1))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                param1.prependRotation(this.§1!8§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr385:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§?@§);
                                                                                                                                             loop43:
                                                                                                                                             for(; _loc2_; if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                if(!(_loc2_ || param1))
                                                                                                                                                {
                                                                                                                                                   break loop31;
                                                                                                                                                }
                                                                                                                                                §§push(1);
                                                                                                                                                loop44:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   loop45:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      loop46:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop47:
                                                                                                                                                         while(_loc2_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr345:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop29;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr385);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  addr344:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr298:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop55:
                                                                                                                                                                           while(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 param1.prependScale(this.§?@§,this.§-Z§,1);
                                                                                                                                                                                 loop56:
                                                                                                                                                                                 while(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§0!>§);
                                                                                                                                                                                       addr149:
                                                                                                                                                                                       loop58:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc3_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr242:
                                                                                                                                                                                          while(_loc2_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc2_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                   if(!(_loc3_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr277:
                                                                                                                                                                                                   addr277:
                                                                                                                                                                                                   while(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr541:
                                                                                                                                                                                                addr541:
                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr480:
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr483:
                                                                                                                                                                                                   §§push(§§pop() != §§pop());
                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr486:
                                                                                                                                                                                                      if(!(_loc3_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr497:
                                                                                                                                                                                                            addr496:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr498:
                                                                                                                                                                                                               param1.prependTranslation(this.§`!%§ + this.§0!>§,this.§else§ + this.§+<§,0);
                                                                                                                                                                                                               break loop56;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr19:
                                                                                                                                                                                                            return;
                                                                                                                                                                                                            addr414:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr593);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop28;
                                                                                                                                                                                                            §§goto(addr486);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                         addr542:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         break loop55;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr571:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr577);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr542);
                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr311:
                                                                                                                                                                                 §§goto(addr414);
                                                                                                                                                                                 addr311:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr594);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§else§);
                                                                                                                                                                           break loop43;
                                                                                                                                                                           addr299:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr146);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr297:
                                                                                                                                                               }
                                                                                                                                                               addr214:
                                                                                                                                                               if(!(_loc2_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr227:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr238);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr405);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr345);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr311);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr149);
                                                                                                                                                                        }
                                                                                                                                                                        addr57:
                                                                                                                                                                        continue loop47;
                                                                                                                                                                        if(!(_loc2_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr69:
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop46;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr83:
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 if(_loc2_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr92:
                                                                                                                                                                                       if(_loc2_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop47;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc3_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr130:
                                                                                                                                                                                                         param1.prependTranslation(this.§0!>§,this.§+<§,0);
                                                                                                                                                                                                         addr138:
                                                                                                                                                                                                         if(_loc2_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr498);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr299);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr227);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr311);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr138);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr19);
                                                                                                                                                                                             addr117:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr298);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr146);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         addr187:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc3_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr214);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr186:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr497);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr92);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr578);
                                                                                                                                                                                          addr174:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr277);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr186);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr187);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr483);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr344);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr83);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr117);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr498);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr553:
                                                                                                                                                                  if(!(_loc2_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr571);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr496);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr471:
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          addr38:
                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop38;
                                                                                                                                       if(_loc3_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       §§goto(addr38);
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            addr540:
                                                                                                            §§goto(addr541);
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr537:
                                                                                                            §§push(this.§0!>§);
                                                                                                         }
                                                                                                         §§goto(addr540);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr528:
                                                                                                      if(!(_loc2_ || param1))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(this.§`!%§);
                                                                                                   }
                                                                                                   §§goto(addr537);
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr576);
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr528);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr541);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr526);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!%§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§else§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§0!>§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§0!>§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§+<§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+<§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§?@§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?@§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§-Z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§-Z§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§1!8§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(-Math.PI);
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        do
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       addr141:
                                       param1 = §§pop();
                                       break;
                                    }
                                    if(§§pop() <= Math.PI)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             break;
                                          }
                                          this.§1!8§ = param1;
                                       }
                                       if(!(_loc3_ && param1))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(Math.PI * 2);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr124:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr125:
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                }
                                             }
                                          }
                                          addr123:
                                       }
                                       §§goto(addr125);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr125);
                           }
                           continue loop0;
                        }
                        while(_loc3_ && this);
                        
                        return;
                     }
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr137:
                        §§push(§§pop() + Math.PI * 2);
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr137);
               }
               §§goto(addr123);
            }
            §§goto(addr124);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§7!T§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || _loc3_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc2_ || param1)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_)
                              {
                                 addr92:
                                 §§push(Number(§§pop()));
                              }
                           }
                           else
                           {
                              addr71:
                              if(§§pop() > 1)
                              {
                                 addr74:
                                 §§push(Number(1));
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr92);
                                 }
                              }
                           }
                           §§pop().§7!T§ = §§pop();
                           §§goto(addr94);
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr92);
            }
            §§goto(addr74);
         }
         addr94:
      }
      
      public function get visible() : Boolean
      {
         return this.§8!J§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8!J§ = param1;
         }
      }
      
      public function get §<!4§() : Boolean
      {
         return this.§[!W§;
      }
      
      public function set §<!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!W§ = param1;
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
         return this.§+w§;
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
