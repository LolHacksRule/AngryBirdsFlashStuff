package §9E§
{
   import §2N§.transformCoords;
   import §@4§.§<!I§;
   import §`5§.§?g§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §1=§:Matrix;
      
      private static var §8§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1=§ = new Matrix();
            do
            {
               §8§ = new Point();
            }
            while(_loc1_ && DisplayObjectContainer);
            
         }
      }
      
      private var §#!G§:Vector.<DisplayObject>;
      
      private var §'!k§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
               {
                  do
                  {
                     this.§#!G§ = new Vector.<DisplayObject>(0);
                  }
                  while(!_loc1_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            while(!(_loc1_ || this));
            
         }
         throw new §?g§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§#!G§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc4_ && _loc1_))
               {
                  if(_loc3_)
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
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               continue;
            }
            this.§#!G§[_loc2_].dispose();
            §§goto(addr81);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
               addr160:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr161:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           param1.§7;§();
                           if(_loc3_ && _loc3_)
                           {
                              continue loop0;
                           }
                           this.§#!G§.splice(param2,0,param1);
                           param1.§,!$§(this);
                           param1.dispatchEvent(new Event(Event.ADDED,true));
                           addr107:
                           addr99:
                           if(stage)
                           {
                              if(!_loc3_)
                              {
                                 param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                 if(_loc3_)
                                 {
                                    §§goto(addr107);
                                 }
                                 return;
                                 addr24:
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr24);
                        }
                        throw new RangeError("Invalid child index");
                        addr146:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr159:
         }
         while(true)
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               §§push(this.numChildren);
               if(!(_loc3_ && param2))
               {
                  §§push(§§pop() <= §§pop());
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc4_ || param2))
                  {
                     §§goto(addr161);
                  }
                  §§goto(addr146);
               }
               else
               {
                  §§goto(addr160);
               }
            }
            else
            {
               §§goto(addr159);
            }
            §§goto(addr160);
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
         if(_loc5_ || param2)
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
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr45:
                           §§pop();
                           if(_loc5_)
                           {
                              addr52:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc5_)
                              {
                                 addr55:
                                 _loc3_ = this.§#!G§[param1];
                                 if(_loc5_ || this)
                                 {
                                    _loc3_.dispatchEvent(new Event(Event.§@!!§,true));
                                    loop0:
                                    while(true)
                                    {
                                       if(stage)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                          }
                                          continue;
                                       }
                                       addr109:
                                       while(true)
                                       {
                                          _loc3_.§,!$§(null);
                                          addr113:
                                          loop3:
                                          while(!(_loc4_ && param2))
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(param2)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc3_.dispose();
                                                      }
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§#!G§.splice(param1,1);
                                                         continue loop6;
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             return;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr95);
                                 }
                              }
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr45);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr55);
      }
      
      public function §[!G§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§pop();
                           if(_loc6_ || param3)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr71:
                                 addr70:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr74:
                                       §§push(this.numChildren);
                                       if(!_loc5_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(!(_loc5_ && param2))
                                          {
                                             addr87:
                                             param2 = §§pop();
                                          }
                                          addr107:
                                          var _loc4_:int = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_ || this)
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
                                          addr106:
                                       }
                                       §§goto(addr106);
                                    }
                                 }
                                 §§push(param1);
                                 if(!(_loc5_ && param3))
                                 {
                                    §§goto(addr106);
                                 }
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr74);
                        }
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr70);
            }
            §§goto(addr87);
         }
         §§goto(addr74);
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
               addr81:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              return this.§#!G§[param1];
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr52:
                     }
                  }
                  addr91:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr80:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(this.numChildren);
               if(_loc2_ || this)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr81);
               }
               §§goto(addr52);
            }
            else
            {
               §§goto(addr80);
            }
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§#!G§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc4_)
               {
                  break;
               }
               loop1:
               while(!(_loc5_ || this))
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§#!G§[_loc3_].name == param1)
            {
               §§goto(addr76);
            }
            §§goto(addr57);
         }
         if(_loc5_)
         {
            return null;
         }
         addr76:
         return this.§#!G§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§#!G§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != -1)
            {
               do
               {
                  this.§#!G§.splice(_loc3_,1);
                  do
                  {
                     this.§#!G§.splice(param2,0,param1);
                  }
                  while(_loc4_);
                  
               }
               while(_loc4_ && _loc3_);
               
               if(_loc5_ || param1)
               {
                  return;
                  addr79:
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr79);
      }
      
      public function §7K§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(!(_loc5_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || this)
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
                  if(_loc6_ || param1)
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
                              while(true)
                              {
                              }
                              addr106:
                           }
                           while(true)
                           {
                              this.§%!O§(_loc3_,_loc4_);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr106);
                           }
                           if(!_loc5_)
                           {
                              return;
                           }
                           §§push(§§pop() == §§pop());
                           addr80:
                           continue loop0;
                           if(_loc6_ || this)
                           {
                              continue;
                           }
                           addr119:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr119:
                        }
                        addr102:
                        throw new ArgumentError("Not a child of this container");
                        addr98:
                     }
                  }
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §%!O§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_)
         {
            this.§#!G§[param1] = _loc4_;
         }
         do
         {
            this.§#!G§[param2] = _loc3_;
         }
         while(!_loc5_);
         
      }
      
      public function §^U§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§#!G§ = this.§#!G§.sort(param1);
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
         var _loc2_:int = this.§#!G§.length;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               return false;
            }
            §§push(Boolean(_loc5_ = (_loc4_ = this.§#!G§[_loc3_]) as DisplayObjectContainer));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc5_.contains(param1));
                        if(!_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                           loop6:
                           while(!§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(_loc4_ == param1)
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             break loop6;
                                          }
                                          §§push(true);
                                          if(!_loc6_)
                                          {
                                             break loop0;
                                          }
                                          if(!_loc7_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                       }
                                       addr120:
                                    }
                                    while(true)
                                    {
                                       _loc3_++;
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr120);
                                    }
                                    addr87:
                                    if(_loc6_ || this)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    addr130:
                                    while(true)
                                    {
                                       continue loop2;
                                       §§goto(addr87);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(true);
                           break;
                           addr127:
                        }
                        break;
                     }
                     §§goto(addr130);
                  }
                  break;
               }
               §§goto(addr127);
            }
            break;
         }
         return §§pop();
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
         if(!_loc11_)
         {
            if(param2 == null)
            {
               addr31:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§#!G§.length;
            if(!(_loc11_ && _loc3_))
            {
               §§push(_loc3_);
               if(!(_loc11_ && this))
               {
                  §§push(0);
                  if(_loc10_ || _loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc10_ || _loc3_)
                        {
                           §@P§(param1,§1=§);
                           loop0:
                           while(true)
                           {
                              transformCoords(§1=§,0,0,§8§);
                              if(!_loc11_)
                              {
                                 while(true)
                                 {
                                    param2.x = §8§.x;
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(_loc10_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Number.MAX_VALUE));
                                    loop3:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       loop4:
                                       while(_loc10_ || this)
                                       {
                                          §§push(-Number.MAX_VALUE);
                                          if(_loc10_)
                                          {
                                             if(_loc11_)
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc11_)
                                             {
                                                if(_loc10_ || param2)
                                                {
                                                   §§goto(addr444);
                                                }
                                                §§goto(addr479);
                                             }
                                             §§goto(addr497);
                                          }
                                          addr444:
                                          _loc7_ = Number(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(!(_loc11_ && this))
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(_loc10_ || param2)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§goto(addr498);
                                                         }
                                                         addr420:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                      addr508:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      addr510:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            break loop5;
                                                         }
                                                         break loop4;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          return this.§#!G§[0].getBounds(param1,param2);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr505);
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           loop9:
                           while(true)
                           {
                              if(_loc8_ >= _loc3_)
                              {
                                 loop10:
                                 while(!(_loc11_ && this))
                                 {
                                    if(_loc10_ || param2)
                                    {
                                       if(!_loc11_)
                                       {
                                          param2.x = _loc4_;
                                          loop11:
                                          for(; _loc10_ || this; if(!(_loc10_ || param1))
                                          {
                                             continue;
                                          },§§goto(addr166))
                                          {
                                             param2.y = _loc6_;
                                             loop12:
                                             while(true)
                                             {
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   if(!(_loc10_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   param2.width = _loc5_ - _loc4_;
                                                   while(true)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop12;
                                                      addr166:
                                                      param2.height = _loc7_ - _loc6_;
                                                      if(!(_loc10_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc11_ && param1)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc10_ || param1)
                                                      {
                                                         break loop9;
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr348:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr363:
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              if(!(_loc10_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 §§push(§§pop() > param2.bottom);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop11;
                                                                                       }
                                                                                       §§push(Number(param2.bottom));
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr303:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr304:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_ || param2)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                          }
                                                                                          addr303:
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             addr390:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr397:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr398:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            addr399:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               addr366:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > param2.right);
                                                                                                                  addr369:
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§push(Number(param2.right));
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr374:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr373:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < param2.x);
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           addr410:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr379:
                                                                                                                     addr333:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                     if(_loc10_ || param1)
                                                                                                                     {
                                                                                                                        addr340:
                                                                                                                        §§push(§§pop() < param2.y);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(Number(param2.y));
                                                                                                                                 break loop19;
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           §§goto(addr369);
                                                                                                                           §§goto(addr340);
                                                                                                                        }
                                                                                                                        continue loop17;
                                                                                                                        addr343:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                          }
                                                                                          addr389:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr397);
                                                                                          §§push(Number(param2.x));
                                                                                       }
                                                                                       §§goto(addr397);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr343);
                                                                              }
                                                                              §§goto(addr398);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   _loc8_++;
                                                   continue loop9;
                                                }
                                                §§goto(addr363);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§push(_loc7_);
                                                if(!_loc11_)
                                                {
                                                   if(_loc10_ || this)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(!(_loc11_ && param2))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || this)
                                                            {
                                                               addr295:
                                                               if(!_loc11_)
                                                               {
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr374);
                                                }
                                                §§goto(addr295);
                                             }
                                             §§goto(addr370);
                                          }
                                       }
                                       §§goto(addr389);
                                    }
                                    §§goto(addr399);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§goto(addr333);
                                    }
                                    §§goto(addr348);
                                 }
                              }
                              else
                              {
                                 this.§#!G§[_loc8_].getBounds(param1,param2);
                              }
                              §§goto(addr410);
                           }
                           return param2;
                        }
                        §§goto(addr506);
                     }
                     §§goto(addr508);
                  }
                  §§goto(addr510);
               }
               §§goto(addr420);
            }
            §§goto(addr66);
         }
         §§goto(addr31);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || param2)
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
                              while(true)
                              {
                                 §§push(!visible);
                                 loop6:
                                 while(!_loc9_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       while(!_loc9_)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(!§<V§);
                                             if(!(_loc10_ || param2))
                                             {
                                                break;
                                             }
                                             if(!(_loc9_ && this))
                                             {
                                                if(_loc10_ || _loc3_)
                                                {
                                                   while(§§pop())
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§goto(addr66);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr106:
                                                   var _loc3_:Number = param1.x;
                                                   var _loc4_:Number = param1.y;
                                                   var _loc5_:int;
                                                   §§push(_loc5_ = this.§#!G§.length);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§push(int(§§pop() - 1));
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   addr186:
                                                   if(_loc6_ >= 0)
                                                   {
                                                      _loc7_ = this.§#!G§[_loc6_];
                                                      if(!_loc9_)
                                                      {
                                                         §@P§(_loc7_,§1=§);
                                                         if(!_loc9_)
                                                         {
                                                            transformCoords(§1=§,_loc3_,_loc4_,§8§);
                                                         }
                                                      }
                                                      if(_loc8_ = _loc7_.hitTest(§8§,param2))
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr186);
                                                         }
                                                         return _loc8_;
                                                      }
                                                      §§push(_loc6_);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc6_ = §§pop();
                                                      §§goto(addr186);
                                                   }
                                                   return null;
                                                   addr55:
                                                }
                                                continue loop3;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         addr66:
         return null;
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_ || _loc3_)
         {
            §§push(param2);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§#!G§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§#!G§[_loc4_]).alpha);
            if(_loc7_ || param2)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_.visible);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       addr233:
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr221);
               }
               §§goto(addr142);
            }
            §§goto(addr134);
         }
      }
      
      public function §]!p§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1.bubbles)
            {
               if(!(_loc3_ && this))
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               addr59:
               while(true)
               {
               }
               addr59:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!(_loc6_ && _loc3_))
         {
            this.§+X§(this,param1.type,_loc2_);
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
               loop1:
               while(_loc6_ && param1)
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
            §§goto(addr90);
         }
      }
      
      private function §+X§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc8_)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc8_ || this)
               {
                  addr41:
                  param3.push(param1);
                  if(!(_loc9_ && param2))
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr63);
            }
            addr61:
            if(_loc4_)
            {
               addr63:
               §§push(int((_loc5_ = _loc4_.§#!G§).length));
               if(!(_loc9_ && param1))
               {
                  _loc6_ = §§pop();
                  if(!_loc9_)
                  {
                     addr121:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     while(_loc7_ < _loc6_)
                     {
                        this.§+X§(_loc5_[_loc7_],param2,param3);
                        if(!(_loc8_ || param2))
                        {
                           break;
                        }
                        _loc7_++;
                        if(_loc9_ && this)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr121);
            }
            addr126:
            return;
         }
         §§goto(addr41);
      }
      
      public function get numChildren() : int
      {
         return this.§#!G§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc5_ && this))
         {
            this.§'!k§ = param1;
         }
         for each(_loc2_ in this.§#!G§)
         {
            if(!_loc5_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§'!k§;
      }
   }
}
