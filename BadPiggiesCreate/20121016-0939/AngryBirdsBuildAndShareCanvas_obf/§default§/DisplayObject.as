package §default§
{
   import §2!F§.§["?§;
   import §2!F§.§]i§;
   import §6p§.§5!W§;
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
      
      private static var §^Y§:Vector.<DisplayObject>;
      
      private static var §,&§:Rectangle;
      
      private static var §,C§:Matrix;
      
      private static var §9" §:Matrix;
      
      protected static var §[v§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^Y§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §,&§ = new Rectangle();
               while(_loc1_)
               {
                  loop4:
                  while(!(_loc2_ && DisplayObject))
                  {
                     §[v§ = 0;
                     if(!_loc2_)
                     {
                        addr29:
                        if(!(_loc1_ || _loc1_))
                        {
                           while(true)
                           {
                              §9" § = new Matrix();
                              continue loop4;
                              §§goto(addr29);
                           }
                           addr65:
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,C§ = new Matrix();
            §§goto(addr65);
         }
      }
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §>!v§:Number;
      
      private var §>!J§:Number;
      
      private var §6b§:Number;
      
      private var §&!r§:Number;
      
      private var §]$§:Number;
      
      private var §`!§:Number;
      
      private var §&Z§:Boolean;
      
      private var §3!n§:Boolean;
      
      private var mName:String;
      
      private var §#!D§:Number;
      
      private var §,#§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!_loc2_)
                  {
                     §§goto(addr30);
                  }
                  else
                  {
                     addr135:
                     this.§#!D§ = -1;
                  }
               }
               else
               {
                  addr35:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§]$§ = 0);
                  if(!_loc2_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§>!J§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§>!v§ = §§pop();
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().mY = §§pop();
                  §§pop().mX = _loc1_;
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§`!§ = 1);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§&!r§ = §§pop();
                     §§pop().§6b§ = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr114);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr114);
               }
               addr114:
               this.§3!n§ = _loc1_ = true;
               this.§&Z§ = _loc1_;
               if(!_loc3_)
               {
               }
               return;
            }
            §§goto(addr35);
         }
         addr30:
         throw new §["?§();
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
      
      public function §<!>§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§,#§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,#§);
                     addr88:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr49:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     this.dispose();
                     §§goto(addr58);
                  }
               }
               while(true)
               {
                  if(param1)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr58);
                  }
                  break;
                  §§goto(addr90);
               }
               addr58:
               if(_loc2_ && this)
               {
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr90);
      }
      
      public function §5!m§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         throw new §]i§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2);
            if(!(_loc3_ && param2))
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§&Z§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 addr96:
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                 }
                                 loop6:
                                 while(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(this.getBounds(this,§,&§).containsPoint(param1))
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_)
                                                {
                                                   return this;
                                                }
                                                break loop6;
                                             }
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             break;
                                          }
                                       }
                                       §§push(null);
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr79);
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§3!n§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop5;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 addr79:
                                 return §§pop();
                                 §§push(null);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr96);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr82);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §9" §.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§5!m§(_loc2_.§,#§,§,C§);
            if(!(_loc3_ && _loc2_))
            {
               §9" §.concat(§,C§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §9" §.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §9" §.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc4_)
               {
                  addr71:
                  §9" §.invert();
                  break;
               }
               break;
            }
            _loc2_.§5!m§(_loc2_.§,#§,§,C§);
            if(_loc4_ || param1)
            {
               §9" §.concat(§,C§);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr71);
            }
            break;
            §§goto(addr71);
         }
         return §9" §.transformPoint(param1);
      }
      
      public function render(param1:§5!W§, param2:Number) : void
      {
         throw new §]i§("Method needs to be implemented in subclass");
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
                  §§goto(addr38);
               }
               §§goto(addr72);
            }
            §§goto(addr69);
         }
         addr38:
         _loc2_ = param1 as TouchEvent;
         if(!_loc3_)
         {
            if(_loc2_.timestamp == this.§#!D§)
            {
               if(!_loc3_)
               {
                  §§goto(addr52);
               }
            }
            this.§#!D§ = _loc2_.timestamp;
            addr69:
            super.dispatchEvent(param1);
            addr72:
            return;
         }
         addr52:
      }
      
      function §9J§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc8_ && param1)
            {
               continue;
            }
            §§push(!§§pop());
            if(!_loc8_)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            §§pop();
            if(_loc7_ || _loc3_)
            {
               §§push(_loc2_ == null);
               if(_loc7_)
               {
                  §§push(!§§pop());
               }
               continue;
            }
            addr76:
            _loc3_ = §5e§();
            if(_loc7_ || this)
            {
               §§push(param1 == this.§,#§);
               if(!(_loc8_ && param1))
               {
                  §§push(!§§pop());
                  if(_loc7_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_ || this)
                     {
                        addr115:
                        §§push(§§pop());
                        if(_loc7_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(this.§,#§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc8_)
                                       {
                                          addr142:
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   §§pop();
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc3_.length > 0);
                                                      if(_loc7_)
                                                      {
                                                         addr172:
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               addr180:
                                                               §§push(0);
                                                               if(_loc7_)
                                                               {
                                                                  var _loc5_:* = §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     var _loc6_:* = _loc3_;
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc6_,_loc5_));
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr231:
                                                                                          this.§,#§ = param1;
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr238:
                                                                                             §§push(Boolean(this.§,#§));
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                addr247:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr250:
                                                                                                      §§pop();
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr262);
                                                                                                      }
                                                                                                      _loc5_ = 0;
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr274:
                                                                                                         _loc6_ = _loc3_;
                                                                                                         if(_loc8_ && this)
                                                                                                         {
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         addr315:
                                                                                                         addr314:
                                                                                                         addr312:
                                                                                                      }
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                   §§goto(addr262);
                                                                                                }
                                                                                                addr262:
                                                                                                if(_loc3_.length > 0)
                                                                                                {
                                                                                                   if(_loc8_ && _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             §§goto(addr250);
                                                                                          }
                                                                                       }
                                                                                       addr316:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                 if(_loc8_ && param1)
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
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 this.addEventListeningObject(this,_loc4_);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr250);
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr238);
                                 }
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr142);
                        }
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr115);
               }
               §§goto(addr172);
            }
            §§goto(addr238);
         }
         if(!_loc8_)
         {
            if(_loc2_ == this)
            {
               if(_loc7_)
               {
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
         }
         §§goto(addr76);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§,#§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr60:
         if(_loc3_ || param2)
         {
            §§push(this.§,#§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§,#§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr53:
                     this.§,#§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §3!I§() : Matrix
      {
         return this.§5!m§(this.§,#§);
      }
      
      public function get §?!i§() : Rectangle
      {
         return this.getBounds(this.§,#§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§,#§,§,&§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§6b§ = 1;
         }
         §§push(this.width);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc3_ || _loc3_)
               {
                  if(_loc4_)
                  {
                     addr83:
                     §§push(this);
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr90:
                  }
                  return;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr83);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§,#§,§,&§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&!r§ = 1;
         }
         §§push(this.height);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_)
               {
                  addr81:
               }
               return;
            }
            if(_loc4_)
            {
               addr59:
               §§push(this);
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr81);
         }
         §§goto(addr59);
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
               if(!_loc3_)
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
         if(!(_loc3_ && this))
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(_loc4_ && param2)
            {
               break;
            }
            addr71:
            if(!(_loc3_ || _loc3_))
            {
               continue;
            }
            this.removeEventListeningObject(this,param1);
            §§goto(addr71);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §5e§();
         if(_loc6_)
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               §§goto(addr30);
            }
            §§goto(addr33);
         }
         addr30:
         if(param1 == null)
         {
            addr33:
            for each(_loc3_ in _loc2_)
            {
               if(!_loc7_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc6_ || param1)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §+U§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§]$§);
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
                                 §§push(this.§6b§);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr513:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr288:
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(1);
                                    loop35:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop36:
                                       while(_loc2_)
                                       {
                                          §§push(!§§pop());
                                          while(!(_loc3_ && param1))
                                          {
                                             §§push(§§pop());
                                             loop38:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop39:
                                                   while(_loc2_ || param1)
                                                   {
                                                      §§pop();
                                                      loop40:
                                                      while(true)
                                                      {
                                                         §§push(this.§&!r§);
                                                         loop41:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               addr197:
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  addr204:
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop35;
                                                                     }
                                                                     addr435:
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        addr443:
                                                                        §§push(0);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr446:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              addr449:
                                                                              §§push(!§§pop());
                                                                              break loop39;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr486:
                                                                                 §§push(this.mX);
                                                                                 §§push(this.§>!v§);
                                                                                 while(true)
                                                                                 {
                                                                                    addr491:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(0);
                                                                                    addr427:
                                                                                    if(!(_loc2_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr435);
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.mX);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr407:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       break loop36;
                                                                                    }
                                                                                    §§goto(addr204);
                                                                                 }
                                                                                 addr406:
                                                                              }
                                                                           }
                                                                           addr485:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                           }
                                                                           addr496:
                                                                           §§push(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              addr500:
                                                                              §§pop();
                                                                              if(!(_loc2_ || this))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr427);
                                                                              §§push(this.mY);
                                                                              §§push(this.§>!J§);
                                                                           }
                                                                           §§goto(addr449);
                                                                        }
                                                                        addr24:
                                                                        return;
                                                                        addr492:
                                                                        addr401:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr485);
                                                                           }
                                                                           addr484:
                                                                        }
                                                                        §§goto(addr492);
                                                                     }
                                                                     addr475:
                                                                  }
                                                                  §§goto(addr406);
                                                               }
                                                               break;
                                                            }
                                                            loop34:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr322:
                                                                  while(_loc2_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 param1.prependRotation(this.§]$§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    addr271:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    addr87:
                                                                                    if(_loc3_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    param1.prependTranslation(this.§>!v§,this.§>!J§,0);
                                                                                    addr101:
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr486);
                                                                                          }
                                                                                          §§goto(addr24);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop31;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                param1.prependScale(this.§6b§,this.§&!r§,1);
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break loop31;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§>!v§);
                                                                                                      loop48:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr117:
                                                                                                         addr371:
                                                                                                         while(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  loop50:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop38;
                                                                                                                     }
                                                                                                                     addr416:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr417:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr419:
                                                                                                                                 while(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(this.mY);
                                                                                                                                    break loop41;
                                                                                                                                 }
                                                                                                                                 addr471:
                                                                                                                                 §§goto(addr401);
                                                                                                                              }
                                                                                                                              addr418:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param1.prependTranslation(this.mX,this.mY,0);
                                                                                                                                       break loop31;
                                                                                                                                    }
                                                                                                                                    addr391:
                                                                                                                                 }
                                                                                                                                 addr318:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr389:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop50;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr496);
                                                                                                                  addr135:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr382);
                                                                                                                  }
                                                                                                                  addr381:
                                                                                                               }
                                                                                                               §§goto(addr500);
                                                                                                            }
                                                                                                            §§goto(addr135);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §§goto(addr381);
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr117);
                                                                                                         }
                                                                                                         §§goto(addr407);
                                                                                                         addr186:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§>!J§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop41;
                                                                                                            }
                                                                                                            continue loop48;
                                                                                                         }
                                                                                                         continue loop41;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop32;
                                                                                                   §§goto(addr101);
                                                                                                }
                                                                                                continue loop40;
                                                                                                addr266:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    §§goto(addr266);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr451:
                                                                                 if(_loc3_ && _loc2_)
                                                                                 {
                                                                                    addr528:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr475);
                                                                                    }
                                                                                    addr528:
                                                                                 }
                                                                                 param1.prependTranslation(this.mX + this.§>!v§,this.mY + this.§>!J§,0);
                                                                                 §§goto(addr471);
                                                                              }
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§goto(addr318);
                                                                        }
                                                                        §§goto(addr419);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_ || param1)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr486);
                                                            }
                                                            break;
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr451);
                                                   }
                                                   §§goto(addr24);
                                                }
                                                else
                                                {
                                                   §§goto(addr243);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr516);
                                             §§goto(addr300);
                                          }
                                          addr300:
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr416);
                                          §§push(!§§pop());
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr515);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr528);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mY = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§>!v§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!v§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§>!J§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!J§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§6b§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§6b§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§&!r§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!r§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§]$§;
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
               if(_loc2_ || this)
               {
                  §§push(-Math.PI);
                  if(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop1:
                           for(; _loc2_; if(_loc3_ && _loc3_)
                           {
                              continue;
                           },this.§]$§ = param1,§§goto(addr76))
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(§§pop() <= Math.PI)
                                          {
                                             if(_loc3_ && _loc3_)
                                             {
                                                return;
                                             }
                                             addr76:
                                             if(_loc2_ || param1)
                                             {
                                                continue loop1;
                                             }
                                             continue;
                                          }
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(Math.PI * 2);
                                                addr112:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr113:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr114:
                                                      addr140:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && param1)
                                                         {
                                                            break loop2;
                                                         }
                                                         param1 = §§pop();
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                             addr108:
                                          }
                                          §§goto(addr114);
                                       }
                                       param1 = §§pop();
                                       break loop1;
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr114);
                              }
                           }
                           continue;
                        }
                        §§push(param1);
                        §§push(Math.PI * 2);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr112);
               }
               §§goto(addr140);
            }
            §§goto(addr108);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§`!§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || param1)
            {
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr51:
                           §§push(0);
                           if(!(_loc3_ && param1))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc2_)
                              {
                              }
                              §§goto(addr93);
                           }
                        }
                        else
                        {
                           addr69:
                           §§push(Number(1));
                           if(!(_loc2_ || this))
                           {
                              addr92:
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() > 1);
                        }
                        §§goto(addr92);
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr69);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr92);
            }
            §§goto(addr51);
         }
         addr93:
         §§pop().§`!§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§&Z§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&Z§ = param1;
         }
      }
      
      public function get §#!1§() : Boolean
      {
         return this.§3!n§;
      }
      
      public function set §#!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!n§ = param1;
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
         if(!(_loc2_ && this))
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§,#§;
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
