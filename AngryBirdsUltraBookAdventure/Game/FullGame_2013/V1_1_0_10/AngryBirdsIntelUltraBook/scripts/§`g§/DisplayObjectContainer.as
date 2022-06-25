package §`g§
{
   import §2m§.§@>§;
   import §7H§.transformCoords;
   import §[z§.§@F§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §=!l§:Matrix;
      
      private static var §"!,§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!l§ = new Matrix();
            do
            {
               §"!,§ = new Point();
            }
            while(_loc2_);
            
         }
      }
      
      private var §="$§:Vector.<DisplayObject>;
      
      private var §4t§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            loop0:
            do
            {
               if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
               {
                  while(true)
                  {
                     this.§="$§ = new Vector.<DisplayObject>(0);
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
               addr29:
            }
            while(_loc1_ && this);
            
            throw new §@F§();
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§="$§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_)
               {
                  if(_loc4_ || this)
                  {
                     super.dispose();
                     break;
                  }
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        _loc2_++;
                        continue loop1;
                     }
                  }
                  continue;
                  addr67:
               }
               break;
            }
            this.§="$§[_loc2_].dispose();
            §§goto(addr77);
            §§goto(addr67);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function § " §(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§="$§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ || param1)
               {
                  this.addChild(param1);
               }
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  addr97:
                  return;
               }
               loop1:
               while(_loc4_ && _loc2_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(param1.z < this.§="$§[_loc3_].z)
            {
               break;
            }
            §§goto(addr68);
         }
         if(_loc5_)
         {
            this.addChildAt(param1,_loc3_);
         }
         §§goto(addr97);
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
               addr119:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr120:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           loop6:
                           while(!(_loc4_ && _loc3_))
                           {
                              while(true)
                              {
                                 param1.§5&§();
                                 this.§="$§.splice(param2,0,param1);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              param1.§"!d§(this);
                              return;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr105:
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
         §§goto(addr114);
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
         if(_loc4_)
         {
            if(_loc3_ != -1)
            {
               if(_loc4_)
               {
                  addr45:
                  this.removeChildAt(_loc3_,param2);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr61:
                              if(param1 < this.numChildren)
                              {
                                 if(_loc4_)
                                 {
                                    addr64:
                                    _loc3_ = this.§="$§[param1];
                                    if(_loc4_)
                                    {
                                       _loc3_.§"!d§(null);
                                       while(true)
                                       {
                                          addr101:
                                          while(true)
                                          {
                                             this.§="$§.splice(param1,1);
                                          }
                                       }
                                       addr111:
                                    }
                                    while(param2)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc3_.dispose();
                                             addr97:
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr111);
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr97);
                                    }
                                 }
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           §§goto(addr64);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §5!7§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(param2);
            if(!(_loc6_ && this))
            {
               §§push(0);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc6_ && param2))
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ || param3)
                        {
                           §§pop();
                           if(!(_loc6_ && param2))
                           {
                              addr74:
                              §§push(param2);
                              if(!(_loc6_ && this))
                              {
                                 addr85:
                                 addr84:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc5_)
                                    {
                                       addr88:
                                       §§push(this.numChildren);
                                       if(_loc5_)
                                       {
                                          addr92:
                                          §§push(int(§§pop() - 1));
                                          if(!_loc5_)
                                          {
                                          }
                                          addr106:
                                          var _loc4_:int = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc6_ && param2))
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
                                          addr105:
                                       }
                                       param2 = §§pop();
                                    }
                                 }
                                 §§push(param1);
                                 if(_loc5_ || param3)
                                 {
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr88);
                        }
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr84);
            }
            §§goto(addr92);
         }
         §§goto(addr74);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr84:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr85:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr76);
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr70:
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
         addr76:
         return this.§="$§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§="$§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  return null;
               }
               loop2:
               while(!(_loc4_ || _loc3_))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr61:
            }
            else if(this.§="$§[_loc3_].name == param1)
            {
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr85);
            }
            while(true)
            {
               _loc3_++;
               §§goto(addr61);
            }
         }
         return this.§="$§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§="$§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!(_loc5_ && this))
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
                  this.§="$§.splice(_loc3_,1);
                  while(!(_loc5_ && this))
                  {
                     this.§="$§.splice(param2,0,param1);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_ || param1)
                     {
                        return;
                     }
                  }
                  addr93:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr93);
      }
      
      public function § !D§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || this)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr100:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr101:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr103:
                     }
                     else
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§6!l§(_loc3_,_loc4_);
                           }
                           while(!_loc5_);
                           
                           if(_loc6_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        addr91:
                     }
                  }
               }
            }
         }
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §6!l§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_)
         {
            this.§="$§[param1] = _loc4_;
            do
            {
               this.§="$§[param2] = _loc3_;
            }
            while(!(_loc5_ || param2));
            
         }
      }
      
      public function §9!<§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§="$§ = this.§="$§.sort(param1);
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
               if(!(_loc6_ && _loc3_))
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§="$§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            §§push(Boolean(_loc5_ = (_loc4_ = this.§="$§[_loc3_]) as DisplayObjectContainer));
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc5_.contains(param1));
                        if(!_loc6_)
                        {
                           addr145:
                           §§push(Boolean(§§pop()));
                           if(!(_loc6_ && _loc2_))
                           {
                              addr153:
                              if(!§§pop())
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc4_ != param1)
                                    {
                                       while(true)
                                       {
                                          _loc3_++;
                                          if(!_loc6_)
                                          {
                                             if(_loc6_ && this)
                                             {
                                                §§push(true);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                addr155:
                                                addr155:
                                             }
                                             else
                                             {
                                                addr118:
                                             }
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(true)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             continue loop1;
                                             return §§pop();
                                          }
                                          if(_loc7_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 continue;
                              }
                              §§push(true);
                           }
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr145);
               }
               §§goto(addr153);
            }
            §§goto(addr145);
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
         if(_loc11_ || param1)
         {
            if(param2 == null)
            {
               addr37:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§="$§.length;
            if(!(_loc10_ && _loc3_))
            {
               §§push(_loc3_);
               if(_loc11_ || _loc3_)
               {
                  §§push(0);
                  if(_loc11_ || _loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §,!g§(param1,§=!l§);
                           if(!_loc10_)
                           {
                              transformCoords(§=!l§,0,0,§"!,§);
                              if(!_loc10_)
                              {
                                 while(true)
                                 {
                                    param2.x = §"!,§.x;
                                    if(!(_loc11_ || this))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr421:
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc8_ >= _loc3_)
                                    {
                                       if(_loc11_)
                                       {
                                          param2.x = _loc4_;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          param2.y = _loc6_;
                                          addr165:
                                          while(!_loc10_)
                                          {
                                             if(_loc11_)
                                             {
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            if(_loc11_ || this)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     §§push(§§pop() > param2.bottom);
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc11_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr267:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     break loop15;
                                                                                                                  }
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop26:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr325:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          break loop26;
                                                                                                                                       }
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr362:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                loop16:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr374:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      addr375:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(!(_loc11_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         if(_loc11_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() < param2.y);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  addr317:
                                                                                                                                                                  addr317:
                                                                                                                                                                  §§push(Number(param2.y));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     loop19:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr388:
                                                                                                                                                                        loop20:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr389:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 addr345:
                                                                                                                                                                                 loop23:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc11_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() > param2.right);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(param2.right));
                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr382:
                                                                                                                                                                                             addr382:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr355:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < param2.x);
                                                                                                                                                                                          break loop23;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr378:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr385);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr382);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr297:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr345);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr373:
                                                                                                                                             }
                                                                                                                                             §§goto(addr383);
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              addr313:
                                                                                                                           }
                                                                                                                           §§goto(addr317);
                                                                                                                        }
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                     §§goto(addr313);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr270:
                                                                                                            }
                                                                                                            §§goto(addr374);
                                                                                                         }
                                                                                                      }
                                                                                                      addr266:
                                                                                                   }
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                                addr236:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr266);
                                                                                                   }
                                                                                                }
                                                                                                addr259:
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    addr224:
                                                                                 }
                                                                                 §§goto(addr236);
                                                                              }
                                                                              addr221:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(Number(param2.bottom));
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§goto(addr259);
                                                                              }
                                                                           }
                                                                           §§goto(addr267);
                                                                        }
                                                                        §§goto(addr355);
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr401:
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      _loc8_++;
                                                   }
                                                   param2.width = _loc5_ - _loc4_;
                                                   continue loop12;
                                                   break;
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr270);
                                          }
                                          continue loop11;
                                       }
                                    }
                                    else
                                    {
                                       this.§="$§[_loc8_].getBounds(param1,param2);
                                    }
                                    §§goto(addr401);
                                 }
                                 addr421:
                                 addr63:
                              }
                              else
                              {
                                 loop52:
                                 while(true)
                                 {
                                    §§push(-Number.MAX_VALUE);
                                    loop53:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop10:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Number(Number.MAX_VALUE));
                                             addr451:
                                             addr463:
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            break loop3;
                                                         }
                                                         continue loop9;
                                                      }
                                                      addr456:
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr486:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            continue loop52;
                                                         }
                                                         addr510:
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   continue loop52;
                                                }
                                                continue loop53;
                                             }
                                             while(true)
                                             {
                                                §§push(-Number.MAX_VALUE);
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr451);
                                                   }
                                                }
                                                if(_loc11_)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         break loop0;
                                                      }
                                                      break;
                                                      addr406:
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§goto(addr421);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr486);
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr493:
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(0);
                           if(_loc11_)
                           {
                              §§goto(addr406);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(1);
                                 §§goto(addr497);
                              }
                           }
                           §§goto(addr471);
                        }
                     }
                     §§goto(addr495);
                  }
                  addr497:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           continue loop7;
                        }
                        §§goto(addr510);
                     }
                  }
                  return this.§="$§[0].getBounds(param1,param2);
               }
               §§goto(addr406);
            }
            §§goto(addr493);
         }
         §§goto(addr37);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc10_ && this))
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
                              loop5:
                              while(true)
                              {
                                 §§push(!visible);
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc10_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop());
                                    if(_loc10_ && param1)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(_loc9_)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(!§&!U§);
                                             if(!_loc10_)
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_ || param1)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  return null;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop9;
                                                         }
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      var _loc3_:Number = param1.x;
                                                      var _loc4_:Number = param1.y;
                                                      var _loc5_:int;
                                                      §§push(_loc5_ = this.§="$§.length);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(int(§§pop() - 1));
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      addr185:
                                                      if(_loc6_ >= 0)
                                                      {
                                                         _loc7_ = this.§="$§[_loc6_];
                                                         if(_loc9_)
                                                         {
                                                            §,!g§(_loc7_,§=!l§);
                                                            if(_loc9_)
                                                            {
                                                               addr140:
                                                               transformCoords(§=!l§,_loc3_,_loc4_,§"!,§);
                                                            }
                                                            if(_loc8_ = _loc7_.hitTest(§"!,§,param2))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr185);
                                                               }
                                                               return _loc8_;
                                                            }
                                                            §§push(_loc6_);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc6_ = §§pop();
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      return null;
                                                      addr44:
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr44);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param2);
            if(_loc7_ || _loc3_)
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
         var _loc3_:int = this.§="$§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§="$§[_loc4_]).alpha);
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_ || param2)
                  {
                     §§push(!§§pop());
                     if(_loc7_ || _loc3_)
                     {
                        addr80:
                        §§push(§§pop());
                        if(!(_loc6_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 addr96:
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr228:
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr229:
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
                                                      §§push(_loc5_.scaleX);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr190:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr191:
                                                            while(!_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     addr212:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr216:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr162:
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           addr216:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§4!s§();
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§0!"§(_loc5_);
                                                                                       addr143:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             _loc5_.render(param1,param2);
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   while(!(_loc6_ && this))
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                   addr217:
                                                                                                }
                                                                                                addr138:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§[Z§();
                                                                                                   addr126:
                                                                                                   addr128:
                                                                                                   while(!_loc7_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§goto(addr138);
                                                                                                }
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr183:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr123);
                                                                                    }
                                                                                    §§goto(addr143);
                                                                                 }
                                                                                 §§goto(addr126);
                                                                                 §§goto(addr128);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr181:
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                                  addr211:
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr80);
               }
               §§goto(addr159);
            }
            §§goto(addr156);
         }
      }
      
      public function §0n§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1.bubbles)
            {
               if(!(_loc2_ && _loc3_))
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               while(true)
               {
                  §§goto(addr49);
               }
            }
            addr49:
            §§goto(addr60);
         }
         addr60:
         while(true)
         {
            this.dispatchEventOnChildren(param1);
            if(!(_loc2_ && this))
            {
               break;
            }
            continue loop0;
         }
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc6_)
         {
            this.§]!V§(this,param1.type,_loc2_);
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
               while(_loc6_ && _loc2_)
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
      
      private function §]!V§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(_loc9_)
               {
                  param3.push(param1);
                  addr37:
                  if(_loc9_)
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr54);
            }
            addr52:
            if(_loc4_)
            {
               addr54:
               §§push(int((_loc5_ = _loc4_.§="$§).length));
               if(_loc9_)
               {
                  _loc6_ = §§pop();
                  if(_loc9_)
                  {
                     addr102:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     while(_loc7_ < _loc6_)
                     {
                        this.§]!V§(_loc5_[_loc7_],param2,param3);
                        if(_loc8_)
                        {
                           break;
                        }
                        _loc7_++;
                        if(!(_loc9_ || param3))
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr102);
            }
            addr107:
            return;
         }
         §§goto(addr37);
      }
      
      public function get numChildren() : int
      {
         return this.§="$§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!_loc6_)
         {
            this.§4t§ = param1;
         }
         for each(_loc2_ in this.§="$§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§4t§;
      }
   }
}
