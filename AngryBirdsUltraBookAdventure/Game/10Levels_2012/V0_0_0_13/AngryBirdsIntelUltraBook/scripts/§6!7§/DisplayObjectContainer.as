package §6!7§
{
   import §"v§.§2!;§;
   import §0P§.RenderSupport;
   import §8g§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §18§:Matrix;
      
      private static var §1!c§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || DisplayObjectContainer)
         {
            §18§ = new Matrix();
         }
         do
         {
            §1!c§ = new Point();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §"! §:Vector.<DisplayObject>;
      
      private var §1!T§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§"! § = new Vector.<DisplayObject>(0);
               }
               while(!(_loc2_ || _loc1_));
               
               if(_loc1_)
               {
                  break;
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               return;
               addr75:
            }
            throw new §2!;§();
         }
         §§goto(addr75);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = this.§"! §.length;
         §§push(0);
         if(!(_loc3_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() >= _loc1_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc3_)
                     {
                        super.dispose();
                     }
                     else
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc3_)
                           {
                              addr86:
                              _loc2_ = int(§§pop());
                              continue;
                           }
                        }
                        §§goto(addr86);
                        addr96:
                     }
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  continue;
               }
               this.§"! §[_loc2_].dispose();
               §§goto(addr96);
            }
            §§goto(addr86);
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
               addr171:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr172:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop7:
                           while(§§pop())
                           {
                              param1.§#g§();
                              loop8:
                              while(true)
                              {
                                 this.§"! §.splice(param2,0,param1);
                                 loop9:
                                 while(true)
                                 {
                                    param1.§6w§(this);
                                    loop10:
                                    while(_loc4_ || _loc3_)
                                    {
                                       param1.dispatchEvent(new Event(Event.ADDED,true));
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop9;
                                          }
                                          §§push(Boolean(stage));
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   return;
                                                }
                                                addr20:
                                                addr24:
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop10;
                                                }
                                                continue;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       while(!(_loc3_ && this))
                                       {
                                          continue loop7;
                                          §§goto(addr106);
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           throw new RangeError("Invalid child index");
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr49);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr20);
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
         if(!_loc5_)
         {
            if(_loc3_ != -1)
            {
               if(!_loc5_)
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
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(_loc5_ || param1)
                              {
                                 addr67:
                                 addr65:
                                 §§push(param1 < this.numChildren);
                                 if(_loc4_ && this)
                                 {
                                 }
                                 addr76:
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       _loc3_ = this.§"! §[param1];
                                       addr79:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          _loc3_.dispatchEvent(new Event(Event.§ q§,true));
                                          loop0:
                                          while(true)
                                          {
                                             §§push(Boolean(stage));
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                                      addr177:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr169:
                                                }
                                                while(true)
                                                {
                                                   _loc3_.§6w§(null);
                                                   addr153:
                                                   while(true)
                                                   {
                                                      addr133:
                                                      while(true)
                                                      {
                                                         this.§"! §.splice(param1,1);
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                       }
                                       addr147:
                                       §§goto(addr193);
                                    }
                                    addr193:
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      _loc3_.dispose();
                                                      addr129:
                                                      if(_loc5_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr153);
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr129);
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    return;
                                 }
                                 throw new RangeError("Invalid child index");
                              }
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr76);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr76);
               }
               §§goto(addr67);
            }
            §§goto(addr65);
         }
         §§goto(addr79);
      }
      
      public function §'!C§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(param2);
            if(_loc5_ || param3)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr40);
                     }
                     §§goto(addr52);
                  }
                  addr40:
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        addr52:
                        §§pop();
                        if(_loc5_ || this)
                        {
                           addr60:
                           §§push(param2);
                           if(_loc5_ || this)
                           {
                              addr68:
                              §§push(this.numChildren);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr99);
                           }
                        }
                        §§goto(addr108);
                     }
                  }
                  addr91:
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(this.numChildren);
                        if(!_loc6_)
                        {
                           addr99:
                           §§push(int(§§pop() - 1));
                           if(!(_loc6_ && this))
                           {
                              addr108:
                              param2 = §§pop();
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr109);
                  }
                  addr109:
                  §§push(param1);
                  if(!(_loc6_ && param3))
                  {
                     addr117:
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_ || param3)
                     {
                        if(!_loc6_)
                        {
                           if(§§pop() > param2)
                           {
                              if(_loc6_)
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
                           §§push(_loc4_);
                        }
                        §§push(§§pop() + 1);
                        if(!_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                  }
                  return;
               }
               §§goto(addr99);
            }
            §§goto(addr68);
         }
         §§goto(addr60);
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
               addr89:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              addr61:
                              while(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr64);
                                 }
                                 if(!(_loc3_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              throw new RangeError("Invalid child index");
                              addr59:
                           }
                           addr60:
                        }
                     }
                  }
                  addr110:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr64:
         return this.§"! §[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§"! §.length;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(!(_loc5_ && param1))
               {
                  if(§§pop() >= _loc2_)
                  {
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        return null;
                     }
                     addr112:
                  }
                  else if(this.§"! §[_loc3_].name == param1)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr112);
                  }
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc3_ = §§pop();
         }
         return this.§"! §[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§"! §.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            if(_loc3_ != -1)
            {
               while(true)
               {
                  this.§"! §.splice(_loc3_,1);
                  loop1:
                  while(_loc4_ || param2)
                  {
                     while(true)
                     {
                        this.§"! §.splice(param2,0,param1);
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
               }
            }
            throw new ArgumentError("Not a child of this container");
         }
         §§goto(addr87);
      }
      
      public function §`!Y§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(_loc5_ || this)
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
         if(!_loc6_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(-1);
               addr129:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_ || this)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param1))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           do
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || param2)
                                 {
                                    throw new ArgumentError("Not a child of this container");
                                    addr110:
                                 }
                                 loop4:
                                 while(_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§1!2§(_loc3_,_loc4_);
                                       if(_loc5_ || param1)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    return;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr42);
                           }
                           while(!(_loc6_ && this));
                           
                           continue;
                        }
                     }
                     addr148:
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §1!2§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(!(_loc6_ && this))
         {
            this.§"! §[param1] = _loc4_;
            do
            {
               this.§"! §[param2] = _loc3_;
            }
            while(!(_loc5_ || _loc3_));
            
         }
      }
      
      public function §!K§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§"! § = this.§"! §.sort(param1);
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
               if(_loc6_ || param1)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§"! §.length;
         §§push(0);
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§"! §[_loc3_];
            _loc5_ = _loc4_ as DisplayObjectContainer;
            if(!_loc7_)
            {
               §§push(Boolean(_loc5_));
               if(!_loc7_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr179:
                        loop6:
                        while(true)
                        {
                           §§push(_loc5_.contains(param1));
                           if(!(_loc7_ && param1))
                           {
                              addr132:
                              §§push(Boolean(§§pop()));
                              if(_loc6_ || param1)
                              {
                                 while(true)
                                 {
                                    break loop6;
                                    §§goto(addr132);
                                 }
                                 addr140:
                              }
                              while(!(_loc6_ || _loc2_))
                              {
                                 continue loop7;
                                 §§goto(addr132);
                              }
                              return §§pop();
                              addr143:
                           }
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(_loc4_ != param1)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§§pop() + 1);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc7_ && param1)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(true);
                                          break;
                                       }
                                       addr142:
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       break loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       while(false)
                                       {
                                          continue loop3;
                                       }
                                       continue loop0;
                                       addr108:
                                    }
                                    if(_loc6_ || this)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr143);
                              }
                              §§push(true);
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr142);
                        }
                        return §§pop();
                     }
                     addr178:
                  }
                  §§goto(addr140);
               }
               §§goto(addr178);
            }
            §§goto(addr108);
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
         var _loc7_:Number = NaN;
         var _loc8_:* = 0;
         if(_loc11_)
         {
            if(param2 == null)
            {
               addr32:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§"! §.length;
            if(!_loc10_)
            {
               §§push(_loc3_);
               if(!_loc10_)
               {
                  §§push(0);
                  if(!(_loc10_ && _loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc10_ && param1))
                        {
                           §[!4§(param1,§18§);
                           if(_loc11_)
                           {
                              transformCoords(§18§,0,0,§1!c§);
                              if(_loc11_ || param1)
                              {
                                 while(true)
                                 {
                                    param2.x = §1!c§.x;
                                    if(!_loc10_)
                                    {
                                       continue;
                                    }
                                    addr439:
                                    loop1:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!(_loc10_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          addr428:
                                       }
                                       while(true)
                                       {
                                          if(_loc11_)
                                          {
                                             _loc8_ = §§pop();
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                break loop1;
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr547:
                                                   while(true)
                                                   {
                                                      addr533:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr534:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            addr535:
                                                            while(true)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(Number.MAX_VALUE));
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§push(-Number.MAX_VALUE);
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc11_ || _loc3_))
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(!(_loc11_ || param2))
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§push(Number(Number.MAX_VALUE));
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    _loc6_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(!(_loc11_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(-Number.MAX_VALUE);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(!(_loc11_ || _loc3_))
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr475);
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc10_ && param2))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr475:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               return this.§"! §[0].getBounds(param1,param2);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr478);
                                             }
                                          }
                                          §§goto(addr534);
                                       }
                                    }
                                    loop17:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       if(_loc11_)
                                       {
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(§§pop() >= _loc3_)
                                             {
                                                loop18:
                                                do
                                                {
                                                   param2.x = _loc4_;
                                                   loop19:
                                                   while(true)
                                                   {
                                                      param2.y = _loc6_;
                                                      loop20:
                                                      while(_loc11_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               param2.width = _loc5_ - _loc4_;
                                                               for(; _loc11_; param2.height = _loc7_ - _loc6_,if(_loc11_ || _loc3_)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  continue loop20;
                                                               })
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               continue loop19;
                                                            }
                                                            addr418:
                                                            §§push(_loc4_);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() < param2.x);
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(Number(param2.x));
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(§§pop() > param2.right);
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          addr363:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr364:
                                                                                             while(true)
                                                                                             {
                                                                                                addr382:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr362:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(param2.right));
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          while(_loc11_ || param1)
                                                                                          {
                                                                                             §§goto(addr382);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr400:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                          }
                                                                                          addr399:
                                                                                          addr375:
                                                                                       }
                                                                                    }
                                                                                    addr383:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr384:
                                                                                       while(_loc11_ || param2)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() < param2.y);
                                                                                             continue loop27;
                                                                                          }
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr375);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc11_ || _loc3_))
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  §§goto(addr342);
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         continue loop17;
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                }
                                                while(!_loc11_);
                                                
                                                return param2;
                                             }
                                             this.§"! §[_loc8_].getBounds(param1,param2);
                                             §§goto(addr418);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr194);
                                    }
                                 }
                                 return param2;
                                 addr125:
                              }
                           }
                           §§goto(addr547);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr533);
                  }
                  §§goto(addr535);
               }
               §§goto(addr428);
            }
            §§goto(addr439);
         }
         §§goto(addr32);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc9_ && _loc3_))
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
                     §§push(Boolean(§§pop()));
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
                                 addr67:
                                 while(true)
                                 {
                                    §§push(!visible);
                                    if(_loc10_)
                                    {
                                       continue loop0;
                                    }
                                    while(_loc10_)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc10_ || this))
                                             {
                                                continue loop5;
                                             }
                                             §§push(!§<!4§);
                                             if(!(_loc9_ && param2))
                                             {
                                                if(!(_loc10_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!_loc10_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc9_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break loop9;
                                                   }
                                                }
                                                continue loop3;
                                                addr81:
                                             }
                                             addr56:
                                             if(!(_loc9_ && param2))
                                             {
                                                return null;
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        loop10:
                        while(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§goto(addr56);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop10;
                                 }
                              }
                              addr65:
                           }
                           §§goto(addr67);
                        }
                        var _loc3_:Number = param1.x;
                        var _loc4_:Number = param1.y;
                        var _loc5_:int = this.§"! §.length;
                        §§push(_loc5_);
                        if(_loc10_)
                        {
                           §§push(int(§§pop() - 1));
                        }
                        var _loc6_:* = §§pop();
                        while(true)
                        {
                           if(_loc6_ < 0)
                           {
                              return null;
                           }
                           _loc7_ = this.§"! §[_loc6_];
                           if(!_loc9_)
                           {
                              §[!4§(_loc7_,§18§);
                              if(_loc10_)
                              {
                                 addr168:
                                 transformCoords(§18§,_loc3_,_loc4_,§1!c§);
                              }
                              _loc8_ = _loc7_.hitTest(§1!c§,param2);
                              if(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc10_ || param1)
                                    {
                                       break;
                                    }
                                 }
                              }
                              continue;
                           }
                           §§goto(addr168);
                        }
                        return _loc8_;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:DisplayObject = null;
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc6_ || param2)
            {
               §§push(§§pop() * this.alpha);
               if(_loc6_)
               {
                  addr34:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               §§goto(addr36);
            }
            §§goto(addr34);
         }
         addr36:
         var _loc3_:int = this.§"! §.length;
         §§push(0);
         if(_loc6_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§"! §[_loc4_];
            if(_loc6_)
            {
               §§push(_loc5_.alpha);
               loop1:
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc5_.visible);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc6_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop28:
                                                      while(true)
                                                      {
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           continue loop29;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop17:
                                                                        while(_loc6_)
                                                                        {
                                                                           §§pop();
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.scaleY);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(0);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 while(_loc6_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr194:
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                              }
                                                                              if(!(_loc6_ || param2))
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 while(!_loc7_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§pop();
                                                                                 }
                                                                                 continue loop5;
                                                                                 addr271:
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§;l§();
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§'d§(_loc5_);
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             _loc5_.render(param1,param2);
                                                                                             loop23:
                                                                                             for(; !_loc7_; while(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop21;
                                                                                             })
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§7!G§();
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr87:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_.scaleX);
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   addr276:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(!(_loc6_ || param2))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break;
                                                                                                addr85:
                                                                                             }
                                                                                             while(false)
                                                                                             {
                                                                                                §§goto(addr87);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§goto(addr91);
                                                                                       }
                                                                                       continue loop9;
                                                                                       addr62:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr62);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr243:
                                                }
                                                §§goto(addr271);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr243);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr85);
         }
      }
      
      public function §5!>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.bubbles)
            {
               if(!_loc2_)
               {
                  throw new ArgumentError("Broadcast of bubbling events is prohibited");
               }
               addr56:
               while(true)
               {
               }
               addr56:
            }
            while(true)
            {
               this.dispatchEventOnChildren(param1);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc5_)
         {
            this.§ M§(this,param1.type,_loc2_);
         }
         var _loc3_:int = _loc2_.length;
         §§push(0);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && this))
            {
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(!_loc5_)
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
                  §§push(_loc4_);
               }
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc4_ = §§pop();
         }
      }
      
      private function § M§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(!_loc9_)
         {
            if(param1.hasEventListener(param2))
            {
               if(!_loc9_)
               {
                  addr37:
                  param3.push(param1);
                  if(_loc8_)
                  {
                     §§goto(addr43);
                  }
                  §§goto(addr46);
               }
            }
            addr43:
            if(_loc4_)
            {
               addr46:
               _loc5_ = _loc4_.§"! §;
               if(_loc8_ || this)
               {
                  §§push(int(_loc5_.length));
                  while(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                        }
                        if(!_loc8_)
                        {
                           break;
                        }
                        _loc7_ = §§pop();
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc7_);
                              while(§§pop() < _loc6_)
                              {
                                 this.§ M§(_loc5_[_loc7_],param2,param3);
                                 if(_loc9_ && param3)
                                 {
                                    break;
                                 }
                                 §§push(_loc7_);
                                 if(_loc8_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc8_ || param1)
                                 {
                                    _loc7_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr146);
                           }
                        }
                     }
                  }
               }
               §§goto(addr137);
            }
            addr146:
            return;
         }
         §§goto(addr37);
      }
      
      public function get numChildren() : int
      {
         return this.§"! §.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc5_ || _loc2_)
         {
            this.§1!T§ = param1;
         }
         for each(_loc2_ in this.§"! §)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§1!T§;
      }
   }
}
