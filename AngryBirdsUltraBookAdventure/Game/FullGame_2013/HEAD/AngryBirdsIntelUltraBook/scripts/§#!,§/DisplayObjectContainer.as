package §#!,§
{
   import §'7§.transformCoords;
   import §+8§.§0K§;
   import §7!>§.RenderSupport;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §]!C§:Matrix;
      
      private static var §>!C§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!C§ = new Matrix();
            do
            {
               §>!C§ = new Point();
            }
            while(!_loc2_);
            
         }
      }
      
      private var §[!L§:Vector.<DisplayObject>;
      
      private var §>!M§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
         {
            do
            {
               this.§[!L§ = new Vector.<DisplayObject>(0);
            }
            while(!_loc1_);
            
            if(_loc2_ && _loc2_)
            {
               break;
            }
            if(!_loc2_)
            {
               return;
            }
         }
         throw new §0K§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§[!L§.length;
         §§push(0);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() >= _loc1_)
                  {
                     if(!_loc4_)
                     {
                        super.dispose();
                     }
                     if(_loc4_ && _loc1_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc1_))
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§[!L§[_loc2_].dispose();
                  }
                  §§push(_loc2_);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr170:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr171:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop5:
                           do
                           {
                              if(!§§pop())
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              loop6:
                              while(true)
                              {
                                 param1.§implements§();
                                 do
                                 {
                                    this.§[!L§.splice(param2,0,param1);
                                 }
                                 while(!_loc3_);
                                 
                                 param1.§+9§(this);
                                 while(true)
                                 {
                                    param1.dispatchEvent(new Event(Event.ADDED,true));
                                    §§push(Boolean(stage));
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          while(_loc4_ && this)
                                          {
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       else
                                       {
                                          addr137:
                                       }
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                continue;
                                             }
                                             addr97:
                                             if(!_loc3_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          return;
                                       }
                                       continue loop3;
                                       break;
                                    }
                                    break;
                                 }
                                 continue loop5;
                              }
                           }
                           while(!(_loc4_ && this));
                           
                           continue loop2;
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr137);
                        }
                     }
                  }
               }
            }
            addr169:
         }
         while(true)
         {
            §§push(param2);
            if(_loc3_)
            {
               §§push(this.numChildren);
               if(!_loc4_)
               {
                  §§goto(addr137);
                  §§push(§§pop() <= §§pop());
               }
               else
               {
                  §§goto(addr170);
               }
               §§goto(addr171);
            }
            else
            {
               §§goto(addr169);
            }
         }
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
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
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc4_ && param2))
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && param1))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr66);
                           }
                        }
                        §§goto(addr76);
                     }
                     addr66:
                     §§pop();
                     if(_loc5_)
                     {
                        addr72:
                        §§push(param1 < this.numChildren);
                        if(!_loc4_)
                        {
                           addr76:
                           if(!§§pop())
                           {
                              throw new RangeError("Invalid child index");
                           }
                           if(_loc5_ || param2)
                           {
                              addr94:
                              _loc3_ = this.§[!L§[param1];
                              if(!_loc4_)
                              {
                                 _loc3_.dispatchEvent(new Event(Event.§,3§,true));
                              }
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
                                          addr177:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr169:
                                    }
                                    while(true)
                                    {
                                       _loc3_.§+9§(null);
                                       addr153:
                                       while(true)
                                       {
                                          addr140:
                                          while(true)
                                          {
                                             this.§[!L§.splice(param1,1);
                                             continue loop1;
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr76);
                     }
                     return;
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr94);
      }
      
      public function § E§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop());
                        if(_loc5_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc5_)
                           {
                              addr52:
                              §§pop();
                              if(_loc5_ || param1)
                              {
                                 §§push(param2);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.numChildren);
                                    if(_loc5_ || param3)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       if(_loc5_ || param1)
                                       {
                                       }
                                       §§goto(addr96);
                                    }
                                    addr114:
                                    §§push(int(§§pop() - §§pop()));
                                    if(_loc5_)
                                    {
                                       §§goto(addr118);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr114);
                                 §§push(1);
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr96);
                     }
                     addr96:
                     if(§§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           §§push(this.numChildren);
                           if(_loc5_ || param1)
                           {
                           }
                           addr118:
                           param2 = §§pop();
                        }
                        §§goto(addr119);
                     }
                     addr119:
                     §§push(param1);
                     if(_loc5_)
                     {
                        addr122:
                        §§push(int(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc5_ || this)
                        {
                           if(§§pop() > param2)
                           {
                              if(_loc6_ && param1)
                              {
                                 continue;
                              }
                              if(!(_loc6_ && this))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.removeChildAt(param1,param3);
                           }
                           §§push(_loc4_);
                           if(!(_loc6_ && param3))
                           {
                              §§push(§§pop() + 1);
                              if(_loc5_ || param1)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                        }
                        _loc4_ = §§pop();
                     }
                     return;
                  }
                  §§goto(addr52);
               }
               §§goto(addr114);
            }
         }
         §§goto(addr118);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr102:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  addr106:
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(§§pop() < §§pop());
                           addr55:
                           continue loop0;
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue loop2;
                           }
                           while(§§pop())
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr94);
                              }
                              continue loop0;
                           }
                           throw new RangeError("Invalid child index");
                           addr68:
                        }
                     }
                     else
                     {
                        §§goto(addr68);
                     }
                  }
               }
            }
         }
         addr94:
         return this.§[!L§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§[!L§.length;
         §§push(0);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         do
         {
            §§push(_loc3_);
            if(!(_loc4_ && param1))
            {
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() >= _loc2_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && this))
                     {
                        return null;
                     }
                  }
                  else if(this.§[!L§[_loc3_].name == param1)
                  {
                     break;
                  }
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
         while(_loc5_);
         
         return this.§[!L§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§[!L§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            if(_loc3_ == -1)
            {
               if(_loc4_ || _loc3_)
               {
                  throw new ArgumentError("Not a child of this container");
               }
               while(true)
               {
                  §§goto(addr73);
               }
            }
            addr73:
            §§goto(addr72);
         }
         addr72:
         while(true)
         {
            this.§[!L§.splice(_loc3_,1);
            do
            {
               this.§[!L§.splice(param2,0,param1);
            }
            while(_loc5_ && _loc3_);
            
            if(_loc4_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §&!F§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(_loc6_)
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
               addr127:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr128:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              §§push(§§pop() == §§pop());
                              addr74:
                              continue loop0;
                              if(_loc6_ || param2)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(_loc5_ && _loc3_)
                              {
                                 continue loop3;
                              }
                              if(!(_loc6_ || param2))
                              {
                                 continue loop2;
                              }
                              while(§§pop())
                              {
                                 if(!(_loc6_ || param2))
                                 {
                                    break;
                                 }
                                 addr124:
                                 if(_loc6_)
                                 {
                                    §§goto(addr120);
                                 }
                                 continue loop0;
                              }
                              this.§5!P§(_loc3_,_loc4_);
                              if(!_loc6_)
                              {
                                 §§goto(addr124);
                              }
                              return;
                              addr109:
                           }
                        }
                        else
                        {
                           §§goto(addr109);
                        }
                     }
                  }
               }
            }
         }
         addr120:
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §5!P§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && param1))
         {
            this.§[!L§[param1] = _loc4_;
         }
         do
         {
            this.§[!L§[param2] = _loc3_;
         }
         while(_loc6_);
         
      }
      
      public function § !B§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[!L§ = this.§[!L§.sort(param1);
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
               if(!(_loc6_ && this))
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§[!L§.length;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§[!L§[_loc3_];
            _loc5_ = _loc4_ as DisplayObjectContainer;
            if(!_loc6_)
            {
               §§push(Boolean(_loc5_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr175:
                        addr153:
                        while(true)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!(_loc7_ || param1))
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           if(!_loc7_)
                           {
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     return §§pop();
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(_loc4_ != param1)
                        {
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc7_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc3_ = §§pop();
                              if(_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    break loop5;
                                 }
                                 if(false)
                                 {
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              if(!(_loc6_ && this))
                              {
                                 if(_loc6_ && param1)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              addr161:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           §§goto(addr175);
                        }
                        if(!_loc6_)
                        {
                           §§push(true);
                           if(!(_loc6_ && _loc2_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr152:
                           §§push(true);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr152);
                  }
                  return §§pop();
               }
            }
            §§goto(addr161);
         }
         return false;
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
            var _loc3_:int = this.§[!L§.length;
            if(!(_loc10_ && param2))
            {
               §§push(_loc3_);
               if(!(_loc10_ && _loc3_))
               {
                  §§push(0);
                  if(_loc11_ || param2)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §@!7§(param1,§]!C§);
                           if(!_loc10_)
                           {
                              transformCoords(§]!C§,0,0,§>!C§);
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    param2.x = §>!C§.x;
                                    if(_loc10_)
                                    {
                                       loop45:
                                       while(true)
                                       {
                                          addr518:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             addr519:
                                             while(true)
                                             {
                                                §§push(1);
                                                addr520:
                                                while(§§pop() != §§pop())
                                                {
                                                   loop48:
                                                   while(true)
                                                   {
                                                      §§push(Number(Number.MAX_VALUE));
                                                      addr511:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr512:
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               continue loop48;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               continue loop45;
                                                            }
                                                            §§push(-Number.MAX_VALUE);
                                                            loop43:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop44:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr488:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ && this)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§push(Number(Number.MAX_VALUE));
                                                                     while(true)
                                                                     {
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop43;
                                                                        }
                                                                        continue loop44;
                                                                        §§goto(addr505);
                                                                     }
                                                                     addr505:
                                                                     _loc6_ = §§pop();
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop48;
                                                      }
                                                   }
                                                }
                                                break loop0;
                                             }
                                          }
                                       }
                                       param2.y = §>!C§.y;
                                       if(!_loc10_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          param2.width = param2.height = 0;
                                          if(_loc11_)
                                          {
                                             break;
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(_loc11_)
                                             {
                                                if(_loc11_ || param2)
                                                {
                                                   if(§§pop() >= _loc3_)
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               param2.x = _loc4_;
                                                               loop4:
                                                               while(_loc11_)
                                                               {
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     param2.y = _loc6_;
                                                                     for(; !(_loc10_ && this); param2.width = _loc5_ - _loc4_,do
                                                                     {
                                                                        param2.height = _loc7_ - _loc6_;
                                                                     }
                                                                     while(!(_loc11_ || param1));
                                                                     ,if(!(_loc10_ && param1))
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        continue loop4;
                                                                     })
                                                                     {
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() > param2.right);
                                                                              while(!§§pop())
                                                                              {
                                                                                 §§push(Number(param2.right));
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr385:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       break loop3;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && param2))
                                                                                 {
                                                                                    addr372:
                                                                                    §§push(_loc5_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr373:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ && param2))
                                                                                          {
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                          addr395:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr372:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr389:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() < param2.x);
                                                                                          addr392:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   addr394:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                }
                                                                                                addr393:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(Number(param2.x));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr413:
                                                                                 }
                                                                                 addr399:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    continue loop31;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr372);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              addr240:
                                                                              while(true)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 break loop4;
                                                                              }
                                                                           }
                                                                           addr239:
                                                                        }
                                                                        §§goto(addr240);
                                                                        addr311:
                                                                        _loc7_ = §§pop();
                                                                     }
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc11_)
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr279:
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr293:
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr311);
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§goto(addr373);
                                                                                             }
                                                                                             §§goto(addr385);
                                                                                          }
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr347:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                addr348:
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc10_ && param2)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() > param2.bottom);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         §§push(Number(param2.bottom));
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      addr320:
                                                                                                      while(!_loc10_)
                                                                                                      {
                                                                                                         if(!(_loc10_ && param2))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§push(Number(param2.y));
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr336:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                               §§goto(addr399);
                                                                                                               addr336:
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr363);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                §§goto(addr385);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr292:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§goto(addr320);
                                                                                       §§push(§§pop() < param2.y);
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                                 addr315:
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                               }
                                                               while(_loc10_)
                                                               {
                                                                  §§goto(addr348);
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                         break;
                                                         if(!(_loc11_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            break loop2;
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr315);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.§[!L§[_loc8_].getBounds(param1,param2);
                                                   }
                                                   §§goto(addr413);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr240);
                                          }
                                          return param2;
                                          addr431:
                                       }
                                    }
                                    continue loop0;
                                    addr74:
                                 }
                                 return param2;
                                 addr125:
                              }
                              loop37:
                              while(true)
                              {
                                 §§push(-Number.MAX_VALUE);
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(_loc11_)
                                    {
                                       addr447:
                                       §§push(Number(§§pop()));
                                       if(!_loc10_)
                                       {
                                          _loc7_ = §§pop();
                                          loop39:
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                if(_loc11_ || _loc3_)
                                                {
                                                   §§push(0);
                                                   if(_loc11_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   if(_loc11_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            continue loop39;
                                                         }
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§goto(addr431);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr512);
                                                         }
                                                      }
                                                      addr421:
                                                   }
                                                   §§goto(addr519);
                                                }
                                                break;
                                             }
                                             continue loop37;
                                          }
                                          §§goto(addr488);
                                       }
                                       §§goto(addr511);
                                    }
                                    §§goto(addr465);
                                 }
                                 §§goto(addr447);
                              }
                           }
                           break;
                        }
                        return this.§[!L§[0].getBounds(param1,param2);
                     }
                     §§goto(addr518);
                  }
                  §§goto(addr520);
               }
               §§goto(addr421);
            }
            §§goto(addr125);
         }
         §§goto(addr32);
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
                     §§push(Boolean(§§pop()));
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(!visible);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             if(!(_loc10_ || param2))
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc9_ && this)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr59);
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(!§<@§);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop9;
                                                               }
                                                               addr89:
                                                            }
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                }
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             var _loc3_:Number = param1.x;
                                             var _loc4_:Number = param1.y;
                                             var _loc5_:int = this.§[!L§.length;
                                             §§push(_loc5_);
                                             if(_loc10_)
                                             {
                                                §§push(int(§§pop() - 1));
                                             }
                                             var _loc6_:* = §§pop();
                                             addr208:
                                             if(_loc6_ >= 0)
                                             {
                                                _loc7_ = this.§[!L§[_loc6_];
                                                if(!_loc9_)
                                                {
                                                   §@!7§(_loc7_,§]!C§);
                                                   if(_loc10_)
                                                   {
                                                      addr153:
                                                      transformCoords(§]!C§,_loc3_,_loc4_,§>!C§);
                                                   }
                                                   _loc8_ = _loc7_.hitTest(§>!C§,param2);
                                                   if(_loc10_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§push(_loc6_);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(!_loc9_)
                                                         {
                                                            addr206:
                                                            §§push(int(§§pop()));
                                                         }
                                                         _loc6_ = §§pop();
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   addr186:
                                                   return _loc8_;
                                                }
                                                §§goto(addr153);
                                             }
                                             return null;
                                             addr53:
                                          }
                                       }
                                       §§goto(addr89);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        §§goto(addr53);
                     }
                  }
               }
            }
         }
         addr59:
         return null;
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_)
         {
            §§push(param2);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc6_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§[!L§.length;
         §§push(0);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§[!L§[_loc4_];
            if(!(_loc6_ && param1))
            {
               §§push(_loc5_.alpha);
               loop1:
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
                        if(!(_loc6_ && param2))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr283:
                                       while(true)
                                       {
                                          §§push(_loc5_.visible);
                                          addr238:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr282:
                                 }
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop12:
                                       while(!_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop13:
                                          for(; _loc7_; while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc6_ && param1)
                                             {
                                                continue loop13;
                                             }
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr224);
                                             }
                                             §§goto(addr160);
                                          },continue loop12)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr179:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(!§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr194:
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               while(_loc7_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         continue loop11;
                                                         addr234:
                                                         §§push(_loc5_.scaleY);
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(0);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               addr145:
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        addr158:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr174:
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§#!9§(_loc5_);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_.render(param1,param2);
                                                                                       loop25:
                                                                                       while(_loc7_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§26§();
                                                                                             addr95:
                                                                                             while(_loc7_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_ && param2)
                                                                                                      {
                                                                                                         break loop14;
                                                                                                      }
                                                                                                      §§goto(addr234);
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                   addr227:
                                                                                                }
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    while(false)
                                                                                    {
                                                                                       §§goto(addr91);
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr89:
                                                                                 }
                                                                                 §§goto(addr95);
                                                                              }
                                                                           }
                                                                           continue loop15;
                                                                           addr160:
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               while(!_loc6_)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr227);
                                                                  §§goto(addr145);
                                                               }
                                                               continue loop4;
                                                               addr224:
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr282);
                                                }
                                             }
                                             §§goto(addr283);
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr89);
         }
      }
      
      public function §`!G§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1.bubbles)
            {
               if(_loc2_)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               while(true)
               {
               }
               addr55:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr55);
            }
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc5_ || _loc3_)
         {
            this.§&!a§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         §§push(0);
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && this))
            {
               if(_loc5_)
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     if(!(_loc6_ && _loc3_))
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
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc4_ = §§pop();
         }
      }
      
      private function §&!a§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!_loc8_)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc9_ || param1)
               {
                  addr43:
                  param3.push(param1);
                  if(_loc9_)
                  {
                     addr49:
                     if(_loc4_)
                     {
                        addr52:
                        _loc5_ = _loc4_.§[!L§;
                        if(_loc9_)
                        {
                           §§push(int(_loc5_.length));
                           loop0:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr153:
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 if(!(_loc8_ && param1))
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc8_ && param2))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    while(true)
                                    {
                                       if(§§pop() >= _loc6_)
                                       {
                                          return;
                                       }
                                       addr157:
                                       this.§&!a§(_loc5_[_loc7_],param2,param3);
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + 1);
                                          if(!(_loc9_ || param3))
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop()));
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          _loc7_ = §§pop();
                                          if(_loc9_ || param3)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr157);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr49);
         }
         §§goto(addr43);
      }
      
      public function get numChildren() : int
      {
         return this.§[!L§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!_loc6_)
         {
            this.§>!M§ = param1;
         }
         for each(_loc2_ in this.§[!L§)
         {
            if(_loc5_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§>!M§;
      }
   }
}
