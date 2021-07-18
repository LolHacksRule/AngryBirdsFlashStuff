package §'!6§
{
   import §!=§.transformCoords;
   import §"a§.§>w§;
   import §`#§.§7!p§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §`+§:Matrix;
      
      private static var §5"E§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`+§ = new Matrix();
            do
            {
               §5"E§ = new Point();
            }
            while(_loc2_);
            
         }
      }
      
      private var §0!V§:Vector.<DisplayObject>;
      
      private var §+!m§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
            {
               if(_loc2_)
               {
                  break;
               }
               loop1:
               while(true)
               {
                  addr39:
                  while(true)
                  {
                     this.§0!V§ = new Vector.<DisplayObject>(0);
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            §§goto(addr39);
         }
         throw new §7!p§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§0!V§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc4_)
               {
                  super.dispose();
               }
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               loop1:
               while(_loc4_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§0!V§[_loc2_].dispose();
            §§goto(addr81);
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
      
      public function §,!?§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§0!V§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc5_)
               {
                  if(!_loc4_)
                  {
                     this.addChild(param1);
                     break;
                  }
                  addr72:
                  _loc3_++;
               }
               continue;
            }
            if(param1.z < this.§0!V§[_loc3_].z)
            {
               addr88:
               this.addChildAt(param1,_loc3_);
               return;
               addr92:
            }
            §§goto(addr72);
         }
         if(_loc5_ || param1)
         {
            if(!_loc4_)
            {
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr92);
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               addr110:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr111:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           while(_loc4_ || param1)
                           {
                              param1.§,!s§();
                              do
                              {
                                 this.§0!V§.splice(param2,0,param1);
                              }
                              while(!_loc4_);
                              
                              if(!_loc3_)
                              {
                                 param1.§;!X§(this);
                                 return;
                                 addr55:
                              }
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr96:
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
         §§goto(addr55);
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.getChildIndex(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ != -1)
            {
               if(!_loc4_)
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
               if(!_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§pop();
                           if(_loc4_ || param1)
                           {
                              addr66:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(!_loc5_)
                              {
                                 _loc3_ = this.§0!V§[param1];
                                 if(_loc4_)
                                 {
                                    _loc3_.§;!X§(null);
                                    loop0:
                                    while(true)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          this.§0!V§.splice(param1,1);
                                          loop2:
                                          while(param2)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             addr114:
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop2;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc3_.dispose();
                                    §§goto(addr114);
                                 }
                              }
                           }
                           addr132:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §<!7§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_ || this)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(_loc6_ || param2)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr71:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr74);
                                    }
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr74);
                        }
                     }
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr87);
         }
         addr74:
         §§push(this.numChildren);
         if(_loc6_ || param1)
         {
            addr83:
            §§push(int(§§pop() - 1));
            if(!_loc5_)
            {
               addr87:
               param2 = §§pop();
               addr88:
               §§push(param1);
               if(!_loc6_)
               {
               }
               §§goto(addr102);
            }
            §§push(int(§§pop()));
         }
         addr102:
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc4_ > param2)
            {
               if(_loc6_)
               {
                  break;
               }
               loop1:
               while(_loc5_ && param1)
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
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr94:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr95:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              return this.§0!V§[param1];
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
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
            addr93:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(this.numChildren);
               if(_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§goto(addr94);
               }
            }
            else
            {
               §§goto(addr93);
            }
            §§goto(addr94);
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§0!V§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc5_)
               {
                  return null;
               }
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§0!V§[_loc3_].name == param1)
            {
               break;
            }
            §§goto(addr54);
         }
         while(_loc4_ || param1);
         
         return this.§0!V§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§0!V§.indexOf(param1);
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
            if(_loc3_ == -1)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr95);
               }
               else
               {
                  while(true)
                  {
                     addr77:
                     while(_loc5_ || param1)
                     {
                        this.§0!V§.splice(param2,0,param1);
                        if(!(_loc4_ && this))
                        {
                           return;
                        }
                     }
                  }
                  addr99:
               }
            }
            while(true)
            {
               this.§0!V§.splice(_loc3_,1);
               §§goto(addr77);
               §§goto(addr99);
            }
         }
         addr95:
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §?h§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
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
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              loop3:
                              while(_loc5_)
                              {
                                 while(true)
                                 {
                                    this.§[d§(_loc3_,_loc4_);
                                    if(_loc5_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                           §§goto(addr52);
                           addr87:
                           §§push(§§pop() == §§pop());
                           if(!(_loc6_ && param1))
                           {
                              continue;
                           }
                           addr113:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr113:
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr95:
                     }
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §[d§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!_loc6_)
         {
            this.§0!V§[param1] = _loc4_;
         }
         do
         {
            this.§0!V§[param2] = _loc3_;
         }
         while(_loc6_ && param2);
         
      }
      
      public function §0!9§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!V§ = this.§0!V§.sort(param1);
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
            var _loc2_:int = this.§0!V§.length;
            var _loc3_:int = 0;
            loop0:
            while(_loc3_ < _loc2_)
            {
               §§push(Boolean(_loc5_ = (_loc4_ = this.§0!V§[_loc3_]) as DisplayObjectContainer));
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(_loc7_ || param1)
                        {
                           §§push(_loc5_.contains(param1));
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc6_)
                              {
                                 loop2:
                                 while(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(_loc4_ != param1)
                                       {
                                          do
                                          {
                                             _loc3_++;
                                          }
                                          while(!_loc7_);
                                          
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                       }
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr108:
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                if(_loc7_ || _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop5;
                                                §§goto(addr108);
                                             }
                                             addr140:
                                             return §§pop();
                                             addr120:
                                          }
                                          break loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr140);
                                 §§push(true);
                                 addr138:
                              }
                              §§goto(addr140);
                           }
                           addr135:
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr138);
               }
               §§goto(addr135);
            }
            return false;
         }
         addr30:
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
            var _loc3_:int = this.§0!V§.length;
            if(_loc10_ || this)
            {
               §§push(_loc3_);
               if(!(_loc11_ && param2))
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc11_ && _loc3_))
                        {
                           §'!D§(param1,§`+§);
                           if(_loc10_ || _loc3_)
                           {
                              transformCoords(§`+§,0,0,§5"E§);
                              if(!(_loc11_ && param1))
                              {
                                 loop0:
                                 while(true)
                                 {
                                    param2.x = §5"E§.x;
                                    if(!_loc11_)
                                    {
                                       param2.y = §5"E§.y;
                                       if(_loc10_ || this)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          param2.width = param2.height = 0;
                                          if(!(_loc11_ && param2))
                                          {
                                             return param2;
                                          }
                                       }
                                       else
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Number(Number.MAX_VALUE));
                                             loop8:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(-Number.MAX_VALUE);
                                                               if(_loc10_ || param2)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr395:
                                                               addr434:
                                                               _loc7_ = §§pop();
                                                               while(_loc10_ || this)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               break loop0;
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr435);
                                                                  §§goto(addr442);
                                                               }
                                                               addr435:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ >= _loc3_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              param2.x = _loc4_;
                                                                              loop40:
                                                                              while(_loc10_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    param2.y = _loc6_;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                param2.width = _loc5_ - _loc4_;
                                                                                                do
                                                                                                {
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   loop44:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               if(_loc10_ || param1)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr270:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr270:
                                                                                                                  }
                                                                                                                  loop45:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop46:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              break loop40;
                                                                                                                           }
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc11_ && param2))
                                                                                                                                          {
                                                                                                                                             loop20:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop21:
                                                                                                                                                while(_loc10_)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(!(_loc11_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc11_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() > param2.bottom);
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Number(param2.bottom));
                                                                                                                                                                  if(_loc10_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop45;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop46;
                                                                                                                                                               }
                                                                                                                                                               addr344:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop24:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr357:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr358:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                                                                          addr359:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             addr297:
                                                                                                                                                                                             while(!_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() < param2.y);
                                                                                                                                                                                                while(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(param2.y));
                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                         addr367:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            addr368:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr366:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(param2.x));
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop24;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr373:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr348:
                                                                                                                                                                        }
                                                                                                                                                                        addr374:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           break loop21;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr345:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(param2.right));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr357);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr355:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr367);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr302);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr355);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr270);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop16;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr344);
                                                                                                                                                   §§goto(addr374);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr334:
                                                                                                                                          }
                                                                                                                                          §§goto(addr373);
                                                                                                                                       }
                                                                                                                                       addr323:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr362:
                                                                                                                                    }
                                                                                                                                    §§goto(addr365);
                                                                                                                                 }
                                                                                                                                 §§goto(addr368);
                                                                                                                              }
                                                                                                                              §§goto(addr358);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr348);
                                                                                                            }
                                                                                                            §§goto(addr297);
                                                                                                         }
                                                                                                         §§goto(addr334);
                                                                                                      }
                                                                                                      §§goto(addr270);
                                                                                                   }
                                                                                                }
                                                                                                while(param2.height = _loc7_ - _loc6_, !(_loc10_ || param2));
                                                                                                
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   return param2;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop40;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc11_ && param2))
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       addr385:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                    }
                                                                                    addr209:
                                                                                 }
                                                                                 §§goto(addr345);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    _loc8_++;
                                                                                    §§goto(addr209);
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                              addr202:
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§0!V§[_loc8_].getBounds(param1,param2);
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                            }
                                                            addr461:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               addr493:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                               }
                                                            }
                                                            addr507:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            addr495:
                                                            while(true)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  break loop9;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr504:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(Number.MAX_VALUE));
                                                   addr490:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      break loop0;
                                                   }
                                                }
                                             }
                                          }
                                          addr485:
                                       }
                                       return this.§0!V§[0].getBounds(param1,param2);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr466);
                                 }
                              }
                              §§goto(addr504);
                           }
                           §§goto(addr485);
                        }
                        §§goto(addr507);
                     }
                     §§goto(addr493);
                  }
                  §§goto(addr495);
               }
               §§goto(addr395);
            }
            §§goto(addr461);
         }
         §§goto(addr31);
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
                                 if(_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop7:
                                       for(; §§pop(); continue loop0)
                                       {
                                          if(_loc9_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          if(!_loc9_)
                                          {
                                             if(!_loc9_)
                                             {
                                                return null;
                                             }
                                             continue loop4;
                                          }
                                          addr69:
                                          loop8:
                                          while(true)
                                          {
                                             §§push(!§^]§);
                                             if(!_loc9_)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   continue loop7;
                                                }
                                                continue loop3;
                                             }
                                             addr66:
                                             while(!_loc9_)
                                             {
                                                §§pop();
                                                continue loop8;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       var _loc3_:Number = param1.x;
                                       var _loc4_:Number = param1.y;
                                       var _loc5_:int;
                                       §§push(_loc5_ = this.§0!V§.length);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(int(§§pop() - 1));
                                       }
                                       var _loc6_:* = §§pop();
                                       addr171:
                                       if(_loc6_ >= 0)
                                       {
                                          _loc7_ = this.§0!V§[_loc6_];
                                          if(!_loc9_)
                                          {
                                             §'!D§(_loc7_,§`+§);
                                             if(!_loc9_)
                                             {
                                                transformCoords(§`+§,_loc3_,_loc4_,§5"E§);
                                             }
                                          }
                                          if(_loc8_ = _loc7_.hitTest(§5"E§,param2))
                                          {
                                             if(!_loc10_)
                                             {
                                                addr161:
                                                §§push(_loc6_);
                                                if(_loc10_ || this)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc6_ = §§pop();
                                                §§goto(addr171);
                                             }
                                             return _loc8_;
                                          }
                                          §§goto(addr161);
                                       }
                                       return null;
                                       addr45:
                                    }
                                 }
                                 §§goto(addr66);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr45);
                  }
               }
               if(!(_loc10_ || param1))
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr69);
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(_loc6_ || param1)
         {
            §§push(param2);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc7_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§0!V§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§0!V§[_loc4_]).alpha);
            if(_loc6_)
            {
               §§push(0);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc7_ && this))
                  {
                     §§push(!§§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param2))
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(_loc5_.visible);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.scaleX);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr189:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc6_ || param2)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr208:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr172:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                param1.§1"N§();
                                                                                                while(!(_loc6_ || param1))
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                param1.§#,§(_loc5_);
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_.render(param1,param2);
                                                                                                   addr138:
                                                                                                   addr142:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      §§goto(addr177);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr129:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.§^!<§();
                                                                                                         addr132:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr184);
                                                                                                }
                                                                                                addr177:
                                                                                                addr184:
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_++;
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr147);
                                                                                                   }
                                                                                                   §§goto(addr129);
                                                                                                }
                                                                                                §§goto(addr138);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr132);
                                                                                       }
                                                                                    }
                                                                                    addr171:
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop15;
                                                                           addr210:
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr207:
                                                               }
                                                               addr215:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr224:
                                                }
                                                §§goto(addr210);
                                             }
                                          }
                                          addr222:
                                       }
                                       §§goto(addr224);
                                    }
                                    addr219:
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr222);
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr207);
               }
               §§goto(addr189);
            }
            §§goto(addr153);
         }
      }
      
      public function §"]§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(_loc3_ && this);
               
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
         if(!(_loc5_ && param1))
         {
            this.§&!2§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               if(!(_loc5_ && _loc3_))
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
      
      private function §&!2§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(_loc9_ || param1)
               {
                  param3.push(param1);
                  if(_loc8_)
                  {
                  }
                  addr59:
                  §§push(int((_loc5_ = _loc4_.§0!V§).length));
                  if(!(_loc8_ && param2))
                  {
                     _loc6_ = §§pop();
                     if(_loc9_)
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
                              this.§&!2§(_loc5_[_loc7_],param2,param3);
                              while(true)
                              {
                                 _loc7_++;
                                 if(!(_loc9_ || param1))
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
                           §§goto(addr117);
                        }
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr59);
            }
            if(_loc4_)
            {
               §§goto(addr59);
            }
            addr117:
            return;
         }
         §§goto(addr59);
      }
      
      public function get numChildren() : int
      {
         return this.§0!V§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc6_)
         {
            this.§+!m§ = param1;
         }
         for each(_loc2_ in this.§0!V§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§+!m§;
      }
   }
}
