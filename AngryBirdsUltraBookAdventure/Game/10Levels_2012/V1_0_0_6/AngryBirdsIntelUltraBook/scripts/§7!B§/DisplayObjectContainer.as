package §7!B§
{
   import §!!K§.§?%§;
   import §4!S§.§#!s§;
   import §9!k§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §'V§:Matrix;
      
      private static var §3K§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §'V§ = new Matrix();
            do
            {
               §3K§ = new Point();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §`!J§:Vector.<DisplayObject>;
      
      private var §>!§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§`!J§ = new Vector.<DisplayObject>(0);
               }
               while(_loc1_);
               
               if(_loc1_ && _loc2_)
               {
                  break;
               }
               if(_loc2_)
               {
                  return;
               }
            }
         }
         throw new §#!s§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§`!J§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc3_)
               {
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  super.dispose();
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§`!J§[_loc2_].dispose();
            }
            _loc2_++;
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr150:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr151:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              param1.§;!S§();
                              loop7:
                              while(true)
                              {
                                 this.§`!J§.splice(param2,0,param1);
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       param1.§^i§(this);
                                       do
                                       {
                                          param1.dispatchEvent(new Event(Event.ADDED,true));
                                       }
                                       while(stage);
                                       
                                       return;
                                       addr29:
                                       addr99:
                                    }
                                    break;
                                    addr59:
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc3_ && param2)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr29);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        throw new RangeError("Invalid child index");
                        addr143:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
            if(!_loc3_)
            {
               §§goto(addr59);
            }
            §§goto(addr99);
         }
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            if(_loc3_ != -1)
            {
               if(!_loc5_)
               {
                  this.removeChildAt(_loc3_,param2);
               }
            }
         }
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && param2))
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              addr62:
                              if(param1 < this.numChildren)
                              {
                                 if(!_loc4_)
                                 {
                                    _loc3_ = this.§`!J§[param1];
                                    addr65:
                                    if(!(_loc4_ && this))
                                    {
                                       _loc3_.dispatchEvent(new Event(Event.§!-§,true));
                                       loop0:
                                       while(true)
                                       {
                                          if(stage)
                                          {
                                             while(true)
                                             {
                                                _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                                addr154:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr148:
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             _loc3_.§^i§(null);
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      this.§`!J§.splice(param1,1);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!param2)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc3_.dispose();
                                                            }
                                                            addr99:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               continue loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   continue;
                                                   addr117:
                                                }
                                                §§goto(addr148);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr99);
                                 }
                                 addr163:
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           §§goto(addr65);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §?!z§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(param2);
            if(!(_loc6_ && this))
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_ || param3)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(param2);
                              if(_loc5_)
                              {
                                 addr65:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr73);
                                    }
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr73);
                        }
                     }
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr95);
         }
         addr73:
         §§push(this.numChildren);
         if(_loc5_)
         {
            addr77:
            §§push(int(§§pop() - 1));
            if(_loc5_)
            {
               param2 = §§pop();
               addr82:
               §§push(param1);
               if(_loc5_)
               {
                  addr95:
                  §§push(int(§§pop()));
               }
            }
            §§goto(addr95);
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc4_ > param2)
            {
               if(_loc6_ && param2)
               {
                  continue;
               }
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               this.removeChildAt(param1,param3);
            }
            _loc4_++;
         }
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr89:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr90:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              return this.§`!J§[param1];
                           }
                           if(!_loc2_)
                           {
                              addr86:
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr75:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§`!J§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ && this)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  return null;
               }
            }
            else if(this.§`!J§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         while(_loc4_);
         
         return this.§`!J§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§`!J§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            if(_loc3_ == -1)
            {
               if(_loc5_ || _loc3_)
               {
                  throw new ArgumentError("Not a child of this container");
               }
               while(true)
               {
                  §§goto(addr79);
               }
               addr94:
            }
            while(true)
            {
               this.§`!J§.splice(_loc3_,1);
               §§goto(addr94);
            }
         }
         addr79:
         while(true)
         {
            this.§`!J§.splice(param2,0,param1);
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5!V§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param2))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr118:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 this.§'!g§(_loc3_,_loc4_);
                              }
                              while(!(_loc5_ || this));
                              
                              if(!_loc6_)
                              {
                                 return;
                              }
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop() == §§pop());
                           addr89:
                           continue loop0;
                           if(_loc5_ || this)
                           {
                              continue;
                           }
                           addr128:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr128:
                        }
                        addr111:
                        throw new ArgumentError("Not a child of this container");
                        addr107:
                     }
                  }
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §'!g§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc5_ && this))
         {
            this.§`!J§[param1] = _loc4_;
            do
            {
               this.§`!J§[param2] = _loc3_;
            }
            while(!_loc6_);
            
         }
      }
      
      public function §,[§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`!J§ = this.§`!J§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc6_ || param1)
         {
            if(param1 == this)
            {
               if(_loc6_)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§`!J§.length;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc2_)
         {
            §§push(Boolean(_loc5_ = (_loc4_ = this.§`!J§[_loc3_]) as DisplayObjectContainer));
            if(!(_loc7_ && param1))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr79:
                     §§pop();
                     if(!(_loc7_ && param1))
                     {
                        §§push(_loc5_.contains(param1));
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                           loop1:
                           do
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr144);
                                 }
                                 addr145:
                                 while(true)
                                 {
                                    addr126:
                                    if(!(_loc7_ && this))
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          _loc3_++;
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(_loc6_)
                                             {
                                                if(true)
                                                {
                                                   continue loop0;
                                                }
                                                while(_loc4_ != param1)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             §§push(true);
                                             if(!_loc7_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr144);
                                          }
                                          else
                                          {
                                             §§goto(addr126);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr101);
                           }
                           while(_loc7_ && _loc2_);
                           
                           return §§pop();
                           addr140:
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr145);
                  }
                  addr144:
                  return true;
               }
               §§goto(addr140);
            }
            §§goto(addr79);
         }
         return false;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         if(!(_loc11_ && _loc3_))
         {
            if(param2 == null)
            {
               addr36:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§`!J§.length;
            if(!(_loc11_ && param2))
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc10_ || param2)
                        {
                           §6!8§(param1,§'V§);
                           if(_loc10_ || param1)
                           {
                              transformCoords(§'V§,0,0,§3K§);
                              if(!(_loc11_ && _loc3_))
                              {
                                 loop0:
                                 while(true)
                                 {
                                    param2.x = §3K§.x;
                                    if(!_loc11_)
                                    {
                                       loop38:
                                       while(true)
                                       {
                                          param2.y = §3K§.y;
                                          if(!(_loc11_ && param1))
                                          {
                                             if(false)
                                             {
                                                continue loop0;
                                             }
                                             param2.width = param2.height = 0;
                                             if(_loc10_ || param2)
                                             {
                                                break loop0;
                                             }
                                             loop39:
                                             while(true)
                                             {
                                                §§push(Number(Number.MAX_VALUE));
                                                addr482:
                                                loop3:
                                                while(!(_loc11_ && param2))
                                                {
                                                   _loc6_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(!(_loc11_ && this))
                                                      {
                                                         break loop38;
                                                      }
                                                      §§goto(addr541);
                                                   }
                                                   _loc7_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ || param2)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(_loc11_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               break;
                                                            }
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     continue loop39;
                                                                  }
                                                                  addr538:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr539:
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        addr540:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              §§goto(addr541);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(Number.MAX_VALUE));
                                                                                 addr528:
                                                                                 addr549:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                 }
                                                                                 addr549:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(!(_loc10_ || param1))
                                                               {
                                                                  §§goto(addr549);
                                                               }
                                                               §§push(-Number.MAX_VALUE);
                                                               break loop3;
                                                               addr503:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr490);
                                                         }
                                                         §§goto(addr541);
                                                      }
                                                      §§goto(addr539);
                                                   }
                                                   addr490:
                                                   while(true)
                                                   {
                                                      if(_loc8_ >= _loc3_)
                                                      {
                                                         while(_loc10_ || param2)
                                                         {
                                                            if(_loc10_ || param1)
                                                            {
                                                               param2.x = _loc4_;
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  param2.y = _loc6_;
                                                                  do
                                                                  {
                                                                     param2.width = _loc5_ - _loc4_;
                                                                     continue loop11;
                                                                  }
                                                                  while(_loc11_ && _loc3_);
                                                                  
                                                                  return param2;
                                                               }
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         continue;
                                                      }
                                                      this.§`!J§[_loc8_].getBounds(param1,param2);
                                                      §§goto(addr420);
                                                   }
                                                }
                                                §§goto(addr503);
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(-Number.MAX_VALUE);
                                          if(!(_loc11_ && param2))
                                          {
                                             if(!_loc11_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr469:
                                                   §§push(Number(§§pop()));
                                                   if(_loc10_ || this)
                                                   {
                                                      §§goto(addr476);
                                                   }
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr528);
                                             }
                                             §§goto(addr482);
                                          }
                                          §§goto(addr469);
                                       }
                                       addr74:
                                    }
                                    break;
                                 }
                                 return param2;
                              }
                              §§goto(addr477);
                           }
                           addr541:
                           return this.§`!J§[0].getBounds(param1,param2);
                        }
                        §§goto(addr549);
                     }
                     §§goto(addr538);
                  }
                  §§goto(addr540);
               }
               §§goto(addr539);
            }
            §§goto(addr74);
         }
         §§goto(addr36);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc10_ && this))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc10_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!_loc10_)
                           {
                              §§goto(addr44);
                           }
                           if(!_loc10_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 addr64:
                                 addr64:
                                 loop4:
                                 while(true)
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       continue loop0;
                                    }
                                    addr103:
                                    while(true)
                                    {
                                       §§pop();
                                       break loop4;
                                    }
                                 }
                                 addr104:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                           addr79:
                           while(true)
                           {
                              if(_loc9_ || param2)
                              {
                                 §§push(!§]!F§);
                                 if(_loc9_ || param2)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr64);
                              }
                           }
                           §§goto(addr104);
                        }
                        var _loc3_:Number = param1.x;
                        var _loc4_:Number = param1.y;
                        var _loc5_:int;
                        §§push(_loc5_ = this.§`!J§.length);
                        if(!(_loc10_ && param1))
                        {
                           §§push(int(§§pop() - 1));
                        }
                        var _loc6_:* = §§pop();
                        addr190:
                        if(_loc6_ >= 0)
                        {
                           _loc7_ = this.§`!J§[_loc6_];
                           if(_loc9_ || this)
                           {
                              §6!8§(_loc7_,§'V§);
                              if(_loc9_)
                              {
                                 transformCoords(§'V§,_loc3_,_loc4_,§3K§);
                              }
                           }
                           if(_loc8_ = _loc7_.hitTest(§3K§,param2))
                           {
                              if(!(_loc9_ || param2))
                              {
                                 §§goto(addr190);
                              }
                              return _loc8_;
                           }
                           §§push(_loc6_);
                           if(_loc9_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                           §§goto(addr190);
                        }
                        return null;
                        addr40:
                     }
                  }
               }
               §§goto(addr103);
            }
         }
         addr44:
         return null;
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_)
               {
                  addr30:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr32);
            }
            §§goto(addr30);
         }
         addr32:
         var _loc3_:int = this.§`!J§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§`!J§[_loc4_]).alpha);
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop());
                        if(_loc7_ || param2)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && param1))
                              {
                                 §§pop();
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr234:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr236:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr187:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr188:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr189:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr226:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr233:
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr234);
                     }
                  }
                  §§goto(addr171);
               }
               §§goto(addr188);
            }
            §§goto(addr153);
            if(true)
            {
               continue;
            }
            §§goto(addr115);
         }
      }
      
      public function §?U§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1.bubbles)
            {
               if(_loc3_ || param1)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               while(true)
               {
               }
               addr60:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr60);
            }
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!(_loc6_ && _loc3_))
         {
            this.§,5§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc6_)
               {
                  continue;
               }
               if(!(_loc6_ && param1))
               {
                  break;
               }
            }
            else
            {
               _loc2_[_loc4_].dispatchEvent(param1);
            }
            _loc4_++;
         }
      }
      
      private function §,5§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!(_loc8_ && param2))
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc9_ || param1)
               {
                  param3.push(param1);
                  if(_loc9_)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr64);
               }
            }
         }
         addr62:
         if(_loc4_)
         {
            addr64:
            §§push(int((_loc5_ = _loc4_.§`!J§).length));
            if(!(_loc8_ && param1))
            {
               _loc6_ = §§pop();
               if(!_loc8_)
               {
                  addr117:
                  _loc7_ = 0;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc7_ < _loc6_)
                     {
                        this.§,5§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(_loc8_)
                           {
                              break;
                           }
                           if(!(_loc8_ && param3))
                           {
                              if(false)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr122);
                  }
               }
            }
            §§goto(addr117);
         }
         addr122:
      }
      
      public function get numChildren() : int
      {
         return this.§`!J§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_ || _loc3_)
         {
            this.§>!§ = param1;
         }
         for each(_loc2_ in this.§`!J§)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§>!§;
      }
   }
}
