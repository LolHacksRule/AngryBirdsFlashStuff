package §2Y§
{
   import §"^§.§'X§;
   import §2i§.§'u§;
   import §=9§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §6!<§:Matrix;
      
      private static var §<Z§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || DisplayObjectContainer)
         {
            §6!<§ = new Matrix();
         }
         do
         {
            §<Z§ = new Point();
         }
         while(_loc1_);
         
      }
      
      private var §13§:Vector.<DisplayObject>;
      
      private var §`!G§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            for(; getQualifiedClassName(this) == "starling.display::DisplayObjectContainer"; if(!(_loc1_ && _loc2_))
            {
               throw new §'u§();
            })
            {
               if(!(_loc1_ && _loc1_))
               {
                  continue;
               }
               addr84:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               this.§13§ = new Vector.<DisplayObject>(0);
               if(!(_loc1_ && this))
               {
                  break;
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr84);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§13§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_ && this)
               {
                  break;
               }
               if(!(_loc4_ && this))
               {
                  super.dispose();
                  break;
               }
               loop1:
               while(_loc4_ && _loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§13§[_loc2_].dispose();
            §§goto(addr86);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
               addr147:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           param1.§7^§();
                           while(true)
                           {
                              this.§13§.splice(param2,0,param1);
                              loop4:
                              while(!_loc4_)
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    while(true)
                                    {
                                       param1.§%C§(this);
                                       do
                                       {
                                          param1.dispatchEvent(new Event(Event.ADDED,true));
                                       }
                                       while(!(_loc3_ || _loc3_));
                                       
                                       if(!stage)
                                       {
                                          break;
                                       }
                                       param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                       if(_loc4_ && this)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr23);
                                       continue loop4;
                                    }
                                    return;
                                    addr23:
                                    addr113:
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(§§pop() <= §§pop());
                           if(!(_loc4_ && param2))
                           {
                              continue;
                           }
                           addr152:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr152:
                        }
                        throw new RangeError("Invalid child index");
                        addr130:
                     }
                  }
                  §§goto(addr152);
               }
            }
         }
         §§goto(addr113);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ != -1)
            {
               if(_loc4_)
               {
                  addr55:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr50:
                           §§pop();
                           if(!_loc4_)
                           {
                              addr57:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc5_)
                              {
                                 addr60:
                                 _loc3_ = this.§13§[param1];
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    _loc3_.dispatchEvent(new Event(Event.§"!f§,true));
                                    while(true)
                                    {
                                       if(stage)
                                       {
                                          continue;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          _loc3_.§%C§(null);
                                          addr139:
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    addr107:
                                    while(true)
                                    {
                                       this.§13§.splice(param1,1);
                                       while(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!param2)
                                             {
                                                return;
                                             }
                                             addr158:
                                             if(_loc5_ || param2)
                                             {
                                                _loc3_.dispose();
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             continue;
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                              }
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr60);
      }
      
      public function §`!C§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || param2)
                        {
                           §§pop();
                           if(!(_loc5_ && param3))
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr56:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       §§push(this.numChildren);
                                       if(_loc6_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_ || param2)
                                          {
                                             addr87:
                                             param2 = §§pop();
                                             addr88:
                                             §§push(param1);
                                             if(_loc6_ || this)
                                             {
                                                addr96:
                                                §§push(int(§§pop()));
                                             }
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
                                                while(_loc5_)
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
                                             §§goto(addr134);
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr88);
                              }
                           }
                           §§goto(addr87);
                        }
                     }
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr96);
         }
         §§goto(addr87);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr72:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              return this.§13§[param1];
                           }
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop0;
                           addr35:
                           §§push(§§pop() < §§pop());
                           if(_loc3_ || _loc2_)
                           {
                              continue;
                           }
                           addr92:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr35);
                           }
                           addr92:
                        }
                        throw new RangeError("Invalid child index");
                        addr53:
                     }
                  }
                  §§goto(addr92);
               }
            }
            addr71:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(this.numChildren);
               if(_loc3_)
               {
                  §§goto(addr35);
               }
               else
               {
                  §§goto(addr72);
               }
            }
            else
            {
               §§goto(addr71);
            }
            §§goto(addr72);
            §§goto(addr92);
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§13§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ || this)
               {
                  break;
               }
               while(!_loc5_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr52:
            }
            else if(this.§13§[_loc3_].name == param1)
            {
               if(_loc5_ || param1)
               {
                  return this.§13§[_loc3_];
               }
               §§goto(addr86);
            }
            while(true)
            {
               _loc3_++;
               §§goto(addr52);
            }
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§13§.indexOf(param1);
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
         if(!(_loc5_ && param2))
         {
            if(_loc3_ != -1)
            {
               while(true)
               {
                  this.§13§.splice(_loc3_,1);
                  while(_loc4_)
                  {
                     this.§13§.splice(param2,0,param1);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        return;
                        addr56:
                     }
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr56);
      }
      
      public function §4!D§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc6_)
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
         if(_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr98:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(!§§pop())
                        {
                           do
                           {
                              this.§@!b§(_loc3_,_loc4_);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    return;
                                 }
                                 break loop2;
                              }
                           }
                           while(!_loc6_);
                           
                           continue loop0;
                        }
                        addr79:
                        throw new ArgumentError("Not a child of this container");
                        addr77:
                     }
                  }
                  addr103:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §@!b§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc5_ && param2))
         {
            this.§13§[param1] = _loc4_;
         }
         do
         {
            this.§13§[param2] = _loc3_;
         }
         while(_loc5_ && _loc3_);
         
      }
      
      public function §<!Y§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§13§ = this.§13§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc7_ || param1)
         {
            if(param1 == this)
            {
               if(_loc7_ || _loc2_)
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:int = this.§13§.length;
            var _loc3_:int = 0;
            loop0:
            while(_loc3_ < _loc2_)
            {
               §§push(Boolean(_loc5_ = (_loc4_ = this.§13§[_loc3_]) as DisplayObjectContainer));
               if(_loc7_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§pop();
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc5_.contains(param1));
                           if(_loc7_)
                           {
                              addr143:
                              §§push(Boolean(§§pop()));
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(_loc4_ != param1)
                                       {
                                          while(true)
                                          {
                                             _loc3_++;
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             if(_loc7_)
                                             {
                                                continue;
                                             }
                                             addr146:
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          if(_loc7_)
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                §§push(true);
                                             }
                                             else
                                             {
                                                addr144:
                                             }
                                             if(true)
                                             {
                                                continue loop0;
                                             }
                                             continue;
                                             break;
                                          }
                                       }
                                       §§push(true);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       if(!_loc6_)
                                       {
                                          §§goto(addr123);
                                       }
                                       continue loop4;
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr144);
                              }
                              addr143:
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr146);
                     }
                     addr123:
                     return §§pop();
                  }
               }
               §§goto(addr143);
            }
            return false;
         }
         addr40:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = 0;
         if(_loc10_ || param2)
         {
            if(param2 == null)
            {
               addr36:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§13§.length;
            if(!_loc11_)
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  §§push(0);
                  if(!(_loc11_ && param2))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc10_ || this)
                        {
                           addr99:
                           §6!5§(param1,§6!<§);
                           if(!(_loc11_ && param1))
                           {
                              transformCoords(§6!<§,0,0,§<Z§);
                              if(!_loc11_)
                              {
                                 while(true)
                                 {
                                    param2.x = §<Z§.x;
                                    if(!(_loc11_ && this))
                                    {
                                       param2.y = §<Z§.y;
                                       if(!_loc11_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          param2.width = param2.height = 0;
                                          if(!(_loc11_ && this))
                                          {
                                             return param2;
                                          }
                                          loop47:
                                          while(true)
                                          {
                                             §§push(-Number.MAX_VALUE);
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr495:
                                                addr454:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                }
                                                if(!(_loc10_ || param2))
                                                {
                                                   continue;
                                                }
                                                addr462:
                                                _loc7_ = §§pop();
                                                loop44:
                                                while(true)
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc11_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop44;
                                                                  }
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr534:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr534:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr512:
                                                                        loop34:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           addr513:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(Number.MAX_VALUE));
                                                                                    addr501:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       break loop44;
                                                                                    }
                                                                                    §§goto(addr534);
                                                                                 }
                                                                                 addr497:
                                                                              }
                                                                              addr514:
                                                                              return this.§13§[0].getBounds(param1,param2);
                                                                              continue loop34;
                                                                           }
                                                                        }
                                                                        §§goto(addr537);
                                                                     }
                                                                     addr537:
                                                                     addr511:
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc8_ >= _loc3_)
                                                                  {
                                                                     loop1:
                                                                     while(_loc10_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           param2.x = _loc4_;
                                                                           while(_loc10_)
                                                                           {
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 param2.y = _loc6_;
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    param2.width = _loc5_ - _loc4_;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          if(!(_loc11_ && this))
                                                                                          {
                                                                                             if(!(_loc10_ || _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       _loc8_++;
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    §§goto(addr409);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr420:
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr349);
                                                                           §§push(_loc6_);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§13§[_loc8_].getBounds(param1,param2);
                                                                  }
                                                                  §§goto(addr420);
                                                               }
                                                               addr435:
                                                               addr425:
                                                            }
                                                            §§goto(addr512);
                                                         }
                                                         break;
                                                      }
                                                      addr496:
                                                      while(true)
                                                      {
                                                         §§push(Number(Number.MAX_VALUE));
                                                         loop42:
                                                         while(true)
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  addr489:
                                                                  break;
                                                                  addr489:
                                                               }
                                                               _loc6_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(-Number.MAX_VALUE);
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     continue loop42;
                                                                  }
                                                                  §§goto(addr462);
                                                                  continue loop44;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                      }
                                                      §§goto(addr501);
                                                   }
                                                   §§goto(addr489);
                                                }
                                                while(!(_loc11_ && param2))
                                                {
                                                   continue loop47;
                                                }
                                                §§goto(addr514);
                                             }
                                          }
                                       }
                                       §§goto(addr496);
                                    }
                                    §§goto(addr514);
                                 }
                              }
                              §§goto(addr489);
                           }
                           §§goto(addr534);
                        }
                        §§goto(addr435);
                     }
                     §§goto(addr511);
                  }
                  §§goto(addr513);
               }
               §§goto(addr425);
            }
            §§goto(addr99);
         }
         §§goto(addr36);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc9_ || param2)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc9_ || _loc3_)
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
                           addr114:
                           loop7:
                           while(true)
                           {
                              addr67:
                              addr88:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!(_loc9_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop6;
                              }
                              loop4:
                              while(!_loc10_)
                              {
                                 §§pop();
                                 addr91:
                                 while(true)
                                 {
                                    §§push(!§0!3§);
                                    if(!(_loc10_ && param1))
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 while(§§pop())
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       return null;
                                    }
                                    if(_loc9_ || param1)
                                    {
                                       if(!(_loc9_ || _loc3_))
                                       {
                                          continue loop7;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr67);
                                    }
                                    else
                                    {
                                       §§goto(addr91);
                                    }
                                 }
                                 var _loc3_:Number = param1.x;
                                 var _loc4_:Number = param1.y;
                                 var _loc5_:int;
                                 §§push(_loc5_ = this.§13§.length);
                                 if(_loc9_ || this)
                                 {
                                    §§push(int(§§pop() - 1));
                                 }
                                 var _loc6_:* = §§pop();
                                 addr205:
                                 if(_loc6_ >= 0)
                                 {
                                    _loc7_ = this.§13§[_loc6_];
                                    if(!_loc10_)
                                    {
                                       §6!5§(_loc7_,§6!<§);
                                       if(_loc9_)
                                       {
                                          transformCoords(§6!<§,_loc3_,_loc4_,§<Z§);
                                       }
                                    }
                                    if(_loc8_ = _loc7_.hitTest(§<Z§,param2))
                                    {
                                       if(!(_loc9_ || param1))
                                       {
                                          §§goto(addr205);
                                       }
                                       return _loc8_;
                                    }
                                    §§push(_loc6_);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc6_ = §§pop();
                                    §§goto(addr205);
                                 }
                                 return null;
                              }
                              continue loop0;
                           }
                        }
                        addr113:
                     }
                     §§goto(addr40);
                  }
               }
               §§goto(addr113);
            }
         }
         §§goto(addr114);
      }
      
      override public function render(param1:§'X§, param2:Number) : void
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
               if(!_loc6_)
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
         var _loc3_:int = this.§13§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§13§[_loc4_]).alpha);
            if(_loc7_)
            {
               §§push(0);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_ || param2)
                  {
                     §§push(!§§pop());
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && param1))
                              {
                                 addr86:
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop20:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr233:
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
                                                      §§push(_loc5_.scaleX);
                                                      addr189:
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr190:
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_.scaleY);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc6_ && _loc3_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc7_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                          }
                                                                                          addr167:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ && this)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       loop16:
                                                                                       while(!(_loc6_ && param1))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_++;
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr96:
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.§7!]§();
                                                                                                         loop12:
                                                                                                         while(_loc7_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.§6!W§(_loc5_);
                                                                                                               addr145:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_.render(param1,param2);
                                                                                                                  addr133:
                                                                                                                  while(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                                  §§goto(addr96);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      addr181:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§1P§();
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr145);
                                                                                             }
                                                                                             §§goto(addr133);
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              addr216:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr181);
                                                                              }
                                                                              §§goto(addr90);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr206:
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr206);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr185);
                              }
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr86);
               }
               §§goto(addr190);
            }
            §§goto(addr189);
         }
      }
      
      public function §>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(_loc2_);
               
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
         if(!_loc5_)
         {
            this.§?@§(this,param1.type,_loc2_);
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
               loop1:
               while(_loc5_ && _loc3_)
               {
                  while(true)
                  {
                     _loc4_++;
                     continue loop1;
                  }
               }
               continue;
            }
            _loc2_[_loc4_].dispatchEvent(param1);
            §§goto(addr91);
         }
      }
      
      private function §?@§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!_loc8_)
         {
            if(param1.hasEventListener(param2))
            {
               if(!(_loc8_ && param2))
               {
                  addr42:
                  param3.push(param1);
                  if(_loc9_)
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr59);
               }
            }
            addr47:
            if(_loc4_)
            {
               addr59:
               §§push(int((_loc5_ = _loc4_.§13§).length));
               if(!(_loc8_ && param1))
               {
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     addr112:
                     _loc7_ = 0;
                  }
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc7_ < _loc6_)
                        {
                           this.§?@§(_loc5_[_loc7_],param2,param3);
                           while(true)
                           {
                              _loc7_++;
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(_loc9_ || param2)
                              {
                                 if(false)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr117);
                     }
                  }
               }
               §§goto(addr112);
            }
            addr117:
            return;
         }
         §§goto(addr42);
      }
      
      public function get numChildren() : int
      {
         return this.§13§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_)
         {
            this.§`!G§ = param1;
         }
         for each(_loc2_ in this.§13§)
         {
            if(!_loc6_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§`!G§;
      }
   }
}
