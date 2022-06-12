package §1!$§
{
   import §&!-§.§+#§;
   import §&!-§.§2B§;
   import §'6§.§'"3§;
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
      
      private static var §!n§:Vector.<DisplayObject>;
      
      private static var §`!q§:Rectangle;
      
      private static var §@V§:Matrix;
      
      private static var §4!?§:Matrix;
      
      protected static var §?"#§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!n§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §`!q§ = new Rectangle();
               loop1:
               for(; _loc2_ || _loc2_; while(_loc2_ || DisplayObject)
               {
                  §4!?§ = new Matrix();
                  while(!(_loc1_ && DisplayObject))
                  {
                     §?"#§ = 0;
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                  }
               })
               {
                  while(true)
                  {
                     §@V§ = new Matrix();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      private var §,!k§:Number;
      
      private var §!Q§:Number;
      
      private var §4!^§:Number;
      
      private var §'?§:Number;
      
      private var §2R§:Number;
      
      private var §;!Z§:Number;
      
      private var §@P§:Number;
      
      private var §@e§:Number;
      
      private var §`!5§:Boolean;
      
      private var §'>§:Boolean;
      
      private var §2!J§:Number;
      
      private var mName:String;
      
      private var §2!x§:Number;
      
      private var §[!N§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            if(_loc3_ || this)
            {
               addr33:
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     throw new §+#§();
                  }
                  addr160:
                  this.§2!x§ = -1;
               }
               else
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§@P§ = 0);
                  if(!(_loc2_ && _loc1_))
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§'?§ = §§pop();
                  §§push(_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§4!^§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§!Q§ = §§pop();
                  §§pop().§,!k§ = _loc1_;
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(this.§@e§ = 1);
                     if(_loc3_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§;!Z§ = §§pop();
                     §§pop().§2R§ = _loc1_;
                     if(!(_loc2_ && this))
                     {
                        this.§`!5§ = this.§'>§ = true;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr160);
                  }
               }
            }
            addr163:
            return;
         }
         §§goto(addr33);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.removeEventListeners();
         }
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§[!N§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[!N§);
                     addr87:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr89:
                        while(true)
                        {
                        }
                     }
                     addr67:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§goto(addr24);
                  }
               }
               for(; param1; §§goto(addr89))
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.dispose();
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr67);
               }
               addr24:
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr89);
      }
      
      public function §&!e§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         throw new §2B§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param2);
            if(_loc3_ || param1)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr140:
                           while(true)
                           {
                              §§push(this.§`!5§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(this.§'>§);
                                                if(_loc3_)
                                                {
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                if(!_loc4_)
                                                {
                                                }
                                                continue loop8;
                                             }
                                             addr127:
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr139:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(this.getBounds(this,§`!q§).containsPoint(param1))
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && param2))
                                    {
                                       break loop2;
                                    }
                                    addr96:
                                    if(!_loc4_)
                                    {
                                       return null;
                                    }
                                    else
                                    {
                                       §§goto(addr140);
                                    }
                                 }
                                 else if(_loc3_ || param1)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr24:
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                    addr100:
                                 }
                                 return §§pop();
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr96);
                     }
                     return this;
                  }
               }
            }
            §§goto(addr139);
         }
         §§goto(addr100);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §4!?§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&!e§(_loc2_.§[!N§,§@V§);
            if(!_loc4_)
            {
               §4!?§.concat(§@V§);
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §4!?§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §4!?§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr77);
            }
            _loc2_.§&!e§(_loc2_.§[!N§,§@V§);
            if(_loc4_)
            {
               break;
            }
            §4!?§.concat(§@V§);
            if(_loc4_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         §4!?§.invert();
         addr77:
         return §4!?§.transformPoint(param1);
      }
      
      public function render(param1:§'"3§, param2:Number) : void
      {
         throw new §2B§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  addr43:
                  if(_loc4_)
                  {
                     if(_loc2_.timestamp == this.§2!x§)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           return;
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr79);
                  }
                  this.§2!x§ = _loc2_.timestamp;
               }
               §§goto(addr79);
            }
            addr79:
            super.dispatchEvent(param1);
            return;
         }
         §§goto(addr43);
      }
      
      function §&!w§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc8_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        addr49:
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc2_ == null);
                           if(!_loc7_)
                           {
                              addr63:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc7_ && param1))
                              {
                                 if(_loc2_ == this)
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              _loc3_ = §8!J§();
                              if(!_loc7_)
                              {
                                 §§push(param1 == this.§[!N§);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          addr106:
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      §§push(this.§[!N§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc7_)
                                                         {
                                                            addr128:
                                                            §§push(§§pop());
                                                            if(_loc8_)
                                                            {
                                                               addr131:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr144:
                                                                     §§pop();
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§push(_loc3_.length > 0);
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                        }
                                                                        addr237:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              addr246:
                                                                              §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr253:
                                                                                 if(_loc3_.length > 0)
                                                                                 {
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       addr272:
                                                                                       var _loc5_:* = 0;
                                                                                       addr271:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr275:
                                                                                          var _loc6_:* = _loc3_;
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             loop2:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                addr294:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr297:
                                                                                             return;
                                                                                             addr293:
                                                                                             addr296:
                                                                                             addr295:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.addEventListeningObject(this,_loc4_);
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr271);
                                                                           }
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     addr222:
                                                                     this.§[!N§ = param1;
                                                                     if(_loc8_)
                                                                     {
                                                                        addr227:
                                                                        §§push(Boolean(this.§[!N§));
                                                                        if(_loc8_ || _loc3_)
                                                                        {
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc7_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc6_ = _loc3_;
                                                                           if(_loc7_ && param1)
                                                                           {
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc6_,_loc5_));
                                                                              if(!(_loc7_ && _loc2_))
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
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr128);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr63);
                        }
                        break;
                     }
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr49);
         }
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§[!N§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr46:
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§[!N§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§[!N§);
            if(!(_loc4_ && param2))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr50:
         if(_loc3_)
         {
            §§push(this.§[!N§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §0!u§() : Matrix
      {
         return this.§&!e§(this.§[!N§);
      }
      
      public function get §3",§() : Rectangle
      {
         return this.getBounds(this.§[!N§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§[!N§,§`!q§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§2R§ = 1;
         }
         §§push(this.width);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc4_ && _loc2_))
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     addr88:
                     §§push(this);
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr100:
                  }
                  else
                  {
                     addr84:
                  }
                  return;
               }
               §§goto(addr100);
            }
            §§goto(addr88);
         }
         §§goto(addr84);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§[!N§,§`!q§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;!Z§ = 1;
         }
         §§push(this.height);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc4_ && _loc3_)
               {
                  addr90:
               }
               return;
            }
            if(_loc3_ || _loc2_)
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
         §§goto(addr90);
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
               if(!(_loc3_ && this))
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
         if(!(_loc3_ && _loc3_))
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
         if(!_loc4_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  this.removeEventListeningObject(this,param1);
               }
               break;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §8!J§();
         if(_loc6_ || this)
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               if(param1 == null)
               {
                  addr48:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_ || this)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_ && _loc2_)
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
      
      public function §@_§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§@P§);
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
                           while(true)
                           {
                              §§pop();
                              addr512:
                              while(true)
                              {
                                 §§push(this.§2R§);
                                 addr498:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr499:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr511:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§,!k§);
                                          loop27:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop28:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop29:
                                                while(_loc3_)
                                                {
                                                   §§push(!§§pop());
                                                   loop30:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop());
                                                      loop31:
                                                      while(_loc3_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop32:
                                                            for(; _loc3_; if(_loc2_ && _loc3_)
                                                            {
                                                               continue;
                                                            },§§goto(addr93))
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§pop();
                                                                  loop33:
                                                                  while(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§push(this.§!Q§);
                                                                        loop34:
                                                                        for(; !_loc2_; while(!(_loc2_ && param1))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 §§push(1);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§goto(addr209);
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    §§goto(addr463);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       §§goto(addr264);
                                                                                       §§push(§§pop() == §§pop());
                                                                                    }
                                                                                    §§goto(addr410);
                                                                                    addr261:
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                              §§goto(addr459);
                                                                           }
                                                                           §§goto(addr397);
                                                                        })
                                                                        {
                                                                           §§push(0);
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!(_loc3_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 loop36:
                                                                                 for(; _loc3_; while(_loc3_ || this)
                                                                                 {
                                                                                    §§goto(addr273);
                                                                                    §§push(§§pop());
                                                                                 })
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop37:
                                                                                    for(; _loc3_; if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    },§§goto(addr84),§§push(!§§pop()))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                param1.prependTranslation(this.§,!k§,this.§!Q§,0);
                                                                                                addr345:
                                                                                                addr504:
                                                                                                while(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§@P§);
                                                                                                      addr283:
                                                                                                      addr409:
                                                                                                      while(_loc3_ || this)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr410:
                                                                                                         addr457:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               break loop32;
                                                                                                            }
                                                                                                            addr445:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               break loop37;
                                                                                                            }
                                                                                                         }
                                                                                                         addr457:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr459:
                                                                                                            §§push(this.§,!k§);
                                                                                                            §§push(this.§4!^§);
                                                                                                            addr461:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr462:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr463:
                                                                                                                  while(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     break loop30;
                                                                                                                  }
                                                                                                                  §§goto(addr499);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§;!Z§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr445);
                                                                                                      §§push(1);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr462);
                                                                                                   }
                                                                                                }
                                                                                                loop56:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc3_ || param1))
                                                                                                   {
                                                                                                      continue loop39;
                                                                                                   }
                                                                                                   loop57:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§4!^§);
                                                                                                      loop58:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               continue loop35;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  loop44:
                                                                                                                  while(_loc3_)
                                                                                                                  {
                                                                                                                     param1.prependRotation(this.§@P§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                     while(!_loc2_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§2R§);
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           param1.prependTranslation(this.§4!^§,this.§'?§,0);
                                                                                                                           addr113:
                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr20);
                                                                                                                              }
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           continue loop44;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr345);
                                                                                                                  }
                                                                                                                  addr431:
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr457);
                                                                                                                  }
                                                                                                                  §§goto(addr353);
                                                                                                               }
                                                                                                               §§goto(addr250);
                                                                                                            }
                                                                                                            addr129:
                                                                                                            addr298:
                                                                                                         }
                                                                                                         break;
                                                                                                         addr175:
                                                                                                         loop67:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§'?§);
                                                                                                            if(!(_loc3_ || param1))
                                                                                                            {
                                                                                                               continue loop58;
                                                                                                            }
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            if(_loc2_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            §§push(0);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(!(_loc2_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                              addr69:
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              addr264:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 continue loop36;
                                                                                                                                 §§goto(addr69);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                              }
                                                                                                                              addr276:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              addr140:
                                                                                                                              addr482:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr161:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc3_ || param1))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr276);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr210:
                                                                                                                                                         addr277:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  param1.prependScale(this.§2R§,this.§;!Z§,1);
                                                                                                                                                               }
                                                                                                                                                               continue loop56;
                                                                                                                                                            }
                                                                                                                                                            continue loop57;
                                                                                                                                                         }
                                                                                                                                                         addr277:
                                                                                                                                                         addr494:
                                                                                                                                                         while(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§;!Z§);
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§!Q§);
                                                                                                                                                            addr397:
                                                                                                                                                            while(!(_loc2_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§'?§);
                                                                                                                                                               break loop35;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr462);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr209:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr277);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr161);
                                                                                                                                             }
                                                                                                                                             while(!(_loc2_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr494);
                                                                                                                                                   }
                                                                                                                                                   addr493:
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop33;
                                                                                                                                                }
                                                                                                                                                addr353:
                                                                                                                                                §§goto(addr20);
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                             addr485:
                                                                                                                                             addr273:
                                                                                                                                          }
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                             }
                                                                                                                                             addr172:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr99);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop67;
                                                                                                                                                         }
                                                                                                                                                         continue loop56;
                                                                                                                                                      }
                                                                                                                                                      addr173:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr113);
                                                                                                                                             }
                                                                                                                                             addr20:
                                                                                                                                             return;
                                                                                                                                             addr93:
                                                                                                                                          }
                                                                                                                                          §§goto(addr173);
                                                                                                                                          §§goto(addr462);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 §§goto(addr210);
                                                                                                                              }
                                                                                                                              while(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr485);
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           addr139:
                                                                                                                        }
                                                                                                                        §§goto(addr277);
                                                                                                                     }
                                                                                                                     §§goto(addr172);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr84:
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr140);
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr129);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop30;
                                                                              }
                                                                              continue loop28;
                                                                           }
                                                                           while(!_loc2_)
                                                                           {
                                                                              §§goto(addr409);
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr512);
                                                                     }
                                                                     §§goto(addr498);
                                                                  }
                                                                  param1.prependTranslation(this.§,!k§ + this.§4!^§,this.§!Q§ + this.§'?§,0);
                                                                  §§goto(addr431);
                                                               }
                                                               §§goto(addr493);
                                                            }
                                                            §§push(!§§pop());
                                                            break loop29;
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      continue loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr482);
                                                   }
                                                }
                                                if(_loc3_)
                                                {
                                                   §§goto(addr416);
                                                }
                                                addr503:
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr504);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr457);
                                    }
                                    addr455:
                                 }
                                 §§goto(addr503);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,!k§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§!Q§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§2!J§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§[!N§)
            {
               if(_loc2_)
               {
                  addr23:
                  this.§2!J§ = param1;
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function get pivotX() : Number
      {
         return this.§4!^§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§4!^§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§'?§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'?§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§2R§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2R§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§;!Z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!Z§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§@P§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() <= Math.PI)
               {
                  loop10:
                  while(true)
                  {
                     §§push(param1);
                     loop11:
                     for(; _loc4_; if(_loc3_ && param1)
                     {
                        continue;
                     },if(_loc3_)
                     {
                        continue loop0;
                     },§§push(_loc2_),if(!_loc3_)
                     {
                        §§push(Math.PI * 2);
                        if(!(_loc3_ && param1))
                        {
                           addr71:
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              §§goto(addr73);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr179);
                     },§§goto(addr71))
                     {
                        §§push(-Math.PI);
                        loop12:
                        while(!(_loc3_ && this))
                        {
                           if(§§pop() < §§pop())
                           {
                              loop13:
                              for(; !(_loc3_ && param1); if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              },if(_loc3_ && param1)
                              {
                                 continue loop10;
                              },if(_loc4_ || _loc3_)
                              {
                                 addr130:
                              },while(true)
                              {
                                 §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                                 addr221:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    break loop13;
                                 }
                              })
                              {
                                 while(true)
                                 {
                                    §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                    loop18:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr164:
                                       addr91:
                                       addr92:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             continue loop11;
                                          }
                                          addr88:
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop18;
                                       }
                                       param1 = Number(§§pop());
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             continue loop13;
                                          }
                                          §§goto(addr164);
                                          §§goto(addr91);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc3_ && this)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    §§push(Math.PI * 2);
                                    addr179:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       break loop12;
                                    }
                                    addr73:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr88);
                                    }
                                    §§goto(addr91);
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§@P§ = param1;
                              if(!(_loc3_ && _loc2_))
                              {
                                 break;
                              }
                              §§goto(addr92);
                              §§goto(addr130);
                           }
                           return;
                        }
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           continue loop0;
                        }
                     }
                     addr199:
                     while(!(_loc3_ && param1))
                     {
                        param1 = §§pop();
                        continue loop10;
                     }
                     §§goto(addr221);
                  }
               }
               §§goto(addr212);
            }
         }
         §§goto(addr153);
      }
      
      public function get alpha() : Number
      {
         return this.§@e§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            if(!_loc3_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr56:
                           §§push(0);
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc2_)
                              {
                                 addr83:
                                 §§pop().§@e§ = §§pop();
                                 return;
                                 addr73:
                              }
                           }
                        }
                        else
                        {
                           addr69:
                           §§push(Number(1));
                           if(_loc3_)
                           {
                              addr82:
                              §§goto(addr83);
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           addr68:
                           if(§§pop() > 1)
                           {
                              §§goto(addr69);
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr82);
                              }
                              §§goto(addr83);
                           }
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr68);
               }
               §§goto(addr83);
            }
            §§goto(addr56);
         }
         §§goto(addr83);
      }
      
      public function get visible() : Boolean
      {
         return this.§`!5§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!5§ = param1;
         }
      }
      
      public function get §`!u§() : Boolean
      {
         return this.§'>§;
      }
      
      public function set §`!u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§'>§ = param1;
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
         if(_loc2_ || this)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§[!N§;
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
