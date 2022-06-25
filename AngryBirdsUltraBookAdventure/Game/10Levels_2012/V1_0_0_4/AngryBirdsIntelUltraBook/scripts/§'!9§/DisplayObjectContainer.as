package §'!9§
{
   import § !'§.§[!$§;
   import §<&§.§`K§;
   import §`s§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §5g§:Matrix;
      
      private static var §<r§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5g§ = new Matrix();
            do
            {
               §<r§ = new Point();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §&!8§:Vector.<DisplayObject>;
      
      private var §%!v§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
               {
                  do
                  {
                     this.§&!8§ = new Vector.<DisplayObject>(0);
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
         throw new §[!$§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§&!8§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  super.dispose();
               }
               if(_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§&!8§[_loc2_].dispose();
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
               addr152:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           while(true)
                           {
                              param1.§'s§();
                              addr149:
                              loop6:
                              while(true)
                              {
                                 this.§&!8§.splice(param2,0,param1);
                                 param1.§+k§(this);
                                 param1.dispatchEvent(new Event(Event.ADDED,true));
                                 while(stage)
                                 {
                                    if(_loc3_)
                                    {
                                       param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
                                    }
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        throw new RangeError("Invalid child index");
                        addr145:
                     }
                  }
                  addr157:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr149);
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
         if(_loc5_)
         {
            if(_loc3_ != -1)
            {
               if(_loc5_)
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
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               §§push(0);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc4_ && param2))
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           §§pop();
                           if(!(_loc4_ && param2))
                           {
                              addr82:
                              if(param1 < this.numChildren)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    addr90:
                                    _loc3_ = this.§&!8§[param1];
                                    if(!_loc4_)
                                    {
                                       _loc3_.dispatchEvent(new Event(Event.§1d§,true));
                                       loop0:
                                       while(true)
                                       {
                                          if(stage)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                                addr159:
                                                addr132:
                                                while(true)
                                                {
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc4_ && param2)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         this.§&!8§.splice(param1,1);
                                                         while(!_loc4_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(param2)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     _loc3_.dispose();
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            break loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc3_.§+k§(null);
                                             §§goto(addr132);
                                             §§goto(addr159);
                                          }
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 addr173:
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           §§goto(addr90);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §5!c§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            §§push(param2);
            if(_loc6_ || param2)
            {
               §§push(0);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr71:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(this.numChildren);
                                       if(_loc6_ || param2)
                                       {
                                       }
                                       addr97:
                                       param2 = §§pop();
                                    }
                                    §§goto(addr98);
                                 }
                                 addr98:
                                 §§goto(addr112);
                              }
                              §§push(int(§§pop() - 1));
                              if(_loc6_ || param1)
                              {
                                 §§goto(addr97);
                              }
                              addr112:
                              §§push(param1);
                              if(_loc6_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              while(true)
                              {
                                 if(_loc4_ > param2)
                                 {
                                    if(_loc5_ && param2)
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
                           §§goto(addr97);
                        }
                     }
                  }
               }
               §§goto(addr71);
            }
         }
         §§goto(addr97);
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
               addr92:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr77);
                           }
                           if(!(_loc2_ && _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr58:
                     }
                  }
                  addr97:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr77:
         return this.§&!8§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§&!8§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_)
               {
                  continue;
               }
               if(!(_loc5_ && _loc2_))
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(this.§&!8§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         return this.§&!8§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§&!8§.indexOf(param1);
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
         if(!(_loc4_ && param2))
         {
            if(_loc3_ == -1)
            {
               if(_loc5_)
               {
                  §§goto(addr90);
               }
               else
               {
                  while(true)
                  {
                     addr77:
                     while(!(_loc4_ && param1))
                     {
                        this.§&!8§.splice(param2,0,param1);
                        if(_loc5_ || this)
                        {
                           return;
                        }
                     }
                  }
                  addr94:
               }
            }
            while(true)
            {
               this.§&!8§.splice(_loc3_,1);
               §§goto(addr77);
               §§goto(addr94);
            }
         }
         addr90:
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §8!S§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc6_ || param1)
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
               addr114:
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
                              this.§0?§(_loc3_,_loc4_);
                           }
                           while(_loc5_);
                           
                           if(_loc5_ && _loc3_)
                           {
                              break;
                           }
                           if(_loc6_ || param1)
                           {
                              return;
                              addr74:
                           }
                           §§push(§§pop() == §§pop());
                           continue loop0;
                           if(!(_loc5_ && param2))
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
                        throw new ArgumentError("Not a child of this container");
                        addr105:
                     }
                  }
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §0?§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!_loc6_)
         {
            this.§&!8§[param1] = _loc4_;
         }
         do
         {
            this.§&!8§[param2] = _loc3_;
         }
         while(!_loc5_);
         
      }
      
      public function §0E§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!8§ = this.§&!8§.sort(param1);
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
                  return true;
               }
            }
         }
         var _loc2_:int = this.§&!8§.length;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               return false;
            }
            §§push(Boolean(_loc5_ = (_loc4_ = this.§&!8§[_loc3_]) as DisplayObjectContainer));
            if(_loc7_ || this)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     if(!_loc6_)
                     {
                        §§push(_loc5_.contains(param1));
                        if(_loc7_ || this)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc6_)
                           {
                              addr128:
                              if(§§pop())
                              {
                                 break;
                              }
                              loop3:
                              while(_loc4_ == param1)
                              {
                                 while(_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(true);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr96);
                                 }
                                 else
                                 {
                                    addr130:
                                 }
                                 addr130:
                                 return §§pop();
                              }
                              loop2:
                              while(true)
                              {
                                 _loc3_++;
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr87);
                                    }
                                    §§goto(addr91);
                                 }
                                 else
                                 {
                                    addr97:
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       break loop0;
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                       §§goto(addr97);
                                    }
                                 }
                              }
                              addr87:
                              continue;
                           }
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr96);
               }
               §§goto(addr128);
            }
            addr96:
            return §§pop();
         }
         §§goto(addr130);
         §§push(true);
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
            var _loc3_:int = this.§&!8§.length;
            if(!(_loc11_ && this))
            {
               §§push(_loc3_);
               if(!(_loc11_ && param2))
               {
                  §§push(0);
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc11_ && param1))
                        {
                           §^2§(param1,§5g§);
                           if(!_loc11_)
                           {
                              transformCoords(§5g§,0,0,§<r§);
                              if(!_loc11_)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    param2.x = §<r§.x;
                                    if(!_loc11_)
                                    {
                                       param2.y = §<r§.y;
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          param2.width = param2.height = 0;
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             break;
                                          }
                                          return param2;
                                          addr132:
                                       }
                                       else
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§push(Number(Number.MAX_VALUE));
                                             loop2:
                                             while(!(_loc11_ && this))
                                             {
                                                _loc6_ = §§pop();
                                                loop3:
                                                for(; !_loc11_; loop9:
                                                while(_loc10_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(!_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc11_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc8_ >= _loc3_)
                                                                  {
                                                                     loop17:
                                                                     while(!(_loc11_ && this))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           param2.x = _loc4_;
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              param2.y = _loc6_;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr376:
                                                                                       §§push(_loc7_);
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr241:
                                                                                                §§push(§§pop() > param2.bottom);
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc10_ || param2)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc10_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc10_ || param2)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr316:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr317:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || this)
                                                                                                                                       {
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             if(_loc10_ || param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop30:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr423:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      loop41:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() > param2.right);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        addr392:
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop30;
                                                                                                                                                                           §§goto(addr392);
                                                                                                                                                                        }
                                                                                                                                                                        loop39:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr407:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop37:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                 loop38:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    addr337:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc11_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc11_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < param2.y);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr355:
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr361:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr365:
                                                                                                                                                                                                      loop28:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr366:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop39;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc11_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc6_ = §§pop();
                                                                                                                                                                                                               §§goto(addr376);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < param2.x);
                                                                                                                                                                                                                  addr415:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(param2.x));
                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr412:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr365);
                                                                                                                                                                                                §§push(Number(param2.y));
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr365);
                                                                                                                                                                                             §§goto(addr241);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                          addr354:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr393);
                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr393:
                                                                                                                                                                        addr396:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr416);
                                                                                                                                                                  }
                                                                                                                                                                  addr385:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr400:
                                                                                                                                                                  §§push(Number(param2.right));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr407);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr417);
                                                                                                                                                                  }
                                                                                                                                                                  addr400:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr400);
                                                                                                                                                            }
                                                                                                                                                            addr384:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr396);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr360);
                                                                                                                                       }
                                                                                                                                       §§goto(addr361);
                                                                                                                                    }
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    break loop19;
                                                                                                                                 }
                                                                                                                                 addr316:
                                                                                                                              }
                                                                                                                              §§goto(addr337);
                                                                                                                           }
                                                                                                                           §§goto(addr366);
                                                                                                                        }
                                                                                                                        §§goto(addr317);
                                                                                                                     }
                                                                                                                     §§goto(addr423);
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               §§goto(addr385);
                                                                                                            }
                                                                                                            addr276:
                                                                                                         }
                                                                                                         §§push(Number(param2.bottom));
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            §§goto(addr316);
                                                                                                         }
                                                                                                         §§goto(addr317);
                                                                                                      }
                                                                                                      §§goto(addr415);
                                                                                                   }
                                                                                                   §§goto(addr384);
                                                                                                }
                                                                                                §§goto(addr354);
                                                                                             }
                                                                                             §§goto(addr400);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              addr334:
                                                                              _loc8_++;
                                                                              break loop17;
                                                                           }
                                                                        }
                                                                        §§goto(addr355);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr435:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr412);
                                                                           }
                                                                        }
                                                                        §§goto(addr276);
                                                                        §§goto(addr334);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  this.§&!8§[_loc8_].getBounds(param1,param2);
                                                                  §§goto(addr435);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr519);
                                                            }
                                                         }
                                                         addr440:
                                                      }
                                                      addr522:
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         addr523:
                                                         while(true)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               break loop0;
                                                            }
                                                            addr514:
                                                            while(true)
                                                            {
                                                               §§goto(addr518);
                                                            }
                                                         }
                                                      }
                                                   }
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      §§push(-Number.MAX_VALUE);
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         if(_loc11_ && _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§goto(addr467);
                                                         §§push(Number(§§pop()));
                                                         continue loop2;
                                                      }
                                                      addr467:
                                                      if(_loc10_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         continue loop3;
                                                      }
                                                      addr508:
                                                      while(true)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            addr510:
                                                            _loc5_ = §§pop();
                                                            break loop3;
                                                         }
                                                         addr518:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr519:
                                                            while(true)
                                                            {
                                                               §§push(-Number.MAX_VALUE);
                                                               break loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(!_loc10_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr522);
                                                      }
                                                      addr521:
                                                   }
                                                   §§goto(addr514);
                                                   §§goto(addr510);
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr508);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 return this.§&!8§[0].getBounds(param1,param2);
                              }
                              §§goto(addr519);
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr521);
                  }
                  §§goto(addr523);
               }
               §§goto(addr440);
            }
            §§goto(addr477);
         }
         §§goto(addr36);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || this)
         {
            §§push(param2);
            if(_loc10_ || param1)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  addr113:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(_loc10_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 return null;
                              }
                              while(true)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(!§@!U§);
                                    if(!(_loc9_ && param1))
                                    {
                                       if(!(_loc9_ && param2))
                                       {
                                          break;
                                       }
                                       loop4:
                                       while(_loc9_ && param1)
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              continue;
                           }
                           addr61:
                           while(true)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                           }
                           §§goto(addr63);
                        }
                        var _loc3_:Number = param1.x;
                        var _loc4_:Number = param1.y;
                        var _loc5_:int;
                        §§push(_loc5_ = this.§&!8§.length);
                        if(!_loc9_)
                        {
                           §§push(int(§§pop() - 1));
                        }
                        var _loc6_:* = §§pop();
                        while(_loc6_ >= 0)
                        {
                           _loc7_ = this.§&!8§[_loc6_];
                           if(_loc10_ || _loc3_)
                           {
                              §^2§(_loc7_,§5g§);
                              if(!(_loc9_ && this))
                              {
                                 transformCoords(§5g§,_loc3_,_loc4_,§<r§);
                              }
                           }
                           if(_loc8_ = _loc7_.hitTest(§<r§,param2))
                           {
                              if(_loc10_ || param2)
                              {
                                 return _loc8_;
                              }
                           }
                           §§push(_loc6_);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                        }
                        return null;
                        addr48:
                     }
                  }
               }
            }
            §§goto(addr114);
         }
         §§goto(addr61);
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(!(_loc6_ && param1))
         {
            §§push(param2);
            if(_loc7_ || param1)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc6_ && param1))
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr47);
            }
            §§goto(addr45);
         }
         addr47:
         var _loc3_:int = this.§&!8§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§&!8§[_loc4_]).alpha);
            if(!_loc6_)
            {
               §§push(0);
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_ || param2)
                  {
                     §§push(!§§pop());
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && this))
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 addr106:
                                 §§pop();
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(_loc5_.visible);
                                    loop22:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr253:
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop8:
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
                                                      §§push(_loc5_.scaleX);
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr235:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr236:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.scaleY);
                                                            if(_loc6_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               if(_loc7_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr185:
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           addr193:
                                                                           §§push(!§§pop());
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 §§goto(addr236);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr208:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§<!C§();
                                                                                          addr211:
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc7_ || this))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             param1.§0! §(_loc5_);
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_.render(param1,param2);
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr133:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§%!Q§();
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr209:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_++;
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr133);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr209);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr136);
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              addr207:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr207);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                           addr244:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop12;
                                                                           §§goto(addr185);
                                                                        }
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                                  addr177:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr255:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr244);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr253);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr106);
               }
               §§goto(addr177);
            }
            §§goto(addr174);
         }
      }
      
      public function §[!t§(param1:Event) : void
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
               while(_loc3_);
               
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_)
         {
            this.§ !I§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!_loc6_)
               {
                  continue;
               }
               if(!(_loc5_ && this))
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
      
      private function § !I§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(_loc9_ || param3)
               {
                  param3.push(param1);
                  if(_loc9_ || param1)
                  {
                     §§goto(addr62);
                  }
                  §§goto(addr64);
               }
            }
         }
         addr62:
         if(_loc4_)
         {
            addr64:
            §§push(int((_loc5_ = _loc4_.§&!8§).length));
            if(!_loc8_)
            {
               _loc6_ = §§pop();
               if(_loc9_ || param1)
               {
                  addr122:
                  _loc7_ = 0;
               }
               loop0:
               while(true)
               {
                  while(_loc7_ < _loc6_)
                  {
                     this.§ !I§(_loc5_[_loc7_],param2,param3);
                     if(_loc8_ && this)
                     {
                        break;
                     }
                     _loc7_++;
                     if(!(_loc9_ || param2))
                     {
                        break;
                     }
                     if(false)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr127);
               }
            }
            §§goto(addr122);
         }
         addr127:
      }
      
      public function get numChildren() : int
      {
         return this.§&!8§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_)
         {
            this.§%!v§ = param1;
         }
         for each(_loc2_ in this.§&!8§)
         {
            if(!_loc6_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§%!v§;
      }
   }
}
