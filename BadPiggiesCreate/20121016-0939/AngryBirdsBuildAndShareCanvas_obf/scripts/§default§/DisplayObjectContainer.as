package §default§
{
   import §2!F§.§["?§;
   import §3W§.transformCoords;
   import §6p§.§5!W§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §,C§:Matrix;
      
      private static var §?!`§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,C§ = new Matrix();
         }
         do
         {
            §?!`§ = new Point();
         }
         while(_loc1_);
         
      }
      
      private var §"!C§:Vector.<DisplayObject>;
      
      private var §;!`§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            do
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     throw new §["?§();
                  }
                  loop1:
                  while(true)
                  {
                     addr23:
                     while(true)
                     {
                        this.§"!C§ = new Vector.<DisplayObject>(0);
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr23);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§"!C§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     super.dispose();
                     break;
                  }
                  loop1:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        _loc2_++;
                        continue loop1;
                     }
                  }
                  continue;
                  addr52:
               }
               break;
            }
            this.§"!C§[_loc2_].dispose();
            §§goto(addr72);
            §§goto(addr52);
         }
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.addChildAt(param1,this.numChildren);
         }
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
                           while(true)
                           {
                              param1.§<!>§();
                              while(true)
                              {
                                 this.§"!C§.splice(param2,0,param1);
                                 loop8:
                                 while(true)
                                 {
                                    param1.§9J§(this);
                                    addr104:
                                    while(_loc4_)
                                    {
                                       param1.dispatchEvent(new Event(Event.ADDED,true));
                                       continue loop8;
                                    }
                                    continue loop0;
                                 }
                                 addr44:
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr51);
                              }
                              if(_loc4_ || param1)
                              {
                                 return;
                                 addr24:
                              }
                           }
                        }
                        throw new RangeError("Invalid child index");
                        addr133:
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
         while(stage)
         {
            §§goto(addr44);
         }
         §§goto(addr24);
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
         if(_loc5_ || this)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           addr50:
                           §§pop();
                           if(!(_loc4_ && param1))
                           {
                              addr62:
                              if(param1 < this.numChildren)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    _loc3_ = this.§"!C§[param1];
                                    addr70:
                                    if(_loc5_ || this)
                                    {
                                       _loc3_.dispatchEvent(new Event(Event.§2!v§,true));
                                    }
                                    while(true)
                                    {
                                       if(stage)
                                       {
                                          while(_loc5_)
                                          {
                                             _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                             while(true)
                                             {
                                             }
                                          }
                                          continue;
                                          addr136:
                                       }
                                       while(true)
                                       {
                                          _loc3_.§9J§(null);
                                          loop4:
                                          while(!_loc4_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§"!C§.splice(param1,1);
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!param2)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc4_ && this))
                                                      {
                                                         _loc3_.dispose();
                                                      }
                                                      if(_loc5_ || param1)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                                addr163:
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr144);
                                       }
                                    }
                                 }
                                 return;
                              }
                              throw new RangeError("Invalid child index");
                           }
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr62);
      }
      
      public function removeChildren(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_ || this)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(_loc6_ || this)
                           {
                              addr50:
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr66:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(this.numChildren);
                                       if(_loc6_)
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(_loc6_)
                                          {
                                             param2 = §§pop();
                                             addr78:
                                             §§push(param1);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr82);
                                          }
                                          addr82:
                                          var _loc4_:* = §§pop();
                                          while(true)
                                          {
                                             if(_loc4_ > param2)
                                             {
                                                if(_loc5_ && param3)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_ || param1)
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
                              }
                              §§goto(addr78);
                              §§push(int(§§pop()));
                           }
                           §§goto(addr78);
                        }
                     }
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr78);
         }
         §§goto(addr50);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr86:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return this.§"!C§[param1];
                           }
                           if(_loc2_)
                           {
                              addr73:
                              break;
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
         §§goto(addr73);
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§"!C§.length;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc5_ && _loc3_))
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
            if(this.§"!C§[_loc3_].name == param1)
            {
               §§goto(addr75);
            }
            §§goto(addr51);
         }
         if(!_loc5_)
         {
            return null;
         }
         addr75:
         return this.§"!C§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§"!C§.indexOf(param1);
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
               while(true)
               {
                  this.§"!C§.splice(_loc3_,1);
                  loop1:
                  while(_loc5_ || param1)
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§"!C§.splice(param2,0,param1);
                           if(_loc5_ || param2)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                        addr86:
                     }
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr86);
      }
      
      public function §"8§(param1:DisplayObject, param2:DisplayObject) : void
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
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
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
                  if(_loc6_ || this)
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
                                 this.§>!H§(_loc3_,_loc4_);
                                 if(_loc6_ || param2)
                                 {
                                    break;
                                 }
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              if(!_loc5_)
                              {
                                 return;
                              }
                              break;
                           }
                           §§push(§§pop() == §§pop());
                           addr70:
                           break;
                           if(!(_loc5_ && param2))
                           {
                              continue;
                           }
                           addr114:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr114:
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr78:
                     }
                  }
                  §§goto(addr114);
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §>!H§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_ || _loc3_)
         {
            this.§"!C§[param1] = _loc4_;
         }
         do
         {
            this.§"!C§[param2] = _loc3_;
         }
         while(_loc6_ && this);
         
      }
      
      public function §05§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!C§ = this.§"!C§.sort(param1);
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
               if(_loc7_ || param1)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§"!C§.length;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc2_)
         {
            §§push(Boolean(_loc5_ = (_loc4_ = this.§"!C§[_loc3_]) as DisplayObjectContainer));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc5_.contains(param1));
                        if(_loc7_ || _loc2_)
                        {
                           addr137:
                           §§push(Boolean(§§pop()));
                           do
                           {
                              if(!§§pop())
                              {
                                 while(_loc4_ != param1)
                                 {
                                    do
                                    {
                                       _loc3_++;
                                    }
                                    while(!_loc7_);
                                    
                                    if(_loc6_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(true);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    addr149:
                                    return true;
                                 }
                                 return §§pop();
                              }
                           }
                           while(_loc6_ && param1);
                           
                           return §§pop();
                           addr148:
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr149);
                  }
               }
            }
            §§goto(addr137);
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
            var _loc3_:int = this.§"!C§.length;
            if(!(_loc10_ && this))
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
                           §5!m§(param1,§,C§);
                           if(_loc11_ || this)
                           {
                              transformCoords(§,C§,0,0,§?!`§);
                              if(_loc11_ || param1)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    param2.x = §?!`§.x;
                                    if(_loc11_ || param2)
                                    {
                                       param2.y = §?!`§.y;
                                       if(!_loc10_)
                                       {
                                          if(true)
                                          {
                                             param2.width = param2.height = 0;
                                             if(!(_loc10_ && param2))
                                             {
                                                return param2;
                                                addr128:
                                             }
                                          }
                                          continue;
                                          break;
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc11_ || param2)
                                          {
                                             while(true)
                                             {
                                                _loc8_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   addr485:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(-Number.MAX_VALUE);
                                                      addr468:
                                                      addr479:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr469:
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  addr487:
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr488:
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        addr489:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr515:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(Number.MAX_VALUE));
                                                                           }
                                                                        }
                                                                        return this.§"!C§[0].getBounds(param1,param2);
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                               }
                                                               addr477:
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(Number.MAX_VALUE));
                                                         addr462:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            break loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr451:
                                                while(_loc11_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr515);
                                                   }
                                                   break;
                                                }
                                                break loop0;
                                                §§goto(addr477);
                                             }
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc8_ >= _loc3_)
                                                {
                                                   loop18:
                                                   while(_loc11_ || this)
                                                   {
                                                      param2.x = _loc4_;
                                                      loop19:
                                                      while(_loc11_)
                                                      {
                                                         param2.y = _loc6_;
                                                         loop20:
                                                         while(true)
                                                         {
                                                            param2.width = _loc5_ - _loc4_;
                                                            while(_loc11_ || param2)
                                                            {
                                                               param2.height = _loc7_ - _loc6_;
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  continue loop20;
                                                               }
                                                            }
                                                            addr206:
                                                            if(_loc11_ || this)
                                                            {
                                                               continue loop17;
                                                            }
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() > param2.bottom);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           §§push(Number(param2.bottom));
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr286:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   break loop19;
                                                                                                }
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   addr390:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      addr357:
                                                                                                      loop37:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() > param2.right);
                                                                                                         addr360:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     loop32:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop39:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr371:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr372:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 addr373:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() < param2.y);
                                                                                                                                       while(!§§pop())
                                                                                                                                       {
                                                                                                                                          §§push(Number(param2.y));
                                                                                                                                          break loop29;
                                                                                                                                       }
                                                                                                                                       addr323:
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr350:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr351:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         continue loop39;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr339:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < param2.x);
                                                                                                                                                   addr379:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr380:
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!_loc11_)
                                                                                                                                                            {
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr381:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(param2.x));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr376:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                          §§goto(addr323);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr351);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop39;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr363:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(Number(param2.right));
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§goto(addr371);
                                                                                                                  }
                                                                                                                  §§goto(addr372);
                                                                                                               }
                                                                                                               §§goto(addr372);
                                                                                                            }
                                                                                                            §§goto(addr379);
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr285:
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  break;
                                                               }
                                                               addr248:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§goto(addr286);
                                                                  continue loop29;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc11_ || param2)
                                                               {
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                         }
                                                      }
                                                      if(_loc11_ || param2)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc11_ || this)
                                                            {
                                                               _loc8_++;
                                                               §§goto(addr206);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr376);
                                                            }
                                                            addr401:
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§"!C§[_loc8_].getBounds(param1,param2);
                                                }
                                                §§goto(addr401);
                                             }
                                             addr411:
                                             addr421:
                                          }
                                          §§goto(addr488);
                                       }
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(-Number.MAX_VALUE);
                                    if(!(_loc10_ && param1))
                                    {
                                       if(_loc11_)
                                       {
                                          addr436:
                                          §§push(Number(§§pop()));
                                          if(_loc11_ || param1)
                                          {
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                _loc7_ = §§pop();
                                                §§goto(addr451);
                                             }
                                             §§goto(addr469);
                                          }
                                          §§goto(addr462);
                                       }
                                       §§goto(addr468);
                                    }
                                    §§goto(addr436);
                                 }
                              }
                              §§goto(addr479);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr485);
                     }
                     §§goto(addr487);
                  }
                  §§goto(addr489);
               }
               §§goto(addr411);
            }
            §§goto(addr421);
         }
         §§goto(addr37);
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
            if(!(_loc9_ && param2))
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
                           addr110:
                           loop8:
                           while(true)
                           {
                              addr58:
                              while(true)
                              {
                                 §§push(!visible);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc10_ || this))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(_loc9_ && _loc3_)
                                       {
                                          continue loop7;
                                       }
                                       addr70:
                                       if(!_loc9_)
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             if(!(_loc10_ || _loc3_))
                                             {
                                                continue loop8;
                                             }
                                             §§push(!§#!1§);
                                             if(!(_loc9_ && this))
                                             {
                                                if(!_loc10_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr70);
                                             }
                                             §§goto(addr70);
                                          }
                                          addr80:
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr109:
                     }
                     while(§§pop())
                     {
                        if(_loc10_)
                        {
                           if(!(_loc9_ && this))
                           {
                              return null;
                           }
                           §§goto(addr80);
                        }
                        else if(true)
                        {
                           break;
                        }
                        §§goto(addr58);
                     }
                     var _loc3_:Number = param1.x;
                     var _loc4_:Number = param1.y;
                     var _loc5_:int;
                     §§push(_loc5_ = this.§"!C§.length);
                     if(!_loc9_)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     var _loc6_:* = §§pop();
                     addr181:
                     if(_loc6_ >= 0)
                     {
                        _loc7_ = this.§"!C§[_loc6_];
                        if(!_loc9_)
                        {
                           §5!m§(_loc7_,§,C§);
                           if(!_loc9_)
                           {
                              transformCoords(§,C§,_loc3_,_loc4_,§?!`§);
                           }
                        }
                        if(_loc8_ = _loc7_.hitTest(§?!`§,param2))
                        {
                           if(!_loc10_)
                           {
                              addr166:
                              §§push(_loc6_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc6_ = §§pop();
                              §§goto(addr181);
                           }
                           return _loc8_;
                        }
                        §§goto(addr166);
                     }
                     return null;
                  }
               }
            }
            §§goto(addr109);
         }
         §§goto(addr110);
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param2);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() * this.alpha);
               if(_loc6_ || param1)
               {
                  addr44:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr46);
            }
            §§goto(addr44);
         }
         addr46:
         var _loc3_:int = this.§"!C§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§"!C§[_loc4_]).alpha);
            if(!_loc7_)
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     §§push(!§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(_loc5_.visible);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr217:
                                       loop19:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.scaleX);
                                                      addr190:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr191:
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  addr195:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(_loc7_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr202:
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.scaleY);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc7_ && param2)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr200);
                                                                                 }
                                                                                 §§goto(addr202);
                                                                              }
                                                                              addr200:
                                                                              addr203:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(!(_loc6_ || param2))
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§[L§();
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§+U§(_loc5_);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             _loc5_.render(param1,param2);
                                                                                             loop4:
                                                                                             for(; !_loc7_; while(_loc6_ || param1)
                                                                                             {
                                                                                             })
                                                                                             {
                                                                                                if(_loc7_ && param2)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§]9§();
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr203);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr177:
                                                                                 addr184:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr115);
                                                                                 }
                                                                                 §§goto(addr118);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr194:
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                    }
                                    addr216:
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr194);
               }
               §§goto(addr191);
            }
            §§goto(addr190);
         }
      }
      
      public function §,![§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!param1.bubbles)
            {
               do
               {
                  this.dispatchEventOnChildren(param1);
               }
               while(_loc2_);
               
               if(_loc3_ || param1)
               {
                  return;
                  addr62:
               }
            }
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         §§goto(addr62);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_)
         {
            this.§7§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc6_ || this)
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
            _loc2_[_loc4_].dispatchEvent(param1);
            §§goto(addr91);
         }
      }
      
      private function §7§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(_loc8_ || param1)
         {
            if(param1.hasEventListener(param2))
            {
               if(!_loc9_)
               {
                  addr41:
                  param3.push(param1);
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr63);
               }
            }
            addr51:
            if(_loc4_)
            {
               addr63:
               §§push(int((_loc5_ = _loc4_.§"!C§).length));
               if(_loc8_ || param1)
               {
                  _loc6_ = §§pop();
                  if(!_loc9_)
                  {
                     addr121:
                     _loc7_ = 0;
                  }
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc7_ < _loc6_)
                        {
                           this.§7§(_loc5_[_loc7_],param2,param3);
                           while(true)
                           {
                              _loc7_++;
                              if(!(_loc8_ || this))
                              {
                                 break;
                              }
                              if(_loc8_ || param3)
                              {
                                 if(false)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                  }
               }
               §§goto(addr121);
            }
            addr126:
            return;
         }
         §§goto(addr41);
      }
      
      public function get numChildren() : int
      {
         return this.§"!C§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_)
         {
            this.§;!`§ = param1;
         }
         for each(_loc2_ in this.§"!C§)
         {
            if(_loc5_ || this)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§;!`§;
      }
   }
}
