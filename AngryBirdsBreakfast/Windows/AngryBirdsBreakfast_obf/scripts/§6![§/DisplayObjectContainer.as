package §6![§
{
   import §'O§.§1,§;
   import §+o§.transformCoords;
   import §`!a§.§0L§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §7=§:Matrix;
      
      private static var §9!s§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §7=§ = new Matrix();
         }
         do
         {
            §9!s§ = new Point();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §1!+§:Vector.<DisplayObject>;
      
      private var §@=§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§1!+§ = new Vector.<DisplayObject>(0);
               }
               while(!(_loc2_ || _loc1_));
               
               if(!(_loc2_ || this))
               {
                  break;
               }
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
         throw new §1,§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§1!+§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_ || this)
               {
                  super.dispose();
               }
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               if(_loc3_ || _loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§1!+§[_loc2_].dispose();
            }
            _loc2_++;
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
      
      public function §6!K§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§1!+§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           this.addChild(param1);
                           return;
                           addr60:
                        }
                        return;
                        addr91:
                     }
                     addr61:
                     _loc3_++;
                  }
                  continue;
               }
               §§goto(addr60);
            }
            else if(param1.z < this.§1!+§[_loc3_].z)
            {
               break;
            }
            §§goto(addr61);
         }
         this.addChildAt(param1,_loc3_);
         §§goto(addr91);
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr129:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr130:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc4_ && param2))
                           {
                              while(true)
                              {
                                 param1.§"=§();
                              }
                              addr112:
                           }
                           while(_loc3_)
                           {
                              this.§1!+§.splice(param2,0,param1);
                              do
                              {
                                 param1.§,!z§(this);
                              }
                              while(!(_loc3_ || this));
                              
                              if(!(_loc4_ && param1))
                              {
                                 return;
                              }
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr103:
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
         §§goto(addr112);
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
         if(_loc4_ || param1)
         {
            if(_loc3_ != -1)
            {
               if(_loc4_)
               {
                  this.removeChildAt(_loc3_,param2);
               }
            }
         }
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param2)
                        {
                           §§pop();
                           addr74:
                           if(_loc4_)
                           {
                              addr55:
                              §§push(param1 < this.numChildren);
                           }
                           _loc3_ = this.§1!+§[param1];
                           if(!(_loc5_ && _loc3_))
                           {
                              _loc3_.§,!z§(null);
                              while(true)
                              {
                                 addr106:
                                 addr97:
                                 while(true)
                                 {
                                    this.§1!+§.splice(param1,1);
                                 }
                                 if(_loc5_ && param2)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr106);
                                 }
                                 addr132:
                                 return;
                                 addr127:
                              }
                           }
                           while(param2)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 _loc3_.dispose();
                              }
                              §§goto(addr97);
                           }
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
                     §§goto(addr74);
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr74);
      }
      
      public function §-8§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && param3))
            {
               §§push(0);
               if(_loc6_ || param3)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr42:
                           §§pop();
                           if(_loc6_ || param1)
                           {
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr56:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(this.numChildren);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_ || param1)
                                          {
                                          }
                                          addr97:
                                          var _loc4_:int = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc5_ && param2))
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
                                          addr96:
                                       }
                                       param2 = §§pop();
                                       addr93:
                                       §§push(param1);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr96);
                                       }
                                    }
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr42);
               }
               §§goto(addr56);
            }
            §§goto(addr97);
         }
         §§goto(addr93);
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
               addr88:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr89:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              return this.§1!+§[param1];
                              addr70:
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr59:
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
         §§goto(addr70);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§1!+§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  break;
               }
               addr80:
            }
            else if(this.§1!+§[_loc3_].name == param1)
            {
               if(_loc4_ || _loc3_)
               {
                  return this.§1!+§[_loc3_];
               }
               §§goto(addr80);
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§1!+§.indexOf(param1);
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
         if(!_loc5_)
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§1!+§.splice(_loc3_,1);
                  while(_loc4_ || this)
                  {
                     this.§1!+§.splice(param2,0,param1);
                     if(_loc4_ || param2)
                     {
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr88);
      }
      
      public function §1e§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc6_ || this)
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
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr94:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§"!r§(_loc3_,_loc4_);
                           }
                           while(!_loc6_);
                           
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(!(_loc5_ && param1))
                           {
                              return;
                              addr74:
                           }
                           continue loop0;
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr85:
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
         §§goto(addr74);
      }
      
      public function §"!r§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && _loc3_))
         {
            this.§1!+§[param1] = _loc4_;
         }
         do
         {
            this.§1!+§[param2] = _loc3_;
         }
         while(_loc6_ && _loc3_);
         
      }
      
      public function §[! §(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!+§ = this.§1!+§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!_loc7_)
         {
            if(param1 == this)
            {
               if(!_loc7_)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§1!+§.length;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc2_)
         {
            §§push(Boolean(_loc5_ = (_loc4_ = this.§1!+§[_loc3_]) as DisplayObjectContainer));
            if(_loc6_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc5_.contains(param1));
                        if(!_loc7_)
                        {
                           addr126:
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc4_ == param1)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(true);
                                          if(!_loc6_)
                                          {
                                             return §§pop();
                                          }
                                          addr139:
                                          if(_loc6_ || _loc2_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop5;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          addr83:
                                          while(true)
                                          {
                                             _loc3_++;
                                             if(!(_loc7_ && this))
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          if(_loc6_)
                                          {
                                             while(false)
                                             {
                                                continue loop2;
                                             }
                                             continue loop0;
                                             addr94:
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr83);
                                 }
                              }
                           }
                           addr137:
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr126);
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
         if(_loc10_ || this)
         {
            if(param2 == null)
            {
               addr36:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§1!+§.length;
            if(_loc10_ || param1)
            {
               §§push(_loc3_);
               if(_loc10_ || _loc3_)
               {
                  §§push(0);
                  if(!(_loc11_ && param2))
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §3!+§(param1,§7=§);
                           if(_loc10_ || this)
                           {
                              transformCoords(§7=§,0,0,§9!s§);
                              if(_loc10_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    param2.x = §9!s§.x;
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                    addr76:
                                    while(true)
                                    {
                                       param2.y = §9!s§.y;
                                       if(!_loc11_)
                                       {
                                          if(false)
                                          {
                                             continue loop1;
                                          }
                                          param2.width = param2.height = 0;
                                          if(_loc10_ || param2)
                                          {
                                             return param2;
                                          }
                                          loop45:
                                          while(true)
                                          {
                                             §§push(-Number.MAX_VALUE);
                                             if(!_loc11_)
                                             {
                                                addr442:
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   addr450:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr517:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            break loop1;
                                                         }
                                                         loop10:
                                                         for(; !(_loc11_ && param1); continue loop11)
                                                         {
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               if(_loc11_ && _loc3_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               continue loop45;
                                                            }
                                                            addr514:
                                                            while(true)
                                                            {
                                                               §§push(-Number.MAX_VALUE);
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr507:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     break loop10;
                                                                  }
                                                                  addr472:
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(Number.MAX_VALUE));
                                                            addr470:
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr472);
                                                               }
                                                               break;
                                                               §§goto(addr442);
                                                            }
                                                            §§goto(addr507);
                                                         }
                                                         addr425:
                                                         _loc8_ = §§pop();
                                                         if(!(_loc10_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc8_ >= _loc3_)
                                                               {
                                                                  loop14:
                                                                  while(!_loc11_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           param2.x = _loc4_;
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_ && param1)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 break;
                                                                                 addr415:
                                                                              }
                                                                              param2.y = _loc6_;
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       param2.width = _loc5_ - _loc4_;
                                                                                       while(_loc10_)
                                                                                       {
                                                                                          param2.height = _loc7_ - _loc6_;
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                       loop38:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() > param2.bottom);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc11_ && param2))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc10_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              addr297:
                                                                                                                              if(_loc10_ || param1)
                                                                                                                              {
                                                                                                                                 addr315:
                                                                                                                                 _loc7_ = Number(§§pop());
                                                                                                                                 loop37:
                                                                                                                                 while(!(_loc10_ || param2))
                                                                                                                                 {
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < param2.y);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop16;
                                                                                                                                                }
                                                                                                                                                addr398:
                                                                                                                                                §§push(Number(param2.y));
                                                                                                                                                while(_loc10_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr350:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc11_ && param2))
                                                                                                                                                         {
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         addr403:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            addr404:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               break loop26;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr338:
                                                                                                                                                      §§goto(addr315);
                                                                                                                                                      addr338:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr402:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr403);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr342);
                                                                                                                                                }
                                                                                                                                                addr342:
                                                                                                                                             }
                                                                                                                                             addr333:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr338);
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > param2.right);
                                                                                                                                       addr364:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                addr379:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc11_ && param1)
                                                                                                                                                   {
                                                                                                                                                      break loop15;
                                                                                                                                                   }
                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                   §§goto(addr387);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr365:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr378:
                                                                                                                                             §§push(Number(param2.right));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr379);
                                                                                                                                             }
                                                                                                                                             addr378:
                                                                                                                                          }
                                                                                                                                          §§goto(addr378);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr387:
                                                                                                                                 }
                                                                                                                                 _loc8_++;
                                                                                                                                 addr316:
                                                                                                                                 break loop14;
                                                                                                                                 addr316:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr378);
                                                                                                                                 §§goto(addr297);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        §§goto(addr315);
                                                                                                                     }
                                                                                                                     §§goto(addr350);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr310:
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§goto(addr315);
                                                                                                                        }
                                                                                                                        §§goto(addr402);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr378);
                                                                                                               }
                                                                                                               §§goto(addr316);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(Number(param2.bottom));
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§goto(addr310);
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr398);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               addr394:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(Number(param2.x));
                                                                                                            }
                                                                                                            §§goto(addr402);
                                                                                                         }
                                                                                                         addr393:
                                                                                                      }
                                                                                                      §§goto(addr364);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                }
                                                                                                addr335:
                                                                                             }
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr335);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr393);
                                                                           }
                                                                        }
                                                                        §§goto(addr394);
                                                                     }
                                                                     §§goto(addr365);
                                                                  }
                                                                  continue;
                                                               }
                                                               this.§1!+§[_loc8_].getBounds(param1,param2);
                                                               §§goto(addr415);
                                                            }
                                                            return param2;
                                                            addr435:
                                                         }
                                                         addr527:
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            while(true)
                                                            {
                                                               addr509:
                                                               while(true)
                                                               {
                                                                  §§push(Number(Number.MAX_VALUE));
                                                                  addr513:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr514);
                                                                  }
                                                               }
                                                               §§goto(addr527);
                                                            }
                                                            addr544:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               break loop11;
                                                            }
                                                            addr516:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         addr518:
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§goto(addr509);
                                                         }
                                                         break loop0;
                                                      }
                                                      addr517:
                                                   }
                                                   §§goto(addr513);
                                                }
                                                §§goto(addr470);
                                             }
                                             §§goto(addr450);
                                          }
                                       }
                                       break loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!(_loc11_ && param2))
                                    {
                                       §§goto(addr425);
                                    }
                                    §§goto(addr517);
                                 }
                                 §§goto(addr435);
                              }
                              §§goto(addr544);
                           }
                           break;
                        }
                        return this.§1!+§[0].getBounds(param1,param2);
                     }
                     §§goto(addr516);
                  }
                  §§goto(addr518);
               }
               §§goto(addr517);
            }
            §§goto(addr76);
         }
         §§goto(addr36);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc9_ && param1))
         {
            §§push(param2);
            if(!(_loc9_ && param1))
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
                     while(true)
                     {
                        §§pop();
                        addr100:
                        while(true)
                        {
                           addr53:
                           while(true)
                           {
                              §§push(!visible);
                              if(_loc9_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop());
                              if(_loc9_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                     addr99:
                  }
                  loop7:
                  while(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr42:
                        if(!(_loc9_ && this))
                        {
                           return null;
                        }
                        addr70:
                        while(true)
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(!§!!9§);
                              if(!_loc10_)
                              {
                                 break;
                              }
                              if(_loc10_)
                              {
                                 continue loop7;
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr100);
                           §§goto(addr42);
                        }
                        continue loop0;
                     }
                     addr51:
                     while(true)
                     {
                        if(true)
                        {
                           break loop7;
                        }
                     }
                     §§goto(addr53);
                  }
                  var _loc3_:Number = param1.x;
                  var _loc4_:Number = param1.y;
                  var _loc5_:int;
                  §§push(_loc5_ = this.§1!+§.length);
                  if(!_loc9_)
                  {
                     §§push(int(§§pop() - 1));
                  }
                  var _loc6_:* = §§pop();
                  while(_loc6_ >= 0)
                  {
                     _loc7_ = this.§1!+§[_loc6_];
                     if(_loc10_)
                     {
                        §3!+§(_loc7_,§7=§);
                        if(_loc10_)
                        {
                           transformCoords(§7=§,_loc3_,_loc4_,§9!s§);
                        }
                     }
                     if(_loc8_ = _loc7_.hitTest(§9!s§,param2))
                     {
                        if(!(_loc9_ && this))
                        {
                           return _loc8_;
                        }
                     }
                     §§push(_loc6_);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc6_ = §§pop();
                  }
                  return null;
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(!(_loc6_ && param2))
         {
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() * this.alpha);
               if(!_loc6_)
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
         var _loc3_:int = this.§1!+§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§1!+§[_loc4_]).alpha);
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr243:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop15:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr246:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr208:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr209:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr210:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                addr245:
                                             }
                                             while(true)
                                             {
                                                continue loop15;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr243);
                        }
                        §§goto(addr220);
                     }
                  }
                  §§goto(addr183);
               }
               §§goto(addr209);
            }
            §§goto(addr161);
         }
      }
      
      public function §+S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.bubbles)
            {
               if(!(_loc3_ && _loc3_))
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               while(true)
               {
               }
               addr69:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr69);
            }
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_)
         {
            this.§ !P§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc6_ || _loc2_)
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
               addr86:
            }
            while(!_loc6_)
            {
               §§goto(addr86);
            }
         }
      }
      
      private function § !P§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_)
         {
            if(param1.hasEventListener(param2))
            {
               if(!_loc8_)
               {
                  param3.push(param1);
                  if(_loc9_)
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr54);
               }
            }
         }
         addr42:
         if(_loc4_)
         {
            addr54:
            §§push(int((_loc5_ = _loc4_.§1!+§).length));
            if(!_loc8_)
            {
               _loc6_ = §§pop();
               if(_loc9_ || this)
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
                        this.§ !P§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(!_loc9_)
                           {
                              break;
                           }
                           if(_loc9_)
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
         addr107:
      }
      
      public function get numChildren() : int
      {
         return this.§1!+§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc6_)
         {
            this.§@=§ = param1;
         }
         for each(_loc2_ in this.§1!+§)
         {
            if(!_loc5_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§@=§;
      }
   }
}
