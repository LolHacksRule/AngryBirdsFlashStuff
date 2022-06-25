package §1!&§
{
   import §"$§.RenderSupport;
   import §@%§.§"m§;
   import §@2§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §4!g§:Matrix;
      
      private static var §;m§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4!g§ = new Matrix();
         }
         do
         {
            §;m§ = new Point();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §8w§:Vector.<DisplayObject>;
      
      private var §"p§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
               {
                  do
                  {
                     this.§8w§ = new Vector.<DisplayObject>(0);
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
         throw new §"m§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§8w§.length;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() >= _loc1_)
               {
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     super.dispose();
                  }
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§8w§[_loc2_].dispose();
               }
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc4_)
                  {
                  }
                  addr86:
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr86);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr161:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr162:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr163:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                           }
                           throw new RangeError("Invalid child index");
                           addr153:
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
         }
         §§goto(addr155);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ != -1)
            {
               if(!(_loc4_ && this))
               {
                  addr51:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr51);
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
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc5_ || param2)
                           {
                              §§pop();
                              if(!(_loc4_ && param1))
                              {
                                 addr67:
                                 §§push(param1 < this.numChildren);
                                 if(!_loc4_)
                                 {
                                    addr71:
                                    if(!§§pop())
                                    {
                                       throw new RangeError("Invalid child index");
                                    }
                                    if(!_loc4_)
                                    {
                                       _loc3_ = this.§8w§[param1];
                                       if(!_loc4_)
                                       {
                                          _loc3_.dispatchEvent(new Event(Event.§"!5§,true));
                                          while(true)
                                          {
                                             §§push(Boolean(stage));
                                             loop1:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                                      addr167:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr159:
                                                }
                                                while(true)
                                                {
                                                   _loc3_.§]X§(null);
                                                   addr143:
                                                   while(true)
                                                   {
                                                      addr130:
                                                      while(true)
                                                      {
                                                         this.§8w§.splice(param1,1);
                                                         continue loop1;
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                 }
                                 §§goto(addr71);
                              }
                              §§goto(addr183);
                           }
                        }
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §;!d§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc6_ && param3))
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc6_ && param3))
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc6_ && param3)
                           {
                           }
                           addr96:
                           if(§§pop())
                           {
                              if(!(_loc6_ && param1))
                              {
                                 §§push(this.numChildren);
                                 if(_loc5_)
                                 {
                                    addr109:
                                    §§push(int(§§pop() - 1));
                                    if(_loc5_ || param3)
                                    {
                                       addr118:
                                       param2 = §§pop();
                                       addr119:
                                       §§push(param1);
                                       if(_loc6_ && this)
                                       {
                                       }
                                       §§goto(addr128);
                                    }
                                 }
                                 addr128:
                                 var _loc4_:* = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_ || param1)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(§§pop() > param2)
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                break;
                                             }
                                             loop1:
                                             while(_loc6_ && this)
                                             {
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   continue loop1;
                                                }
                                             }
                                             continue;
                                          }
                                          this.removeChildAt(param1,param3);
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc5_ || param2)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                    }
                                    §§goto(addr174);
                                 }
                                 return;
                                 §§push(int(§§pop()));
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr96);
                     }
                     §§pop();
                     if(!_loc6_)
                     {
                        addr65:
                        §§push(param2);
                        if(_loc5_)
                        {
                           §§push(this.numChildren);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() >= §§pop());
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr96);
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr96);
               }
               §§goto(addr109);
            }
            §§goto(addr118);
         }
         §§goto(addr65);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr94:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc2_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_)
                     {
                        addr105:
                        §§push(§§pop());
                        if(_loc2_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           addr70:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    return this.§8w§[param1];
                                    addr74:
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                              }
                              addr24:
                              throw new RangeError("Invalid child index");
                           }
                           addr70:
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        §§push(§§pop() < §§pop());
                        addr44:
                        continue loop0;
                        if(!(_loc3_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!(_loc2_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr74);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§8w§.length;
         §§push(0);
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         do
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() >= _loc2_)
               {
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     return null;
                  }
               }
               else if(this.§8w§[_loc3_].name == param1)
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            _loc3_ = §§pop();
         }
         while(!(_loc4_ && this));
         
         return this.§8w§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§8w§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc4_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§8w§.splice(_loc3_,1);
                  while(_loc5_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§8w§.splice(param2,0,param1);
                        if(_loc5_)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  addr91:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr91);
      }
      
      public function §@!_§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
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
                  if(!(_loc5_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop());
                        if(_loc6_ || _loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    break;
                                 }
                                 while(_loc6_ || this)
                                 {
                                 }
                                 continue loop0;
                                 addr98:
                              }
                              while(true)
                              {
                                 this.§-!N§(_loc3_,_loc4_);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr98);
                              }
                              §§pop() == §§pop();
                              addr59:
                              return;
                              if(_loc6_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc6_ || this)
                              {
                                 continue;
                              }
                              addr144:
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                                 §§goto(addr59);
                              }
                              addr144:
                           }
                           throw new ArgumentError("Not a child of this container");
                           addr85:
                        }
                     }
                  }
                  §§goto(addr144);
               }
            }
            addr117:
         }
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param2)
            {
               §§push(-1);
               if(!_loc5_)
               {
                  §§goto(addr59);
               }
               else
               {
                  §§goto(addr118);
               }
            }
            else
            {
               §§goto(addr117);
            }
            §§goto(addr118);
            §§goto(addr144);
         }
      }
      
      public function §-!N§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc6_)
         {
            this.§8w§[param1] = _loc4_;
            do
            {
               this.§8w§[param2] = _loc3_;
            }
            while(_loc5_ && this);
            
         }
      }
      
      public function §;x§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§8w§ = this.§8w§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc7_)
         {
            if(param1 == this)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§8w§.length;
         §§push(0);
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§8w§[_loc3_];
            _loc5_ = _loc4_ as DisplayObjectContainer;
            if(_loc7_)
            {
               §§push(Boolean(_loc5_));
               while(true)
               {
                  §§push(§§pop());
                  if(_loc7_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                              addr170:
                           }
                           loop4:
                           while(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 if(_loc4_ == param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                if(_loc6_ && param1)
                                                {
                                                   break;
                                                }
                                                if(_loc7_ || _loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                             addr173:
                                             return §§pop();
                                             addr122:
                                          }
                                          break loop4;
                                       }
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       addr69:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop() + 1);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          _loc3_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       if(true)
                                       {
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr69);
                              }
                              continue loop0;
                           }
                           §§goto(addr173);
                        }
                     }
                  }
                  §§goto(addr170);
                  if(_loc7_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
            }
            §§goto(addr122);
         }
         return false;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!_loc10_)
         {
            if(param2 == null)
            {
               addr32:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§8w§.length;
            if(!(_loc10_ && param2))
            {
               §§push(_loc3_);
               if(!(_loc10_ && this))
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc10_)
                        {
                           addr105:
                           §&!R§(param1,§4!g§);
                           if(_loc11_)
                           {
                              transformCoords(§4!g§,0,0,§;m§);
                              if(_loc11_)
                              {
                                 while(true)
                                 {
                                    param2.x = §;m§.x;
                                    if(_loc11_ || this)
                                    {
                                       param2.y = §;m§.y;
                                       if(_loc11_ || param2)
                                       {
                                          if(true)
                                          {
                                             param2.width = param2.height = 0;
                                             if(_loc11_)
                                             {
                                                return param2;
                                             }
                                          }
                                          continue;
                                          break;
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          §§push(-Number.MAX_VALUE);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr512:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr513:
                                                addr542:
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(_loc11_ || param2)
                                                   {
                                                      §§push(Number(Number.MAX_VALUE));
                                                      continue loop2;
                                                   }
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      while(true)
                                                      {
                                                         addr533:
                                                         while(true)
                                                         {
                                                            §§push(Number(Number.MAX_VALUE));
                                                            addr538:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      addr559:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         break loop4;
                                                      }
                                                      addr541:
                                                   }
                                                }
                                                addr542:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   addr543:
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         addr544:
                                                         return this.§8w§[0].getBounds(param1,param2);
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(-Number.MAX_VALUE);
                                    if(!(_loc10_ && this))
                                    {
                                       if(_loc11_)
                                       {
                                          if(_loc11_ || _loc3_)
                                          {
                                             §§goto(addr472);
                                             §§push(Number(§§pop()));
                                          }
                                          break;
                                       }
                                       §§goto(addr512);
                                    }
                                    §§goto(addr472);
                                 }
                                 §§goto(addr538);
                              }
                              §§goto(addr559);
                              addr113:
                           }
                           §§goto(addr491);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr541);
                  }
                  §§goto(addr543);
               }
               §§goto(addr542);
            }
            §§goto(addr105);
         }
         §§goto(addr32);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!_loc10_)
         {
            §§push(param2);
            if(_loc9_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              addr108:
                              loop9:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(!visible);
                                    if(!_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc10_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc9_ || param1)
                                             {
                                                if(§§pop())
                                                {
                                                }
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop0;
                                          addr31:
                                          if(!(_loc9_ || param2))
                                          {
                                             continue;
                                          }
                                          addr39:
                                          §§push(Boolean(§§pop()));
                                          if(_loc9_)
                                          {
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§pop();
                                             addr89:
                                             while(true)
                                             {
                                                §§push(!§9@§);
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr31);
                                                }
                                                §§goto(addr39);
                                                continue loop6;
                                             }
                                          }
                                          addr88:
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             return null;
                                          }
                                          if(_loc9_)
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr89);
                                       }
                                       var _loc3_:Number = param1.x;
                                       var _loc4_:Number = param1.y;
                                       var _loc5_:int = this.§8w§.length;
                                       §§push(_loc5_);
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§push(int(§§pop() - 1));
                                       }
                                       var _loc6_:* = §§pop();
                                       addr212:
                                       if(_loc6_ >= 0)
                                       {
                                          _loc7_ = this.§8w§[_loc6_];
                                          if(_loc9_)
                                          {
                                             §&!R§(_loc7_,§4!g§);
                                             if(_loc9_ || param1)
                                             {
                                                addr157:
                                                transformCoords(§4!g§,_loc3_,_loc4_,§;m§);
                                             }
                                             _loc8_ = _loc7_.hitTest(§;m§,param2);
                                             if(_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc10_ && param1)
                                                   {
                                                      §§goto(addr212);
                                                   }
                                                   return _loc8_;
                                                }
                                                §§push(_loc6_);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                _loc6_ = §§pop();
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr157);
                                       }
                                       return null;
                                       addr43:
                                    }
                                    §§goto(addr88);
                                 }
                              }
                           }
                           addr107:
                        }
                        §§goto(addr43);
                     }
                  }
               }
            }
            §§goto(addr107);
         }
         §§goto(addr108);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(!(_loc7_ && param1))
         {
            §§push(param2);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() * this.alpha);
               if(_loc6_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§8w§.length;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§8w§[_loc4_];
            if(!(_loc7_ && param2))
            {
               §§push(_loc5_.alpha);
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_ || this)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop10:
                                                while(_loc6_)
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr200:
                                                         while(!_loc7_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                              addr222:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 if(!(_loc6_ || param1))
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(_loc7_ && _loc3_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr249:
                                                                                 while(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop8;
                                                                                 addr249:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr190:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§7M§();
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§+C§(_loc5_);
                                                                                          for(; _loc6_; loop20:
                                                                                          for(; !(_loc7_ && param2); while(_loc6_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                          })
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§ z§();
                                                                                                continue loop20;
                                                                                             }
                                                                                          })
                                                                                          {
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                _loc5_.render(param1,param2);
                                                                                                continue;
                                                                                             }
                                                                                             addr297:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.visible);
                                                                                                break loop14;
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break;
                                                                                          addr90:
                                                                                       }
                                                                                       while(false)
                                                                                       {
                                                                                          §§goto(addr92);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr96);
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop10;
                                                                        addr178:
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr249);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                     addr296:
                                                                  }
                                                                  §§goto(addr297);
                                                               }
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr222);
                                          }
                                       }
                                    }
                                    §§goto(addr296);
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc7_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc7_ && param2))
                     {
                        §§push(!§§pop());
                        if(!_loc7_)
                        {
                           §§goto(addr178);
                        }
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr200);
               }
            }
            §§goto(addr90);
         }
      }
      
      public function § !c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(_loc2_ && param1);
               
               if(!(_loc2_ && param1))
               {
                  return;
               }
            }
         }
         throw new ArgumentError("Broadcast of bubbling events is prohibited");
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc6_)
         {
            this.§;!M§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(!_loc6_)
               {
                  if(_loc5_ || param1)
                  {
                     if(§§pop() >= _loc3_)
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_[_loc4_].dispatchEvent(param1);
                     }
                     §§push(_loc4_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
      }
      
      private function §;!M§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!_loc9_)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc8_ || param2)
               {
                  addr42:
                  param3.push(param1);
                  if(!(_loc9_ && param3))
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr56);
            }
            addr53:
            if(_loc4_)
            {
               addr56:
               _loc5_ = _loc4_.§8w§;
               if(!(_loc9_ && param3))
               {
                  §§push(int(_loc5_.length));
                  loop0:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        addr134:
                        _loc7_ = §§pop();
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                     }
                  }
               }
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc7_);
                     while(§§pop() < _loc6_)
                     {
                        this.§;!M§(_loc5_[_loc7_],param2,param3);
                        if(!_loc9_)
                        {
                           §§push(_loc7_);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc8_)
                              {
                                 addr85:
                                 §§push(int(§§pop()));
                                 if(!(_loc8_ || param1))
                                 {
                                    continue;
                                 }
                              }
                              _loc7_ = §§pop();
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           §§goto(addr85);
                        }
                        break;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function get numChildren() : int
      {
         return this.§8w§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!_loc5_)
         {
            this.§"p§ = param1;
         }
         for each(_loc2_ in this.§8w§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§"p§;
      }
   }
}
