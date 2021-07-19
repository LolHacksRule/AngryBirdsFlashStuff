package §]@§
{
   import §;! §.transformCoords;
   import §=!S§.§3[§;
   import §`C§.§'!N§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §1![§:Matrix;
      
      private static var §4S§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §1![§ = new Matrix();
         }
         do
         {
            §4S§ = new Point();
         }
         while(_loc2_);
         
      }
      
      private var §[q§:Vector.<DisplayObject>;
      
      private var §^!W§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§[q§ = new Vector.<DisplayObject>(0);
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                     break loop0;
                  }
               }
               while(_loc2_);
               
            }
         }
         throw new §3[§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§[q§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_ || _loc3_)
               {
                  if(!_loc3_)
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
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               continue;
            }
            this.§[q§[_loc2_].dispose();
            §§goto(addr82);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
                           loop3:
                           while(true)
                           {
                              param1.§;G§();
                              loop4:
                              while(true)
                              {
                                 this.§[q§.splice(param2,0,param1);
                                 while(true)
                                 {
                                    param1.§6l§(this);
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          param1.dispatchEvent(new Event(Event.ADDED,true));
                                          if(!stage)
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          addr82:
                                          if(!_loc4_)
                                          {
                                             addr84:
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                    §§goto(addr82);
                                 }
                              }
                           }
                        }
                        throw new RangeError("Invalid child index");
                        addr130:
                     }
                  }
                  addr152:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param1)
         {
            if(_loc3_ != -1)
            {
               if(_loc4_ || this)
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
            if(_loc5_ || this)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr45:
                           §§pop();
                           addr55:
                           if(!_loc4_)
                           {
                              addr51:
                              §§push(param1 < this.numChildren);
                           }
                           _loc3_ = this.§[q§[param1];
                           if(_loc5_ || _loc3_)
                           {
                              _loc3_.dispatchEvent(new Event(Event.§0'§,true));
                              loop0:
                              while(stage)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    _loc3_.dispatchEventOnChildren(new Event(Event.§?+§));
                                 }
                                 while(true)
                                 {
                                    break loop0;
                                    addr103:
                                    while(!(_loc4_ && this))
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          this.§[q§.splice(param1,1);
                                          loop4:
                                          while(param2)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   break loop3;
                                                }
                                                while(true)
                                                {
                                                   _loc3_.dispose();
                                                }
                                             }
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop4;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr148);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc3_.§6l§(null);
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr88);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr55);
                        }
                        addr148:
                        return;
                     }
                     throw new RangeError("Invalid child index");
                  }
                  §§goto(addr45);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr45);
      }
      
      public function §7i§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_ || param2)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(param2);
                              if(!(_loc5_ && param2))
                              {
                                 addr71:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_)
                                    {
                                       addr74:
                                       §§push(this.numChildren);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§goto(addr83);
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 §§goto(addr93);
                              }
                              addr83:
                              §§push(int(§§pop() - 1));
                              if(_loc6_ || param1)
                              {
                                 addr92:
                                 param2 = §§pop();
                                 addr93:
                                 §§push(param1);
                                 if(!(_loc5_ && param3))
                                 {
                                    addr101:
                                    §§push(int(§§pop()));
                                 }
                              }
                              var _loc4_:* = §§pop();
                              while(true)
                              {
                                 if(_loc4_ > param2)
                                 {
                                    if(!(_loc6_ || param3))
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
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
                           §§goto(addr74);
                        }
                     }
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr92);
         }
         §§goto(addr74);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr76:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc2_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              return this.§[q§[param1];
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr57:
                     }
                  }
                  addr96:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr75:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               §§push(this.numChildren);
               if(_loc2_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr76);
               }
               §§goto(addr57);
            }
            else
            {
               §§goto(addr75);
            }
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§[q§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc5_)
               {
                  break;
               }
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§[q§[_loc3_].name == param1)
            {
               §§goto(addr75);
            }
            §§goto(addr51);
         }
         if(!(_loc5_ && _loc2_))
         {
            return null;
         }
         addr75:
         return this.§[q§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§[q§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§[q§.splice(_loc3_,1);
                  do
                  {
                     this.§[q§.splice(param2,0,param1);
                  }
                  while(_loc4_ && _loc3_);
                  
                  if(_loc5_)
                  {
                     break;
                  }
                  addr89:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc4_)
               {
                  return;
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr89);
      }
      
      public function §'!K§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(!(_loc6_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr135:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr136:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || param2)
                              {
                                 break;
                              }
                              loop6:
                              while(_loc5_ || this)
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              continue loop0;
                              addr115:
                           }
                           while(true)
                           {
                              this.§;§(_loc3_,_loc4_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr115);
                           }
                           return;
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr102:
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
         §§goto(addr132);
      }
      
      public function §;§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc6_)
         {
            this.§[q§[param1] = _loc4_;
         }
         do
         {
            this.§[q§[param2] = _loc3_;
         }
         while(_loc5_ && param1);
         
      }
      
      public function §<!L§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[q§ = this.§[q§.sort(param1);
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
               if(_loc7_)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:int = this.§[q§.length;
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  return false;
               }
               §§push(Boolean(_loc5_ = (_loc4_ = this.§[q§[_loc3_]) as DisplayObjectContainer));
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc7_ || _loc2_)
                     {
                        addr80:
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc5_.contains(param1));
                           if(_loc7_)
                           {
                              addr113:
                              §§push(Boolean(§§pop()));
                              if(!_loc6_)
                              {
                                 addr116:
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr136:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc4_ == param1)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(true);
                                          if(_loc7_)
                                          {
                                             return §§pop();
                                          }
                                          addr135:
                                          addr135:
                                          return §§pop();
                                       }
                                       loop3:
                                       while(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             _loc3_++;
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          if(true)
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr84);
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr135);
                        }
                        break;
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr116);
               }
               §§goto(addr80);
            }
            §§goto(addr135);
            §§push(true);
         }
         addr30:
         return true;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         if(!(_loc10_ && param2))
         {
            if(param2 == null)
            {
               addr37:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§[q§.length;
            if(_loc11_)
            {
               §§push(_loc3_);
               if(_loc11_ || param2)
               {
                  §§push(0);
                  if(_loc11_ || param1)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc11_ || param1)
                        {
                           §=!;§(param1,§1![§);
                           if(!_loc10_)
                           {
                              transformCoords(§1![§,0,0,§4S§);
                              if(_loc11_)
                              {
                                 while(true)
                                 {
                                    param2.x = §4S§.x;
                                    if(_loc11_ || _loc3_)
                                    {
                                       param2.y = §4S§.y;
                                       if(_loc11_)
                                       {
                                          if(true)
                                          {
                                             param2.width = param2.height = 0;
                                             if(!(_loc10_ && param1))
                                             {
                                                return param2;
                                             }
                                          }
                                          continue;
                                          break;
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          if(_loc8_ >= _loc3_)
                                          {
                                             if(_loc11_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   param2.x = _loc4_;
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         param2.y = _loc6_;
                                                         loop27:
                                                         while(true)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc11_ || param2)
                                                               {
                                                                  §§goto(addr371);
                                                                  §§push(§§pop() < param2.x);
                                                               }
                                                               break;
                                                               addr391:
                                                            }
                                                            param2.width = _loc5_ - _loc4_;
                                                            loop28:
                                                            while(true)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && param2))
                                                                                       {
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr333:
                                                                                             addr228:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   break loop26;
                                                                                                }
                                                                                                addr350:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr351:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr372:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         addr373:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr278:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc8_++;
                                                                                                                                             break loop28;
                                                                                                                                          }
                                                                                                                                          addr290:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          addr344:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr330:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr349:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr333);
                                                                                                                                 }
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                              addr267:
                                                                                                                              §§push(Number(param2.bottom));
                                                                                                                              continue loop1;
                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr278);
                                                                                                                           }
                                                                                                                           addr277:
                                                                                                                        }
                                                                                                                        addr379:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           addr380:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              addr339:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() > param2.right);
                                                                                                                                 addr342:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr344);
                                                                                                                                       }
                                                                                                                                       addr343:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr349);
                                                                                                                                       §§push(Number(param2.right));
                                                                                                                                    }
                                                                                                                                    §§goto(addr349);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break loop26;
                                                                                                                     }
                                                                                                                     addr264:
                                                                                                                  }
                                                                                                                  §§goto(addr277);
                                                                                                               }
                                                                                                               §§goto(addr373);
                                                                                                            }
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§goto(addr278);
                                                                                                   }
                                                                                                   §§goto(addr380);
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                          }
                                                                                          addr332:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          break loop27;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop27;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr379);
                                                         }
                                                      }
                                                      break;
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         return param2;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(_loc11_ || this)
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(§§pop() > param2.bottom);
                                                            if(_loc11_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr228);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr267);
                                                               }
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   addr193:
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr193);
                                          }
                                          else
                                          {
                                             this.§[q§[_loc8_].getBounds(param1,param2);
                                          }
                                          §§goto(addr391);
                                       }
                                       addr413:
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr489:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr490:
                                       while(true)
                                       {
                                          §§push(1);
                                          §§goto(addr491);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr479);
                           }
                        }
                        §§goto(addr487);
                     }
                     §§goto(addr489);
                  }
                  addr491:
                  while(§§pop() != §§pop())
                  {
                     loop41:
                     while(true)
                     {
                        §§push(Number(Number.MAX_VALUE));
                        loop42:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr485:
                           addr487:
                           while(_loc10_)
                           {
                              continue loop34;
                           }
                           while(true)
                           {
                              §§push(-Number.MAX_VALUE);
                              loop43:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr471:
                                 addr479:
                                 loop38:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    addr472:
                                    while(true)
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          break loop38;
                                       }
                                       §§goto(addr485);
                                    }
                                    continue loop43;
                                 }
                                 loop35:
                                 while(true)
                                 {
                                    §§push(Number(Number.MAX_VALUE));
                                    loop36:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       while(!(_loc10_ && _loc3_))
                                       {
                                          if(!(_loc11_ || this))
                                          {
                                             continue loop41;
                                          }
                                          §§push(-Number.MAX_VALUE);
                                          if(_loc11_ || _loc3_)
                                          {
                                             continue loop36;
                                          }
                                          addr437:
                                          if(_loc10_ && param1)
                                          {
                                             continue loop42;
                                          }
                                          _loc7_ = §§pop();
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc11_)
                                             {
                                                continue;
                                             }
                                             continue loop47;
                                          }
                                       }
                                       continue loop35;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return this.§[q§[0].getBounds(param1,param2);
               }
               §§goto(addr490);
            }
            §§goto(addr445);
         }
         §§goto(addr37);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || _loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc9_)
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
                           addr100:
                           while(true)
                           {
                              addr65:
                              while(true)
                              {
                                 §§push(!visible);
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(!_loc9_)
                                             {
                                                §§pop();
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr99:
                     }
                     while(§§pop())
                     {
                        if(!(_loc9_ && param2))
                        {
                           if(_loc10_ || param2)
                           {
                              return null;
                           }
                           §§goto(addr100);
                        }
                        else
                        {
                           if(!_loc9_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr65);
                           }
                           §§goto(addr82);
                        }
                     }
                     var _loc3_:Number = param1.x;
                     var _loc4_:Number = param1.y;
                     var _loc5_:int;
                     §§push(_loc5_ = this.§[q§.length);
                     if(!_loc9_)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     var _loc6_:* = §§pop();
                     addr186:
                     if(_loc6_ >= 0)
                     {
                        _loc7_ = this.§[q§[_loc6_];
                        if(!_loc9_)
                        {
                           §=!;§(_loc7_,§1![§);
                           if(_loc10_ || _loc3_)
                           {
                              addr141:
                              transformCoords(§1![§,_loc3_,_loc4_,§4S§);
                           }
                           if(_loc8_ = _loc7_.hitTest(§4S§,param2))
                           {
                              if(!(_loc10_ || param2))
                              {
                                 §§goto(addr186);
                              }
                              return _loc8_;
                           }
                           §§push(_loc6_);
                           if(!(_loc9_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                           §§goto(addr186);
                        }
                        §§goto(addr141);
                     }
                     return null;
                  }
               }
               §§goto(addr99);
            }
         }
         §§goto(addr82);
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_ || this)
         {
            §§push(param2);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() * this.alpha);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§[q§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§[q§[_loc4_]).alpha);
            if(!(_loc6_ && param2))
            {
               §§push(0);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && param2))
                  {
                     §§push(!§§pop());
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§pop();
                                 if(_loc7_ || param2)
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr253:
                                       loop17:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr254:
                                          loop18:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop19:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr256:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr218:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr219:
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr220:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  continue loop19;
                                                               }
                                                               §§push(!§§pop());
                                                               continue loop22;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                addr229:
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue loop18;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr239:
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.scaleY);
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(!(_loc7_ || param1))
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           addr206:
                                                                           while(true)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        param1.§3!2§();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              param1.§]d§(_loc5_);
                                                                              loop4:
                                                                              for(; !(_loc6_ && this); if(_loc6_ && this)
                                                                              {
                                                                                 continue;
                                                                              },if(true)
                                                                              {
                                                                                 continue loop0;
                                                                              },§§goto(addr135))
                                                                              {
                                                                                 _loc5_.render(param1,param2);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§+!D§();
                                                                                       addr138:
                                                                                       while(true)
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                    }
                                                                                    addr109:
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                     }
                                                                     addr210:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_++;
                                                               if(_loc6_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr109);
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      addr238:
                                                   }
                                                   §§goto(addr206);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr253);
                        }
                        §§goto(addr254);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr238);
               }
               §§goto(addr219);
            }
            §§goto(addr218);
         }
      }
      
      public function §^%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1.bubbles)
            {
               if(_loc3_)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
            addr39:
            §§goto(addr50);
         }
         addr50:
         while(true)
         {
            this.dispatchEventOnChildren(param1);
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_)
         {
            this.§6_§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!_loc5_)
               {
                  break;
               }
               loop1:
               while(_loc5_ && this)
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
            §§goto(addr86);
         }
      }
      
      private function §6_§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(!(_loc9_ && param2))
               {
                  param3.push(param1);
                  if(_loc8_)
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr58);
            }
         }
         addr46:
         if(_loc4_)
         {
            addr58:
            §§push(int((_loc5_ = _loc4_.§[q§).length));
            if(!(_loc9_ && param1))
            {
               _loc6_ = §§pop();
               if(!(_loc9_ && param3))
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
                        this.§6_§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(_loc9_)
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
         return this.§[q§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!_loc6_)
         {
            this.§^!W§ = param1;
         }
         for each(_loc2_ in this.§[q§)
         {
            if(_loc5_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§^!W§;
      }
   }
}
