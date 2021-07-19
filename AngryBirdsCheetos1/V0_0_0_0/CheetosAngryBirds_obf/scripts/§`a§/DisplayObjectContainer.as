package §`a§
{
   import § !+§.§%L§;
   import §"! §.§4p§;
   import §<!M§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §,!?§:Matrix;
      
      private static var §4#§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!?§ = new Matrix();
         }
         do
         {
            §4#§ = new Point();
         }
         while(!_loc1_);
         
      }
      
      private var §>[§:Vector.<DisplayObject>;
      
      private var §^0§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(!_loc2_)
                  {
                     throw new §4p§();
                  }
                  addr78:
                  while(true)
                  {
                  }
                  addr78:
               }
               while(true)
               {
                  this.§>[§ = new Vector.<DisplayObject>(0);
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
            }
            while(_loc2_ && _loc2_);
            
            return;
         }
         §§goto(addr78);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§>[§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_ || this)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     super.dispose();
                  }
                  else
                  {
                     _loc2_++;
                     continue;
                     addr82:
                  }
               }
               if(_loc4_)
               {
                  break;
               }
               continue;
            }
            this.§>[§[_loc2_].dispose();
            §§goto(addr82);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
                              param1.§,r§();
                              while(true)
                              {
                                 this.§>[§.splice(param2,0,param1);
                                 addr107:
                                 while(_loc4_)
                                 {
                                    param1.§ !8§(this);
                                 }
                                 continue loop0;
                                 addr53:
                                 if(!(_loc3_ && param2))
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        throw new RangeError("Invalid child index");
                        addr133:
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
         §§goto(addr99);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc3_ != -1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  addr65:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || this)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr40:
                           §§pop();
                           if(_loc5_)
                           {
                              addr47:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc4_ && param1)
                              {
                              }
                              §§goto(addr158);
                           }
                           _loc3_ = this.§>[§[param1];
                           if(!_loc4_)
                           {
                              _loc3_.dispatchEvent(new Event(Event.§8!?§,true));
                              loop0:
                              while(stage)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    _loc3_.dispatchEventOnChildren(new Event(Event.§6!;§));
                                 }
                                 while(true)
                                 {
                                    break loop0;
                                    addr108:
                                    loop2:
                                    while(!(_loc4_ && this))
                                    {
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             this.§>[§.splice(param1,1);
                                             while(param2)
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   _loc3_.dispose();
                                                }
                                                if(_loc5_ || this)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             addr153:
                                             §§goto(addr158);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc3_.§ !8§(null);
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr40);
               }
            }
            §§goto(addr47);
         }
         addr158:
      }
      
      public function §[F§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(param2);
            if(!(_loc5_ && this))
            {
               §§push(0);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§goto(addr102);
                           }
                           addr84:
                           §§push(this.numChildren);
                           if(!_loc5_)
                           {
                              §§push(int(§§pop() - 1));
                              if(!_loc5_)
                              {
                                 param2 = §§pop();
                                 addr93:
                                 §§push(param1);
                                 if(_loc6_ || param3)
                                 {
                                    addr102:
                                    §§push(param2);
                                    if(!_loc5_)
                                    {
                                       addr75:
                                       §§push(§§pop() >= this.numChildren);
                                    }
                                    var _loc4_:* = §§pop();
                                    while(true)
                                    {
                                       if(_loc4_ > param2)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             break;
                                          }
                                          loop1:
                                          while(!_loc6_)
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
                                       §§goto(addr139);
                                    }
                                    return;
                                    §§push(int(§§pop()));
                                 }
                              }
                           }
                           §§goto(addr102);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && param3))
                     {
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr75);
            }
            §§goto(addr102);
         }
         §§goto(addr84);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
                  addr95:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              return this.§>[§[param1];
                           }
                           if(_loc3_)
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
            addr93:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.numChildren);
               if(_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§goto(addr94);
               }
            }
            else
            {
               §§goto(addr93);
            }
            §§goto(addr94);
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§>[§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  if(_loc4_ || param1)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(this.§>[§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         return this.§>[§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§>[§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
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
               do
               {
                  this.§>[§.splice(_loc3_,1);
                  do
                  {
                     this.§>[§.splice(param2,0,param1);
                  }
                  while(!_loc5_);
                  
               }
               while(!(_loc5_ || param1));
               
               if(!(_loc4_ && param1))
               {
                  return;
               }
            }
         }
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §5Q§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr114:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc5_ && param1)
                           {
                              break;
                           }
                           addr111:
                           if(_loc6_)
                           {
                              throw new ArgumentError("Not a child of this container");
                           }
                           continue loop0;
                           addr88:
                           §§push(§§pop() == §§pop());
                           if(_loc6_ || param1)
                           {
                              continue;
                           }
                           addr134:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr88);
                           }
                           addr134:
                        }
                        this.§,!C§(_loc3_,_loc4_);
                        if(!(_loc6_ || param1))
                        {
                           §§goto(addr111);
                        }
                        return;
                        addr96:
                     }
                  }
                  §§goto(addr134);
               }
            }
            addr113:
         }
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param2)
            {
               §§push(-1);
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr88);
               }
               else
               {
                  §§goto(addr114);
               }
            }
            else
            {
               §§goto(addr113);
            }
            §§goto(addr114);
            §§goto(addr134);
         }
      }
      
      public function §,!C§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!_loc6_)
         {
            this.§>[§[param1] = _loc4_;
         }
         do
         {
            this.§>[§[param2] = _loc3_;
         }
         while(_loc6_);
         
      }
      
      public function §0$§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§>[§ = this.§>[§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!_loc6_)
         {
            if(param1 == this)
            {
               if(_loc7_ || _loc2_)
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:int = this.§>[§.length;
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  return false;
               }
               §§push(Boolean(_loc5_ = (_loc4_ = this.§>[§[_loc3_]) as DisplayObjectContainer));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(_loc7_ || _loc3_)
                        {
                           §§push(_loc5_.contains(param1));
                           if(_loc7_)
                           {
                              addr125:
                              §§push(Boolean(§§pop()));
                              if(_loc7_)
                              {
                                 addr138:
                                 if(!§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc4_ == param1)
                                       {
                                          if(!(_loc7_ || this))
                                          {
                                             while(true)
                                             {
                                                addr84:
                                                while(true)
                                                {
                                                   _loc3_++;
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc7_ || this)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             addr119:
                                          }
                                          if(_loc7_)
                                          {
                                             §§push(true);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§goto(addr118);
                                             }
                                             break loop0;
                                          }
                                          addr139:
                                          §§push(true);
                                          break loop0;
                                       }
                                       §§goto(addr84);
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              break;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr119);
                     }
                     addr118:
                     return §§pop();
                  }
                  §§goto(addr138);
               }
               §§goto(addr125);
            }
            return §§pop();
         }
         addr35:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!(_loc11_ && param2))
         {
            if(param2 == null)
            {
               addr36:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§>[§.length;
            if(!(_loc11_ && this))
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc11_)
                        {
                           §`! §(param1,§,!?§);
                           if(_loc10_)
                           {
                              transformCoords(§,!?§,0,0,§4#§);
                              if(!(_loc11_ && param2))
                              {
                                 while(true)
                                 {
                                    param2.x = §4#§.x;
                                    if(!(_loc10_ || this))
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc8_ >= _loc3_)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                param2.x = _loc4_;
                                                loop11:
                                                while(_loc10_ || this)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      param2.y = _loc6_;
                                                      while(!(_loc11_ && param1))
                                                      {
                                                         if(!(_loc11_ && this))
                                                         {
                                                            param2.width = _loc5_ - _loc4_;
                                                            while(true)
                                                            {
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop11;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop() > param2.bottom);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr229);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(Number(param2.bottom));
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr275);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc4_);
                                                            addr375:
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§goto(addr284);
                                                            §§push(_loc6_);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                   }
                                                   §§goto(addr354);
                                                }
                                                _loc8_++;
                                                continue loop9;
                                             }
                                          }
                                          else
                                          {
                                             this.§>[§[_loc8_].getBounds(param1,param2);
                                          }
                                          §§goto(addr375);
                                       }
                                    }
                                    else
                                    {
                                       addr395:
                                    }
                                    continue;
                                    return param2;
                                 }
                                 return this.§>[§[0].getBounds(param1,param2);
                              }
                           }
                           §§goto(addr442);
                        }
                        §§goto(addr499);
                     }
                     §§goto(addr464);
                  }
                  §§goto(addr466);
               }
               §§goto(addr465);
            }
            §§goto(addr462);
         }
         §§goto(addr36);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc9_ && param2))
         {
            §§push(param2);
            if(!_loc9_)
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
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 if(_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(_loc10_ || param2)
                                    {
                                       if(§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   §§goto(addr54);
                                                }
                                                addr82:
                                                while(true)
                                                {
                                                   §§push(!§=!;§);
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   break loop3;
                                                }
                                                continue loop0;
                                             }
                                             if(!(_loc9_ && param2))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          var _loc3_:Number = param1.x;
                                          var _loc4_:Number = param1.y;
                                          var _loc5_:int;
                                          §§push(_loc5_ = this.§>[§.length);
                                          if(!_loc9_)
                                          {
                                             §§push(int(§§pop() - 1));
                                          }
                                          var _loc6_:* = §§pop();
                                          addr181:
                                          if(_loc6_ >= 0)
                                          {
                                             _loc7_ = this.§>[§[_loc6_];
                                             if(_loc10_ || param2)
                                             {
                                                §`! §(_loc7_,§,!?§);
                                                if(!(_loc9_ && param1))
                                                {
                                                   transformCoords(§,!?§,_loc3_,_loc4_,§4#§);
                                                }
                                             }
                                             if(_loc8_ = _loc7_.hitTest(§4#§,param2))
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr166:
                                                   §§push(_loc6_);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc6_ = §§pop();
                                                   §§goto(addr181);
                                                }
                                                return _loc8_;
                                             }
                                             §§goto(addr166);
                                          }
                                          return null;
                                          addr43:
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop7;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr82);
                              }
                           }
                        }
                        addr99:
                     }
                     §§goto(addr43);
                  }
               }
            }
            §§goto(addr99);
         }
         addr54:
         return null;
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_ || this)
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc6_ && _loc3_))
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
         var _loc3_:int = this.§>[§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§>[§[_loc4_]).alpha);
            if(!(_loc6_ && param2))
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 addr91:
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr238:
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr239:
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
                                                      §§push(_loc5_.scaleX);
                                                      addr206:
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr207:
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.scaleY);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(_loc6_ && _loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(!(_loc7_ || _loc3_))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(!(_loc7_ || param2))
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       addr198:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§ use§();
                                                                                          addr202:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§`;§(_loc5_);
                                                                                             addr162:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_.render(param1,param2);
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§<!Z§();
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_++;
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(!(_loc7_ || this))
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr130);
                                                                                          }
                                                                                          §§goto(addr202);
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           addr223:
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     continue loop3;
                                                                     addr213:
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr213);
                                          }
                                       }
                                    }
                                    addr237:
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr91);
               }
               §§goto(addr207);
            }
            §§goto(addr206);
         }
      }
      
      public function §]!@§(param1:Event) : void
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
               while(_loc2_ && this);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
         throw new ArgumentError("Broadcast of bubbling events is prohibited");
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_ || _loc3_)
         {
            this.§2T§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!(_loc5_ && this))
               {
                  break;
               }
            }
            else
            {
               _loc2_[_loc4_].dispatchEvent(param1);
               while(true)
               {
                  _loc4_++;
               }
               addr91:
            }
            while(_loc5_)
            {
               §§goto(addr91);
            }
         }
      }
      
      private function §2T§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!_loc9_)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc8_ || param3)
               {
                  param3.push(param1);
                  if(_loc9_)
                  {
                  }
                  addr58:
                  §§push(int((_loc5_ = _loc4_.§>[§).length));
                  if(!(_loc9_ && param1))
                  {
                     _loc6_ = §§pop();
                     if(_loc8_ || param3)
                     {
                        addr111:
                        _loc7_ = 0;
                     }
                     loop0:
                     while(true)
                     {
                        while(_loc7_ < _loc6_)
                        {
                           this.§2T§(_loc5_[_loc7_],param2,param3);
                           if(_loc9_)
                           {
                              break;
                           }
                           _loc7_++;
                           if(!_loc8_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue loop0;
                           }
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr111);
               }
            }
            if(_loc4_)
            {
               §§goto(addr58);
            }
            addr116:
            return;
         }
         §§goto(addr58);
      }
      
      public function get numChildren() : int
      {
         return this.§>[§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc6_ || param1)
         {
            this.§^0§ = param1;
         }
         for each(_loc2_ in this.§>[§)
         {
            if(_loc6_ || this)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§^0§;
      }
   }
}
