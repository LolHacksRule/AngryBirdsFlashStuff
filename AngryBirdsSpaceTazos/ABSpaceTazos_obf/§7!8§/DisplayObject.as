package §7!8§
{
   import §5Q§.§%!t§;
   import §=5§.§#"9§;
   import §=5§.§^T§;
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
      
      private static var §7">§:Vector.<DisplayObject>;
      
      private static var §>!Z§:Rectangle;
      
      private static var §02§:Matrix;
      
      private static var §2R§:Matrix;
      
      protected static var § !t§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7">§ = new Vector.<DisplayObject>(0);
         }
         loop0:
         while(true)
         {
            §>!Z§ = new Rectangle();
            while(true)
            {
               §02§ = new Matrix();
               loop2:
               while(!(_loc1_ && _loc1_))
               {
                  §2R§ = new Matrix();
                  while(_loc2_)
                  {
                     § !t§ = 0;
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §;o§:Number;
      
      private var §+!H§:Number;
      
      private var §]f§:Number;
      
      private var §#A§:Number;
      
      private var §1"3§:Number;
      
      private var §!",§:Number;
      
      private var §5!_§:Boolean;
      
      private var §[!7§:Boolean;
      
      private var §`"@§:Number;
      
      private var mName:String;
      
      private var §-!I§:Number;
      
      private var §]!&§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc3_ || _loc2_)
                  {
                     throw new §^T§();
                  }
               }
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§1"3§ = 0);
               if(_loc3_)
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§+!H§ = §§pop();
               §§push(_loc1_);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§;o§ = §§pop();
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§%W§ = §§pop();
               §§pop().§""4§ = _loc1_;
               if(!_loc2_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(this.§!",§ = 1);
                  if(_loc3_ || this)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§#A§ = §§pop();
                  §§pop().§]f§ = _loc1_;
                  if(!_loc2_)
                  {
                     this.§[!7§ = _loc1_ = true;
                     this.§5!_§ = _loc1_;
                     if(_loc3_)
                     {
                        addr150:
                        this.§-!I§ = -1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr150);
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
      
      public function §]!5§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]!&§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§]!&§);
                     addr83:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr85:
                        while(true)
                        {
                        }
                     }
                     addr53:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
               for(; param1; §§goto(addr85))
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     this.dispose();
                  }
                  §§goto(addr53);
               }
               addr20:
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr85);
      }
      
      public function §]!U§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §#"9§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§5!_§);
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          do
                                          {
                                             if(this.getBounds(this,§>!Z§).containsPoint(param1))
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   return this;
                                                }
                                                if(_loc4_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   addr104:
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      break loop8;
                                                   }
                                                   continue loop4;
                                                }
                                                addr57:
                                             }
                                             §§push(null);
                                             if(_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr112);
                                          }
                                          while(!_loc4_);
                                          
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§[!7§);
                                             if(!(_loc4_ && param1))
                                             {
                                                continue loop5;
                                             }
                                             addr86:
                                             addr86:
                                             if(!(_loc4_ && param1))
                                             {
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop0;
                                             }
                                             addr126:
                                             while(_loc3_ || param2)
                                             {
                                                §§pop();
                                                continue loop7;
                                                §§goto(addr86);
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr104);
                                    }
                                    addr112:
                                    return §§pop();
                                    §§push(null);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §2R§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§]!U§(_loc2_.§]!&§,§02§);
            if(_loc4_ || param1)
            {
               §2R§.concat(§02§);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §2R§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §2R§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr67);
            }
            _loc2_.§]!U§(_loc2_.§]!&§,§02§);
            if(!_loc3_)
            {
               break;
            }
            §2R§.concat(§02§);
            if(_loc4_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         §2R§.invert();
         addr67:
         return §2R§.transformPoint(param1);
      }
      
      public function render(param1:§%!t§, param2:Number) : void
      {
         throw new §#"9§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(!(_loc4_ && _loc3_))
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr47:
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc4_)
                  {
                     if(_loc2_.timestamp == this.§-!I§)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return;
                        }
                     }
                  }
                  this.§-!I§ = _loc2_.timestamp;
                  addr88:
                  super.dispatchEvent(param1);
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr47);
      }
      
      function §7"=§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        addr49:
                        §§pop();
                        if(_loc8_ || this)
                        {
                           §§push(_loc2_ == null);
                           if(_loc8_ || this)
                           {
                              addr68:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc7_ && this))
                              {
                                 break;
                              }
                              _loc3_ = §,!O§();
                              if(_loc8_)
                              {
                                 §§push(param1 == this.§]!&§);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(!§§pop());
                                    if(_loc8_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc7_ && this))
                                       {
                                          addr121:
                                          §§push(§§pop());
                                          if(_loc8_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.§]!&§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            addr153:
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     addr174:
                                                                     §§pop();
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(_loc3_.length > 0);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr188:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 addr196:
                                                                                 §§push(0);
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    var _loc5_:* = §§pop();
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       var _loc6_:* = _loc3_;
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc6_,_loc5_));
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         addr249:
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr252:
                                                                                                            this.§]!&§ = param1;
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               addr264:
                                                                                                               §§push(Boolean(this.§]!&§));
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr268:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr271:
                                                                                                                        §§pop();
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        _loc5_ = 0;
                                                                                                                        addr281:
                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           _loc6_ = _loc3_;
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           addr332:
                                                                                                                           return;
                                                                                                                           addr331:
                                                                                                                           addr330:
                                                                                                                           addr328:
                                                                                                                        }
                                                                                                                        §§goto(addr331);
                                                                                                                     }
                                                                                                                     addr278:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§goto(addr281);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr332);
                                                                                                                  }
                                                                                                                  §§goto(addr278);
                                                                                                               }
                                                                                                               §§goto(addr271);
                                                                                                            }
                                                                                                            §§goto(addr278);
                                                                                                            §§push(_loc3_.length > 0);
                                                                                                         }
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   §§goto(addr330);
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
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   this.addEventListeningObject(this,_loc4_);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr226);
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                              }
                                                                              §§goto(addr271);
                                                                           }
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr68);
                        }
                        break;
                     }
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr49);
         }
         if(_loc2_ == this)
         {
            if(!(_loc7_ && _loc2_))
            {
               throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
            }
         }
         §§goto(addr92);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§]!&§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr57:
                     this.§]!&§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§]!&§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr52:
                     this.§]!&§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
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
      
      public function get §@!Q§() : Matrix
      {
         return this.§]!U§(this.§]!&§);
      }
      
      public function get §0!L§() : Rectangle
      {
         return this.getBounds(this.§]!&§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§]!&§,§>!Z§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]f§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc3_)
               {
                  if(!(_loc4_ || param1))
                  {
                     addr74:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr81:
                  }
                  return;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr74);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§]!&§,§>!Z§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§#A§ = 1;
         }
         §§push(this.height);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc4_ && param1)
               {
                  addr95:
               }
               return;
            }
            if(_loc3_ || this)
            {
               addr73:
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr95);
         }
         §§goto(addr73);
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
               if(_loc2_)
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
         if(!(_loc3_ && param2))
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(_loc3_ && _loc3_);
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(!(_loc3_ && param2))
               {
                  this.removeEventListeningObject(this,param1);
               }
               if(!_loc3_)
               {
                  addr62:
                  break;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §,!O§();
         if(_loc6_ || param1)
         {
            super.removeEventListeners(param1);
            if(_loc6_ || param1)
            {
               if(param1 == null)
               {
                  addr53:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(!_loc6_)
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
         §§goto(addr53);
      }
      
      public function §0!x§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§1"3§);
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
                     §§push(§§pop());
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
                                 §§push(this.§]f§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop58:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§""4§);
                                                            loop14:
                                                            for(; _loc2_; if(_loc3_ && _loc2_)
                                                            {
                                                               continue;
                                                            },§§goto(addr49))
                                                            {
                                                               §§push(0);
                                                               loop15:
                                                               while(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop58;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              loop19:
                                                                              while(_loc2_)
                                                                              {
                                                                                 §§pop();
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    §§push(this.§%W§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr342:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop() == §§pop());
                                                                                             continue loop16;
                                                                                          }
                                                                                          addr465:
                                                                                          addr464:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr466:
                                                                                             while(true)
                                                                                             {
                                                                                                addr468:
                                                                                                §§push(§§pop() != §§pop());
                                                                                                if(!(§§pop() != §§pop()))
                                                                                                {
                                                                                                   addr470:
                                                                                                   §§pop();
                                                                                                   §§push(this.§%W§);
                                                                                                   break loop14;
                                                                                                   addr471:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    loop31:
                                                                                    while(_loc2_ || param1)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          param1.prependRotation(this.§1"3§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                          loop32:
                                                                                          for(; _loc2_; if(_loc3_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          },if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr149:
                                                                                          },§§goto(addr24))
                                                                                          {
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§]f§);
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   addr268:
                                                                                                   while(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop39:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param1.prependScale(this.§]f§,this.§#A§,1);
                                                                                                                                       addr261:
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                param1.prependTranslation(this.§""4§,this.§%W§,0);
                                                                                                                                                break loop40;
                                                                                                                                             }
                                                                                                                                             addr357:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             addr460:
                                                                                                                                             §§push(this.§""4§);
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§1"3§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                addr314:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                                addr155:
                                                                                                                                                if(_loc3_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!(_loc2_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue loop6;
                                                                                                                                                }
                                                                                                                                                §§push(0);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      loop44:
                                                                                                                                                      for(; !(_loc3_ && _loc3_); if(!(_loc2_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      },addr88:,if(!(_loc3_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop19;
                                                                                                                                                      },addr356:,while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop28;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr357);
                                                                                                                                                         §§goto(addr88);
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop36;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr208:
                                                                                                                                                                              §§push(this.§+!H§);
                                                                                                                                                                              if(_loc3_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr212:
                                                                                                                                                                                 while(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr155);
                                                                                                                                                                                    §§goto(addr208);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc2_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr409:
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                 addr212:
                                                                                                                                                                                 addr153:
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop34;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr341);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop14;
                                                                                                                                                                        addr199:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr304:
                                                                                                                                                                        addr487:
                                                                                                                                                                     }
                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr212);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§#A§);
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr420:
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr423:
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr430:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr432:
                                                                                                                                                                           param1.prependTranslation(this.§""4§ + this.§;o§,this.§%W§ + this.§+!H§,0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr24);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop4;
                                                                                                                                                                  addr189:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr104:
                                                                                                                                                               }
                                                                                                                                                               while(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop39;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop27;
                                                                                                                                                                           }
                                                                                                                                                                           param1.prependTranslation(this.§;o§,this.§+!H§,0);
                                                                                                                                                                           addr133:
                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop32;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr261);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr309);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr199);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr153);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr133);
                                                                                                                                                               }
                                                                                                                                                               addr24:
                                                                                                                                                               return;
                                                                                                                                                               §§goto(addr212);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                            addr71:
                                                                                                                                                            if(!(_loc3_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  continue loop44;
                                                                                                                                                               }
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr468);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr468);
                                                                                                                                                      addr232:
                                                                                                                                                   }
                                                                                                                                                   §§push(0);
                                                                                                                                                   addr49:
                                                                                                                                                   break;
                                                                                                                                                   if(_loc3_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop15;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr71);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr189);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr81);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr314);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr342);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr462:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr464);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr212);
                                                                                                                                 }
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr304);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               §§goto(addr468);
                                                                                                            }
                                                                                                            §§goto(addr304);
                                                                                                         }
                                                                                                         §§goto(addr423);
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   if(!(_loc2_ || param1))
                                                                                                   {
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   §§goto(addr420);
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                                 if(!(_loc2_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§goto(addr104);
                                                                                 }
                                                                                 §§goto(addr470);
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           addr355:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr430);
                                                                        }
                                                                        continue loop58;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr409);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§goto(addr408);
                                                                     §§push(this.§+!H§);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr462);
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               §§goto(addr465);
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr430);
                                                         }
                                                         §§goto(addr460);
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr458:
                                                }
                                             }
                                          }
                                          addr484:
                                       }
                                       §§goto(addr487);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr484);
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§""4§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%W§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§`"@§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.§]!&§)
            {
               if(_loc2_)
               {
                  this.§`"@§ = param1;
               }
            }
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§;o§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§;o§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§+!H§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+!H§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§]f§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]f§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§#A§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#A§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§1"3§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() > Math.PI)
               {
                  if(!(_loc3_ && param1))
                  {
                     while(true)
                     {
                        §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                        addr216:
                        while(true)
                        {
                           _loc2_ = §§pop();
                        }
                     }
                     addr197:
                  }
                  while(true)
                  {
                     §§push(param1);
                     addr176:
                     while(true)
                     {
                        §§push(_loc2_);
                        addr177:
                        while(true)
                        {
                           §§push(Math.PI * 2);
                           addr181:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr182:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 addr183:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr184:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr185:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr217:
               }
               while(true)
               {
                  §§push(param1);
                  loop10:
                  for(; _loc4_ || param1; if(!(_loc4_ || this))
                  {
                     continue;
                  },if(_loc4_ || _loc3_)
                  {
                     param1 = §§pop();
                     §§goto(addr119);
                  },§§goto(addr184))
                  {
                     if(!_loc3_)
                     {
                        §§push(-Math.PI);
                        loop11:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop16:
                              while(true)
                              {
                                 this.§1"3§ = param1;
                                 if(_loc4_ || _loc3_)
                                 {
                                    break;
                                 }
                                 addr119:
                                 loop15:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop16;
                                       }
                                       addr146:
                                       while(_loc4_)
                                       {
                                          §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr216);
                                             addr52:
                                             if(_loc3_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§push(Math.PI * 2);
                                                   if(_loc4_)
                                                   {
                                                      addr76:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                else
                                                {
                                                   §§goto(addr177);
                                                }
                                             }
                                             §§goto(addr76);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr185);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc4_ || this))
                                          {
                                             continue loop10;
                                          }
                                          §§goto(addr52);
                                          continue loop15;
                                       }
                                       §§goto(addr184);
                                       addr173:
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr217);
                              }
                              return;
                           }
                           §§goto(addr146);
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr183);
               }
            }
         }
         §§goto(addr197);
      }
      
      public function get alpha() : Number
      {
         return this.§!",§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_ && this)
                              {
                                 addr66:
                                 if(§§pop() > 1)
                                 {
                                    addr69:
                                    §§push(Number(1));
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       addr97:
                                       §§push(Number(§§pop()));
                                    }
                                    else
                                    {
                                       addr78:
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr97);
                                    }
                                 }
                              }
                              §§pop().§!",§ = §§pop();
                              §§goto(addr99);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr69);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           §§goto(addr66);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr66);
               }
               §§goto(addr78);
            }
            §§goto(addr69);
         }
         addr99:
      }
      
      public function get visible() : Boolean
      {
         return this.§5!_§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!_§ = param1;
         }
      }
      
      public function get §]!D§() : Boolean
      {
         return this.§[!7§;
      }
      
      public function set §]!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!7§ = param1;
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
         if(!(_loc3_ && _loc3_))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§]!&§;
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
