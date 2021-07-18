package § N§
{
   import §+§.transformCoords;
   import §5Z§.§4]§;
   import §7!O§.§^!§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §"!§:Matrix;
      
      private static var §7,§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && DisplayObjectContainer))
         {
            §"!§ = new Matrix();
         }
         do
         {
            §7,§ = new Point();
         }
         while(_loc2_ && DisplayObjectContainer);
         
      }
      
      private var §42§:Vector.<DisplayObject>;
      
      private var §1!#§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(!_loc2_)
                  {
                     throw new §^!§();
                  }
                  addr78:
                  while(true)
                  {
                  }
                  addr78:
               }
               while(true)
               {
                  this.§42§ = new Vector.<DisplayObject>(0);
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr78);
               }
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
         §§goto(addr78);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§42§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     super.dispose();
                  }
                  else
                  {
                     _loc2_++;
                     continue;
                     addr76:
                  }
               }
               if(!(_loc4_ && _loc1_))
               {
                  break;
               }
               continue;
            }
            this.§42§[_loc2_].dispose();
            §§goto(addr76);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
            addr112:
            while(true)
            {
               §§push(§§pop() >= §§pop());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(§§pop())
                     {
                        param1.§3!I§();
                        this.§42§.splice(param2,0,param1);
                        param1.§7]§(this);
                        param1.dispatchEvent(new Event(Event.ADDED,true));
                        addr60:
                        if(stage)
                        {
                           param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                           if(!_loc4_)
                           {
                              §§goto(addr60);
                           }
                        }
                        return;
                     }
                  }
                  else
                  {
                     addr105:
                  }
                  continue loop0;
                  throw new RangeError("Invalid child index");
               }
               continue loop0;
            }
         }
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
         if(!(_loc4_ && param1))
         {
            if(_loc3_ != -1)
            {
               if(!(_loc4_ && param2))
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
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              addr47:
                              if(param1 < this.numChildren)
                              {
                                 if(!_loc4_)
                                 {
                                    _loc3_ = this.§42§[param1];
                                    _loc3_.dispatchEvent(new Event(Event.§4Y§,true));
                                    loop0:
                                    while(true)
                                    {
                                       if(stage)
                                       {
                                          _loc3_.dispatchEventOnChildren(new Event(Event.§<!=§));
                                          while(true)
                                          {
                                          }
                                          addr123:
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          _loc3_.§7]§(null);
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop2;
                                             addr70:
                                             if(_loc4_ && param1)
                                             {
                                                continue;
                                             }
                                             _loc3_.dispose();
                                             if(!_loc4_)
                                             {
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      this.§42§.splice(param1,1);
                                                      addr89:
                                                      while(param2)
                                                      {
                                                         §§goto(addr70);
                                                      }
                                                   }
                                                   addr83:
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr89);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr50:
                                 }
                                 addr137:
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           §§goto(addr50);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §5a§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr70:
                              §§push(param2);
                              if(_loc6_ || param1)
                              {
                                 addr81:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr84);
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr112);
                           }
                           addr84:
                           §§push(this.numChildren);
                           if(!(_loc5_ && param1))
                           {
                              §§push(int(§§pop() - 1));
                              if(_loc6_ || param1)
                              {
                                 addr112:
                                 param2 = §§pop();
                                 addr113:
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    addr116:
                                    §§push(int(§§pop()));
                                 }
                              }
                           }
                           var _loc4_:* = §§pop();
                           while(true)
                           {
                              if(_loc4_ > param2)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
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
                        }
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr116);
         }
         §§goto(addr70);
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
               addr87:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              return this.§42§[param1];
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(§§pop() < §§pop());
                           continue loop0;
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                           addr92:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr92:
                        }
                        throw new RangeError("Invalid child index");
                        addr73:
                     }
                  }
                  §§goto(addr92);
               }
            }
            addr86:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(this.numChildren);
               if(_loc3_)
               {
                  §§goto(addr65);
               }
               else
               {
                  §§goto(addr87);
               }
            }
            else
            {
               §§goto(addr86);
            }
            §§goto(addr87);
            §§goto(addr92);
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§42§.length;
         var _loc3_:int = 0;
         while(true)
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
               addr80:
            }
            else if(this.§42§[_loc3_].name == param1)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr80);
            }
            _loc3_++;
         }
         return this.§42§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§42§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ != -1)
            {
               while(true)
               {
                  this.§42§.splice(_loc3_,1);
                  while(_loc4_)
                  {
                     this.§42§.splice(param2,0,param1);
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && this))
                     {
                        return;
                     }
                  }
               }
            }
         }
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §0! §(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && _loc3_))
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
               addr109:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§47§(_loc3_,_loc4_);
                           }
                           while(!(_loc6_ || _loc3_));
                           
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              return;
                              addr69:
                           }
                           continue loop0;
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr100:
                     }
                  }
                  addr114:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §47§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc6_ || this)
         {
            this.§42§[param1] = _loc4_;
         }
         do
         {
            this.§42§[param2] = _loc3_;
         }
         while(!(_loc6_ || param2));
         
      }
      
      public function §%!#§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§42§ = this.§42§.sort(param1);
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
               if(!_loc7_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:int = this.§42§.length;
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  return false;
               }
               §§push(Boolean(_loc5_ = (_loc4_ = this.§42§[_loc3_]) as DisplayObjectContainer));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr117:
                           §§push(Boolean(§§pop()));
                           if(_loc7_)
                           {
                              break;
                           }
                           addr120:
                           if(§§pop())
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(true);
                                 break;
                              }
                              addr130:
                              while(true)
                              {
                              }
                              addr130:
                           }
                           while(true)
                           {
                              if(_loc4_ == param1)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(true);
                                    if(_loc6_)
                                    {
                                       return §§pop();
                                    }
                                    break loop0;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr111:
                              }
                              while(true)
                              {
                                 _loc3_++;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr111);
                              }
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr130);
                           }
                           continue;
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr120);
               }
               §§goto(addr117);
            }
            return §§pop();
         }
         addr29:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         if(_loc10_)
         {
            if(param2 == null)
            {
               addr31:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§42§.length;
            if(!_loc11_)
            {
               §§push(_loc3_);
               if(!(_loc11_ && param1))
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §>!B§(param1,§"!§);
                        transformCoords(§"!§,0,0,§7,§);
                        if(!(_loc11_ && param1))
                        {
                           while(true)
                           {
                              param2.x = §7,§.x;
                              if(_loc10_)
                              {
                                 continue;
                              }
                              addr374:
                              §§push(_loc3_);
                              while(true)
                              {
                                 §§push(1);
                                 §§goto(addr376);
                              }
                           }
                        }
                        return param2;
                        addr89:
                     }
                     §§goto(addr374);
                  }
                  addr376:
                  loop1:
                  while(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(Number(Number.MAX_VALUE));
                        loop3:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(-Number.MAX_VALUE);
                              while(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Number(Number.MAX_VALUE));
                                       while(true)
                                       {
                                          if(!_loc11_)
                                          {
                                             _loc6_ = §§pop();
                                             if(_loc10_)
                                             {
                                                if(_loc10_ || param2)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                       addr327:
                                       _loc7_ = §§pop();
                                       if(_loc11_)
                                       {
                                          break loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 if(_loc11_ && param2)
                                 {
                                    continue;
                                 }
                                 §§goto(addr327);
                                 §§push(Number(§§pop()));
                              }
                              continue loop3;
                           }
                        }
                        addr385:
                     }
                  }
                  return this.§42§[0].getBounds(param1,param2);
               }
               §§goto(addr297);
            }
            §§goto(addr89);
         }
         §§goto(addr31);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc9_ || this)
         {
            §§push(param2);
            if(!_loc10_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(!visible);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    while(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          return null;
                                       }
                                       if(_loc9_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       loop7:
                                       while(_loc9_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(!§!!"§);
                                             if(_loc9_)
                                             {
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop5;
                                             }
                                             addr73:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop7;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                    var _loc3_:Number = param1.x;
                                    var _loc4_:Number = param1.y;
                                    var _loc5_:int;
                                    §§push(_loc5_ = this.§42§.length);
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(int(§§pop() - 1));
                                    }
                                    var _loc6_:* = §§pop();
                                    addr185:
                                    if(_loc6_ >= 0)
                                    {
                                       _loc7_ = this.§42§[_loc6_];
                                       if(_loc9_ || param1)
                                       {
                                          §>!B§(_loc7_,§"!§);
                                          if(_loc9_ || this)
                                          {
                                             transformCoords(§"!§,_loc3_,_loc4_,§7,§);
                                          }
                                       }
                                       if(_loc8_ = _loc7_.hitTest(§7,§,param2))
                                       {
                                          if(_loc10_)
                                          {
                                             addr180:
                                             §§push(_loc6_);
                                             if(_loc9_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc6_ = §§pop();
                                             §§goto(addr185);
                                          }
                                          return _loc8_;
                                       }
                                       §§goto(addr180);
                                    }
                                    return null;
                                    addr51:
                                 }
                                 §§goto(addr73);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr51);
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc7_ && param1))
               {
                  addr34:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr36);
            }
            §§goto(addr34);
         }
         addr36:
         var _loc3_:int = this.§42§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§42§[_loc4_]).alpha);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 addr182:
                                 §§push(Boolean(_loc5_.visible));
                                 if(_loc6_)
                                 {
                                    addr185:
                                    §§push(§§pop());
                                    loop1:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr187:
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(_loc5_.scaleX);
                                             addr170:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr171:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   addr172:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr187:
                                       }
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc7_)
                                             {
                                                break;
                                                addr177:
                                             }
                                             while(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§push(_loc5_.scaleY);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(0);
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr170);
                                             }
                                             if(§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   param1.§1H§();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      param1.§>m§(_loc5_);
                                                      while(!_loc7_)
                                                      {
                                                         _loc5_.render(param1,param2);
                                                         while(true)
                                                         {
                                                            param1.§%!>§();
                                                            addr115:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         if(_loc7_ && param2)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc7_ && param2)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr112);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc4_++;
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr96);
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr172);
               }
               §§goto(addr137);
            }
            §§goto(addr170);
         }
      }
      
      public function §<!<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(!(_loc2_ || this));
               
               if(_loc2_ || param1)
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
         if(_loc5_ || param1)
         {
            this.§=!J§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc5_)
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
               addr85:
            }
            while(_loc6_)
            {
               §§goto(addr85);
            }
         }
      }
      
      private function §=!J§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || param1)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc9_)
               {
                  param3.push(param1);
                  if(!_loc9_)
                  {
                  }
                  addr59:
                  §§push(int((_loc5_ = _loc4_.§42§).length));
                  if(_loc9_)
                  {
                     _loc6_ = §§pop();
                     if(!_loc8_)
                     {
                        addr102:
                        _loc7_ = 0;
                     }
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc7_ < _loc6_)
                           {
                              this.§=!J§(_loc5_[_loc7_],param2,param3);
                              while(true)
                              {
                                 _loc7_++;
                                 if(!_loc9_)
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
                           §§goto(addr107);
                        }
                     }
                  }
                  §§goto(addr102);
               }
            }
            if(_loc4_)
            {
               §§goto(addr59);
            }
            addr107:
            return;
         }
         §§goto(addr59);
      }
      
      public function get numChildren() : int
      {
         return this.§42§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc6_ && param1))
         {
            this.§1!#§ = param1;
         }
         for each(_loc2_ in this.§42§)
         {
            if(_loc5_ || param1)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§1!#§;
      }
   }
}
