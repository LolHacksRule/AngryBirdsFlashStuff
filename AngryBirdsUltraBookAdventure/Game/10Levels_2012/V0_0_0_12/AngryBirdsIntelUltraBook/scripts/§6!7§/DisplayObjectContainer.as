package §6!7§
{
   import §"v§.§2!;§;
   import §0P§.RenderSupport;
   import §8g§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §18§:Matrix;
      
      private static var §1!c§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §18§ = new Matrix();
         }
         do
         {
            §1!c§ = new Point();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §"! §:Vector.<DisplayObject>;
      
      private var §1!T§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            loop0:
            for(; getQualifiedClassName(this) != "starling.display::DisplayObjectContainer"; if(_loc1_ && this)
            {
               continue;
            },§§goto(addr39))
            {
               while(true)
               {
                  this.§"! § = new Vector.<DisplayObject>(0);
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        return;
                        addr63:
                     }
                     break loop0;
                  }
                  continue loop0;
               }
            }
            throw new §2!;§();
         }
         §§goto(addr63);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§"! §.length;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() >= _loc1_)
               {
                  if(!_loc4_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc3_ || _loc1_)
                     {
                        super.dispose();
                        break;
                     }
                     §§push(_loc2_);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() + 1);
                        if(_loc4_ && this)
                        {
                        }
                        addr95:
                        _loc2_ = §§pop();
                        continue;
                     }
                     §§goto(addr95);
                     §§push(int(§§pop()));
                     addr105:
                  }
                  break;
               }
               this.§"! §[_loc2_].dispose();
               §§goto(addr105);
            }
            §§goto(addr95);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr151:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || this)
                     {
                        addr167:
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              loop5:
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    param1.§#g§();
                                    this.§"! §.splice(param2,0,param1);
                                    if(_loc3_)
                                    {
                                       param1.§6w§(this);
                                       param1.dispatchEvent(new Event(Event.ADDED,true));
                                       §§push(Boolean(stage));
                                       if(!(_loc3_ || param2))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr135);
                                                   }
                                                   param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                                }
                                             }
                                             §§goto(addr23);
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                          addr177:
                                       }
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           addr133:
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr167);
               }
            }
         }
         §§goto(addr135);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            if(_loc3_ != -1)
            {
               if(!_loc4_)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(0);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              addr88:
                              if(!(_loc5_ && param2))
                              {
                                 addr66:
                                 §§push(param1 < this.numChildren);
                                 if(_loc4_)
                                 {
                                    addr69:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              _loc3_ = this.§"! §[param1];
                              if(_loc4_ || _loc3_)
                              {
                                 _loc3_.dispatchEvent(new Event(Event.§ q§,true));
                                 while(true)
                                 {
                                    §§push(Boolean(stage));
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                             addr171:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr163:
                                       }
                                       while(true)
                                       {
                                          _loc3_.§6w§(null);
                                          addr147:
                                          while(true)
                                          {
                                             addr130:
                                             while(true)
                                             {
                                                this.§"! §.splice(param1,1);
                                                addr137:
                                                §§goto(addr182);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr69);
                        }
                        if(§§pop())
                        {
                           if(_loc4_ || this)
                           {
                              §§goto(addr88);
                           }
                           addr182:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr171);
                           }
                           addr182:
                           return;
                        }
                        throw new RangeError("Invalid child index");
                     }
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr88);
      }
      
      public function §'!C§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param2);
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_ || param3)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(!(_loc6_ && this))
                           {
                              addr57:
                              §§pop();
                              if(!(_loc6_ && param1))
                              {
                                 §§push(param2);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.numChildren);
                                    if(_loc5_)
                                    {
                                       addr87:
                                       §§push(§§pop() >= §§pop());
                                       if(!_loc6_)
                                       {
                                          addr91:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr94:
                                                §§push(this.numChildren);
                                                if(_loc5_)
                                                {
                                                   addr99:
                                                   addr98:
                                                   §§push(int(§§pop() - 1));
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr113);
                                                }
                                                param2 = §§pop();
                                             }
                                          }
                                          §§push(param1);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr113:
                                             var _loc4_:* = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(§§pop() > param2)
                                                      {
                                                         if(_loc6_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc6_ && param3))
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
                                                      }
                                                   }
                                                   §§push(int(§§pop()));
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             return;
                                             §§push(int(§§pop()));
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr91);
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr87);
            }
            §§goto(addr98);
         }
         §§goto(addr94);
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
               addr103:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr104:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr105:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr88);
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           throw new RangeError("Invalid child index");
                           addr74:
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
         addr88:
         return this.§"! §[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§"! §.length;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() >= _loc2_)
               {
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  if(!(_loc4_ && param1))
                  {
                     return null;
                  }
                  addr113:
               }
               else if(this.§"! §[_loc3_].name == param1)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr113);
               }
               §§push(_loc3_);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + 1);
                  if(_loc4_ && _loc2_)
                  {
                  }
                  addr95:
                  _loc3_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr95);
         }
         return this.§"! §[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§"! §.indexOf(param1);
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
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§"! §.splice(_loc3_,1);
                  while(true)
                  {
                     if(_loc4_ || param2)
                     {
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                        this.§"! §.splice(param2,0,param1);
                        if(_loc4_)
                        {
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §`!Y§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && param2))
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
         if(!(_loc5_ && _loc3_))
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
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr129:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(!§§pop())
                           {
                              do
                              {
                                 this.§1!2§(_loc3_,_loc4_);
                              }
                              while(_loc5_ && param1);
                              
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 return;
                                 addr75:
                              }
                              continue loop0;
                           }
                           throw new ArgumentError("Not a child of this container");
                           addr118:
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
         §§goto(addr75);
      }
      
      public function §1!2§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc6_)
         {
            this.§"! §[param1] = _loc4_;
            do
            {
               this.§"! §[param2] = _loc3_;
            }
            while(_loc5_ && this);
            
         }
      }
      
      public function §!K§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"! § = this.§"! §.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc6_)
         {
            if(param1 == this)
            {
               if(!(_loc7_ && _loc3_))
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§"! §.length;
         §§push(0);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§"! §[_loc3_];
            _loc5_ = _loc4_ as DisplayObjectContainer;
            if(_loc6_)
            {
               §§push(Boolean(_loc5_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc7_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr174:
                        while(true)
                        {
                           §§push(_loc5_.contains(param1));
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                              if(!(_loc6_ || _loc2_))
                              {
                                 break;
                              }
                              addr116:
                              §§push(true);
                              if(_loc7_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 §§goto(addr121);
                              }
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
                        loop6:
                        while(true)
                        {
                           if(_loc4_ == param1)
                           {
                              if(!_loc6_)
                              {
                                 loop7:
                                 while(!(_loc7_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc6_ || _loc3_)
                                          {
                                             addr95:
                                             §§push(int(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr95);
                                    }
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          if(true)
                                          {
                                             break loop6;
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr174);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr156:
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr116);
                              §§goto(addr157);
                           }
                           §§goto(addr68);
                        }
                        continue loop0;
                     }
                  }
                  addr121:
                  return §§pop();
               }
            }
            §§goto(addr156);
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
         if(_loc10_)
         {
            if(param2 == null)
            {
               addr31:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§"! §.length;
            if(_loc10_ || _loc3_)
            {
               §§push(_loc3_);
               if(!_loc11_)
               {
                  §§push(0);
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §[!4§(param1,§18§);
                           if(_loc10_ || _loc3_)
                           {
                              transformCoords(§18§,0,0,§1!c§);
                              if(!_loc11_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    param2.x = §1!c§.x;
                                    if(_loc10_ || param1)
                                    {
                                       param2.y = §1!c§.y;
                                       if(_loc10_ || _loc3_)
                                       {
                                          if(!_loc10_)
                                          {
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          param2.width = param2.height = 0;
                                          if(_loc10_)
                                          {
                                             return param2;
                                             addr129:
                                          }
                                          else
                                          {
                                             loop45:
                                             while(true)
                                             {
                                                §§push(-Number.MAX_VALUE);
                                                if(_loc10_)
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         addr478:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc11_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            while(!_loc11_)
                                                            {
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(-Number.MAX_VALUE);
                                                               }
                                                            }
                                                            break loop0;
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc11_ && this))
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 continue loop45;
                                                                              }
                                                                              addr547:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr548:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1);
                                                                                    addr549:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(Number.MAX_VALUE));
                                                                           addr544:
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              §§goto(addr545);
                                                                           }
                                                                        }
                                                                        addr503:
                                                                        _loc6_ = §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr481);
                                                                  }
                                                               }
                                                               §§goto(addr548);
                                                               §§goto(addr483);
                                                            }
                                                            addr481:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(§§pop() >= _loc3_)
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              param2.x = _loc4_;
                                                                           }
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              param2.y = _loc6_;
                                                                              while(_loc10_)
                                                                              {
                                                                                 if(_loc10_ || param2)
                                                                                 {
                                                                                    param2.width = _loc5_ - _loc4_;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(!(_loc10_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             addr229:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                addr230:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   §§goto(addr231);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr228:
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr417);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr394);
                                                                                 §§goto(addr424);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§"! §[_loc8_].getBounds(param1,param2);
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            return param2;
                                                            addr490:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr537:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               break loop0;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr544);
                                                   }
                                                   while(!(_loc10_ || this))
                                                   {
                                                      §§goto(addr537);
                                                      break loop0;
                                                   }
                                                   §§goto(addr503);
                                                   addr496:
                                                }
                                                §§goto(addr478);
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr129);
                                 }
                                 return this.§"! §[0].getBounds(param1,param2);
                              }
                              §§goto(addr490);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr496);
                        }
                     }
                     §§goto(addr547);
                  }
                  §§goto(addr549);
               }
               §§goto(addr548);
            }
            §§goto(addr483);
         }
         §§goto(addr31);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_)
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
                  addr121:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr122:
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop11:
                           while(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 if(_loc10_)
                                 {
                                    return null;
                                 }
                                 loop10:
                                 while(_loc10_ || param2)
                                 {
                                    while(true)
                                    {
                                       §§push(!§<!4§);
                                       if(_loc10_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc9_ && param1))
                                       {
                                          if(_loc10_)
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                continue loop11;
                                             }
                                             addr68:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                continue loop0;
                                             }
                                             addr123:
                                             while(true)
                                             {
                                                §§pop();
                                                break loop10;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       addr92:
                                       while(!(_loc9_ && this))
                                       {
                                          §§pop();
                                          continue loop10;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              else if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr68);
                              }
                           }
                           var _loc3_:Number = param1.x;
                           var _loc4_:Number = param1.y;
                           var _loc5_:int = this.§"! §.length;
                           §§push(_loc5_);
                           if(!(_loc9_ && param2))
                           {
                              §§push(int(§§pop() - 1));
                           }
                           var _loc6_:* = §§pop();
                           addr228:
                           if(_loc6_ >= 0)
                           {
                              _loc7_ = this.§"! §[_loc6_];
                              if(!_loc9_)
                              {
                                 §[!4§(_loc7_,§18§);
                                 if(!(_loc9_ && this))
                                 {
                                    transformCoords(§18§,_loc3_,_loc4_,§1!c§);
                                 }
                              }
                              _loc8_ = _loc7_.hitTest(§1!c§,param2);
                              if(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc9_ && param1)
                                    {
                                       §§goto(addr228);
                                    }
                                    return _loc8_;
                                 }
                              }
                              §§push(_loc6_);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§§pop() - 1);
                                 if(!_loc9_)
                                 {
                                    addr226:
                                    §§push(int(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                                 §§goto(addr228);
                              }
                              §§goto(addr226);
                           }
                           return null;
                           addr54:
                        }
                        §§goto(addr123);
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_)
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_ || param1)
               {
                  addr35:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr37);
            }
            §§goto(addr35);
         }
         addr37:
         var _loc3_:int = this.§"! §.length;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§"! §[_loc4_];
            if(!(_loc6_ && this))
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
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(!§§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr209:
                           if(!(_loc7_ || this))
                           {
                              continue;
                           }
                           §§push(!§§pop());
                           loop17:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop18:
                              while(true)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc6_ && this))
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop23:
                                                while(true)
                                                {
                                                   param1.§;l§();
                                                   addr190:
                                                   loop29:
                                                   while(true)
                                                   {
                                                      param1.§'d§(_loc5_);
                                                      addr111:
                                                      while(!_loc7_)
                                                      {
                                                         continue loop29;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         _loc5_.render(param1,param2);
                                                         loop26:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  param1.§7!G§();
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           addr96:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop26;
                                                                              }
                                                                              continue loop28;
                                                                              §§goto(addr96);
                                                                           }
                                                                           continue loop0;
                                                                           addr63:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr237:
                                                                        }
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.scaleY);
                                                                           if(!(_loc7_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr126:
                                                                           §§push(0);
                                                                           if(!(_loc7_ || param2))
                                                                           {
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr209);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop26;
                                                                                    }
                                                                                    addr262:
                                                                                 }
                                                                                 §§goto(addr126);
                                                                              }
                                                                              continue loop2;
                                                                              addr202:
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr149:
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr159:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    addr162:
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    addr236:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop21;
                                                                                       §§goto(addr162);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr242:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr149);
                                                                                    }
                                                                                    addr241:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       break loop19;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break loop19;
                                                                              }
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
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                    }
                                                                                    addr282:
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                              addr281:
                                                                           }
                                                                           §§goto(addr159);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr111);
                                                            }
                                                         }
                                                         addr115:
                                                      }
                                                      while(_loc7_)
                                                      {
                                                         §§push(_loc5_.scaleX);
                                                         continue loop1;
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                }
                                             }
                                             §§goto(addr63);
                                          }
                                          addr185:
                                       }
                                       §§goto(addr236);
                                    }
                                    break;
                                 }
                                 while(_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop18;
                                    }
                                    §§goto(addr262);
                                 }
                                 addr280:
                                 while(true)
                                 {
                                    §§goto(addr281);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr279);
                  }
               }
            }
            §§goto(addr190);
         }
      }
      
      public function §5!>§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1.bubbles)
            {
               if(_loc2_ || param1)
               {
                  §§goto(addr71);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr48);
                  }
               }
            }
            addr48:
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc2_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr71:
         throw new ArgumentError("Broadcast of bubbling events is prohibited");
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc5_ || param1)
         {
            this.§ M§(this,param1.type,_loc2_);
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
            if(!_loc6_)
            {
               if(§§pop() >= _loc3_)
               {
                  if(!(_loc5_ || param1))
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
                  _loc2_[_loc4_].dispatchEvent(param1);
               }
               §§push(_loc4_);
               if(_loc5_ || param1)
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
      }
      
      private function § M§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(!_loc9_)
               {
                  addr37:
                  param3.push(param1);
                  if(!_loc9_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr46);
            }
            addr43:
            if(_loc4_)
            {
               addr46:
               _loc5_ = _loc4_.§"! §;
               if(_loc8_ || param1)
               {
                  §§push(int(_loc5_.length));
                  while(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(!_loc9_)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(int(§§pop()));
                        }
                        _loc7_ = §§pop();
                        if(_loc9_)
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
                        this.§ M§(_loc5_[_loc7_],param2,param3);
                        if(_loc9_ && param3)
                        {
                           break;
                        }
                        §§push(_loc7_);
                        if(_loc8_)
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc8_ || param2))
                           {
                              continue;
                           }
                           §§push(int(§§pop()));
                           if(!_loc8_)
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
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function get numChildren() : int
      {
         return this.§"! §.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc6_ && _loc3_))
         {
            this.§1!T§ = param1;
         }
         for each(_loc2_ in this.§"! §)
         {
            if(_loc5_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§1!T§;
      }
   }
}
