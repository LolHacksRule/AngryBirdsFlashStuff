package §]@§
{
   import §=!S§.§1!O§;
   import §=!S§.§3[§;
   import §`C§.§'!N§;
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
      
      private static var §#;§:Vector.<DisplayObject>;
      
      private static var §`f§:Rectangle;
      
      private static var §1![§:Matrix;
      
      private static var §3!W§:Matrix;
      
      protected static var §?!K§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#;§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §`f§ = new Rectangle();
               addr36:
               if(_loc2_ && DisplayObject)
               {
                  continue;
               }
               return;
               addr53:
            }
         }
         while(true)
         {
            §1![§ = new Matrix();
            while(_loc1_ || _loc1_)
            {
               §3!W§ = new Matrix();
               do
               {
                  §?!K§ = 0;
               }
               while(_loc2_ && DisplayObject);
               
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr36);
            }
         }
         §§goto(addr53);
      }
      
      private var §<!Y§:Number;
      
      private var § l§:Number;
      
      private var §?!Q§:Number;
      
      private var §+9§:Number;
      
      private var §>!]§:Number;
      
      private var §"y§:Number;
      
      private var §50§:Number;
      
      private var mAlpha:Number;
      
      private var §3!Z§:Boolean;
      
      private var §2V§:Boolean;
      
      private var mName:String;
      
      private var §&!Z§:Number;
      
      private var §`!Z§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super();
            if(!_loc2_)
            {
               addr28:
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr40);
                  }
                  else
                  {
                     §§goto(addr105);
                  }
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§50§ = 0);
                  if(_loc3_ || this)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§+9§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc2_ && this))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§?!Q§ = §§pop();
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§ l§ = §§pop();
                  §§pop().§<!Y§ = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr105:
                     §§push(this);
                     §§push(this);
                     §§push(this.mAlpha = 1);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§"y§ = §§pop();
                     §§pop().§>!]§ = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§3!Z§ = this.§2V§ = true;
                        if(_loc3_ || _loc1_)
                        {
                           addr160:
                           this.§&!Z§ = -1;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr160);
            }
            addr40:
            throw new §3[§();
         }
         §§goto(addr28);
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
      
      public function §;G§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§`!Z§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr82:
                     this.§`!Z§.removeChild(this);
                  }
                  loop0:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr24);
                        }
                        continue loop0;
                     }
                  }
                  addr84:
               }
               while(true)
               {
                  if(param1)
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           this.dispose();
                        }
                        addr33:
                     }
                     §§goto(addr45);
                  }
                  break;
                  §§goto(addr84);
               }
               addr24:
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr33);
      }
      
      public function §=!;§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         throw new §1!O§("Method needs to be implemented in subclass");
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
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§3!Z§);
                              while(_loc4_)
                              {
                                 §§push(!§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          addr108:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(this.§2V§);
                                                if(!_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                     }
                     loop9:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(this.getBounds(this,§`f§).containsPoint(param1))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(_loc3_ && param2)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 break loop9;
                              }
                              addr92:
                              if(!_loc3_)
                              {
                                 §§goto(addr95);
                              }
                              §§goto(addr108);
                           }
                           §§push(null);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           addr95:
                           return null;
                        }
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         return this;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §3!W§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§=!;§(_loc2_.§`!Z§,§1![§);
            if(!(_loc4_ && param1))
            {
               §3!W§.concat(§1![§);
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §3!W§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §3!W§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr67);
            }
            _loc2_.§=!;§(_loc2_.§`!Z§,§1![§);
            if(!_loc4_)
            {
               §3!W§.concat(§1![§);
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         §3!W§.invert();
         addr67:
         return §3!W§.transformPoint(param1);
      }
      
      public function render(param1:§'!N§, param2:Number) : void
      {
         throw new §1!O§("Method needs to be implemented in subclass");
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
               if(_loc3_ || param1)
               {
                  addr47:
                  _loc2_ = param1 as TouchEvent;
                  if(_loc3_)
                  {
                     if(_loc2_.timestamp == this.§&!Z§)
                     {
                        if(!_loc4_)
                        {
                           return;
                        }
                        addr78:
                        super.dispatchEvent(param1);
                     }
                     else
                     {
                        this.§&!Z§ = _loc2_.timestamp;
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr78);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr47);
      }
      
      function §6l§(param1:DisplayObjectContainer) : void
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
               if(_loc8_)
               {
                  addr40:
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!(_loc7_ && param1))
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc2_ == null);
                        if(!(_loc8_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     else
                     {
                        addr77:
                        _loc3_ = §8^§();
                        if(!_loc7_)
                        {
                           §§push(param1 == this.§`!Z§);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                              if(!_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§pop();
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push(this.§`!Z§);
                                                if(!_loc7_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      addr123:
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_.length > 0);
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     addr158:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc7_)
                                                                           {
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 var _loc6_:* = _loc3_;
                                                                                 if(_loc7_)
                                                                                 {
                                                                                 }
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc6_,_loc5_));
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             this.removeEventListeningObject(this,_loc4_);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                addr217:
                                                                                                this.§`!Z§ = param1;
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr222:
                                                                                                   §§push(Boolean(this.§`!Z§));
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr228:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr231:
                                                                                                            §§pop();
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               addr243:
                                                                                                               if(_loc3_.length > 0)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr292);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             addr247:
                                                                                             _loc5_ = 0;
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                _loc6_ = _loc3_;
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                      break loop3;
                                                                                                   }
                                                                                                   addr291:
                                                                                                   addr292:
                                                                                                   return;
                                                                                                   addr288:
                                                                                                   addr290:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.addEventListeningObject(this,_loc4_);
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                addr284:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr291);
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr247);
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr228);
                                 }
                              }
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr292);
                     }
                  }
               }
               §§push(!§§pop());
               continue;
            }
            §§goto(addr40);
         }
         if(!_loc7_)
         {
            if(_loc2_ == this)
            {
               if(!_loc7_)
               {
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
         }
         §§goto(addr77);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§`!Z§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr52:
                     this.§`!Z§.removeEventListeningObject(param1,param2);
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
         if(_loc3_)
         {
            §§push(this.§`!Z§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr52:
                     this.§`!Z§.addEventListeningObject(param1,param2);
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
         if(_loc2_ || param1)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §@!D§() : Matrix
      {
         return this.§=!;§(this.§`!Z§);
      }
      
      public function get §"!5§() : Rectangle
      {
         return this.getBounds(this.§`!Z§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§`!Z§,§`f§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§>!]§ = 1;
         }
         §§push(this.width);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc3_)
               {
                  addr63:
               }
               else
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
               §§pop().scaleX = §§pop();
            }
            §§goto(addr86);
         }
         §§goto(addr63);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§`!Z§,§`f§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§"y§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!_loc4_)
               {
                  addr96:
               }
               return;
            }
            if(!_loc3_)
            {
               §§push(this);
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
         }
         §§goto(addr96);
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
               if(!_loc2_)
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
         if(_loc3_ || this)
         {
            super.addEventListener(param1,param2);
            do
            {
               this.addEventListeningObject(this,param1);
            }
            while(_loc4_ && this);
            
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(!_loc3_)
               {
                  break;
               }
               addr66:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               this.removeEventListeningObject(this,param1);
               addr52:
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §8^§();
         if(_loc6_)
         {
            super.removeEventListeners(param1);
            if(!(_loc7_ && _loc2_))
            {
               §§goto(addr45);
            }
            §§goto(addr48);
         }
         addr45:
         if(param1 == null)
         {
            addr48:
            for each(_loc3_ in _loc2_)
            {
               if(_loc6_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc7_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §]d§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§50§);
            loop0:
            while(true)
            {
               §§push(0);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
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
                                 §§push(this.§>!]§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr494:
                                    addr427:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    if(_loc2_ && param1)
                                    {
                                       continue;
                                    }
                                    addr436:
                                    §§push(§§pop() != 0);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr444:
                                       if(§§pop())
                                       {
                                          addr446:
                                          param1.prependTranslation(this.§<!Y§ + this.§?!Q§,this.§ l§ + this.§+9§,0);
                                          addr459:
                                          if(_loc2_ && this)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§"y§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§<!Y§);
                                                               loop17:
                                                               for(; _loc3_; while(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§goto(addr127);
                                                                  §§push(0);
                                                                  §§goto(addr200);
                                                               })
                                                               {
                                                                  §§push(0);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        addr403:
                                                                        addr496:
                                                                        while(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ l§);
                                                                                       loop24:
                                                                                       while(!_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop25:
                                                                                             while(!(_loc2_ && this))
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr366:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     param1.prependTranslation(this.§<!Y§,this.§ l§,0);
                                                                                                                     while(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              addr306:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§50§);
                                                                                                                                 while(!(_loc2_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              addr306:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr478:
                                                                                                                              §§push(this.§<!Y§ + this.§?!Q§);
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 addr483:
                                                                                                                                 §§push(§§pop() != §§pop());
                                                                                                                                 break loop26;
                                                                                                                              }
                                                                                                                              §§goto(addr494);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr459);
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  addr489:
                                                                                                                  §§push(this.§ l§);
                                                                                                                  §§push(this.§+9§);
                                                                                                                  break loop25;
                                                                                                                  addr489:
                                                                                                                  addr367:
                                                                                                               }
                                                                                                               §§goto(addr306);
                                                                                                            }
                                                                                                         }
                                                                                                         addr365:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      addr498:
                                                                                                   }
                                                                                                   break;
                                                                                                   addr219:
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.prependScale(this.§>!]§,this.§"y§,1);
                                                                                                                     addr245:
                                                                                                                     while(!_loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     while(!_loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.§"y§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 loop45:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc2_ && param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr219);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr267:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          addr268:
                                                                                                                                          while(!_loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          §§goto(addr436);
                                                                                                                                          continue loop45;
                                                                                                                                       }
                                                                                                                                       addr267:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           §§goto(addr264);
                                                                                                                           §§goto(addr267);
                                                                                                                           if(_loc2_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr36);
                                                                                                                        }
                                                                                                                        §§goto(addr478);
                                                                                                                        §§goto(addr245);
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§?!Q§);
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               §§goto(addr115);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr485);
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             break loop17;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr365);
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr179);
                                                                                 }
                                                                                 §§goto(addr79);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr498);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr497);
                                                                           §§goto(addr403);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  §§goto(addr427);
                                                               }
                                                            }
                                                            §§goto(addr478);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr466:
                                       }
                                       §§goto(addr393);
                                    }
                                    §§goto(addr486);
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
         §§goto(addr466);
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<!Y§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ l§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§?!Q§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!Q§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§+9§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+9§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§>!]§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!]§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§"y§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"y§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§50§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(-Math.PI);
               if(_loc2_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(§§pop() <= Math.PI)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          this.§50§ = param1;
                                       }
                                       return;
                                    }
                                    §§push(param1);
                                    if(_loc2_ || this)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(Math.PI * 2);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr109:
                                             loop4:
                                             while(true)
                                             {
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   addr141:
                                                   §§push(§§pop() + Math.PI * 2);
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      break loop4;
                                                   }
                                                   param1 = §§pop();
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr108:
                                       }
                                       param1 = §§pop();
                                       break;
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr117);
                           }
                           continue;
                           addr21:
                        }
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr21);
                        }
                     }
                     else
                     {
                        §§push(param1);
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr108);
            }
            §§goto(addr109);
         }
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_ || this)
               {
                  §§push(§§pop() < 0);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc2_)
                              {
                                 addr82:
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 addr52:
                              }
                           }
                           else
                           {
                              addr61:
                              if(§§pop() > 1)
                              {
                                 addr64:
                                 §§push(Number(1));
                                 if(!_loc2_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    §§goto(addr82);
                                 }
                              }
                           }
                           §§pop().mAlpha = §§pop();
                           §§goto(addr84);
                        }
                        §§goto(addr64);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr61);
               }
               §§goto(addr52);
            }
            §§goto(addr64);
         }
         addr84:
      }
      
      public function get visible() : Boolean
      {
         return this.§3!Z§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!Z§ = param1;
         }
      }
      
      public function get §^f§() : Boolean
      {
         return this.§2V§;
      }
      
      public function set §^f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2V§ = param1;
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
         return this.§`!Z§;
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
