package §^a§
{
   import §4v§.transformCoords;
   import §6;§.§2^§;
   import §]u§.§<=§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §&!T§:Matrix;
      
      private static var §[<§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&!T§ = new Matrix();
         }
         do
         {
            §[<§ = new Point();
         }
         while(!(_loc2_ || DisplayObjectContainer));
         
      }
      
      private var §=h§:Vector.<DisplayObject>;
      
      private var §^!0§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            loop0:
            for(; getQualifiedClassName(this) != "starling.display::DisplayObjectContainer"; if(_loc1_ && _loc2_)
            {
               continue;
            },§§goto(addr29))
            {
               while(true)
               {
                  this.§=h§ = new Vector.<DisplayObject>(0);
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        return;
                        addr52:
                     }
                     break loop0;
                  }
                  continue loop0;
               }
            }
            throw new §<=§();
         }
         §§goto(addr52);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§=h§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(!(_loc4_ || _loc1_))
                  {
                     continue;
                  }
                  super.dispose();
               }
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               this.§=h§[_loc2_].dispose();
            }
            _loc2_++;
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function §]D§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§=h§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc5_ && this))
               {
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     addr69:
                     _loc3_++;
                     continue;
                  }
                  this.addChild(param1);
               }
               if(_loc4_ || _loc3_)
               {
                  return;
               }
               addr101:
               return;
            }
            if(param1.z < this.§=h§[_loc3_].z)
            {
               break;
            }
            §§goto(addr69);
         }
         this.addChildAt(param1,_loc3_);
         §§goto(addr101);
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
               addr102:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_ || param2)
                           {
                              param1.§"!J§();
                           }
                           do
                           {
                              this.§=h§.splice(param2,0,param1);
                              do
                              {
                                 param1.§ !1§(this);
                              }
                              while(!(_loc3_ || param1));
                              
                           }
                           while(_loc4_ && param2);
                           
                           if(!_loc4_)
                           {
                              §§goto(addr24);
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr88:
                     }
                  }
                  addr122:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr24:
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc4_)
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
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr40:
                           §§pop();
                           if(!_loc4_)
                           {
                              addr47:
                              if(param1 < this.numChildren)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    addr65:
                                    _loc3_ = this.§=h§[param1];
                                    if(_loc5_)
                                    {
                                       _loc3_.§ !1§(null);
                                       loop0:
                                       while(true)
                                       {
                                          addr90:
                                          while(true)
                                          {
                                             this.§=h§.splice(param1,1);
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc3_.dispose();
                                       }
                                       if(!(_loc4_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr90);
                                       }
                                       §§goto(addr96);
                                    }
                                 }
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           §§goto(addr65);
                        }
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr40);
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §7!X§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc6_ || param2)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           addr42:
                           §§pop();
                           if(_loc6_ || param2)
                           {
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr66:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(this.numChildren);
                                       if(!_loc5_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_)
                                          {
                                             addr82:
                                             param2 = §§pop();
                                             addr83:
                                             §§push(param1);
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          var _loc4_:* = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(_loc5_ && param3)
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
                                    }
                                 }
                                 §§goto(addr83);
                              }
                           }
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr42);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr82);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr67);
                           }
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           §§push(§§pop() < §§pop());
                           continue loop0;
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                           addr97:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr97:
                        }
                        throw new RangeError("Invalid child index");
                        addr58:
                     }
                  }
                  §§goto(addr97);
               }
            }
         }
         addr67:
         return this.§=h§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§=h§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(this.§=h§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         return this.§=h§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§=h§.indexOf(param1);
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
         if(_loc4_)
         {
            if(_loc3_ != -1)
            {
               loop0:
               while(true)
               {
                  this.§=h§.splice(_loc3_,1);
                  loop1:
                  while(_loc4_ || param2)
                  {
                     while(true)
                     {
                        this.§=h§.splice(param2,0,param1);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr80);
      }
      
      public function §7!S§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(_loc5_)
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
               addr113:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§@!!§(_loc3_,_loc4_);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              if(!(_loc6_ && param1))
                              {
                                 return;
                              }
                              break;
                           }
                           §§push(§§pop() == §§pop());
                           addr79:
                           break;
                           if(_loc5_ || param1)
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
                        throw new ArgumentError("Not a child of this container");
                        addr87:
                     }
                  }
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §@!!§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!_loc5_)
         {
            this.§=h§[param1] = _loc4_;
            do
            {
               this.§=h§[param2] = _loc3_;
            }
            while(!(_loc6_ || _loc3_));
            
         }
      }
      
      public function §'!§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§=h§ = this.§=h§.sort(param1);
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
               if(_loc6_ || this)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:int = this.§=h§.length;
            var _loc3_:int = 0;
            loop0:
            while(_loc3_ < _loc2_)
            {
               §§push(Boolean(_loc5_ = (_loc4_ = this.§=h§[_loc3_]) as DisplayObjectContainer));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc6_ || _loc2_)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!_loc7_)
                           {
                              §§push(Boolean(§§pop()));
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr134);
                                    }
                                    while(true)
                                    {
                                    }
                                    §§goto(addr135);
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc4_ != param1)
                                    {
                                       while(true)
                                       {
                                          _loc3_++;
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue;
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
                                       }
                                       addr135:
                                       §§goto(addr134);
                                    }
                                    §§push(true);
                                    if(!_loc7_)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr105);
                              }
                              addr115:
                           }
                           addr134:
                           return true;
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr115);
               }
               addr105:
               return §§pop();
            }
            return false;
         }
         addr34:
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
            var _loc3_:int = this.§=h§.length;
            if(_loc10_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc10_ || param2)
               {
                  §§push(0);
                  if(!(_loc11_ && _loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc10_)
                        {
                           §?z§(param1,§&!T§);
                           if(!_loc11_)
                           {
                              transformCoords(§&!T§,0,0,§[<§);
                              if(_loc10_)
                              {
                                 while(true)
                                 {
                                    param2.x = §[<§.x;
                                    if(_loc10_)
                                    {
                                       continue;
                                    }
                                    addr509:
                                    loop1:
                                    while(true)
                                    {
                                       §§push(-Number.MAX_VALUE);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr488:
                                          addr474:
                                          loop6:
                                          for(; !(_loc11_ && _loc3_); if(_loc11_ && this)
                                          {
                                             continue;
                                          },if(!(_loc11_ && param1))
                                          {
                                             §§goto(addr461);
                                             §§push(Number(§§pop()));
                                          },§§goto(addr488))
                                          {
                                             _loc6_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(-Number.MAX_VALUE);
                                                if(_loc11_ && param1)
                                                {
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr489);
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc8_ >= _loc3_)
                                                               {
                                                                  loop17:
                                                                  while(_loc10_)
                                                                  {
                                                                     param2.x = _loc4_;
                                                                     loop18:
                                                                     for(; _loc10_ || this; param2.y = _loc6_,do
                                                                     {
                                                                        param2.width = _loc5_ - _loc4_;
                                                                        do
                                                                        {
                                                                           param2.height = _loc7_ - _loc6_;
                                                                        }
                                                                        while(_loc11_ && param2);
                                                                        
                                                                     }
                                                                     while(!_loc10_);
                                                                     ,if(_loc11_ && param2)
                                                                     {
                                                                        continue;
                                                                     },if(!_loc10_)
                                                                     {
                                                                        continue loop17;
                                                                     },if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           break loop16;
                                                                        }
                                                                        §§goto(addr404);
                                                                     },§§goto(addr310))
                                                                     {
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop40:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr301:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             addr283:
                                                                                          }
                                                                                          loop43:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         _loc8_++;
                                                                                                         break loop18;
                                                                                                         addr319:
                                                                                                      }
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr399:
                                                                                                               }
                                                                                                               addr402:
                                                                                                            }
                                                                                                            loop39:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               addr404:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        addr373:
                                                                                                                        §§push(§§pop() > param2.right);
                                                                                                                        loop27:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 addr378:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr377:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Number(param2.right));
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr386:
                                                                                                                              addr358:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 break loop17;
                                                                                                                              }
                                                                                                                              addr343:
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(_loc11_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(!(_loc11_ && this))
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() > param2.bottom);
                                                                                                                                          if(!(_loc11_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ || param2))
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop40;
                                                                                                                                             }
                                                                                                                                             §§push(Number(param2.bottom));
                                                                                                                                             if(!(_loc10_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop43;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr301);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(_loc11_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr399);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   break loop25;
                                                                                                                                                }
                                                                                                                                                addr342:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(Number(param2.y));
                                                                                                                                             }
                                                                                                                                             addr339:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop25;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr378);
                                                                                                                                       }
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                    §§goto(addr283);
                                                                                                                                    addr361:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr386);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr329:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop39;
                                                                                                                                 }
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr357);
                                                                                                                                 }
                                                                                                                                 §§goto(addr358);
                                                                                                                              }
                                                                                                                              if(!(_loc10_ || this))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr339);
                                                                                                                              §§push(§§pop() < param2.y);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr390:
                                                                                                                     }
                                                                                                                     §§goto(addr393);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                                addr310:
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr402);
                                                                                    }
                                                                                    §§goto(addr358);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr415:
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                     }
                                                                     while(!(_loc10_ || param2))
                                                                     {
                                                                        §§goto(addr342);
                                                                        §§goto(addr319);
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc11_ && param2))
                                                                     {
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.§=h§[_loc8_].getBounds(param1,param2);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            return param2;
                                                            addr420:
                                                         }
                                                         §§goto(addr512);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr461:
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr501);
                                          }
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             addr489:
                                             addr512:
                                             loop4:
                                             while(true)
                                             {
                                                if(!(_loc10_ || param2))
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(Number.MAX_VALUE));
                                                         addr501:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            continue loop1;
                                                         }
                                                      }
                                                      addr497:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         addr511:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            break loop4;
                                                         }
                                                      }
                                                      addr537:
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(1);
                                                addr513:
                                                while(true)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      return this.§=h§[0].getBounds(param1,param2);
                                                      addr514:
                                                   }
                                                   §§goto(addr497);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 return param2;
                                 addr117:
                              }
                           }
                           while(true)
                           {
                              §§goto(addr474);
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr511);
                  }
                  §§goto(addr513);
               }
               §§goto(addr420);
            }
            §§goto(addr537);
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
               if(_loc10_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              return null;
                           }
                           if(_loc10_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr100:
                                 while(true)
                                 {
                                 }
                                 addr100:
                              }
                              while(true)
                              {
                                 §§push(!visible);
                                 continue loop1;
                                 §§goto(addr100);
                              }
                           }
                           else
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(!§;o§);
                                 if(_loc9_ && _loc3_)
                                 {
                                    while(_loc10_)
                                    {
                                       §§pop();
                                       continue loop6;
                                    }
                                    continue loop0;
                                    addr79:
                                 }
                                 if(_loc9_ && _loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc10_)
                                 {
                                    continue loop2;
                                 }
                                 addr89:
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr100);
                                 }
                              }
                           }
                           §§goto(addr100);
                        }
                        var _loc3_:Number = param1.x;
                        var _loc4_:Number = param1.y;
                        var _loc5_:int;
                        §§push(_loc5_ = this.§=h§.length);
                        if(_loc10_)
                        {
                           §§push(int(§§pop() - 1));
                        }
                        var _loc6_:* = §§pop();
                        addr191:
                        if(_loc6_ >= 0)
                        {
                           _loc7_ = this.§=h§[_loc6_];
                           if(_loc10_ || _loc3_)
                           {
                              §?z§(_loc7_,§&!T§);
                              if(_loc10_ || _loc3_)
                              {
                                 transformCoords(§&!T§,_loc3_,_loc4_,§[<§);
                              }
                           }
                           if(_loc8_ = _loc7_.hitTest(§[<§,param2))
                           {
                              if(!(_loc10_ || this))
                              {
                                 §§goto(addr191);
                              }
                              return _loc8_;
                           }
                           §§push(_loc6_);
                           if(_loc10_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                           §§goto(addr191);
                        }
                        return null;
                        addr45:
                     }
                  }
               }
               §§goto(addr89);
            }
         }
         §§goto(addr100);
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param2);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc7_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§=h§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§=h§[_loc4_]).alpha);
            if(_loc6_ || _loc3_)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || param2)
                  {
                     §§push(!§§pop());
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop());
                        if(_loc6_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(_loc5_.visible);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr268:
                                             loop15:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      addr241:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.scaleY);
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!(_loc6_ || param2))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§=X§();
                                                                                          addr217:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr270:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.scaleX);
                                                                                                addr230:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr231:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      addr232:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          param1.§`P§(_loc5_);
                                                                                          addr167:
                                                                                          _loc5_.render(param1,param2);
                                                                                          while(_loc7_ && this)
                                                                                          {
                                                                                             §§goto(addr167);
                                                                                          }
                                                                                          addr146:
                                                                                          param1.§0!6§();
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr215:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_++;
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr146);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr215);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr217);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                    §§goto(addr167);
                                                                                 }
                                                                                 addr213:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                                 addr269:
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                           §§goto(addr232);
                                                                        }
                                                                        §§goto(addr231);
                                                                     }
                                                                     addr178:
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                            addr250:
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                   addr240:
                                                }
                                             }
                                          }
                                          addr267:
                                       }
                                       §§goto(addr269);
                                    }
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr267);
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr250);
               }
               §§goto(addr231);
            }
            §§goto(addr178);
         }
      }
      
      public function §+!8§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.bubbles)
            {
               if(_loc3_)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               while(true)
               {
               }
               addr60:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr60);
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
            this.§2E§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(!(_loc6_ || param1))
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
               _loc2_[_loc4_].dispatchEvent(param1);
            }
            _loc4_++;
         }
      }
      
      private function §2E§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || this)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc9_ || param2)
               {
                  param3.push(param1);
                  if(!(_loc8_ && param3))
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr69);
            }
         }
         addr67:
         if(_loc4_)
         {
            addr69:
            §§push(int((_loc5_ = _loc4_.§=h§).length));
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
                        this.§2E§(_loc5_[_loc7_],param2,param3);
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
         return this.§=h§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc6_ || param1)
         {
            this.§^!0§ = param1;
         }
         for each(_loc2_ in this.§=h§)
         {
            if(_loc6_ || this)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§^!0§;
      }
   }
}
