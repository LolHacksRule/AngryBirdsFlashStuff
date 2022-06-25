package §_-uY§
{
   import §_-0Ea§.§_-zM§;
   import §_-JM§.§_-03y§;
   import §_-UD§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §_-6w§:Matrix;
      
      private static var §_-kf§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-6w§ = new Matrix();
            do
            {
               §_-kf§ = new Point();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §_-vi§:Vector.<DisplayObject>;
      
      private var §_-Un§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
               {
                  do
                  {
                     this.§_-vi§ = new Vector.<DisplayObject>(0);
                  }
                  while(_loc1_);
                  
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            while(!_loc2_);
            
         }
         throw new §_-03y§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§_-vi§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc4_)
               {
                  super.dispose();
               }
               if(!(_loc4_ && _loc1_))
               {
                  break;
               }
            }
            else
            {
               this.§_-vi§[_loc2_].dispose();
               while(true)
               {
                  _loc2_++;
               }
               addr76:
            }
            while(_loc4_)
            {
               §§goto(addr76);
            }
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr152:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              throw new RangeError("Invalid child index");
                           }
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              addr147:
                              param1.§_-oV§();
                              break;
                           }
                           §§push(§§pop() <= §§pop());
                           addr118:
                           continue loop0;
                           if(!(_loc4_ && param1))
                           {
                              continue;
                           }
                           addr157:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr157:
                        }
                        this.§_-vi§.splice(param2,0,param1);
                        while(true)
                        {
                           param1.§_-yt§(this);
                           loop6:
                           while(!(_loc4_ && param1))
                           {
                              param1.dispatchEvent(new Event(Event.ADDED,true));
                              while(stage)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr23);
                                    continue loop6;
                                 }
                              }
                              return;
                           }
                        }
                        addr136:
                     }
                  }
                  §§goto(addr157);
               }
            }
         }
         §§goto(addr147);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ != -1)
            {
               if(!(_loc4_ && this))
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
         if(_loc5_ || param2)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || this)
                        {
                           §§pop();
                           if(!(_loc4_ && param2))
                           {
                              addr57:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr158);
                           }
                           _loc3_ = this.§_-vi§[param1];
                           if(!_loc4_)
                           {
                              _loc3_.dispatchEvent(new Event(Event.§_-VT§,true));
                           }
                           loop0:
                           while(true)
                           {
                              if(stage)
                              {
                                 while(true)
                                 {
                                    _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                    addr144:
                                    while(true)
                                    {
                                    }
                                    addr117:
                                    if(!(_loc5_ || param1))
                                    {
                                       continue;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       this.§_-vi§.splice(param1,1);
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!param2)
                                             {
                                                break;
                                             }
                                             if(_loc5_)
                                             {
                                                _loc3_.dispose();
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       addr153:
                                       §§goto(addr158);
                                    }
                                    while(!(_loc4_ && param1))
                                    {
                                       §§goto(addr117);
                                       §§goto(addr88);
                                    }
                                    §§goto(addr144);
                                    addr110:
                                 }
                              }
                              while(true)
                              {
                                 _loc3_.§_-yt§(null);
                                 §§goto(addr110);
                                 §§goto(addr144);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr57);
         }
         addr158:
      }
      
      public function §_-0BM§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(!(_loc5_ && this))
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_ || param3)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§pop();
                           if(_loc6_ || this)
                           {
                              addr55:
                              §§push(param2);
                              if(_loc6_ || param2)
                              {
                                 addr76:
                                 addr75:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       addr84:
                                       §§push(this.numChildren);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc5_)
                                          {
                                          }
                                          addr102:
                                          var _loc4_:int = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(!(_loc6_ || param3))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc5_ && param2))
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
                                          return;
                                          addr101:
                                       }
                                       param2 = §§pop();
                                    }
                                 }
                                 §§push(param1);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr84);
                        }
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr75);
            }
            §§goto(addr102);
         }
         §§goto(addr55);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr84:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr85:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!_loc2_)
                           {
                              return this.§_-vi§[param1];
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr70:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr83:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(this.numChildren);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§goto(addr84);
               }
            }
            else
            {
               §§goto(addr83);
            }
            §§goto(addr84);
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§_-vi§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_)
               {
                  continue;
               }
               if(!(_loc5_ && _loc2_))
               {
                  return null;
               }
               addr80:
            }
            else if(this.§_-vi§[_loc3_].name == param1)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr80);
            }
            _loc3_++;
         }
         return this.§_-vi§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§_-vi§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc3_ != -1)
            {
               while(true)
               {
                  this.§_-vi§.splice(_loc3_,1);
                  loop1:
                  while(_loc5_ || this)
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§_-vi§.splice(param2,0,param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                        addr91:
                     }
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr91);
      }
      
      public function §_-js§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!_loc5_)
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
         if(_loc6_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr99:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              loop3:
                              while(!_loc5_)
                              {
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                              addr94:
                           }
                           while(true)
                           {
                              this.§_-0W§(_loc3_,_loc4_);
                              if(!(_loc5_ && _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr94);
                           }
                           §§pop() == §§pop();
                           addr78:
                           return;
                           if(_loc6_ || param2)
                           {
                              continue;
                           }
                           addr104:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr104:
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr86:
                     }
                  }
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §_-0W§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_ || this)
         {
            this.§_-vi§[param1] = _loc4_;
            do
            {
               this.§_-vi§[param2] = _loc3_;
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      public function §_-z9§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-vi§ = this.§_-vi§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!(_loc7_ && param1))
         {
            if(param1 == this)
            {
               if(!_loc7_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:int = this.§_-vi§.length;
            var _loc3_:int = 0;
            loop0:
            while(_loc3_ < _loc2_)
            {
               §§push(Boolean(_loc5_ = (_loc4_ = this.§_-vi§[_loc3_]) as DisplayObjectContainer));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§pop();
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(_loc5_.contains(param1));
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr150:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       return true;
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr113);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 addr113:
                                 §§goto(addr144);
                              }
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr150);
               }
               addr144:
               loop3:
               while(true)
               {
                  if(_loc4_ != param1)
                  {
                     do
                     {
                        _loc3_++;
                     }
                     while(_loc7_ && param1);
                     
                     if(_loc6_ || _loc3_)
                     {
                        addr104:
                        if(_loc6_ || this)
                        {
                           while(false)
                           {
                              continue loop3;
                              §§goto(addr104);
                           }
                           continue loop0;
                           addr111:
                        }
                        continue loop6;
                     }
                  }
                  §§push(true);
                  if(!(_loc7_ && param1))
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop5;
                  }
               }
               return §§pop();
            }
            return false;
         }
         addr34:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         if(_loc11_)
         {
            if(param2 == null)
            {
               addr32:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§_-vi§.length;
            if(!(_loc10_ && param1))
            {
               §§push(_loc3_);
               if(_loc11_)
               {
                  §§push(0);
                  if(!(_loc10_ && this))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc10_)
                        {
                           §_-mP§(param1,§_-6w§);
                           if(_loc11_ || this)
                           {
                              transformCoords(§_-6w§,0,0,§_-kf§);
                              if(_loc11_ || param1)
                              {
                                 loop42:
                                 while(true)
                                 {
                                    param2.x = §_-kf§.x;
                                    if(_loc11_ || param1)
                                    {
                                       param2.y = §_-kf§.y;
                                       if(!(_loc10_ && param2))
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          param2.width = param2.height = 0;
                                          if(!_loc10_)
                                          {
                                             return param2;
                                          }
                                          addr455:
                                          loop8:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!_loc10_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc10_)
                                                {
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break loop42;
                                                      }
                                                      loop2:
                                                      while(!(_loc11_ || this))
                                                      {
                                                         loop3:
                                                         while(_loc10_ && _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr498:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  addr499:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr473:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(Number.MAX_VALUE));
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           continue loop2;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         return this.§_-vi§[0].getBounds(param1,param2);
                                                      }
                                                      §§push(-Number.MAX_VALUE);
                                                      addr468:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr469:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(-Number.MAX_VALUE);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  addr445:
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        continue loop8;
                                                                     }
                                                                     §§goto(addr477);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               §§goto(addr469);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               continue loop10;
                                                            }
                                                            continue;
                                                            addr460:
                                                         }
                                                         §§goto(addr445);
                                                      }
                                                      addr463:
                                                   }
                                                   §§goto(addr473);
                                                }
                                             }
                                             §§goto(addr498);
                                          }
                                          while(true)
                                          {
                                             if(_loc8_ >= _loc3_)
                                             {
                                                while(true)
                                                {
                                                   param2.x = _loc4_;
                                                   while(true)
                                                   {
                                                      param2.y = _loc6_;
                                                      loop14:
                                                      while(true)
                                                      {
                                                         param2.width = _loc5_ - _loc4_;
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc10_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.§_-vi§[_loc8_].getBounds(param1,param2);
                                             }
                                             §§goto(addr401);
                                          }
                                       }
                                       §§goto(addr507);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr460);
                                 }
                              }
                              addr116:
                           }
                           §§goto(addr463);
                        }
                        §§goto(addr455);
                     }
                     §§goto(addr497);
                  }
                  §§goto(addr499);
               }
               §§goto(addr498);
            }
            §§goto(addr116);
         }
         §§goto(addr32);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || _loc3_)
         {
            §§push(param2);
            if(!(_loc9_ && _loc3_))
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
                        addr109:
                        while(true)
                        {
                           §§pop();
                           addr110:
                           while(true)
                           {
                              addr70:
                              while(true)
                              {
                                 §§push(!visible);
                                 addr73:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr109:
                     }
                     loop2:
                     while(§§pop())
                     {
                        if(!(_loc9_ && this))
                        {
                           if(_loc10_)
                           {
                              return null;
                           }
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 while(true)
                                 {
                                    §§push(!§_-xd§);
                                    if(_loc9_ && param2)
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc9_ && this))
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr73);
                                 }
                                 addr97:
                              }
                              §§goto(addr110);
                              addr84:
                              §§pop();
                           }
                        }
                        else if(true)
                        {
                           break;
                        }
                        §§goto(addr70);
                     }
                     var _loc3_:Number = param1.x;
                     var _loc4_:Number = param1.y;
                     var _loc5_:int;
                     §§push(_loc5_ = this.§_-vi§.length);
                     if(_loc10_ || this)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     var _loc6_:* = §§pop();
                     addr196:
                     if(_loc6_ >= 0)
                     {
                        _loc7_ = this.§_-vi§[_loc6_];
                        if(!(_loc9_ && _loc3_))
                        {
                           §_-mP§(_loc7_,§_-6w§);
                           if(_loc10_)
                           {
                              transformCoords(§_-6w§,_loc3_,_loc4_,§_-kf§);
                           }
                        }
                        if(_loc8_ = _loc7_.hitTest(§_-kf§,param2))
                        {
                           if(!_loc10_)
                           {
                              addr191:
                              §§push(_loc6_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc6_ = §§pop();
                              §§goto(addr196);
                           }
                           return _loc8_;
                        }
                        §§goto(addr191);
                     }
                     return null;
                  }
               }
            }
            §§goto(addr109);
         }
         §§goto(addr97);
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(!(_loc6_ && param1))
         {
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_ || this)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr42);
            }
            §§goto(addr40);
         }
         addr42:
         var _loc3_:int = this.§_-vi§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§_-vi§[_loc4_]).alpha);
            if(!(_loc6_ && param1))
            {
               §§push(0);
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || this)
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr258:
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr259:
                                          loop17:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr202:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr203:
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc7_ || param2)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop4:
                                                                              while(!(_loc6_ && param1))
                                                                              {
                                                                                 param1.§_-1d§();
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§_-cb§(_loc5_);
                                                                                    loop6:
                                                                                    for(; !(_loc6_ && param2); if(!(_loc7_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    },if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    },§§goto(addr113))
                                                                                    {
                                                                                       if(_loc6_ && this)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       _loc5_.render(param1,param2);
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          addr113:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§_-OE§();
                                                                                             loop9:
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_++;
                                                                                                   if(_loc7_ || param2)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(_loc6_ && _loc3_)
                                                                              {
                                                                                 continue loop11;
                                                                                 §§pop();
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.scaleY);
                                                                                 if(!(_loc7_ || param1))
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    if(!(_loc7_ || param1))
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr222:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr247);
                                                                              }
                                                                              addr247:
                                                                              addr254:
                                                                           }
                                                                           §§goto(addr95);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr212:
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr212);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr258);
                        }
                        §§goto(addr259);
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr182);
               }
               §§goto(addr203);
            }
            §§goto(addr202);
         }
      }
      
      public function §_-BE§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.bubbles)
            {
               if(!_loc3_)
               {
                  §§goto(addr45);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr49:
               }
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr49);
            }
            return;
         }
         addr45:
         throw new ArgumentError("Broadcast of bubbling events is prohibited");
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_ || param1)
         {
            this.§_-Cj§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc5_)
               {
                  continue;
               }
               if(_loc6_)
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
      
      private function §_-Cj§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || param3)
         {
            if(param1.hasEventListener(param2))
            {
               if(!_loc8_)
               {
                  addr52:
                  param3.push(param1);
                  if(_loc9_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr59);
               }
            }
            addr57:
            if(_loc4_)
            {
               addr59:
               §§push(int((_loc5_ = _loc4_.§_-vi§).length));
               if(!_loc8_)
               {
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     addr107:
                     _loc7_ = 0;
                  }
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc7_ < _loc6_)
                        {
                           this.§_-Cj§(_loc5_[_loc7_],param2,param3);
                           while(true)
                           {
                              _loc7_++;
                              if(!(_loc9_ || param1))
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 if(false)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                  }
               }
               §§goto(addr107);
            }
            addr112:
            return;
         }
         §§goto(addr52);
      }
      
      public function get numChildren() : int
      {
         return this.§_-vi§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_)
         {
            this.§_-Un§ = param1;
         }
         for each(_loc2_ in this.§_-vi§)
         {
            if(!_loc6_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§_-Un§;
      }
   }
}
