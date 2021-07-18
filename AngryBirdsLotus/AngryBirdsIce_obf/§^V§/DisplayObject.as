package §^V§
{
   import §-Z§.§ G§;
   import §5d§.§ @§;
   import §5d§.§`!=§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §3!,§:Vector.<DisplayObject>;
      
      private static var §^n§:Rectangle;
      
      private static var §"R§:Matrix;
      
      private static var §9k§:Matrix;
      
      protected static var §9!E§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3!,§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §^n§ = new Rectangle();
            }
            addr92:
         }
         loop1:
         while(true)
         {
            §"R§ = new Matrix();
            while(!_loc2_)
            {
               §9k§ = new Matrix();
               while(!_loc2_)
               {
                  continue loop1;
                  §9!E§ = 0;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
            §§goto(addr92);
         }
      }
      
      private var §-Y§:Number;
      
      private var §%!;§:Number;
      
      private var §3e§:Number;
      
      private var §>9§:Number;
      
      private var §9K§:Number;
      
      private var §4w§:Number;
      
      private var §]!=§:Number;
      
      private var §#b§:Number;
      
      private var §1!;§:Boolean;
      
      private var §5i§:Boolean;
      
      private var mName:String;
      
      private var §,N§:Number;
      
      private var §67§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(_loc2_)
         {
            if(getQualifiedClassName(this) == "starling.display::DisplayObject")
            {
               throw new §`!=§();
            }
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.§]!=§ = 0);
            if(_loc2_)
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().§>9§ = §§pop();
            §§push(_loc1_);
            if(_loc2_ || _loc3_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§3e§ = §§pop();
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§%!;§ = §§pop();
            §§pop().§-Y§ = _loc1_;
            if(_loc2_ || _loc3_)
            {
               §§push(this);
               §§push(this);
               §§push(this.§#b§ = 1);
               if(!_loc3_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§4w§ = §§pop();
               §§pop().§9K§ = _loc1_;
               if(_loc2_)
               {
                  this.§1!;§ = this.§5i§ = true;
               }
               this.§,N§ = -1;
            }
         }
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
      
      public function §+O§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§67§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  addr75:
                  while(true)
                  {
                     §§push(this.§67§);
                     addr77:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr79:
                        while(true)
                        {
                        }
                     }
                  }
                  addr75:
               }
               for(; param1; §§goto(addr79))
               {
                  if(!_loc3_)
                  {
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     this.dispose();
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr75);
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr75);
      }
      
      public function §8n§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(param2)
         {
            if(_loc6_)
            {
               param2.identity();
               addr28:
               if(param1 == this)
               {
                  if(!(_loc5_ && param2))
                  {
                     return param2;
                  }
                  while(true)
                  {
                     §§push(this.§67§ == null);
                     while(_loc6_ || _loc3_)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(this.§3e§);
                              §§push(0);
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr276:
                                    loop8:
                                    while(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                addr291:
                                                addr316:
                                                while(!_loc5_)
                                                {
                                                   §§push(this.§>9§);
                                                   §§push(0);
                                                   continue loop10;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1 == null);
                                                   break loop8;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr248);
                                             }
                                             §§goto(addr205);
                                          }
                                          while(!(_loc5_ && this))
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr231);
                                             }
                                             §§goto(addr194);
                                             §§goto(addr138);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr299);
                                    }
                                 }
                                 if(!(_loc6_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc5_)
                                    {
                                       §§goto(addr91);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr128);
                              }
                           }
                           else if(param1 != null)
                           {
                              if(param1.§67§ == this)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    param1.§8n§(this,param2);
                                    if(_loc6_ || param2)
                                    {
                                       param2.invert();
                                    }
                                    else
                                    {
                                       addr374:
                                       §3!,§.length = 0;
                                       addr391:
                                       if(_loc5_ && param2)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr391);
                                          }
                                          addr386:
                                          return param2;
                                          addr394:
                                       }
                                       if(false)
                                       {
                                          §§goto(addr386);
                                       }
                                       else
                                       {
                                          var _loc3_:DisplayObject = null;
                                          var _loc4_:DisplayObject = this;
                                          if(_loc6_)
                                          {
                                             addr414:
                                             if(_loc4_)
                                             {
                                                §3!,§.push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   addr410:
                                                   _loc4_ = _loc4_.parent;
                                                   §§goto(addr414);
                                                }
                                             }
                                             _loc4_ = param1;
                                             if(_loc6_)
                                             {
                                                addr427:
                                                §§push(Boolean(_loc4_));
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§pop();
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr453:
                                                            if(§3!,§.indexOf(_loc4_) == -1)
                                                            {
                                                               _loc4_ = _loc4_.parent;
                                                               §§goto(addr427);
                                                            }
                                                            if(_loc6_ || this)
                                                            {
                                                               addr461:
                                                               if(_loc4_ == null)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     throw new ArgumentError("Object not connected to target");
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         _loc3_ = _loc4_;
                                                         _loc4_ = this;
                                                         if(!_loc5_)
                                                         {
                                                            addr506:
                                                            if(_loc4_ != _loc3_)
                                                            {
                                                               _loc4_.§8n§(_loc4_.§67§,§"R§);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  param2.concat(§"R§);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr502:
                                                                     _loc4_ = _loc4_.parent;
                                                                     §§goto(addr506);
                                                                  }
                                                                  addr513:
                                                                  _loc4_ = param1;
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr561:
                                                                     if(_loc4_ != _loc3_)
                                                                     {
                                                                        _loc4_.§8n§(_loc4_.§67§,§"R§);
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           addr537:
                                                                           §9k§.concat(§"R§);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              _loc4_ = _loc4_.parent;
                                                                              §§goto(addr561);
                                                                           }
                                                                        }
                                                                        §§goto(addr566);
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr566:
                                                                        §9k§.invert();
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           addr575:
                                                                           param2.concat(§9k§);
                                                                        }
                                                                        return param2;
                                                                     }
                                                                     §§goto(addr575);
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                               §§goto(addr502);
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               addr511:
                                                               §9k§.identity();
                                                            }
                                                            §§goto(addr513);
                                                         }
                                                         §§goto(addr511);
                                                      }
                                                   }
                                                }
                                                §§goto(addr453);
                                             }
                                             §§goto(addr461);
                                          }
                                          §§goto(addr410);
                                       }
                                    }
                                 }
                                 §§goto(addr394);
                              }
                              §§goto(addr374);
                           }
                           §§goto(addr321);
                        }
                     }
                     §§pop();
                     §§goto(addr316);
                  }
               }
               else
               {
                  §§push(param1 == this.§67§);
               }
               §§goto(addr313);
            }
            §§goto(addr316);
         }
         else
         {
            param2 = new Matrix();
         }
         §§goto(addr28);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new § @§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2);
         if(_loc3_)
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
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr112:
                        while(true)
                        {
                           §§push(this.§1!;§);
                           do
                           {
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                                 §§push(!§§pop());
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           while(_loc4_);
                           
                           continue loop6;
                        }
                     }
                     addr111:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!this.getBounds(this,§^n§).containsPoint(param1))
                        {
                           §§push(null);
                           if(!_loc4_)
                           {
                              return §§pop();
                           }
                           §§goto(addr89);
                        }
                        if(_loc3_ || this)
                        {
                           return this;
                        }
                     }
                     if(_loc3_ || param2)
                     {
                        break;
                     }
                     §§goto(addr112);
                  }
                  addr89:
                  return §§pop();
               }
            }
         }
         §§goto(addr111);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §9k§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8n§(_loc2_.§67§,§"R§);
            if(!_loc4_)
            {
               §9k§.concat(§"R§);
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §9k§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §9k§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  §9k§.invert();
                  break;
               }
               break;
            }
            _loc2_.§8n§(_loc2_.§67§,§"R§);
            if(_loc4_)
            {
               §9k§.concat(§"R§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §9k§.transformPoint(param1);
      }
      
      public function render(param1:§ G§, param2:Number) : void
      {
         throw new § @§("Method needs to be implemented in subclass");
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
               if(_loc4_)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(_loc4_)
                  {
                     if(_loc2_.timestamp == this.§,N§)
                     {
                        if(!(_loc4_ || _loc2_))
                        {
                           §§goto(addr79);
                        }
                     }
                     else
                     {
                        this.§,N§ = _loc2_.timestamp;
                        §§goto(addr79);
                     }
                     §§goto(addr79);
                  }
                  return;
               }
            }
            §§goto(addr79);
         }
         addr79:
         super.dispatchEvent(param1);
      }
      
      function § M§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(!_loc8_)
               {
                  addr39:
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§pop();
                  if(_loc7_ || _loc2_)
                  {
                     §§push(_loc2_ == null);
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr81:
                     _loc3_ = §!G§();
                     §§push(param1 != this.§67§);
                     if(_loc7_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc7_ || param1)
                                 {
                                    §§push(this.§67§);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc8_ && param1))
                                       {
                                          addr141:
                                          §§push(§§pop());
                                          if(_loc7_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                addr150:
                                                §§pop();
                                                §§goto(addr155);
                                             }
                                             addr155:
                                             if(_loc3_.length > 0)
                                             {
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   var _loc5_:* = §§pop();
                                                   if(_loc7_ || param1)
                                                   {
                                                      var _loc6_:* = _loc3_;
                                                      if(_loc8_ && param1)
                                                      {
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                         if(_loc7_ || this)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                               if(!_loc8_)
                                                               {
                                                                  this.removeEventListeningObject(this,_loc4_);
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                            if(_loc7_ || this)
                                                            {
                                                               this.addEventListeningObject(this,_loc4_);
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr222);
                                             }
                                             addr205:
                                             this.§67§ = param1;
                                             §§goto(addr212);
                                          }
                                          addr212:
                                          §§goto(addr210);
                                       }
                                       §§goto(addr215);
                                    }
                                    addr210:
                                    §§push(Boolean(this.§67§));
                                    if(Boolean(this.§67§))
                                    {
                                       if(!_loc8_)
                                       {
                                          addr215:
                                          §§pop();
                                          §§push(_loc3_.length > 0);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       addr222:
                                       _loc5_ = 0;
                                       if(!_loc8_)
                                       {
                                          addr225:
                                          _loc6_ = _loc3_;
                                          if(_loc8_ && param1)
                                          {
                                          }
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc6_,_loc5_));
                                             break loop2;
                                          }
                                          addr263:
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr205);
                        }
                     }
                     §§goto(addr150);
                  }
               }
               §§push(!§§pop());
               continue;
            }
            §§goto(addr39);
         }
         if(_loc7_)
         {
            if(_loc2_ == this)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr75);
               }
            }
            §§goto(addr81);
         }
         addr75:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§67§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr50:
         if(_loc3_ || param1)
         {
            §§push(this.§67§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§67§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     addr48:
                     this.§67§.addEventListeningObject(param1,param2);
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
         if(_loc2_ || param1)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §-<§() : Matrix
      {
         return this.§8n§(this.§67§);
      }
      
      public function get §;A§() : Rectangle
      {
         return this.getBounds(this.§67§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§67§,§^n§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§9K§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     addr79:
                     §§push(this);
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr86:
                  }
                  return;
               }
               §§goto(addr86);
            }
         }
         §§goto(addr79);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§67§,§^n§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§4w§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_ && _loc3_)
               {
                  addr91:
               }
               return;
            }
            if(!_loc3_)
            {
               addr84:
               §§push(this);
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr91);
         }
         §§goto(addr84);
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
         if(_loc4_)
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(!(_loc4_ || param1));
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(!(_loc4_ && _loc3_))
            {
               this.removeEventListeningObject(this,param1);
            }
            if(_loc3_ || param1)
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
         var _loc2_:Array = §!G§();
         if(_loc6_)
         {
            super.removeEventListeners(param1);
            if(!_loc7_)
            {
               if(param1 == null)
               {
                  addr43:
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
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-Y§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!;§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§3e§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§3e§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§>9§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>9§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§9K§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9K§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§4w§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4w§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§]!=§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc2_ || this)
            {
               §§push(-Math.PI);
               if(_loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc2_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(§§pop() <= Math.PI)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       this.§]!=§ = param1;
                                    }
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(Math.PI * 2);
                                       addr101:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             addr116:
                                             §§push(Number(§§pop() + §§pop()));
                                             break loop1;
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                    }
                                    addr97:
                                 }
                              }
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              param1 = §§pop();
                              continue loop1;
                           }
                           continue loop0;
                        }
                        param1 = §§pop();
                        continue;
                        addr21:
                     }
                     while(true)
                     {
                        §§goto(addr21);
                     }
                  }
                  else
                  {
                     §§push(param1);
                     §§push(Math.PI * 2);
                  }
                  §§goto(addr116);
               }
               §§goto(addr101);
            }
            §§goto(addr97);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§#b§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() < 0);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§goto(addr86);
                        }
                        else
                        {
                           addr81:
                           addr86:
                           §§pop().§#b§ = Number(0);
                           return;
                           §§push(Number(1));
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() > 1);
                        }
                     }
                     §§goto(addr86);
                  }
                  if(§§pop())
                  {
                     §§goto(addr81);
                  }
                  else
                  {
                     §§push(Number(param1));
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr81);
         }
         §§goto(addr86);
      }
      
      public function get visible() : Boolean
      {
         return this.§1!;§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§1!;§ = param1;
         }
      }
      
      public function get §<!<§() : Boolean
      {
         return this.§5i§;
      }
      
      public function set §<!<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5i§ = param1;
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
         if(_loc2_ || _loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§67§;
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
