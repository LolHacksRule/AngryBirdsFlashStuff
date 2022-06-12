package §1!$§
{
   import §&!-§.§+#§;
   import §'6§.§'"3§;
   import §1V§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §@V§:Matrix;
      
      private static var §5n§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@V§ = new Matrix();
         }
         do
         {
            §5n§ = new Point();
         }
         while(!(_loc1_ || DisplayObjectContainer));
         
      }
      
      private var §%9§:Vector.<DisplayObject>;
      
      private var §%!6§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§%9§ = new Vector.<DisplayObject>(0);
               }
               while(_loc2_);
               
               if(_loc2_ && _loc1_)
               {
                  break;
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr73:
            }
            throw new §+#§();
         }
         §§goto(addr73);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§%9§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  if(!_loc4_)
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
               if(_loc3_ || this)
               {
                  break;
               }
               continue;
            }
            this.§%9§[_loc2_].dispose();
            §§goto(addr76);
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
      
      public function §?!^§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§%9§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_)
               {
                  if(!_loc5_)
                  {
                     addr65:
                     _loc3_++;
                     continue;
                  }
                  this.addChild(param1);
               }
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  addr88:
                  this.addChildAt(param1,_loc3_);
                  break;
               }
               continue;
            }
            if(param1.z < this.§%9§[_loc3_].z)
            {
               §§goto(addr88);
            }
            §§goto(addr65);
         }
         while(!(_loc4_ && _loc2_));
         
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
                           while(_loc4_ || param1)
                           {
                              param1.removeFromParent();
                              while(true)
                              {
                                 this.§%9§.splice(param2,0,param1);
                                 addr61:
                                 if(_loc4_)
                                 {
                                    return;
                                    addr24:
                                 }
                              }
                              loop9:
                              while(true)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    continue loop6;
                                 }
                                 param1.dispatchEvent(new Event(Event.ADDED,true));
                                 while(stage)
                                 {
                                    param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                    if(!_loc3_)
                                    {
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr24);
                              }
                              §§goto(addr147);
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr136:
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
            param1.§&!w§(this);
            §§goto(addr87);
         }
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != -1)
            {
               if(!_loc4_)
               {
                  addr46:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(_loc5_ || this)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              addr67:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr123);
                           }
                           _loc3_ = this.§%9§[param1];
                           if(!_loc4_)
                           {
                              _loc3_.§&!w§(null);
                              loop0:
                              while(true)
                              {
                                 addr100:
                                 while(true)
                                 {
                                    this.§%9§.splice(param1,1);
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr98);
                        }
                     }
                  }
               }
            }
            §§goto(addr67);
         }
         addr123:
      }
      
      public function §8!,§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(param2);
            if(_loc6_ || param3)
            {
               §§push(0);
               if(_loc6_ || this)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc5_ && param2))
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(param2);
                              if(_loc6_ || this)
                              {
                                 addr81:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr84);
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr93);
                           }
                           addr84:
                           §§push(this.numChildren);
                           if(_loc6_ || this)
                           {
                              addr93:
                              §§push(int(§§pop() - 1));
                              if(_loc6_ || param1)
                              {
                                 param2 = §§pop();
                                 addr103:
                                 §§push(param1);
                                 if(_loc6_)
                                 {
                                    addr106:
                                    §§push(int(§§pop()));
                                 }
                              }
                           }
                           var _loc4_:* = §§pop();
                           while(true)
                           {
                              if(_loc4_ > param2)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(!(_loc6_ || this))
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
                              §§goto(addr149);
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr106);
         }
         §§goto(addr103);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr91:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return this.§%9§[param1];
                           }
                           if(_loc2_)
                           {
                              addr88:
                              break;
                           }
                           §§push(§§pop() < §§pop());
                           continue loop0;
                           if(!(_loc3_ && this))
                           {
                              continue;
                           }
                           addr101:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr101:
                        }
                        throw new RangeError("Invalid child index");
                        addr62:
                     }
                  }
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr88);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§%9§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ && param1)
               {
                  continue;
               }
               if(!(_loc5_ && _loc3_))
               {
                  return null;
               }
               addr90:
            }
            else if(this.§%9§[_loc3_].name == param1)
            {
               if(_loc4_ || _loc2_)
               {
                  break;
               }
               §§goto(addr90);
            }
            _loc3_++;
         }
         return this.§%9§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§%9§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§%9§.splice(_loc3_,1);
                  while(true)
                  {
                     if(_loc5_ || this)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        this.§%9§.splice(param2,0,param1);
                        if(!(_loc4_ && param2))
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
      
      public function §>!0§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(_loc6_)
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
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 break loop5;
                              }
                              return;
                           }
                           addr108:
                           addr108:
                           addr60:
                           if(_loc6_)
                           {
                              throw new ArgumentError("Not a child of this container");
                           }
                           continue loop0;
                        }
                        this.§7Z§(_loc3_,_loc4_);
                        if(!(_loc6_ || param2))
                        {
                           §§goto(addr108);
                        }
                        §§goto(addr60);
                        addr98:
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function §7Z§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && this))
         {
            this.§%9§[param1] = _loc4_;
         }
         do
         {
            this.§%9§[param2] = _loc3_;
         }
         while(_loc6_);
         
      }
      
      public function §,!3§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%9§ = this.§%9§.sort(param1);
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
                  return true;
               }
            }
         }
         var _loc2_:int = this.§%9§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            §§push(Boolean(_loc5_ = (_loc4_ = this.§%9§[_loc3_]) as DisplayObjectContainer));
            if(!(_loc7_ && param1))
            {
               if(§§pop())
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc5_.contains(param1));
                        if(_loc6_ || param1)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              addr127:
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc4_ == param1)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(true);
                                          if(_loc6_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr129);
                                       }
                                       addr128:
                                       while(_loc6_)
                                       {
                                       }
                                       addr129:
                                       addr129:
                                       return §§pop();
                                       §§push(true);
                                       addr111:
                                       §§goto(addr129);
                                    }
                                    while(true)
                                    {
                                       _loc3_++;
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr111);
                                    }
                                    if(!_loc7_)
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
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr127);
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
         if(_loc11_ || this)
         {
            if(param2 == null)
            {
               addr37:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§%9§.length;
            if(!_loc10_)
            {
               §§push(_loc3_);
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc10_)
                        {
                           §&!e§(param1,§@V§);
                           if(_loc11_ || _loc3_)
                           {
                              transformCoords(§@V§,0,0,§5n§);
                              if(!_loc10_)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    param2.x = §5n§.x;
                                    if(_loc10_)
                                    {
                                       return param2;
                                    }
                                    addr113:
                                    param2.y = §5n§.y;
                                    if(!(_loc10_ && param1))
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       param2.width = param2.height = 0;
                                       if(!_loc10_)
                                       {
                                          §§goto(addr113);
                                       }
                                       else
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc11_)
                                             {
                                                while(true)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(!(_loc11_ || param1))
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(_loc11_ || this)
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            break;
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr498:
                                                            while(true)
                                                            {
                                                               addr482:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr483:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     addr484:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        addr475:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(Number.MAX_VALUE));
                                                                           addr479:
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(-Number.MAX_VALUE);
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         loop4:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr474:
                                                            while(true)
                                                            {
                                                               §§push(Number(Number.MAX_VALUE));
                                                               loop6:
                                                               while(_loc11_ || _loc3_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(-Number.MAX_VALUE);
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                      addr480:
                                                   }
                                                   while(_loc11_)
                                                   {
                                                      §§goto(addr450);
                                                   }
                                                   §§goto(addr474);
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc8_ >= _loc3_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         param2.x = _loc4_;
                                                         loop18:
                                                         while(!(_loc10_ && param1))
                                                         {
                                                            param2.y = _loc6_;
                                                            loop19:
                                                            for(; !(_loc10_ && this); while(_loc11_ || _loc3_)
                                                            {
                                                               param2.height = _loc7_ - _loc6_;
                                                               if(_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(_loc10_ && param1)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     break loop16;
                                                                  }
                                                                  addr371:
                                                                  §§goto(addr339);
                                                                  §§push(_loc4_);
                                                               }
                                                               §§goto(addr343);
                                                            })
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  param2.width = _loc5_ - _loc4_;
                                                                  continue;
                                                               }
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() > param2.bottom);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(Number(param2.bottom));
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    addr218:
                                                                                    loop22:
                                                                                    while(!(_loc10_ && this))
                                                                                    {
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr226:
                                                                                          loop26:
                                                                                          while(!(_loc10_ && this))
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                break loop19;
                                                                                             }
                                                                                             addr339:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() < param2.x);
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         addr347:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr358:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr343:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(Number(param2.x));
                                                                                                      if(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr358);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() > param2.right);
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_ && param2)
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     §§push(_loc5_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           break loop33;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc10_ && param2)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr312:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(Number(param2.right));
                                                                                                               }
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr335:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     addr336:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           §§push(§§pop() < param2.y);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(Number(param2.y));
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr274:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc10_ && this)
                                                                                                                                       {
                                                                                                                                          break loop26;
                                                                                                                                       }
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          addr294:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          break loop26;
                                                                                                                                       }
                                                                                                                                       §§goto(addr347);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr320);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                    while(!_loc11_)
                                                                                    {
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                    addr218:
                                                                                    addr292:
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§goto(addr207);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr218);
                                                                              }
                                                                              addr201:
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     _loc8_++;
                                                                     break loop18;
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.§%9§[_loc8_].getBounds(param1,param2);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                return param2;
                                                addr376:
                                             }
                                             §§goto(addr483);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 return this.§%9§[0].getBounds(param1,param2);
                              }
                              §§goto(addr480);
                           }
                           §§goto(addr450);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr482);
                  }
                  §§goto(addr484);
               }
               §§goto(addr376);
            }
            §§goto(addr498);
         }
         §§goto(addr37);
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
            if(_loc10_)
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
                           loop3:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(!visible);
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc10_)
                                    {
                                       continue loop7;
                                    }
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(§§pop())
                                       {
                                          if(_loc10_ || this)
                                          {
                                             return null;
                                          }
                                          if(_loc9_)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(!§`!u§);
                                                if(_loc10_ || this)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                addr81:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          if(_loc9_ && param2)
                                          {
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       var _loc3_:Number = param1.x;
                                       var _loc4_:Number = param1.y;
                                       var _loc5_:int;
                                       §§push(_loc5_ = this.§%9§.length);
                                       if(_loc10_ || param1)
                                       {
                                          §§push(int(§§pop() - 1));
                                       }
                                       var _loc6_:* = §§pop();
                                       addr191:
                                       if(_loc6_ >= 0)
                                       {
                                          _loc7_ = this.§%9§[_loc6_];
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §&!e§(_loc7_,§@V§);
                                             if(!_loc9_)
                                             {
                                                addr146:
                                                transformCoords(§@V§,_loc3_,_loc4_,§5n§);
                                             }
                                             if(_loc8_ = _loc7_.hitTest(§5n§,param2))
                                             {
                                                if(!(_loc10_ || _loc3_))
                                                {
                                                   addr186:
                                                   §§push(_loc6_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc6_ = §§pop();
                                                   §§goto(addr191);
                                                }
                                                return _loc8_;
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr146);
                                       }
                                       return null;
                                       addr50:
                                    }
                                    §§goto(addr81);
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr99:
                     }
                     §§goto(addr50);
                  }
               }
            }
            §§goto(addr99);
         }
         §§goto(addr70);
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc6_ || param1)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc7_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§%9§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§%9§[_loc4_]).alpha);
            if(_loc6_ || param1)
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        addr74:
                        §§push(§§pop());
                        if(!(_loc7_ && param1))
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && param1))
                              {
                                 §§pop();
                                 if(_loc6_ || this)
                                 {
                                    §§push(_loc5_.visible);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop16:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr240:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.scaleX);
                                                         addr220:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr221:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               addr222:
                                                               while(!_loc7_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   addr239:
                                                }
                                                while(true)
                                                {
                                                   addr226:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.scaleY);
                                                                  if(!_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(_loc7_ && _loc3_)
                                                                                    {
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§?h§();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             param1.§@_§(_loc5_);
                                                                                             loop9:
                                                                                             while(!(_loc7_ && this))
                                                                                             {
                                                                                                _loc5_.render(param1,param2);
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§7""§();
                                                                                                      addr127:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      addr118:
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    addr190:
                                                                                    addr197:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       §§goto(addr118);
                                                                                    }
                                                                                    §§goto(addr127);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr222);
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     addr158:
                                                                  }
                                                                  §§goto(addr220);
                                                               }
                                                            }
                                                            addr230:
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr237:
                                       }
                                       §§goto(addr239);
                                    }
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr74);
               }
               §§goto(addr221);
            }
            §§goto(addr158);
         }
      }
      
      public function § U§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.bubbles)
            {
               if(_loc2_ || param1)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               addr74:
               while(true)
               {
               }
               addr74:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc2_ || param1)
               {
                  break;
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc5_)
         {
            this.§"!9§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
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
               _loc2_[_loc4_].dispatchEvent(param1);
            }
            _loc4_++;
         }
      }
      
      private function §"!9§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(_loc8_)
               {
                  addr51:
                  param3.push(param1);
                  if(!_loc9_)
                  {
                     §§goto(addr56);
                  }
                  §§goto(addr58);
               }
            }
            addr56:
            if(_loc4_)
            {
               addr58:
               §§push(int((_loc5_ = _loc4_.§%9§).length));
               if(!_loc9_)
               {
                  _loc6_ = §§pop();
                  if(_loc8_ || this)
                  {
                     addr106:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     while(_loc7_ < _loc6_)
                     {
                        this.§"!9§(_loc5_[_loc7_],param2,param3);
                        if(!_loc8_)
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
                     §§goto(addr111);
                  }
               }
               §§goto(addr106);
            }
            addr111:
            return;
         }
         §§goto(addr51);
      }
      
      public function get numChildren() : int
      {
         return this.§%9§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!_loc6_)
         {
            this.§%!6§ = param1;
         }
         for each(_loc2_ in this.§%9§)
         {
            if(_loc5_ || param1)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§%!6§;
      }
   }
}
