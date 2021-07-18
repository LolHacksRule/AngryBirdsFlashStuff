package §2Y§
{
   import §"^§.§'X§;
   import §2i§.§'u§;
   import §2i§.§?Z§;
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
      
      private static var §-J§:Vector.<DisplayObject>;
      
      private static var §<!7§:Rectangle;
      
      private static var §6!<§:Matrix;
      
      private static var §#S§:Matrix;
      
      protected static var §]!N§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-J§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §<!7§ = new Rectangle();
               while(!_loc2_)
               {
                  §6!<§ = new Matrix();
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        §#S§ = new Matrix();
                        do
                        {
                           §]!N§ = 0;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private var §"!d§:Number;
      
      private var §,!W§:Number;
      
      private var §var §:Number;
      
      private var §9!K§:Number;
      
      private var §#j§:Number;
      
      private var § !=§:Number;
      
      private var §^Y§:Number;
      
      private var §3?§:Number;
      
      private var §`G§:Boolean;
      
      private var §5!'§:Boolean;
      
      private var mName:String;
      
      private var §8f§:Number;
      
      private var §>!Z§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_)
                  {
                     throw new §'u§();
                  }
                  §§goto(addr99);
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§^Y§ = 0);
                  if(_loc2_ || _loc1_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§9!K§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§var § = §§pop();
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§,!W§ = §§pop();
                  §§pop().§"!d§ = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr99:
                     §§push(this);
                     §§push(this);
                     §§push(this.§3?§ = 1);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§ !=§ = §§pop();
                     §§pop().§#j§ = _loc1_;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr128:
                        this.§`G§ = this.§5!'§ = true;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr154:
                           this.§8f§ = -1;
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr128);
         }
         §§goto(addr154);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §7^§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>!Z§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr68:
                     this.§>!Z§.removeChild(this);
                     addr70:
                     while(true)
                     {
                     }
                     addr70:
                  }
                  §§goto(addr70);
               }
               while(param1)
               {
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr70);
                        continue;
                     }
                     this.dispose();
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function §6!5§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         throw new §?Z§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
                              §§push(this.§`G§);
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 do
                                 {
                                    §§push(this.§5!'§);
                                    if(_loc3_ || this)
                                    {
                                       addr78:
                                       if(_loc4_ && param1)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                continue loop6;
                                             }
                                             addr101:
                                             addr97:
                                             addr97:
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   do
                                                   {
                                                      if(this.getBounds(this,§<!7§).containsPoint(param1))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               return this;
                                                            }
                                                            addr99:
                                                            if(_loc3_)
                                                            {
                                                               break loop8;
                                                            }
                                                            continue loop7;
                                                         }
                                                         if(_loc4_ && this)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      §§push(null);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                   while(_loc3_ || this);
                                                   
                                                   continue loop4;
                                                }
                                                §§goto(addr99);
                                             }
                                             addr102:
                                             return §§pop();
                                             §§push(null);
                                             §§goto(addr78);
                                          }
                                          continue loop2;
                                          addr124:
                                       }
                                       §§push(!§§pop());
                                       §§goto(addr97);
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(!(_loc4_ && _loc3_));
                                 
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §#S§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6!5§(_loc2_.§>!Z§,§6!<§);
            if(!_loc3_)
            {
               §#S§.concat(§6!<§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §#S§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §#S§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               _loc2_.§6!5§(_loc2_.§>!Z§,§6!<§);
               if(_loc3_)
               {
                  break;
               }
               §#S§.concat(§6!<§);
               if(_loc4_ || _loc3_)
               {
                  continue;
               }
            }
            §§goto(addr83);
         }
         §#S§.invert();
         addr83:
         return §#S§.transformPoint(param1);
      }
      
      public function render(param1:§'X§, param2:Number) : void
      {
         throw new §?Z§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(_loc4_)
         {
            if(param1 is TouchEvent)
            {
               if(!_loc3_)
               {
                  _loc2_ = param1 as TouchEvent;
                  §§goto(addr28);
               }
               §§goto(addr82);
            }
            §§goto(addr79);
         }
         addr28:
         if(_loc4_ || param1)
         {
            if(_loc2_.timestamp == this.§8f§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr62);
               }
            }
            this.§8f§ = _loc2_.timestamp;
            addr79:
            super.dispatchEvent(param1);
            addr82:
            return;
         }
         addr62:
      }
      
      function §%C§(param1:DisplayObjectContainer) : void
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
               if(_loc8_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc8_ || _loc3_)
                  {
                     §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc2_ == null);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        addr66:
                        if(_loc2_ == this)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              §§goto(addr76);
                           }
                        }
                        _loc3_ = §2!I§();
                        if(!(_loc7_ && param1))
                        {
                           §§push(param1 == this.§>!Z§);
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(!§§pop());
                              if(_loc8_ || _loc2_)
                              {
                                 addr112:
                                 §§push(Boolean(§§pop()));
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§pop();
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(this.§>!Z§);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      addr158:
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr161:
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               addr179:
                                                               §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  addr182:
                                                                  §§push(_loc3_.length > 0);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr188:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              var _loc5_:* = §§pop();
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 var _loc6_:* = _loc3_;
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc6_,_loc5_));
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   addr254:
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr257:
                                                                                                      this.§>!Z§ = param1;
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         addr269:
                                                                                                         §§push(Boolean(this.§>!Z§));
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr273:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  addr281:
                                                                                                                  §§pop();
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr293);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr293);
                                                                                                            }
                                                                                                            addr293:
                                                                                                            if(_loc3_.length > 0)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                         §§goto(addr281);
                                                                                                      }
                                                                                                   }
                                                                                                   _loc5_ = 0;
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      _loc6_ = _loc3_;
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                            break loop3;
                                                                                                         }
                                                                                                         addr346:
                                                                                                         addr347:
                                                                                                         return;
                                                                                                         addr343:
                                                                                                         addr345:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.addEventListeningObject(this,_loc4_);
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                      addr339:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr346);
                                                                                             }
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                             if(_loc7_ && this)
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
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                          if(!(_loc8_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr339);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr293);
                                                }
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr273);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr182);
                     }
                  }
               }
               §§push(!§§pop());
            }
         }
         if(!_loc7_)
         {
            §§goto(addr66);
         }
         addr76:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(this.§>!Z§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr57:
                     this.§>!Z§.removeEventListeningObject(param1,param2);
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
         if(_loc3_)
         {
            §§push(this.§>!Z§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr55:
         if(_loc3_ || param1)
         {
            §§push(this.§>!Z§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §^![§() : Matrix
      {
         return this.§6!5§(this.§>!Z§);
      }
      
      public function get §!!2§() : Rectangle
      {
         return this.getBounds(this.§>!Z§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§>!Z§,§<!7§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§#j§ = 1;
         }
         §§push(this.width);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     addr69:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr91:
                  }
                  return;
               }
               §§goto(addr91);
            }
         }
         §§goto(addr69);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§>!Z§,§<!7§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§ !=§ = 1;
         }
         §§push(this.height);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!(_loc4_ || _loc2_))
               {
                  addr86:
               }
               return;
            }
            if(_loc4_)
            {
               §§push(this);
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
         }
         §§goto(addr86);
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
               if(_loc2_ || _loc1_)
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
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(_loc3_ || this)
               {
                  if(_loc3_)
                  {
                     this.removeEventListeningObject(this,param1);
                     addr61:
                     break;
                  }
                  continue;
               }
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr61);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §2!I§();
         if(!_loc7_)
         {
            super.removeEventListeners(param1);
            if(_loc6_ || this)
            {
               §§goto(addr35);
            }
            §§goto(addr48);
         }
         addr35:
         if(param1 == null)
         {
            addr48:
            for each(_loc3_ in _loc2_)
            {
               if(!(_loc7_ && _loc2_))
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
      }
      
      public function §6!W§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§^Y§);
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
                                 §§push(this.§#j§);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr494:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr193:
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§push(1);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop43:
                                       for(; _loc3_; if(!(_loc3_ || this))
                                       {
                                          continue;
                                       },if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr66);
                                          }
                                          §§goto(addr467);
                                       },§§goto(addr343))
                                       {
                                          §§push(!§§pop());
                                          loop44:
                                          for(; !(_loc2_ && this); if(_loc2_ && _loc3_)
                                          {
                                             continue;
                                          },if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc3_)
                                                {
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr381);
                                          },§§goto(addr276))
                                          {
                                             loop45:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         param1.prependScale(this.§#j§,this.§ !=§,1);
                                                         while(true)
                                                         {
                                                            addr87:
                                                            loop47:
                                                            while(true)
                                                            {
                                                               §§push(this.§var §);
                                                               loop48:
                                                               while(!_loc2_)
                                                               {
                                                                  §§push(0);
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        addr95:
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              continue loop44;
                                                                           }
                                                                           addr275:
                                                                           addr124:
                                                                           §§push(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(!(_loc3_ || _loc2_))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop50:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop51:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(!(_loc3_ || this))
                                                                                                      {
                                                                                                         break loop50;
                                                                                                      }
                                                                                                      §§push(this.§9!K§);
                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop48;
                                                                                                      }
                                                                                                      §§goto(addr34);
                                                                                                      continue loop48;
                                                                                                   }
                                                                                                   addr361:
                                                                                                   addr312:
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      param1.prependRotation(this.§^Y§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                      break loop45;
                                                                                                   }
                                                                                                   loop54:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr284:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§^Y§);
                                                                                                         addr287:
                                                                                                         addr329:
                                                                                                         while(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr423:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  break loop44;
                                                                                                                  §§goto(addr95);
                                                                                                               }
                                                                                                               addr332:
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr287);
                                                                                                         }
                                                                                                         addr419:
                                                                                                         if(§§pop() != 0)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               param1.prependTranslation(this.§"!d§ + this.§var §,this.§,!W§ + this.§9!K§,0);
                                                                                                            }
                                                                                                            addr439:
                                                                                                            if(!(_loc3_ || _loc2_))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§"!d§);
                                                                                                                     loop14:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr475:
                                                                                                                        §§push(§§pop() + this.§var §);
                                                                                                                        addr476:
                                                                                                                        §§push(0);
                                                                                                                        loop13:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              §§push(!§§pop());
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr509:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§ !=§);
                                                                                                                                             if(_loc2_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc2_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr498:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       break loop51;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr497:
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr488:
                                                                                                                                 §§pop();
                                                                                                                                 §§push(this.§,!W§);
                                                                                                                                 if(_loc2_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 §§push(this.§9!K§);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr419);
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr489:
                                                                                                                              }
                                                                                                                              §§goto(addr419);
                                                                                                                           }
                                                                                                                           §§goto(addr488);
                                                                                                                        }
                                                                                                                        §§goto(addr362);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr509);
                                                                                                               }
                                                                                                               addr468:
                                                                                                            }
                                                                                                         }
                                                                                                         addr362:
                                                                                                         return;
                                                                                                         continue loop54;
                                                                                                      }
                                                                                                   }
                                                                                                   addr361:
                                                                                                }
                                                                                                addr279:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§ !=§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr193);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr368:
                                                                                                                  while(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     while(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr380:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 while(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       while(_loc3_ || this)
                                                                                                                                       {
                                                                                                                                          §§goto(addr329);
                                                                                                                                          §§push(this.§,!W§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr439);
                                                                                                                                       addr396:
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                                 §§goto(addr423);
                                                                                                                                 addr381:
                                                                                                                              }
                                                                                                                              addr350:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(_loc3_)
                                                                                                                                    {
                                                                                                                                       param1.prependTranslation(this.§"!d§,this.§,!W§,0);
                                                                                                                                       §§goto(addr361);
                                                                                                                                    }
                                                                                                                                    §§goto(addr396);
                                                                                                                                    addr352:
                                                                                                                                 }
                                                                                                                                 §§goto(addr284);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr484);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                               addr367:
                                                                                                            }
                                                                                                            §§goto(addr287);
                                                                                                            addr34:
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        continue loop43;
                                                                                                                     }
                                                                                                                     continue loop50;
                                                                                                                  }
                                                                                                                  continue loop43;
                                                                                                               }
                                                                                                               continue loop49;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr488);
                                                                                                      }
                                                                                                      §§goto(addr489);
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                   continue loop51;
                                                                                                }
                                                                                             }
                                                                                             while(!§§pop())
                                                                                             {
                                                                                                §§goto(addr367);
                                                                                                §§push(this.§"!d§);
                                                                                             }
                                                                                             §§goto(addr468);
                                                                                             addr157:
                                                                                             addr467:
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                       continue loop5;
                                                                                       addr149:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr66:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop47;
                                                                                             }
                                                                                             param1.prependTranslation(this.§var §,this.§9!K§,0);
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr157);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr485);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop45;
                                                                              }
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#j§);
                                                                                    break loop48;
                                                                                 }
                                                                                 addr233:
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr475);
                                                                        addr302:
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  continue loop44;
                                                               }
                                                               while(_loc3_ || this)
                                                               {
                                                                  §§push(1);
                                                                  while(!_loc2_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              break loop43;
                                                                           }
                                                                           break loop43;
                                                                        }
                                                                        §§goto(addr494);
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                                  §§goto(addr423);
                                                               }
                                                               §§goto(addr475);
                                                            }
                                                         }
                                                         addr232:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr87);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr233);
                                             }
                                          }
                                          while(_loc3_ || this)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr343:
                                                §§push(!§§pop());
                                                while(_loc3_ || _loc2_)
                                                {
                                                   §§goto(addr350);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr497);
                                                   §§goto(addr343);
                                                }
                                                addr343:
                                                addr496:
                                             }
                                             §§goto(addr488);
                                          }
                                          §§goto(addr423);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr275);
                                       }
                                    }
                                    §§goto(addr244);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr496);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr361);
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§"!d§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!W§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§var §;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§var § = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§9!K§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!K§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§#j§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#j§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§ !=§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !=§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§^Y§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  §§push(-Math.PI);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop1:
                        for(; _loc2_; if(!(_loc2_ || this))
                        {
                           continue;
                        },this.§^Y§ = param1,§§goto(addr47))
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(§§pop() <= Math.PI)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       addr47:
                                       if(!(_loc3_ && param1))
                                       {
                                          return;
                                       }
                                       continue;
                                    }
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                       §§push(Math.PI * 2);
                                       while(true)
                                       {
                                          if(!(_loc2_ || param1))
                                          {
                                             addr125:
                                             §§push(Number(§§pop() + §§pop()));
                                             break;
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       addr127:
                                       param1 = §§pop();
                                       break loop1;
                                       addr93:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr102:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          param1 = §§pop();
                                          continue loop2;
                                       }
                                       §§goto(addr127);
                                    }
                                 }
                              }
                              §§goto(addr102);
                           }
                        }
                        continue;
                     }
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§goto(addr125);
                        §§push(Math.PI * 2);
                     }
                     §§goto(addr125);
                     §§goto(addr125);
                  }
                  §§goto(addr93);
               }
               §§goto(addr125);
            }
            §§goto(addr102);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§3?§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr55:
                              §§push(Number(§§pop()));
                              if(_loc2_)
                              {
                                 addr83:
                                 §§push(Number(§§pop()));
                              }
                           }
                           else
                           {
                              addr62:
                              if(§§pop() > 1)
                              {
                                 addr65:
                                 §§push(Number(1));
                                 if(!_loc3_)
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr83);
                                 }
                              }
                           }
                        }
                        §§goto(addr65);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§goto(addr62);
                        }
                     }
                     §§pop().§3?§ = §§pop();
                     §§goto(addr85);
                  }
                  §§goto(addr62);
               }
               §§goto(addr55);
            }
            §§goto(addr65);
         }
         addr85:
      }
      
      public function get visible() : Boolean
      {
         return this.§`G§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`G§ = param1;
         }
      }
      
      public function get §0!3§() : Boolean
      {
         return this.§5!'§;
      }
      
      public function set §0!3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!'§ = param1;
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
         return this.§>!Z§;
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
