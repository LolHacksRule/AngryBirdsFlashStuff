package §7!8§
{
   import §&!Z§.transformCoords;
   import §5Q§.§%!t§;
   import §=5§.§^T§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §02§:Matrix;
      
      private static var §`!7§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §02§ = new Matrix();
         }
         do
         {
            §`!7§ = new Point();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §-!#§:Vector.<DisplayObject>;
      
      private var §4"%§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
               {
                  do
                  {
                     this.§-!#§ = new Vector.<DisplayObject>(0);
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            while(_loc2_ && _loc1_);
            
         }
         throw new §^T§();
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§-!#§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc4_)
               {
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  super.dispose();
               }
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§-!#§[_loc2_].dispose();
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
      
      public function § k§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§-!#§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  this.addChild(param1);
               }
               if(!_loc5_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     return;
                  }
                  addr91:
                  return;
               }
            }
            else if(param1.z < this.§-!#§[_loc3_].z)
            {
               break;
            }
            _loc3_++;
         }
         if(!_loc5_)
         {
            this.addChildAt(param1,_loc3_);
         }
         §§goto(addr91);
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
                           while(true)
                           {
                              param1.§]!5§();
                              this.§-!#§.splice(param2,0,param1);
                              if(_loc4_ && this)
                              {
                                 break;
                              }
                              param1.§7"=§(this);
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr19);
                              }
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr117:
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
         addr19:
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
         if(!(_loc5_ && param1))
         {
            if(_loc3_ != -1)
            {
               if(!(_loc5_ && param2))
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
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr71:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 _loc3_ = this.§-!#§[param1];
                                 if(!_loc5_)
                                 {
                                    _loc3_.§7"=§(null);
                                    loop0:
                                    while(true)
                                    {
                                       addr116:
                                       while(true)
                                       {
                                          this.§-!#§.splice(param1,1);
                                          while(param2)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   _loc3_.dispose();
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr137);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr116);
                                    }
                                    §§goto(addr137);
                                 }
                              }
                           }
                           addr137:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §<!7§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param2);
            if(_loc5_ || param1)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ || this)
                        {
                           §§pop();
                           if(!(_loc6_ && param2))
                           {
                              §§push(param2);
                              if(_loc5_)
                              {
                                 §§goto(addr70);
                              }
                              §§push(int(§§pop() - 1));
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr86);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr73);
                        }
                     }
                  }
                  §§goto(addr70);
               }
               addr70:
               if(§§pop() >= this.numChildren)
               {
                  if(!_loc6_)
                  {
                     addr73:
                     §§push(this.numChildren);
                     if(!_loc5_)
                     {
                     }
                     addr86:
                     param2 = §§pop();
                  }
                  §§goto(addr87);
               }
               addr87:
               §§push(param1);
               if(_loc5_)
               {
                  addr90:
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               while(true)
               {
                  if(_loc4_ > param2)
                  {
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     if(!(_loc6_ && param3))
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
         §§goto(addr73);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr71:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              §§goto(addr63);
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr57:
                     }
                  }
                  addr91:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr63:
         return this.§-!#§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§-!#§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_)
               {
                  break;
               }
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§-!#§[_loc3_].name == param1)
            {
               §§goto(addr76);
            }
            §§goto(addr52);
         }
         if(!(_loc4_ && _loc3_))
         {
            return null;
         }
         addr76:
         return this.§-!#§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§-!#§.indexOf(param1);
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
         if(!_loc4_)
         {
            if(_loc3_ != -1)
            {
               do
               {
                  this.§-!#§.splice(_loc3_,1);
                  do
                  {
                     this.§-!#§.splice(param2,0,param1);
                  }
                  while(_loc4_ && this);
                  
               }
               while(_loc4_);
               
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §?!C§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param2)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr116:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr117:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§'!=§(_loc3_,_loc4_);
                           }
                           while(_loc5_);
                           
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(!(_loc5_ && param2))
                           {
                              return;
                           }
                           continue loop0;
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr97:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr115:
         }
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(-1);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     §§goto(addr117);
                  }
                  §§goto(addr97);
               }
               else
               {
                  §§goto(addr116);
               }
            }
            else
            {
               §§goto(addr115);
            }
            §§goto(addr116);
         }
      }
      
      public function §'!=§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_ || _loc3_)
         {
            this.§-!#§[param1] = _loc4_;
            do
            {
               this.§-!#§[param2] = _loc3_;
            }
            while(!(_loc5_ || param2));
            
         }
      }
      
      public function §4!^§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§-!#§ = this.§-!#§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(_loc7_)
         {
            if(param1 == this)
            {
               if(!(_loc6_ && _loc3_))
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§-!#§.length;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               return false;
            }
            §§push(Boolean(_loc5_ = (_loc4_ = this.§-!#§[_loc3_]) as DisplayObjectContainer));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc5_.contains(param1));
                        if(_loc7_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc6_)
                           {
                              addr121:
                              if(§§pop())
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    §§goto(addr140);
                                 }
                                 while(true)
                                 {
                                 }
                                 §§goto(addr141);
                              }
                              while(_loc4_ != param1)
                              {
                                 do
                                 {
                                    _loc3_++;
                                 }
                                 while(!_loc7_);
                                 
                                 if(_loc6_ && this)
                                 {
                                    break;
                                 }
                                 if(!_loc6_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr141:
                                 §§goto(addr140);
                              }
                              §§push(true);
                              if(_loc7_ || _loc3_)
                              {
                                 break;
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr121);
                     }
                     addr140:
                     return true;
                  }
                  break;
               }
               §§goto(addr121);
            }
            break;
         }
         return §§pop();
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
         if(_loc11_ || this)
         {
            if(param2 == null)
            {
               addr37:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§-!#§.length;
            if(_loc11_)
            {
               §§push(_loc3_);
               if(_loc11_)
               {
                  §§push(0);
                  if(!(_loc10_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc10_)
                        {
                           §]!U§(param1,§02§);
                           if(_loc11_ || _loc3_)
                           {
                              transformCoords(§02§,0,0,§`!7§);
                              if(_loc11_ || this)
                              {
                                 while(true)
                                 {
                                    param2.x = §`!7§.x;
                                    if(_loc11_)
                                    {
                                       continue;
                                    }
                                    addr401:
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc8_ >= _loc3_)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             if(_loc11_ || _loc3_)
                                             {
                                                param2.x = _loc4_;
                                                loop26:
                                                while(_loc11_ || param1)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      param2.y = _loc6_;
                                                      loop27:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            param2.width = _loc5_ - _loc4_;
                                                            while(_loc11_)
                                                            {
                                                               param2.height = _loc7_ - _loc6_;
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop27;
                                                               }
                                                            }
                                                            continue loop26;
                                                         }
                                                         addr391:
                                                         §§push(_loc4_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() < param2.x);
                                                            loop31:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(Number(param2.x));
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr380:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > param2.right);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr355:
                                                                                    §§push(_loc5_);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr357:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                       }
                                                                                       continue loop32;
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ && _loc3_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() > param2.bottom);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr232:
                                                                                                                  if(_loc11_ || this)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc11_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr265:
                                                                                                                           if(_loc10_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr278:
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr281:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        if(_loc10_ && this)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           _loc8_++;
                                                                                                                           break loop26;
                                                                                                                           addr298:
                                                                                                                        }
                                                                                                                        §§goto(addr357);
                                                                                                                     }
                                                                                                                     §§goto(addr265);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        break loop20;
                                                                                                                     }
                                                                                                                     addr372:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(Number(param2.bottom));
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr278);
                                                                                                                  }
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                               §§goto(addr281);
                                                                                                            }
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push(Number(param2.y));
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               loop24:
                                                                                                               while(_loc11_)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  addr363:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     break loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr365:
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < param2.y);
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  §§goto(addr319);
                                                                                                               }
                                                                                                               addr319:
                                                                                                            }
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                         addr374:
                                                                                                      }
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                   addr348:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr374);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(Number(param2.right));
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                           }
                                                                           continue loop33;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr232);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr348);
                                                }
                                                addr198:
                                             }
                                             §§goto(addr380);
                                          }
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          this.§-!#§[_loc8_].getBounds(param1,param2);
                                       }
                                       §§goto(addr391);
                                    }
                                 }
                                 return this.§-!#§[0].getBounds(param1,param2);
                              }
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr427);
                     }
                     §§goto(addr464);
                  }
                  §§goto(addr466);
               }
               §§goto(addr396);
            }
            §§goto(addr123);
         }
         §§goto(addr37);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || param1)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                           addr95:
                           while(true)
                           {
                              addr67:
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
                                          if(_loc10_)
                                          {
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§pop();
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(§§pop())
                     {
                        if(_loc10_)
                        {
                           if(!(_loc9_ && param2))
                           {
                              §§goto(addr61);
                           }
                           §§goto(addr95);
                        }
                        else if(!_loc9_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr79);
                     }
                     var _loc3_:Number = param1.x;
                     var _loc4_:Number = param1.y;
                     var _loc5_:int;
                     §§push(_loc5_ = this.§-!#§.length);
                     if(_loc10_ || param2)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     var _loc6_:* = §§pop();
                     addr181:
                     if(_loc6_ >= 0)
                     {
                        _loc7_ = this.§-!#§[_loc6_];
                        if(!(_loc9_ && param2))
                        {
                           §]!U§(_loc7_,§02§);
                           if(!(_loc9_ && param2))
                           {
                              transformCoords(§02§,_loc3_,_loc4_,§`!7§);
                           }
                        }
                        if(_loc8_ = _loc7_.hitTest(§`!7§,param2))
                        {
                           if(!_loc10_)
                           {
                              §§goto(addr181);
                           }
                           return _loc8_;
                        }
                        §§push(_loc6_);
                        if(_loc10_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc6_ = §§pop();
                        §§goto(addr181);
                     }
                     return null;
                  }
               }
            }
         }
         addr61:
         return null;
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_ || param2)
         {
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_)
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
         var _loc3_:int = this.§-!#§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§-!#§[_loc4_]).alpha);
            if(!_loc6_)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(!§§pop());
                     if(!_loc6_)
                     {
                        addr70:
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_.visible);
                                    if(_loc7_)
                                    {
                                       addr243:
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop9:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                addr246:
                                                while(true)
                                                {
                                                   §§push(_loc5_.scaleX);
                                                   break loop9;
                                                }
                                             }
                                          }
                                          addr199:
                                          while(true)
                                          {
                                             §§goto(addr200);
                                          }
                                       }
                                       addr243:
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr243);
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr70);
               }
               §§goto(addr140);
            }
            §§goto(addr199);
         }
      }
      
      public function §2l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1.bubbles)
            {
               loop0:
               while(true)
               {
                  this.dispatchEventOnChildren(param1);
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  addr65:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(!_loc5_)
         {
            this.§``§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc5_ && this)
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
      
      private function §``§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc9_ || param1)
         {
            if(param1.hasEventListener(param2))
            {
               if(_loc9_ || param2)
               {
                  param3.push(param1);
                  if(!(_loc8_ && param1))
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
            §§push(int((_loc5_ = _loc4_.§-!#§).length));
            if(!(_loc8_ && param2))
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
                        this.§``§(_loc5_[_loc7_],param2,param3);
                        while(true)
                        {
                           _loc7_++;
                           if(_loc8_)
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
         return this.§-!#§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc6_ && this))
         {
            this.§4"%§ = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§-!#§)
         {
            if(_loc5_ || _loc3_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§4"%§;
      }
   }
}
