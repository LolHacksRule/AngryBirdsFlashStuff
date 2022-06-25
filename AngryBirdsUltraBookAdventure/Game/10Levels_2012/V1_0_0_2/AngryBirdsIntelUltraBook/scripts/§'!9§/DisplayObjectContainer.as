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
         if(_loc1_ || _loc2_)
         {
            §5g§ = new Matrix();
            do
            {
               §<r§ = new Point();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §&!8§:Vector.<DisplayObject>;
      
      private var §%!v§:uint = 16777215;
      
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
                  this.§&!8§ = new Vector.<DisplayObject>(0);
               }
               while(!_loc1_);
               
               if(_loc2_)
               {
                  break;
               }
               if(!_loc2_)
               {
                  return;
               }
            }
         }
         throw new §[!$§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§&!8§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_ || this)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     super.dispose();
                     break;
                  }
                  _loc2_++;
                  continue;
                  addr81:
               }
               break;
            }
            this.§&!8§[_loc2_].dispose();
            §§goto(addr81);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr163:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_ || param1)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              param1.§'s§();
                              addr160:
                              while(true)
                              {
                                 this.§&!8§.splice(param2,0,param1);
                                 if(!(_loc4_ || param2))
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 param1.§+k§(this);
                                 loop7:
                                 while(true)
                                 {
                                    param1.dispatchEvent(new Event(Event.ADDED,true));
                                    while(true)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!stage)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    return;
                                 }
                              }
                           }
                           addr148:
                           §§push(§§pop() <= §§pop());
                           if(!(_loc3_ && param1))
                           {
                              continue;
                           }
                           addr173:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr148);
                           }
                           addr173:
                        }
                        throw new RangeError("Invalid child index");
                        addr156:
                     }
                  }
                  §§goto(addr173);
               }
            }
         }
         §§goto(addr160);
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
         if(_loc5_ || this)
         {
            if(_loc3_ != -1)
            {
               if(!(_loc4_ && param1))
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
            if(!_loc4_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop();
                           §§goto(addr168);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     throw new RangeError("Invalid child index");
                  }
                  if(!(_loc4_ && this))
                  {
                     _loc3_ = this.§&!8§[param1];
                     if(_loc5_)
                     {
                        _loc3_.dispatchEvent(new Event(Event.§1d§,true));
                        while(true)
                        {
                           if(stage)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 while(true)
                                 {
                                    _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                 }
                                 addr148:
                              }
                              while(true)
                              {
                              }
                              addr154:
                           }
                           while(true)
                           {
                              _loc3_.§+k§(null);
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§&!8§.splice(param1,1);
                                    while(param2)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          continue loop3;
                                       }
                                       addr107:
                                       if(_loc5_ || param2)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr154);
                           }
                           if(!(_loc5_ || param2))
                           {
                              continue;
                           }
                           _loc3_.dispose();
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr168);
               }
            }
            §§goto(addr51);
         }
         addr168:
         if(!(_loc4_ && _loc3_))
         {
            addr51:
            §§push(param1 < this.numChildren);
         }
      }
      
      public function §5!c§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc6_ || param1)
            {
               §§push(0);
               if(_loc6_ || param3)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr66:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_)
                                    {
                                       addr69:
                                       §§push(this.numChildren);
                                       if(_loc6_ || param3)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(!(_loc5_ && param1))
                                          {
                                             addr87:
                                             param2 = §§pop();
                                             §§push(param1);
                                             if(!_loc5_)
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
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                loop1:
                                                while(_loc5_ && param2)
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
                                             §§goto(addr129);
                                          }
                                          return;
                                       }
                                       §§goto(addr87);
                                    }
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr69);
                        }
                     }
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr87);
         }
         §§goto(addr69);
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
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           addr81:
                           if(_loc3_)
                           {
                              return this.§&!8§[param1];
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr65:
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
         §§goto(addr81);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§&!8§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            else if(this.§&!8§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         while(_loc4_);
         
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_ != -1)
            {
               do
               {
                  this.§&!8§.splice(_loc3_,1);
                  do
                  {
                     this.§&!8§.splice(param2,0,param1);
                  }
                  while(!(_loc5_ || this));
                  
               }
               while(!_loc5_);
               
               if(!(_loc4_ && this))
               {
                  return;
                  addr84:
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr84);
      }
      
      public function §8!S§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(!_loc6_)
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
               addr108:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 this.§0?§(_loc3_,_loc4_);
                              }
                              while(!(_loc5_ || this));
                              
                              if(!_loc6_)
                              {
                                 break;
                              }
                           }
                           if(!(_loc6_ && param2))
                           {
                              throw new ArgumentError("Not a child of this container");
                           }
                           §§push(§§pop() == §§pop());
                           addr74:
                           continue loop0;
                           if(!(_loc6_ && this))
                           {
                              continue;
                           }
                           addr118:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr118:
                        }
                        return;
                        addr92:
                        addr61:
                     }
                  }
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §0?§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc6_ || param1)
         {
            this.§&!8§[param1] = _loc4_;
         }
         do
         {
            this.§&!8§[param2] = _loc3_;
         }
         while(!_loc6_);
         
      }
      
      public function §0E§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!8§ = this.§&!8§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc6_ || _loc2_)
         {
            if(param1 == this)
            {
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr39);
               }
            }
            var _loc2_:int = this.§&!8§.length;
            var _loc3_:int = 0;
            loop0:
            while(_loc3_ < _loc2_)
            {
               §§push(Boolean(_loc5_ = (_loc4_ = this.§&!8§[_loc3_]) as DisplayObjectContainer));
               if(!(_loc7_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc5_.contains(param1));
                           loop1:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc6_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc4_ == param1)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             addr143:
                                             while(!_loc7_)
                                             {
                                             }
                                             §§push(true);
                                             break loop1;
                                             addr128:
                                          }
                                          while(true)
                                          {
                                             _loc3_++;
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr128);
                                          }
                                          addr97:
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr145:
                                          while(true)
                                          {
                                             continue loop3;
                                             §§goto(addr97);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr143);
                                 }
                                 addr142:
                              }
                              break;
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr142);
               }
               addr144:
               return §§pop();
            }
            return false;
         }
         addr39:
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
         var _loc8_:* = 0;
         if(!_loc10_)
         {
            if(param2 == null)
            {
               addr32:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§&!8§.length;
            if(_loc11_ || _loc3_)
            {
               §§push(_loc3_);
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc11_ || param2)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §^2§(param1,§5g§);
                           if(!(_loc10_ && _loc3_))
                           {
                              transformCoords(§5g§,0,0,§<r§);
                              loop1:
                              while(true)
                              {
                                 addr60:
                                 addr483:
                                 while(true)
                                 {
                                    param2.x = §<r§.x;
                                    if(_loc10_ && param2)
                                    {
                                       return param2;
                                    }
                                    addr128:
                                    continue loop1;
                                 }
                                 addr483:
                                 §§push(0);
                                 if(_loc11_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(_loc11_)
                                             {
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                addr537:
                                                addr537:
                                                loop48:
                                                while(true)
                                                {
                                                   §§push(-Number.MAX_VALUE);
                                                   addr505:
                                                   addr513:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr506:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            break loop12;
                                                         }
                                                         addr536:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            continue loop48;
                                                         }
                                                      }
                                                   }
                                                   _loc5_ = §§pop();
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(Number(Number.MAX_VALUE));
                                                   loop11:
                                                   for(; _loc11_; if(_loc10_ && param2)
                                                   {
                                                      continue;
                                                   },§§goto(addr475),§§push(Number(§§pop())))
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         _loc6_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§push(-Number.MAX_VALUE);
                                                            if(_loc11_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            addr476:
                                                            addr475:
                                                            _loc7_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc11_ || this)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr539:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr540:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     addr541:
                                                                     while(§§pop() != §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr536);
                                                                        }
                                                                     }
                                                                     §§goto(addr542);
                                                                  }
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                         addr498:
                                                      }
                                                      §§goto(addr505);
                                                   }
                                                   §§goto(addr506);
                                                }
                                                addr542:
                                                return this.§&!8§[0].getBounds(param1,param2);
                                                §§goto(addr513);
                                             }
                                          }
                                          §§goto(addr498);
                                       }
                                       §§goto(addr476);
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       if(_loc8_ >= _loc3_)
                                       {
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(!(_loc10_ && param2))
                                             {
                                                if(_loc11_ || param1)
                                                {
                                                   param2.x = _loc4_;
                                                   loop36:
                                                   while(_loc11_)
                                                   {
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         param2.y = _loc6_;
                                                         loop37:
                                                         while(!_loc10_)
                                                         {
                                                            param2.width = _loc5_ - _loc4_;
                                                            while(_loc11_ || param1)
                                                            {
                                                               param2.height = _loc7_ - _loc6_;
                                                               if(_loc10_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop36;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               loop45:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() > param2.right);
                                                                     loop34:
                                                                     while(!§§pop())
                                                                     {
                                                                        §§push(Number(param2.right));
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              addr403:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < param2.y);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_ && param1)
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   if(_loc11_ || this)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr363:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr364:
                                                                                                            addr390:
                                                                                                            loop21:
                                                                                                            while(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() > param2.bottom);
                                                                                                                        if(!(_loc11_ || param2))
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc11_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc11_ || param1))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ || param2)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 continue loop26;
                                                                                                                                 addr295:
                                                                                                                              }
                                                                                                                              addr276:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr295);
                                                                                                                                 §§goto(addr276);
                                                                                                                              }
                                                                                                                              break loop36;
                                                                                                                           }
                                                                                                                           while(_loc11_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              break loop21;
                                                                                                                           }
                                                                                                                           break loop34;
                                                                                                                           addr387:
                                                                                                                           addr248:
                                                                                                                        }
                                                                                                                        §§push(Number(param2.bottom));
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              §§goto(addr276);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr419:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr295);
                                                                                                                        §§goto(addr295);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < param2.x);
                                                                                                                           addr409:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 break loop37;
                                                                                                                              }
                                                                                                                              §§push(Number(param2.x));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr406:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr424:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr295);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                               continue loop45;
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop32;
                                                                                             addr337:
                                                                                          }
                                                                                          §§push(Number(param2.y));
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc10_ && param1)
                                                                                             {
                                                                                                continue loop31;
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                          §§goto(addr364);
                                                                                       }
                                                                                       §§goto(addr409);
                                                                                    }
                                                                                    continue loop34;
                                                                                 }
                                                                                 continue loop32;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr387);
                                                                     }
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc11_ || param2)
                                                            {
                                                               §§goto(addr418);
                                                               §§push(_loc4_);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr436:
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   addr201:
                                                }
                                                §§goto(addr403);
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr201);
                                       }
                                       else
                                       {
                                          this.§&!8§[_loc8_].getBounds(param1,param2);
                                       }
                                       §§goto(addr436);
                                    }
                                    return param2;
                                    addr441:
                                 }
                                 §§goto(addr540);
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr532);
                        }
                     }
                     §§goto(addr539);
                  }
                  §§goto(addr541);
               }
               §§goto(addr441);
            }
            §§goto(addr537);
         }
         §§goto(addr32);
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
                        loop6:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(!visible);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ && param1)
                                    {
                                       break loop3;
                                    }
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(§§pop())
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             return null;
                                          }
                                          if(!(_loc9_ && param1))
                                          {
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
                                                continue loop8;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(!§@!U§);
                                                if(!_loc9_)
                                                {
                                                   continue loop2;
                                                }
                                                addr77:
                                                while(true)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop6;
                                             }
                                             addr102:
                                          }
                                       }
                                       var _loc3_:Number = param1.x;
                                       var _loc4_:Number = param1.y;
                                       var _loc5_:int;
                                       §§push(_loc5_ = this.§&!8§.length);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(int(§§pop() - 1));
                                       }
                                       var _loc6_:* = §§pop();
                                       addr206:
                                       if(_loc6_ >= 0)
                                       {
                                          _loc7_ = this.§&!8§[_loc6_];
                                          if(_loc10_)
                                          {
                                             §^2§(_loc7_,§5g§);
                                             if(_loc10_ || param1)
                                             {
                                                transformCoords(§5g§,_loc3_,_loc4_,§<r§);
                                             }
                                          }
                                          if(_loc8_ = _loc7_.hitTest(§<r§,param2))
                                          {
                                             if(_loc9_ && _loc3_)
                                             {
                                                addr196:
                                                §§push(_loc6_);
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc6_ = §§pop();
                                                §§goto(addr206);
                                             }
                                             return _loc8_;
                                          }
                                          §§goto(addr196);
                                       }
                                       return null;
                                       addr31:
                                    }
                                 }
                                 §§goto(addr77);
                              }
                           }
                           continue loop1;
                        }
                        addr109:
                     }
                     §§goto(addr31);
                  }
               }
            }
            §§goto(addr109);
         }
         §§goto(addr56);
      }
      
      override public function render(param1:§`K§, param2:Number) : void
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
         var _loc3_:int = this.§&!8§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§&!8§[_loc4_]).alpha);
            if(_loc7_ || _loc3_)
            {
               §§push(0);
               if(_loc7_ || param2)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_ || param2)
                  {
                     §§push(!§§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.visible);
                                    if(_loc7_)
                                    {
                                       addr238:
                                       §§push(Boolean(§§pop()));
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc5_.scaleX);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr198:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc7_)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               continue loop18;
                                                            }
                                                            §§push(!§§pop());
                                                            if(_loc7_ || param2)
                                                            {
                                                               break loop11;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop7;
                                                            }
                                                            addr231:
                                                         }
                                                         addr227:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr231);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr180:
                                                                     while(true)
                                                                     {
                                                                        addr181:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 param1.§<!C§();
                                                                                 addr184:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr143:
                                                                                 param1.§0! §(_loc5_);
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_.render(param1,param2);
                                                                                    loop2:
                                                                                    while(!(_loc6_ && param2))
                                                                                    {
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          do
                                                                                          {
                                                                                             param1.§%!Q§();
                                                                                             addr101:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ && param1)
                                                                                                {
                                                                                                   §§goto(addr184);
                                                                                                }
                                                                                             }
                                                                                             addr94:
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          while(false);
                                                                                          
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc4_++;
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§goto(addr94);
                                                                              }
                                                                              §§goto(addr101);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr180:
                                                                  }
                                                               }
                                                               break loop11;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr227);
                                          }
                                       }
                                       addr238:
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr230);
                     }
                  }
                  §§goto(addr238);
               }
               §§goto(addr198);
            }
            §§goto(addr154);
         }
      }
      
      public function §[!t§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(!_loc3_);
               
               if(_loc3_ || this)
               {
                  return;
                  addr52:
               }
            }
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         §§goto(addr52);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc6_)
         {
            this.§ !I§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!(_loc5_ || this))
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
      
      private function § !I§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || param3)
         {
            if(param1.hasEventListener(param2))
            {
               if(!(_loc8_ && param1))
               {
                  param3.push(param1);
                  if(_loc9_)
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
            if(_loc9_ || param1)
            {
               _loc6_ = §§pop();
               if(_loc9_)
               {
                  addr117:
                  _loc7_ = 0;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc7_ < _loc6_)
                     {
                        this.§ !I§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(!(_loc9_ || param3))
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
                     §§goto(addr122);
                  }
               }
            }
            §§goto(addr117);
         }
         addr122:
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
         if(!_loc6_)
         {
            this.§%!v§ = param1;
         }
         for each(_loc2_ in this.§&!8§)
         {
            if(_loc5_)
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
