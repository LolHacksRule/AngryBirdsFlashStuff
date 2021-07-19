package §^V§
{
   import §-Z§.§ G§;
   import §3!$§.transformCoords;
   import §5d§.§`!=§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §"R§:Matrix;
      
      private static var §?a§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"R§ = new Matrix();
         }
         do
         {
            §?a§ = new Point();
         }
         while(!_loc1_);
         
      }
      
      private var §0`§:Vector.<DisplayObject>;
      
      private var §^!7§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               while(true)
               {
                  this.§0`§ = new Vector.<DisplayObject>(0);
                  if(!(_loc1_ && _loc2_))
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            else
            {
               addr39:
            }
            if(_loc2_)
            {
               break;
            }
            continue;
            return;
         }
         throw new §`!=§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§0`§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  if(_loc3_ || this)
                  {
                     super.dispose();
                  }
                  else
                  {
                     _loc2_++;
                     continue;
                     addr81:
                  }
               }
               if(_loc3_ || this)
               {
                  break;
               }
               continue;
            }
            this.§0`§[_loc2_].dispose();
            §§goto(addr81);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2);
         loop0:
         while(true)
         {
            §§push(0);
            addr139:
            while(true)
            {
               §§push(§§pop() >= §§pop());
               addr140:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        param1.§+O§();
                        this.§0`§.splice(param2,0,param1);
                        loop6:
                        while(true)
                        {
                           param1.§ M§(this);
                           loop7:
                           while(_loc4_)
                           {
                              param1.dispatchEvent(new Event(Event.ADDED,true));
                              do
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!stage)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                              while(if(_loc4_)
                              {
                                 param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                              }, _loc3_ && param1);
                              
                              return;
                           }
                           continue loop0;
                        }
                     }
                     throw new RangeError("Invalid child index");
                     addr132:
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
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && this))
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr51:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc4_ || param2)
                              {
                                 addr69:
                                 _loc3_ = this.§0`§[param1];
                                 if(_loc4_ || this)
                                 {
                                    _loc3_.dispatchEvent(new Event(Event.§+_§,true));
                                    while(true)
                                    {
                                       if(stage)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                          }
                                          while(_loc4_)
                                          {
                                             while(true)
                                             {
                                             }
                                          }
                                          continue;
                                          addr130:
                                       }
                                       while(true)
                                       {
                                          _loc3_.§ M§(null);
                                          while(true)
                                          {
                                             this.§0`§.splice(param1,1);
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                 }
                                 §§goto(addr132);
                              }
                           }
                           addr146:
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr69);
      }
      
      public function §"4§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param2);
            if(_loc5_ || param2)
            {
               §§push(0);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc6_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(param2);
                              if(_loc5_ || this)
                              {
                                 addr70:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc5_ || this)
                                    {
                                    }
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr87);
                           }
                           §§push(this.numChildren);
                           if(!(_loc6_ && param2))
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr105);
                        }
                     }
                  }
               }
               §§goto(addr70);
            }
            addr87:
            §§push(int(§§pop() - 1));
            if(_loc5_)
            {
               param2 = §§pop();
               addr92:
               §§goto(addr106);
            }
            addr106:
            §§push(param1);
            if(!_loc6_)
            {
               addr105:
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               if(_loc4_ > param2)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc5_ || this))
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.removeChildAt(param1,param3);
               §§goto(addr133);
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr83:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr84:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc2_)
                           {
                              return this.§0`§[param1];
                           }
                           if(_loc2_)
                           {
                              addr80:
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr69:
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
         §§goto(addr80);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§0`§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            else if(this.§0`§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         while(!(_loc5_ && _loc2_));
         
         return this.§0`§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§0`§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§0`§.splice(_loc3_,1);
                  addr85:
                  while(true)
                  {
                     this.§0`§.splice(param2,0,param1);
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_ || param2)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  if(!_loc5_)
                  {
                     return;
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr85);
      }
      
      public function §<7§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(!(_loc6_ && param2))
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
               addr120:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr121:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 this.§<!8§(_loc3_,_loc4_);
                                 if(!(_loc6_ && param1))
                                 {
                                    break;
                                 }
                                 addr117:
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                           if(_loc5_ || param2)
                           {
                              throw new ArgumentError("Not a child of this container");
                           }
                           continue loop0;
                        }
                        return;
                        addr104:
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
         §§goto(addr117);
      }
      
      public function §<!8§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_)
         {
            this.§0`§[param1] = _loc4_;
            do
            {
               this.§0`§[param2] = _loc3_;
            }
            while(!_loc5_);
            
         }
      }
      
      public function §]!G§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0`§ = this.§0`§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!(_loc7_ && _loc2_))
         {
            if(param1 == this)
            {
               if(_loc6_)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§0`§.length;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               return false;
            }
            §§push(Boolean(_loc5_ = (_loc4_ = this.§0`§[_loc3_]) as DisplayObjectContainer));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc5_.contains(param1));
                        if(_loc6_ || param1)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc7_ && this))
                           {
                              addr147:
                              if(!§§pop())
                              {
                                 while(_loc4_ != param1)
                                 {
                                    do
                                    {
                                       _loc3_++;
                                    }
                                    while(_loc7_ && this);
                                    
                                    if(_loc7_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       return true;
                                    }
                                    addr149:
                                    if(false)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr103:
                                 if(_loc7_ && param1)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr103);
                                       §§goto(addr103);
                                    }
                                    addr150:
                                 }
                                 §§push(true);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr150);
                  }
                  break;
               }
               §§goto(addr147);
            }
            break;
         }
         return §§pop();
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
         if(_loc11_ || param2)
         {
            if(param2 == null)
            {
               addr37:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§0`§.length;
            §§push(_loc3_);
            if(!(_loc10_ && _loc3_))
            {
               §§push(0);
               if(_loc11_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        §8n§(param1,§"R§);
                        transformCoords(§"R§,0,0,§?a§);
                        do
                        {
                           param2.x = §?a§.x;
                           param2.y = §?a§.y;
                        }
                        while(false);
                        
                        param2.width = param2.height = 0;
                        if(_loc11_)
                        {
                           return param2;
                        }
                        while(true)
                        {
                           §§push(0);
                           if(!(_loc10_ && this))
                           {
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 if(_loc11_ || this)
                                 {
                                    break;
                                 }
                                 addr428:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                 }
                              }
                              loop2:
                              while(true)
                              {
                                 if(_loc8_ >= _loc3_)
                                 {
                                    loop3:
                                    while(_loc11_)
                                    {
                                       param2.x = _loc4_;
                                       loop4:
                                       for(; !_loc10_; if(_loc10_ && param2)
                                       {
                                          continue;
                                       },§§goto(addr147))
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             param2.y = _loc6_;
                                             loop5:
                                             while(true)
                                             {
                                                param2.width = _loc5_ - _loc4_;
                                                while(true)
                                                {
                                                   if(_loc11_ || param2)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                   addr147:
                                                   param2.height = _loc7_ - _loc6_;
                                                   if(_loc11_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            return param2;
                                                         }
                                                         addr174:
                                                         if(!_loc11_)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() > param2.bottom);
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        addr222:
                                                                        §§push(Number(param2.bottom));
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop10;
                                                                              }
                                                                              addr229:
                                                                           }
                                                                           else
                                                                           {
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = Number(§§pop());
                                                                                    §§push(_loc6_);
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       addr241:
                                                                                       §§push(§§pop() < param2.y);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break loop4;
                                                                                             }
                                                                                             §§push(Number(param2.y));
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr268:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         addr317:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < param2.x);
                                                                                                            addr320:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!!§§pop() ? Number(_loc4_) : Number(param2.x));
                                                                                                               addr327:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         addr329:
                                                                                                         §§push(_loc5_);
                                                                                                      }
                                                                                                   }
                                                                                                   addr255:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > param2.right);
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push(Number(param2.right));
                                                                                                   continue loop17;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                       addr244:
                                                                                    }
                                                                                    §§goto(addr255);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               _loc8_++;
                                                               §§goto(addr174);
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr329);
                                          }
                                       }
                                       §§push(_loc6_);
                                       if(_loc11_ || param2)
                                       {
                                          §§goto(addr255);
                                       }
                                       §§goto(addr268);
                                    }
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(_loc11_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc11_ || param2)
                                          {
                                             §§goto(addr229);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                                 else
                                 {
                                    this.§0`§[_loc8_].getBounds(param1,param2);
                                    §§push(_loc4_);
                                 }
                                 §§goto(addr317);
                              }
                              addr358:
                              addr350:
                           }
                           while(true)
                           {
                              §§push(1);
                              §§goto(addr430);
                           }
                        }
                     }
                     §§goto(addr358);
                  }
                  §§goto(addr428);
               }
               addr430:
               while(§§pop() != §§pop())
               {
                  loop28:
                  while(true)
                  {
                     §§push(Number(Number.MAX_VALUE));
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§push(-Number.MAX_VALUE);
                        loop30:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc5_ = §§pop();
                              §§push(Number(Number.MAX_VALUE));
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc11_ || _loc3_)
                                 {
                                    §§push(-Number.MAX_VALUE);
                                    if(!(_loc10_ && param1))
                                    {
                                       if(_loc10_ && this)
                                       {
                                          break;
                                       }
                                       continue loop30;
                                    }
                                    addr387:
                                    if(_loc11_)
                                    {
                                       continue loop1;
                                    }
                                    continue;
                                 }
                                 continue loop28;
                              }
                           }
                        }
                     }
                  }
               }
               return this.§0`§[0].getBounds(param1,param2);
            }
            §§goto(addr350);
         }
         §§goto(addr37);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!_loc9_)
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
                              loop5:
                              while(true)
                              {
                                 §§push(!visible);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc10_ || this)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§goto(addr75);
                                             }
                                             continue loop4;
                                          }
                                          if(!_loc9_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             §§push(!§<!<§);
                                             if(!(_loc9_ && param1))
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                             addr98:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop8;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       var _loc3_:Number = param1.x;
                                       var _loc4_:Number = param1.y;
                                       var _loc5_:int;
                                       §§push(_loc5_ = this.§0`§.length);
                                       if(_loc10_)
                                       {
                                          §§push(int(§§pop() - 1));
                                       }
                                       var _loc6_:* = §§pop();
                                       addr186:
                                       if(_loc6_ >= 0)
                                       {
                                          _loc7_ = this.§0`§[_loc6_];
                                          if(_loc10_)
                                          {
                                             §8n§(_loc7_,§"R§);
                                             if(!_loc9_)
                                             {
                                                addr141:
                                                transformCoords(§"R§,_loc3_,_loc4_,§?a§);
                                             }
                                             if(_loc8_ = _loc7_.hitTest(§?a§,param2))
                                             {
                                                if(_loc9_ && param2)
                                                {
                                                   §§goto(addr186);
                                                }
                                                return _loc8_;
                                             }
                                             §§push(_loc6_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc6_ = §§pop();
                                             §§goto(addr186);
                                          }
                                          §§goto(addr141);
                                       }
                                       return null;
                                       addr59:
                                    }
                                    §§goto(addr98);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr59);
                  }
               }
            }
         }
         addr75:
         return null;
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_ || param2)
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§0`§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§0`§[_loc4_]).alpha);
            if(!(_loc6_ && this))
            {
               §§push(0);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              addr89:
                              §§pop();
                              if(!(_loc6_ && this))
                              {
                                 addr217:
                                 §§push(Boolean(_loc5_.visible));
                                 §§push(Boolean(_loc5_.visible));
                                 loop1:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc5_.scaleX);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr200:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr201:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                continue loop1;
                                             }
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc5_.scaleY);
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(!§§pop());
                                                            while(true)
                                                            {
                                                            }
                                                            addr181:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop7;
                                                         }
                                                         addr212:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            param1.§%a§();
                                                            addr154:
                                                            _loc5_.render(param1,param2);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr195:
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  param1.§?6§();
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     break;
                                                                     addr108:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc4_++;
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  param1.§&?§(_loc5_);
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  continue loop7;
                                                                  §§goto(addr112);
                                                               }
                                                               addr112:
                                                               addr195:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr201);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr217);
               }
               §§goto(addr200);
            }
            §§goto(addr160);
         }
      }
      
      public function §-F§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1.bubbles)
            {
               if(!_loc2_)
               {
                  §§goto(addr56);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr39);
                  }
               }
            }
            addr39:
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr56:
         throw new ArgumentError("Broadcast of bubbling events is prohibited");
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc5_)
         {
            this.§8k§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!_loc6_)
               {
                  continue;
               }
               if(!(_loc5_ && _loc3_))
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
      
      private function §8k§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!(_loc9_ && param2))
         {
            if(param1.hasEventListener(param2))
            {
               if(!(_loc9_ && param2))
               {
                  param3.push(param1);
                  if(!_loc9_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr63);
               }
            }
         }
         addr61:
         if(_loc4_)
         {
            addr63:
            §§push(int((_loc5_ = _loc4_.§0`§).length));
            if(!_loc9_)
            {
               _loc6_ = §§pop();
               if(!_loc9_)
               {
                  addr111:
                  _loc7_ = 0;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc7_ < _loc6_)
                     {
                        this.§8k§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(!(_loc8_ || this))
                           {
                              break;
                           }
                           if(!_loc9_)
                           {
                              if(false)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr116);
                  }
               }
            }
            §§goto(addr111);
         }
         addr116:
      }
      
      public function get numChildren() : int
      {
         return this.§0`§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc6_ || _loc3_)
         {
            this.§^!7§ = param1;
         }
         for each(_loc2_ in this.§0`§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§^!7§;
      }
   }
}
