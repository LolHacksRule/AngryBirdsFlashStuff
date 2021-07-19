package §3!J§
{
   import §!!!§.§<@§;
   import §90§.§?!^§;
   import §^!^§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §-!B§:Matrix;
      
      private static var §7>§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!B§ = new Matrix();
         }
         do
         {
            §7>§ = new Point();
         }
         while(!_loc2_);
         
      }
      
      private var §0!c§:Vector.<DisplayObject>;
      
      private var §[#§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§0!c§ = new Vector.<DisplayObject>(0);
               }
               while(!(_loc2_ || _loc2_));
               
               if(!(_loc2_ || this))
               {
                  break;
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               return;
               addr69:
            }
            throw new §?!^§();
         }
         §§goto(addr69);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§0!c§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     super.dispose();
                     break;
                  }
                  _loc2_++;
                  continue;
                  addr71:
               }
               break;
            }
            this.§0!c§[_loc2_].dispose();
            §§goto(addr71);
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
      
      public function §#!a§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§0!c§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!(_loc4_ || this))
                     {
                        return;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     this.addChild(param1);
                     addr68:
                     if(_loc4_ || this)
                     {
                        return;
                     }
                     addr76:
                     _loc3_++;
                     addr106:
                  }
                  continue;
               }
               §§goto(addr68);
            }
            else if(param1.z < this.§0!c§[_loc3_].z)
            {
               break;
            }
            §§goto(addr76);
         }
         this.addChildAt(param1,_loc3_);
         §§goto(addr106);
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr134:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr135:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              param1.§?H§();
                           }
                        }
                        throw new RangeError("Invalid child index");
                        addr110:
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
         while(true)
         {
            this.§0!c§.splice(param2,0,param1);
            for(; !(_loc4_ && _loc3_); param1.§ set§(this),if(_loc3_)
            {
               return;
            })
            {
               if(_loc3_ || _loc3_)
               {
                  continue;
               }
               §§goto(addr138);
            }
         }
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc4_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc3_ != -1)
            {
               if(!_loc4_)
               {
                  addr61:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§pop();
                           §§goto(addr127);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     throw new RangeError("Invalid child index");
                  }
                  if(!(_loc5_ && param1))
                  {
                     _loc3_ = this.§0!c§[param1];
                     if(_loc4_ || param1)
                     {
                        _loc3_.§ set§(null);
                        while(true)
                        {
                           addr101:
                           while(true)
                           {
                              this.§0!c§.splice(param1,1);
                           }
                        }
                        addr121:
                     }
                     while(param2)
                     {
                        if(_loc4_)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           _loc3_.dispose();
                        }
                        if(!_loc5_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr121);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr127);
               }
            }
            §§goto(addr65);
         }
         addr127:
         if(_loc4_ || param1)
         {
            addr65:
            §§push(param1 < this.numChildren);
         }
      }
      
      public function §8V§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc6_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(_loc5_)
                              {
                                 addr55:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc5_)
                                    {
                                       addr58:
                                       §§push(this.numChildren);
                                       if(!_loc6_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc5_)
                                          {
                                             addr66:
                                             param2 = §§pop();
                                             addr67:
                                             §§push(param1);
                                             if(_loc5_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
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
                                       }
                                    }
                                 }
                                 §§goto(addr67);
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr58);
                        }
                     }
                  }
               }
            }
            §§goto(addr55);
         }
         §§goto(addr66);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr104:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr105:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr79);
                           }
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr75:
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
         addr79:
         return this.§0!c§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§0!c§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               loop2:
               while(_loc4_ && _loc3_)
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr52:
            }
            else if(this.§0!c§[_loc3_].name == param1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return this.§0!c§[_loc3_];
               }
               §§goto(addr91);
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
         return this.§0!c§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ == -1)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr90);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr63);
                  }
               }
            }
            addr63:
            while(true)
            {
               this.§0!c§.splice(_loc3_,1);
               do
               {
                  this.§0!c§.splice(param2,0,param1);
               }
               while(_loc4_);
               
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr90:
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §]!,§(param1:DisplayObject, param2:DisplayObject) : void
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
               addr104:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(!§§pop())
                        {
                           do
                           {
                              this.§"!o§(_loc3_,_loc4_);
                              if(_loc6_)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    return;
                                 }
                                 break loop2;
                              }
                           }
                           while(!_loc5_);
                           
                           continue loop0;
                           addr85:
                           §§push(§§pop() == §§pop());
                           if(!(_loc5_ && this))
                           {
                              continue;
                           }
                           addr124:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr85);
                           }
                           addr124:
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr93:
                     }
                  }
                  §§goto(addr124);
               }
            }
            addr103:
         }
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && _loc3_))
            {
               §§push(-1);
               if(!_loc5_)
               {
                  §§goto(addr85);
               }
               else
               {
                  §§goto(addr104);
               }
            }
            else
            {
               §§goto(addr103);
            }
            §§goto(addr104);
            §§goto(addr124);
         }
      }
      
      public function §"!o§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && param1))
         {
            this.§0!c§[param1] = _loc4_;
         }
         do
         {
            this.§0!c§[param2] = _loc3_;
         }
         while(!_loc5_);
         
      }
      
      public function §?!K§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!c§ = this.§0!c§.sort(param1);
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
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:int = this.§0!c§.length;
            var _loc3_:int = 0;
            loop0:
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  return false;
               }
               §§push(Boolean(_loc5_ = (_loc4_ = this.§0!c§[_loc3_]) as DisplayObjectContainer));
               if(!(_loc6_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!_loc6_)
                           {
                              addr135:
                              §§push(Boolean(§§pop()));
                              if(!_loc7_)
                              {
                                 return §§pop();
                              }
                              addr148:
                              if(§§pop())
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(_loc4_ != param1)
                                 {
                                    do
                                    {
                                       _loc3_++;
                                    }
                                    while(_loc6_ && _loc2_);
                                    
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    break loop0;
                                 }
                                 §§push(true);
                                 if(!(_loc6_ && param1))
                                 {
                                    return §§pop();
                                 }
                              }
                              continue;
                           }
                           §§goto(addr148);
                        }
                        break;
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr148);
            }
            §§goto(addr135);
            §§push(true);
         }
         addr35:
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
         if(_loc10_ || _loc3_)
         {
            if(param2 == null)
            {
               addr36:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§0!c§.length;
            if(_loc10_)
            {
               §§push(_loc3_);
               if(!(_loc11_ && this))
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc11_)
                        {
                           §else §(param1,§-!B§);
                           if(!_loc11_)
                           {
                              transformCoords(§-!B§,0,0,§7>§);
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    param2.x = §7>§.x;
                                    loop2:
                                    while(true)
                                    {
                                       param2.y = §7>§.y;
                                       if(!_loc11_)
                                       {
                                          if(!_loc11_)
                                          {
                                             if(!_loc11_)
                                             {
                                                if(true)
                                                {
                                                   param2.width = param2.height = 0;
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      return param2;
                                                   }
                                                }
                                                continue loop1;
                                                break;
                                             }
                                             break loop1;
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc10_)
                                          {
                                             while(true)
                                             {
                                                _loc8_ = §§pop();
                                                if(_loc10_ || param2)
                                                {
                                                   if(_loc10_ || this)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         break loop2;
                                                      }
                                                      if(!(_loc10_ || this))
                                                      {
                                                         while(true)
                                                         {
                                                            addr461:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr462:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  §§goto(addr463);
                                                               }
                                                            }
                                                         }
                                                         addr492:
                                                      }
                                                      §§goto(addr454);
                                                   }
                                                   §§goto(addr453);
                                                }
                                                §§goto(addr420);
                                             }
                                             addr385:
                                          }
                                          §§goto(addr462);
                                       }
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc8_ >= _loc3_)
                                       {
                                          loop5:
                                          while(_loc10_)
                                          {
                                             param2.x = _loc4_;
                                             loop6:
                                             while(!(_loc11_ && param2))
                                             {
                                                if(!_loc11_)
                                                {
                                                   param2.y = _loc6_;
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc10_ || param2)
                                                         {
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               param2.width = _loc5_ - _loc4_;
                                                               while(true)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() < param2.y);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(!_loc11_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr294:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr310:
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc11_ && _loc3_))
                                                                                                         {
                                                                                                            addr260:
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(§§pop() > param2.bottom);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     addr360:
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           break loop6;
                                                                                                                        }
                                                                                                                        §§push(Number(param2.bottom));
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           addr280:
                                                                                                                           _loc7_ = §§pop();
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr280:
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                        break loop5;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              break loop23;
                                                                                                                           }
                                                                                                                           addr361:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr367:
                                                                                                                           §§push(Number(param2.x));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr368:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 break loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr367:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr360:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     addr363:
                                                                                                                     §§push(Number(param2.right));
                                                                                                                     loop17:
                                                                                                                     while(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr353:
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              continue loop33;
                                                                                                                              addr300:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr367);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§goto(addr280);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            addr260:
                                                                                                         }
                                                                                                         §§goto(addr361);
                                                                                                      }
                                                                                                      addr318:
                                                                                                   }
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr363);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                                 addr290:
                                                                              }
                                                                              §§push(Number(param2.y));
                                                                              §§goto(addr300);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr328);
                                                                           }
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr380:
                                                            addr357:
                                                            §§push(_loc4_);
                                                            while(true)
                                                            {
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   loop31:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr333:
                                                      while(true)
                                                      {
                                                         if(!(_loc11_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               §§goto(addr352);
                                                            }
                                                            addr341:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr360);
                                                         continue loop31;
                                                      }
                                                   }
                                                }
                                                §§goto(addr290);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc10_ || param1)
                                                {
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr294);
                                                }
                                                §§goto(addr260);
                                             }
                                          }
                                          _loc8_++;
                                          continue;
                                       }
                                       this.§0!c§[_loc8_].getBounds(param1,param2);
                                       §§goto(addr380);
                                    }
                                 }
                              }
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr459);
                     }
                     §§goto(addr461);
                  }
                  addr463:
                  while(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(Number(Number.MAX_VALUE));
                        loop41:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr459:
                           while(true)
                           {
                              §§push(-Number.MAX_VALUE);
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              continue loop41;
                           }
                        }
                     }
                  }
                  return this.§0!c§[0].getBounds(param1,param2);
               }
               §§goto(addr385);
            }
            §§goto(addr459);
         }
         §§goto(addr36);
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
            if(_loc10_ || _loc3_)
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
                              if(_loc10_)
                              {
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                    }
                                    loop7:
                                    while(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          return null;
                                       }
                                       if(_loc10_)
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop7;
                                             }
                                             continue loop4;
                                          }
                                          addr46:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(!§6!U§);
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc9_ && param2))
                                                {
                                                   continue loop7;
                                                }
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr60);
                                          }
                                          addr60:
                                          addr59:
                                       }
                                    }
                                    var _loc3_:Number = param1.x;
                                    var _loc4_:Number = param1.y;
                                    var _loc5_:int;
                                    §§push(_loc5_ = this.§0!c§.length);
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(int(§§pop() - 1));
                                    }
                                    var _loc6_:* = §§pop();
                                    while(_loc6_ >= 0)
                                    {
                                       _loc7_ = this.§0!c§[_loc6_];
                                       if(!_loc9_)
                                       {
                                          §else §(_loc7_,§-!B§);
                                          if(_loc10_ || _loc3_)
                                          {
                                             transformCoords(§-!B§,_loc3_,_loc4_,§7>§);
                                          }
                                       }
                                       if(_loc8_ = _loc7_.hitTest(§7>§,param2))
                                       {
                                          if(_loc10_ || this)
                                          {
                                             return _loc8_;
                                          }
                                       }
                                       §§push(_loc6_);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc6_ = §§pop();
                                    }
                                    return null;
                                    addr38:
                                 }
                                 continue loop1;
                              }
                              §§goto(addr59);
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr38);
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function render(param1:§<@§, param2:Number) : void
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
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§0!c§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§0!c§[_loc4_]).alpha);
            if(!(_loc6_ && param1))
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
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
                                    if(!_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_)
                                       {
                                          addr233:
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr235:
                                                loop16:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr197:
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr198:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr199:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               addr214:
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr215:
                                                                  addr189:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.scaleY);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           param1.§%!X§();
                                                                           addr193:
                                                                           while(true)
                                                                           {
                                                                              param1.§3'§(_loc5_);
                                                                              addr155:
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    _loc5_.render(param1,param2);
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       addr134:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§%!k§();
                                                                                          addr137:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                break loop8;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    addr150:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr215);
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        addr191:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_++;
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(_loc6_ && param2)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                              §§goto(addr193);
                                                                           }
                                                                           §§goto(addr155);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr235:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr189);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr235);
               }
               §§goto(addr198);
            }
            §§goto(addr197);
         }
      }
      
      public function §^O§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(!(_loc2_ || _loc3_));
               
               if(_loc2_)
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
            this.§0!+§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!_loc5_)
               {
                  continue;
               }
               if(!(_loc6_ && _loc2_))
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
      
      private function §0!+§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!(_loc9_ && param1))
         {
            if(param1.hasEventListener(param2))
            {
               if(!(_loc9_ && param3))
               {
                  param3.push(param1);
                  if(!_loc8_)
                  {
                  }
                  addr63:
                  §§push(int((_loc5_ = _loc4_.§0!c§).length));
                  if(_loc8_)
                  {
                     _loc6_ = §§pop();
                     if(_loc8_ || this)
                     {
                        addr116:
                        _loc7_ = 0;
                     }
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc7_ < _loc6_)
                           {
                              this.§0!+§(_loc5_[_loc7_],param2,param3);
                              while(true)
                              {
                                 _loc7_++;
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(_loc8_ || param1)
                                 {
                                    if(false)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr116);
               }
            }
            if(_loc4_)
            {
               §§goto(addr63);
            }
            addr121:
            return;
         }
         §§goto(addr63);
      }
      
      public function get numChildren() : int
      {
         return this.§0!c§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§[#§ = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§0!c§)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§[#§;
      }
   }
}
