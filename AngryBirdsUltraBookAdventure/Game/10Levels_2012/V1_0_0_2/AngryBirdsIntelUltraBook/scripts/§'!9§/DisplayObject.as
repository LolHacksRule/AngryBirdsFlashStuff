package §'!9§
{
   import § !'§.§0!K§;
   import § !'§.§[!$§;
   import §<&§.§`K§;
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
      
      private static var §?^§:Vector.<DisplayObject>;
      
      private static var §<!E§:Rectangle;
      
      private static var §5g§:Matrix;
      
      private static var §"!G§:Matrix;
      
      protected static var §^5§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?^§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §<!E§ = new Rectangle();
            }
            addr92:
         }
         loop1:
         while(true)
         {
            §5g§ = new Matrix();
            while(!(_loc2_ && _loc1_))
            {
               §"!G§ = new Matrix();
               do
               {
                  §^5§ = 0;
               }
               while(_loc2_);
               
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr92);
            }
         }
      }
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §&5§:Number;
      
      private var §1!O§:Number;
      
      private var §2!F§:Number;
      
      private var §93§:Number;
      
      private var §-!n§:Number;
      
      private var §%I§:Number;
      
      private var §>L§:Boolean;
      
      private var §%!N§:Boolean;
      
      private var mName:String;
      
      private var §2!&§:Number;
      
      private var §3^§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc3_ || _loc1_)
                  {
                     throw new §[!$§();
                  }
                  addr134:
                  this.§>L§ = this.§%!N§ = true;
                  if(_loc3_ || _loc1_)
                  {
                     addr150:
                     this.§2!&§ = -1;
                  }
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§-!n§ = 0);
                  if(_loc3_ || this)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§1!O§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§&5§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§78§ = §§pop();
                  §§pop().§,G§ = _loc1_;
                  if(_loc3_ || _loc1_)
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§%I§ = 1);
                     if(_loc3_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§93§ = §§pop();
                     §§pop().§2!F§ = _loc1_;
                     if(_loc3_)
                     {
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr150);
               }
               §§goto(addr150);
            }
            return;
         }
         §§goto(addr150);
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
      
      public function §'s§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§3^§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr55:
                  while(true)
                  {
                     §§push(this.§3^§);
                     addr57:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr59:
                        while(true)
                        {
                        }
                     }
                  }
                  addr55:
               }
               for(; param1; §§goto(addr59))
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     this.dispose();
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr55);
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr55);
      }
      
      public function §^2§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         throw new §0!K§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
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
                              §§push(this.§>L§);
                              if(!(_loc3_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || param2)
                                 {
                                    addr116:
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(null);
                                             return §§pop();
                                          }
                                          loop8:
                                          while(_loc4_ || param2)
                                          {
                                             while(this.getBounds(this,§<!E§).containsPoint(param1))
                                             {
                                                if(_loc3_ && param2)
                                                {
                                                   break;
                                                }
                                                addr46:
                                                if(!_loc3_)
                                                {
                                                   return this;
                                                }
                                                continue loop8;
                                             }
                                             §§push(null);
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                §§push(this.§%!N§);
                                                if(!(_loc3_ && param2))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      while(_loc4_)
                                                      {
                                                         §§pop();
                                                         continue loop6;
                                                      }
                                                      continue loop1;
                                                      addr120:
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                          addr80:
                                          continue loop0;
                                       }
                                       §§goto(addr27);
                                    }
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr116);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §"!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^2§(_loc2_.§3^§,§5g§);
            if(!(_loc4_ && _loc3_))
            {
               §"!G§.concat(§5g§);
               if(_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §"!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §"!G§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  addr85:
                  §"!G§.invert();
                  break;
               }
               break;
            }
            _loc2_.§^2§(_loc2_.§3^§,§5g§);
            if(_loc3_ || param1)
            {
               §"!G§.concat(§5g§);
               if(_loc3_ || param1)
               {
                  continue;
               }
               §§goto(addr85);
            }
            break;
            §§goto(addr85);
         }
         return §"!G§.transformPoint(param1);
      }
      
      public function render(param1:§`K§, param2:Number) : void
      {
         throw new §0!K§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(!_loc4_)
         {
            if(param1 is TouchEvent)
            {
               if(!_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc4_)
                  {
                     if(_loc2_.timestamp == this.§2!&§)
                     {
                        if(!_loc4_)
                        {
                           return;
                        }
                     }
                     this.§2!&§ = _loc2_.timestamp;
                  }
               }
               §§goto(addr76);
            }
            super.dispatchEvent(param1);
         }
         addr76:
      }
      
      function §+k§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc7_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc7_ && _loc3_))
               {
                  addr50:
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr54:
                        §§pop();
                        if(_loc8_ || this)
                        {
                           §§push(_loc2_ == null);
                           if(!_loc8_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           §§goto(addr76);
                        }
                     }
                     §§push(!§§pop());
                  }
                  continue;
               }
               §§goto(addr54);
            }
            §§goto(addr50);
         }
         if(_loc8_ || _loc3_)
         {
            §§goto(addr76);
         }
         addr76:
         if(_loc2_ == this)
         {
            if(_loc8_)
            {
               throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
            }
         }
         _loc3_ = §#!a§();
         if(!_loc7_)
         {
            §§push(param1 == this.§3^§);
            if(!(_loc7_ && param1))
            {
               §§push(!§§pop());
               if(_loc8_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc7_ && _loc3_)
                  {
                  }
                  addr257:
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§goto(addr261);
                     }
                  }
                  §§goto(addr273);
               }
               §§push(§§pop());
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(_loc8_ || _loc2_)
                        {
                           §§push(this.§3^§);
                           if(_loc8_ || _loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc8_ || this)
                              {
                                 addr163:
                                 §§push(§§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    addr171:
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          addr174:
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             §§push(_loc3_.length > 0);
                                             if(_loc8_ || _loc2_)
                                             {
                                                addr188:
                                                if(§§pop())
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      addr196:
                                                      §§push(0);
                                                      if(!_loc7_)
                                                      {
                                                         var _loc5_:* = §§pop();
                                                         if(_loc8_)
                                                         {
                                                            var _loc6_:* = _loc3_;
                                                            if(_loc7_ && param1)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc6_,_loc5_));
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.removeEventListeningObject(this,_loc4_);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr242:
                                                                           this.§3^§ = param1;
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr249:
                                                                              §§push(Boolean(this.§3^§));
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           addr261:
                                                                           §§pop();
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              addr273:
                                                                              if(_loc3_.length > 0)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           _loc5_ = 0;
                                                                           if(!_loc7_)
                                                                           {
                                                                              _loc6_ = _loc3_;
                                                                              if(!_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc6_,_loc5_));
                                                                                    addr314:
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 addr313:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.addEventListeningObject(this,_loc4_);
                                                                                 §§goto(addr313);
                                                                              }
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         addr316:
                                                         while(§§pop())
                                                         {
                                                            _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                            if(_loc7_ && _loc2_)
                                                            {
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr316:
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr163);
               }
               §§goto(addr171);
            }
            §§goto(addr257);
         }
         addr317:
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§3^§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr51:
         if(_loc4_)
         {
            §§push(this.§3^§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3^§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr42:
                     this.§3^§.addEventListeningObject(param1,param2);
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
         if(_loc3_ || param1)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §4-§() : Matrix
      {
         return this.§^2§(this.§3^§);
      }
      
      public function get §]!N§() : Rectangle
      {
         return this.getBounds(this.§3^§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3^§,§<!E§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§2!F§ = 1;
         }
         §§push(this.width);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ && this))
               {
                  addr83:
               }
               else
               {
                  addr101:
               }
               return;
            }
            if(!(_loc3_ && _loc2_))
            {
               §§push(this);
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
            §§goto(addr101);
         }
         §§goto(addr83);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§3^§,§<!E§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§93§ = 1;
         }
         §§push(this.height);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_ || param1)
               {
                  if(!_loc3_)
                  {
                     addr78:
                     §§push(this);
                     §§push(param1);
                     if(!_loc4_)
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
         §§goto(addr78);
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
               if(_loc3_ || this)
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
         while(!_loc3_);
         
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
               if(_loc4_ || param2)
               {
                  this.removeEventListeningObject(this,param1);
               }
               if(_loc4_ || param2)
               {
                  addr67:
                  break;
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §#!a§();
         if(!(_loc6_ && this))
         {
            super.removeEventListeners(param1);
            if(!_loc6_)
            {
               if(param1 == null)
               {
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc7_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_ || _loc3_)
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
      
      public function §0! §(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§-!n§);
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
                                 §§push(this.§2!F§);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr509:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr298:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(1);
                                    loop37:
                                    for(; _loc3_ || param1; §§push(1),if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    },if(_loc3_ || param1)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr271);
                                                            §§push(!§§pop());
                                                         }
                                                         §§goto(addr466);
                                                      }
                                                      §§goto(addr496);
                                                   }
                                                   §§goto(addr405);
                                                }
                                                §§goto(addr410);
                                             }
                                             §§goto(addr314);
                                          }
                                          §§goto(addr272);
                                       }
                                       §§goto(addr459);
                                    },if(!(_loc2_ && _loc3_))
                                    {
                                       §§goto(addr437);
                                       §§push(§§pop() == §§pop());
                                    },§§goto(addr466))
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop38:
                                       while(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(!§§pop());
                                          loop39:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop40:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      addr272:
                                                      loop44:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop45:
                                                            while(true)
                                                            {
                                                               param1.prependScale(this.§2!F§,this.§93§,1);
                                                               loop46:
                                                               while(!(_loc2_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&5§);
                                                                     loop48:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr155:
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              §§push(0);
                                                                              loop49:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 loop50:
                                                                                 while(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop51:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop44;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc3_ || param1))
                                                                                          {
                                                                                             continue loop40;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop48;
                                                                                                      }
                                                                                                      addr513:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr514:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§93§);
                                                                                                         }
                                                                                                      }
                                                                                                      addr93:
                                                                                                      if(!(_loc3_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop51;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         loop54:
                                                                                                         while(§§pop())
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr115:
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     param1.prependTranslation(this.§&5§,this.§1!O§,0);
                                                                                                                     addr131:
                                                                                                                     if(!(_loc3_ || this))
                                                                                                                     {
                                                                                                                        continue loop48;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop45;
                                                                                                                     }
                                                                                                                     addr142:
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr497:
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 param1.prependTranslation(this.§,G§,this.§78§,0);
                                                                                                                                 break loop46;
                                                                                                                              }
                                                                                                                              addr390:
                                                                                                                           }
                                                                                                                           if(!(_loc2_ && this))
                                                                                                                           {
                                                                                                                              addr415:
                                                                                                                              §§push(this.§78§);
                                                                                                                              §§push(this.§1!O§);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr466:
                                                                                                                                 §§push(§§pop() + §§pop() != 0);
                                                                                                                                 §§push(§§pop() + §§pop() != 0);
                                                                                                                                 break loop51;
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§78§);
                                                                                                                           addr365:
                                                                                                                           addr458:
                                                                                                                           while(!(_loc2_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 break loop50;
                                                                                                                                 addr57:
                                                                                                                                 if(_loc2_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop50;
                                                                                                                                       }
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr438:
                                                                                                                                          if(_loc3_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr93);
                                                                                                                                             §§push(!§§pop());
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr439:
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr462:
                                                                                                                                                §§goto(addr466);
                                                                                                                                                §§push(this.§,G§);
                                                                                                                                                §§push(this.§&5§);
                                                                                                                                             }
                                                                                                                                             param1.prependTranslation(this.§,G§ + this.§&5§,this.§78§ + this.§1!O§,0);
                                                                                                                                             break loop29;
                                                                                                                                          }
                                                                                                                                          addr398:
                                                                                                                                          break loop54;
                                                                                                                                       }
                                                                                                                                       addr321:
                                                                                                                                       while(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§93§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ || this))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                      loop31:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         addr345:
                                                                                                                                                         addr404:
                                                                                                                                                         while(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.prependRotation(this.§-!n§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                  addr359:
                                                                                                                                                                  while(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§2!F§);
                                                                                                                                                                        addr291:
                                                                                                                                                                        while(!(_loc2_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr298);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr466);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr514);
                                                                                                                                                               }
                                                                                                                                                               addr348:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr288);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                            addr405:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               addr406:
                                                                                                                                                               while(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        addr410:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           addr341:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§-!n§);
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr382:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr461:
                                                                                                                                                               while(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§,G§);
                                                                                                                                                                  break loop48;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr462);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr34:
                                                                                                                                                      if(!(_loc3_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue loop49;
                                                                                                                                                            }
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr57);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr345);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr415);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr291);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr462);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr359);
                                                                                                                                             §§goto(addr115);
                                                                                                                                          }
                                                                                                                                          §§goto(addr439);
                                                                                                                                       }
                                                                                                                                       §§goto(addr466);
                                                                                                                                    }
                                                                                                                                    §§goto(addr93);
                                                                                                                                 }
                                                                                                                                 §§goto(addr415);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              addr459:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 addr460:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr461);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr365);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  §§goto(addr348);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr331);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr131);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr111:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr437:
                                                                                                         §§goto(addr438);
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      §§goto(addr438);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr111);
                                                                                                }
                                                                                                §§goto(addr458);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr512:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr511:
                                                                                       }
                                                                                       §§goto(addr460);
                                                                                    }
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       if(_loc2_ && this)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr496:
                                                                                          §§pop();
                                                                                          §§goto(addr497);
                                                                                       }
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                    §§goto(addr512);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    break loop38;
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr404);
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr341);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   addr271:
                                                }
                                                §§goto(addr321);
                                             }
                                          }
                                       }
                                       while(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr382);
                                       }
                                       §§goto(addr406);
                                    }
                                    §§goto(addr509);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr511);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr390);
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§,G§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§78§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§&5§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§&5§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§1!O§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1!O§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§2!F§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§2!F§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§93§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§93§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§-!n§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(-Math.PI);
                     if(_loc3_ || param1)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(§§pop() <= Math.PI)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             this.§-!n§ = param1;
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             return;
                                          }
                                          continue;
                                       }
                                       addr148:
                                       §§push(param1);
                                       if(_loc3_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(Math.PI * 2);
                                             addr126:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr146:
                                                   §§push(§§pop() + §§pop());
                                                   break loop1;
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                          }
                                          addr122:
                                       }
                                       while(true)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             break loop1;
                                          }
                                          param1 = §§pop();
                                          continue loop1;
                                       }
                                       param1 = §§pop();
                                       continue loop0;
                                       addr130:
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr148);
                              §§push(Number(§§pop()));
                              addr22:
                           }
                           while(true)
                           {
                              §§goto(addr22);
                           }
                        }
                        else
                        {
                           addr142:
                           §§push(param1);
                           §§push(Math.PI * 2);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr142);
               }
               §§goto(addr148);
            }
            §§goto(addr122);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§%I§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr94);
                        }
                        else
                        {
                           §§goto(addr80);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           §§push(§§pop() > 1);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr93);
                  }
                  if(§§pop())
                  {
                     addr80:
                     §§push(Number(1));
                     if(_loc2_)
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr93);
            }
            §§goto(addr80);
         }
         addr94:
         §§push(0);
         if(!(_loc2_ && _loc3_))
         {
            §§push(Number(§§pop()));
            if(_loc2_)
            {
               addr93:
               §§push(Number(§§pop()));
            }
         }
         §§pop().§%I§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§>L§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>L§ = param1;
         }
      }
      
      public function get §@!U§() : Boolean
      {
         return this.§%!N§;
      }
      
      public function set §@!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%!N§ = param1;
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
         if(_loc2_ || param1)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§3^§;
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
