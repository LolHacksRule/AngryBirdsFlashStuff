package §!!U§
{
   import §&#H§.§%"H§;
   import §;8§.§["T§;
   import §=]§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §#!O§:Matrix;
      
      private static var §1!k§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §#!O§ = new Matrix();
         }
         do
         {
            §1!k§ = new Point();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var §=$§:Vector.<DisplayObject>;
      
      private var §]H§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(_loc1_ || _loc1_)
                  {
                     break;
                  }
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§=$§ = new Vector.<DisplayObject>(0);
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr28);
            }
            throw new §["T§();
         }
         §§goto(addr54);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§=$§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_ || _loc2_)
               {
                  super.dispose();
               }
               if(_loc4_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§=$§[_loc2_].dispose();
            }
            _loc2_++;
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
      
      public function §["`§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§=$§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_ || this)
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        return;
                     }
                     addr96:
                     addr62:
                     _loc3_++;
                     continue;
                  }
                  this.addChild(param1);
               }
               if(_loc4_ || _loc3_)
               {
                  return;
               }
               continue;
            }
            if(param1.z < this.§=$§[_loc3_].z)
            {
               break;
            }
            §§goto(addr62);
         }
         while(!_loc5_);
         
         this.addChildAt(param1,_loc3_);
         §§goto(addr96);
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr124:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr125:
                  addr107:
                  while(§§pop())
                  {
                     continue loop0;
                  }
                  if(!§§pop())
                  {
                     throw new RangeError("Invalid child index");
                  }
                  param1.§'H§();
                  this.§=$§.splice(param2,0,param1);
                  param1.§2#=§(this);
                  addr83:
                  if(!_loc3_)
                  {
                     §§goto(addr83);
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
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ != -1)
            {
               if(_loc4_ || param2)
               {
                  addr60:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr39:
                           §§pop();
                           if(_loc4_)
                           {
                              addr46:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc4_ || _loc3_)
                              {
                              }
                              §§goto(addr122);
                           }
                           _loc3_ = this.§=$§[param1];
                           if(!_loc5_)
                           {
                              _loc3_.§2#=§(null);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    this.§=$§.splice(param1,1);
                                    loop2:
                                    while(param2)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       addr94:
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             break loop2;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr39);
               }
            }
            §§goto(addr46);
         }
         addr122:
      }
      
      public function §1!r§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc6_ && param2))
            {
               §§push(0);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!(_loc6_ && this))
                           {
                              §§push(param2);
                              if(!(_loc6_ && param2))
                              {
                                 addr70:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!_loc6_)
                                    {
                                       addr73:
                                       §§push(this.numChildren);
                                       if(_loc5_ || this)
                                       {
                                          addr82:
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_ && param3)
                                          {
                                          }
                                          §§goto(addr96);
                                       }
                                       param2 = §§pop();
                                       addr92:
                                       §§push(param1);
                                       if(!_loc6_)
                                       {
                                          addr96:
                                          var _loc4_:* = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(_loc6_)
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
                                          return;
                                          §§push(int(§§pop()));
                                       }
                                       §§goto(addr96);
                                    }
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr92);
                        }
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr82);
         }
         §§goto(addr73);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr82:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              return this.§=$§[param1];
                           }
                           if(!_loc2_)
                           {
                              addr69:
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr58:
                     }
                  }
                  addr87:
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
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§=$§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc5_ && param1))
               {
                  return null;
               }
               loop2:
               while(!(_loc4_ || param1))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr51:
            }
            else if(this.§=$§[_loc3_].name == param1)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr85);
            }
            while(true)
            {
               _loc3_++;
               §§goto(addr51);
            }
         }
         return this.§=$§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§=$§.indexOf(param1);
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
         if(_loc5_ || _loc3_)
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§=$§.splice(_loc3_,1);
                  do
                  {
                     this.§=$§.splice(param2,0,param1);
                  }
                  while(!_loc5_);
                  
                  if(!(_loc4_ && param2))
                  {
                     break;
                  }
                  addr94:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc4_ && _loc3_))
               {
                  return;
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr94);
      }
      
      public function §=#8§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(_loc6_ || this)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr111:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr112:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr114:
                     }
                     else
                     {
                        loop5:
                        while(§§pop())
                        {
                           if(!_loc6_)
                           {
                              while(true)
                              {
                                 break loop5;
                              }
                           }
                           else
                           {
                              addr108:
                              addr70:
                           }
                           if(!_loc5_)
                           {
                              throw new ArgumentError("Not a child of this container");
                           }
                           continue loop0;
                           return;
                        }
                        this.§%!g§(_loc3_,_loc4_);
                        if(!(_loc6_ || param1))
                        {
                           §§goto(addr108);
                        }
                        §§goto(addr70);
                        addr88:
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function §%!g§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && param1))
         {
            this.§=$§[param1] = _loc4_;
            do
            {
               this.§=$§[param2] = _loc3_;
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      public function §9e§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=$§ = this.§=$§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!(_loc6_ && this))
         {
            if(param1 == this)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:int = this.§=$§.length;
            var _loc3_:int = 0;
            loop0:
            while(_loc3_ < _loc2_)
            {
               §§push(Boolean(_loc5_ = (_loc4_ = this.§=$§[_loc3_]) as DisplayObjectContainer));
               if(_loc7_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        §§pop();
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc5_.contains(param1));
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              §§goto(addr143);
                           }
                           addr132:
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr132);
                  }
                  addr143:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(_loc4_ != param1)
                        {
                           while(true)
                           {
                              _loc3_++;
                              if(!_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    break loop3;
                                 }
                                 if(false)
                                 {
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              if(_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(true);
                                 }
                                 else
                                 {
                                    addr144:
                                 }
                                 continue;
                                 break;
                              }
                              continue loop3;
                           }
                           return §§pop();
                        }
                        §§push(true);
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           continue;
                        }
                        §§goto(addr145);
                     }
                  }
                  addr123:
                  return §§pop();
               }
               §§goto(addr145);
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
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         if(!_loc11_)
         {
            if(param2 == null)
            {
               addr31:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§=$§.length;
            if(_loc10_)
            {
               §§push(_loc3_);
               if(!(_loc11_ && param2))
               {
                  §§push(0);
                  if(_loc10_ || this)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §^">§(param1,§#!O§);
                           if(_loc10_ || this)
                           {
                              transformCoords(§#!O§,0,0,§1!k§);
                              if(!_loc11_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    param2.x = §1!k§.x;
                                    if(_loc10_)
                                    {
                                       if(_loc11_)
                                       {
                                          continue loop0;
                                       }
                                       param2.y = §1!k§.y;
                                       if(!_loc11_)
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                param2.width = param2.height = 0;
                                                if(_loc10_ || this)
                                                {
                                                   return param2;
                                                }
                                             }
                                             continue loop1;
                                          }
                                          loop51:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!_loc11_)
                                             {
                                                addr415:
                                                _loc8_ = §§pop();
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_ || param1)
                                                      {
                                                         break loop0;
                                                      }
                                                      break loop1;
                                                   }
                                                   loop10:
                                                   while(!(_loc11_ && param1))
                                                   {
                                                      §§push(-Number.MAX_VALUE);
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            addr447:
                                                            _loc7_ = Number(§§pop());
                                                            while(true)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop51;
                                                               }
                                                               addr486:
                                                               while(true)
                                                               {
                                                                  §§push(Number(Number.MAX_VALUE));
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               §§goto(addr496);
                                                            }
                                                            addr448:
                                                            addr495:
                                                         }
                                                         loop9:
                                                         while(_loc10_ || param1)
                                                         {
                                                            addr462:
                                                            if(_loc10_ || param1)
                                                            {
                                                               _loc6_ = §§pop();
                                                               continue loop10;
                                                            }
                                                            addr482:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               break loop9;
                                                               §§goto(addr462);
                                                            }
                                                         }
                                                         while(!_loc11_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            §§goto(addr486);
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                      §§goto(addr447);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr482);
                                                   }
                                                }
                                                §§goto(addr448);
                                             }
                                             else
                                             {
                                                §§goto(addr495);
                                             }
                                          }
                                          addr50:
                                       }
                                       §§goto(addr527);
                                    }
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr487);
                              }
                           }
                           break;
                        }
                        loop13:
                        while(true)
                        {
                           if(_loc8_ >= _loc3_)
                           {
                              loop14:
                              while(_loc10_ || param2)
                              {
                                 param2.x = _loc4_;
                                 loop15:
                                 while(true)
                                 {
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          param2.y = _loc6_;
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc11_ && param2))
                                             {
                                                if(!(_loc11_ && param1))
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      param2.width = _loc5_ - _loc4_;
                                                      while(true)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            if(!(_loc10_ || param2))
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop16;
                                                      }
                                                      loop41:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() > param2.right);
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr373:
                                                                  §§push(Number(param2.right));
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr374:
                                                                     while(!_loc11_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        break loop14;
                                                                     }
                                                                     addr398:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        continue loop41;
                                                                     }
                                                                  }
                                                                  addr373:
                                                               }
                                                               addr367:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  addr368:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            addr366:
                                                         }
                                                         addr369:
                                                         while(true)
                                                         {
                                                            §§goto(addr373);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr392:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr393:
                                                         while(true)
                                                         {
                                                            addr397:
                                                            while(true)
                                                            {
                                                               §§goto(addr398);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr391:
                                                }
                                                break;
                                             }
                                             continue loop14;
                                          }
                                          loop40:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             loop36:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc10_)
                                                {
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      if(_loc10_ || param2)
                                                      {
                                                         loop28:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop29:
                                                            while(true)
                                                            {
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() > param2.bottom);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§push(Number(param2.bottom));
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                             if(!(_loc10_ || _loc3_))
                                                                                             {
                                                                                                continue loop36;
                                                                                             }
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr296:
                                                                                                   loop31:
                                                                                                   while(!(_loc11_ && param2))
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc8_++;
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         addr410:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc11_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() < param2.x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(Number(param2.x));
                                                                                                                     break loop29;
                                                                                                                  }
                                                                                                                  §§goto(addr391);
                                                                                                               }
                                                                                                               addr390:
                                                                                                            }
                                                                                                            break loop31;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               while(!(_loc11_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                               addr246:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  break loop33;
                                                                                                               }
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                         }
                                                                                                         while(!_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() < param2.y);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop40;
                                                                                                               }
                                                                                                               §§push(Number(param2.y));
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr368);
                                                                                                         addr243:
                                                                                                         addr307:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr392);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr243);
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     addr351:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                         addr335:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr374);
                                                }
                                                §§goto(addr335);
                                             }
                                             §§goto(addr393);
                                          }
                                       }
                                       §§goto(addr351);
                                    }
                                    break;
                                    if(_loc10_ || param1)
                                    {
                                       return param2;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc10_ || this)
                                    {
                                       §§goto(addr219);
                                    }
                                    §§goto(addr304);
                                 }
                                 continue loop13;
                              }
                              while(true)
                              {
                                 §§goto(addr307);
                              }
                           }
                           else
                           {
                              this.§=$§[_loc8_].getBounds(param1,param2);
                           }
                           §§goto(addr410);
                        }
                     }
                     §§goto(addr494);
                  }
                  addr496:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc11_ && _loc3_)
                        {
                           break loop1;
                        }
                        if(!_loc11_)
                        {
                           break;
                        }
                        addr527:
                        while(true)
                        {
                           addr494:
                           while(true)
                           {
                              continue loop49;
                           }
                        }
                     }
                     addr487:
                     while(true)
                     {
                        §§push(Number(Number.MAX_VALUE));
                        addr491:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           break loop10;
                        }
                     }
                  }
                  return this.§=$§[0].getBounds(param1,param2);
               }
               §§goto(addr447);
            }
            §§goto(addr50);
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
               if(!(_loc9_ && param2))
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!_loc9_)
                           {
                              if(!_loc9_)
                              {
                                 §§goto(addr51);
                              }
                           }
                           else
                           {
                              if(!(_loc9_ && param2))
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
                                    §§push(!§3'§);
                                    if(!(_loc10_ || param1))
                                    {
                                       continue;
                                    }
                                    if(_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop2;
                                    }
                                    addr104:
                                    while(true)
                                    {
                                       §§pop();
                                       addr105:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(!visible);
                                 continue loop0;
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr105);
                        }
                        var _loc3_:Number = param1.x;
                        var _loc4_:Number = param1.y;
                        var _loc5_:int;
                        §§push(_loc5_ = this.§=$§.length);
                        if(!_loc9_)
                        {
                           §§push(int(§§pop() - 1));
                        }
                        var _loc6_:* = §§pop();
                        addr196:
                        if(_loc6_ >= 0)
                        {
                           _loc7_ = this.§=$§[_loc6_];
                           if(!(_loc9_ && this))
                           {
                              §^">§(_loc7_,§#!O§);
                              if(!(_loc9_ && _loc3_))
                              {
                                 transformCoords(§#!O§,_loc3_,_loc4_,§1!k§);
                              }
                           }
                           if(_loc8_ = _loc7_.hitTest(§1!k§,param2))
                           {
                              if(!(_loc10_ || param1))
                              {
                                 §§goto(addr196);
                              }
                              return _loc8_;
                           }
                           §§push(_loc6_);
                           if(!(_loc9_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                           §§goto(addr196);
                        }
                        return null;
                        addr45:
                     }
                     addr72:
                     §§push(§§pop());
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                     if(!§§pop())
                     {
                        §§goto(addr81);
                     }
                     §§goto(addr45);
                  }
               }
               §§goto(addr104);
            }
         }
         addr51:
         return null;
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(!(_loc7_ && param2))
         {
            §§push(param2);
            if(!_loc7_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc6_)
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
         var _loc3_:int = this.§=$§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§=$§[_loc4_]).alpha);
            if(!(_loc7_ && _loc3_))
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc7_ && this))
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param1))
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop18:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr232:
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr233:
                                          loop16:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr235:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr200:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr201:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr202:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               addr204:
                                                               §§push(!§§pop());
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ || param1))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                continue loop16;
                                             }
                                             if(§§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr218:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleY);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(0);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  addr183:
                                                                  §§push(!§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr200);
                                                      continue loop17;
                                                   }
                                                }
                                                addr217:
                                             }
                                             addr193:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      param1.§?#a§();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         param1.§!]§(_loc5_);
                                                         addr151:
                                                         loop1:
                                                         while(true)
                                                         {
                                                            _loc5_.render(param1,param2);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  param1.§"!0§();
                                                                  while(_loc6_ || param1)
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc4_++;
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr218);
                                                                        }
                                                                        continue;
                                                                        addr94:
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr94);
                                             }
                                          }
                                       }
                                    }
                                    addr231:
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr231);
               }
               §§goto(addr201);
            }
            §§goto(addr200);
            if(true)
            {
               continue;
            }
            §§goto(addr119);
         }
      }
      
      public function § h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1.bubbles)
            {
               loop0:
               while(true)
               {
                  this.dispatchEventOnChildren(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  addr65:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc2_ && param1))
               {
                  return;
               }
            }
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         §§goto(addr65);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc5_)
         {
            this.§4"]§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!_loc6_)
               {
                  break;
               }
               loop1:
               while(!(_loc5_ || _loc3_))
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
            §§goto(addr85);
         }
      }
      
      private function §4"]§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(!_loc9_)
               {
                  param3.push(param1);
                  if(!_loc9_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr53);
               }
            }
         }
         addr41:
         if(_loc4_)
         {
            addr53:
            §§push(int((_loc5_ = _loc4_.§=$§).length));
            if(!_loc9_)
            {
               _loc6_ = §§pop();
               if(!_loc9_)
               {
                  addr101:
                  _loc7_ = 0;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc7_ < _loc6_)
                     {
                        this.§4"]§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(_loc9_)
                           {
                              break;
                           }
                           if(!(_loc9_ && param2))
                           {
                              if(false)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr106);
                  }
               }
            }
            §§goto(addr101);
         }
         addr106:
      }
      
      public function get numChildren() : int
      {
         return this.§=$§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc6_ && param1))
         {
            this.§]H§ = param1;
         }
         for each(_loc2_ in this.§=$§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§]H§;
      }
   }
}
