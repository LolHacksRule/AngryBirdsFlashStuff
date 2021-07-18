package §+!-§
{
   import §%!j§.§&Y§;
   import §]!R§.§'3§;
   import §`!=§.transformCoords;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §^L§:Matrix;
      
      private static var §-J§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §^L§ = new Matrix();
         }
         do
         {
            §-J§ = new Point();
         }
         while(!_loc2_);
         
      }
      
      private var §"I§:Vector.<DisplayObject>;
      
      private var §?3§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(getQualifiedClassName(this) != "starling.display::DisplayObjectContainer")
            {
               do
               {
                  this.§"I§ = new Vector.<DisplayObject>(0);
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc2_)
               {
                  break;
               }
               if(!_loc2_)
               {
                  continue;
               }
               return;
               addr54:
            }
            throw new §'3§();
         }
         §§goto(addr54);
      }
      
      override public function dispose() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = this.§"I§.length;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_ && _loc1_)
               {
                  break;
               }
               if(_loc3_ || _loc1_)
               {
                  super.dispose();
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
            this.§"I§[_loc2_].dispose();
            §§goto(addr86);
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
      
      public function §'!1§(param1:DisplayObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§"I§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc5_ && param1)
                  {
                     addr62:
                     _loc3_++;
                     continue;
                  }
                  this.addChild(param1);
               }
               return;
            }
            if(param1.z < this.§"I§[_loc3_].z)
            {
               if(_loc4_)
               {
                  this.addChildAt(param1,_loc3_);
                  break;
               }
               break;
            }
            §§goto(addr62);
         }
         while(!(_loc5_ && this));
         
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
               addr143:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           loop3:
                           while(!(_loc3_ && _loc3_))
                           {
                              param1.§?J§();
                              while(true)
                              {
                                 this.§"I§.splice(param2,0,param1);
                                 while(_loc4_ || param1)
                                 {
                                    param1.§3![§(this);
                                    while(true)
                                    {
                                       param1.dispatchEvent(new Event(Event.ADDED,true));
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr119:
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
         §§goto(addr61);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:DisplayObject = null;
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              addr61:
                              if(param1 >= this.numChildren)
                              {
                                 throw new RangeError("Invalid child index");
                              }
                              if(!(_loc5_ && this))
                              {
                                 _loc3_ = this.§"I§[param1];
                                 addr69:
                                 if(_loc4_ || param2)
                                 {
                                    _loc3_.dispatchEvent(new Event(Event.§@1§,true));
                                    loop0:
                                    while(true)
                                    {
                                       if(stage)
                                       {
                                          while(true)
                                          {
                                             _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
                                             addr138:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr132:
                                       }
                                       while(true)
                                       {
                                          _loc3_.§3![§(null);
                                          addr126:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   this.§"I§.splice(param1,1);
                                                   addr119:
                                                   while(!_loc5_)
                                                   {
                                                   }
                                                   continue loop0;
                                                }
                                                addr113:
                                             }
                                             else
                                             {
                                                §§goto(addr132);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                    }
                                 }
                                 while(param2)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          _loc3_.dispose();
                                          addr102:
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr113);
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr102);
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr61);
         }
         §§goto(addr69);
      }
      
      public function removeChildren(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr41:
                                 if(§§pop() >= this.numChildren)
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(this.numChildren);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§push(int(§§pop() - 1));
                                          if(!_loc5_)
                                          {
                                             param2 = §§pop();
                                             addr73:
                                             §§push(param1);
                                             if(_loc6_)
                                             {
                                                addr76:
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          §§goto(addr76);
                                       }
                                    }
                                 }
                                 §§goto(addr73);
                              }
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
                                    while(!_loc6_)
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
                                 §§goto(addr109);
                              }
                              return;
                           }
                           §§goto(addr73);
                        }
                     }
                  }
               }
               §§goto(addr41);
            }
            §§goto(addr76);
         }
         §§goto(addr73);
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                  addr90:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           if(!(_loc2_ && _loc3_))
                           {
                              return this.§"I§[param1];
                           }
                           continue loop0;
                        }
                        throw new RangeError("Invalid child index");
                        addr55:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr88:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               §§push(this.numChildren);
               if(_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr55);
               }
               else
               {
                  §§goto(addr89);
               }
            }
            else
            {
               §§goto(addr88);
            }
            §§goto(addr89);
         }
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§"I§.length;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               if(!(_loc4_ && _loc3_))
               {
                  return null;
               }
            }
            else if(this.§"I§[_loc3_].name == param1)
            {
               break;
            }
            _loc3_++;
         }
         while(!(_loc4_ && _loc3_));
         
         return this.§"I§[_loc3_];
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§"I§.indexOf(param1);
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
         if(!(_loc5_ && param1))
         {
            if(_loc3_ == -1)
            {
               if(_loc4_ || param2)
               {
                  §§goto(addr89);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr62);
                  }
               }
            }
            addr62:
            while(true)
            {
               this.§"I§.splice(_loc3_,1);
               do
               {
                  this.§"I§.splice(param2,0,param1);
               }
               while(_loc5_ && param2);
               
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr89:
         throw new ArgumentError("Not a child of this container");
      }
      
      public function §4[§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getChildIndex(param2));
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && param2))
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
                  if(_loc5_ || this)
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
                              while(!(_loc6_ && param1))
                              {
                                 while(true)
                                 {
                                    this.§3!B§(_loc3_,_loc4_);
                                    if(_loc5_)
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
                           addr133:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr87);
                           }
                           addr133:
                        }
                        throw new ArgumentError("Not a child of this container");
                        addr95:
                     }
                  }
                  §§goto(addr133);
               }
            }
            addr112:
         }
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && param2))
            {
               §§push(-1);
               if(_loc5_ || this)
               {
                  §§goto(addr87);
               }
               else
               {
                  §§goto(addr113);
               }
            }
            else
            {
               §§goto(addr112);
            }
            §§goto(addr113);
            §§goto(addr133);
         }
      }
      
      public function §3!B§(param1:int, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         if(_loc5_ || this)
         {
            this.§"I§[param1] = _loc4_;
            do
            {
               this.§"I§[param2] = _loc3_;
            }
            while(!(_loc5_ || param2));
            
         }
      }
      
      public function §7e§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"I§ = this.§"I§.sort(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(!(_loc6_ && _loc2_))
         {
            if(param1 == this)
            {
               if(_loc7_)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = this.§"I§.length;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               return false;
            }
            §§push(Boolean(_loc5_ = (_loc4_ = this.§"I§[_loc3_]) as DisplayObjectContainer));
            if(_loc7_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc5_.contains(param1));
                        if(!(_loc6_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc7_ || this)
                           {
                              addr143:
                              if(!§§pop())
                              {
                                 loop2:
                                 while(_loc4_ != param1)
                                 {
                                    while(true)
                                    {
                                       _loc3_++;
                                       if(!(_loc6_ && param1))
                                       {
                                          break;
                                       }
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       addr146:
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 if(!_loc6_)
                                 {
                                    §§push(true);
                                    if(_loc7_ || this)
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 }
                              }
                              §§push(true);
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr146);
                  }
               }
               §§goto(addr143);
            }
            break;
         }
         return §§pop();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         if(_loc10_ || this)
         {
            if(param2 == null)
            {
               addr36:
               param2 = new Rectangle();
            }
            var _loc3_:int = this.§"I§.length;
            if(_loc10_)
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §1!%§(param1,§^L§);
                           if(_loc10_ || this)
                           {
                              transformCoords(§^L§,0,0,§-J§);
                              if(_loc10_)
                              {
                                 while(true)
                                 {
                                    addr69:
                                    while(true)
                                    {
                                       param2.x = §-J§.x;
                                       if(_loc10_)
                                       {
                                          param2.y = §-J§.y;
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr484:
                                       while(true)
                                       {
                                          §§push(Number(Number.MAX_VALUE));
                                          addr460:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                                 addr86:
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(-Number.MAX_VALUE);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr450:
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr451:
                                       while(true)
                                       {
                                          if(_loc11_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc10_)
                                          {
                                             §§push(Number(Number.MAX_VALUE));
                                             continue loop2;
                                          }
                                          §§goto(addr484);
                                       }
                                       §§goto(addr484);
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(-Number.MAX_VALUE);
                           if(!_loc11_)
                           {
                              if(_loc10_)
                              {
                                 if(_loc10_ || this)
                                 {
                                    addr416:
                                    §§push(Number(§§pop()));
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       _loc7_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          if(!(_loc11_ && param2))
                                          {
                                             §§push(0);
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr463:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             break loop7;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(1);
                                          addr465:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                return this.§"I§[0].getBounds(param1,param2);
                                                addr466:
                                             }
                                             §§goto(addr484);
                                          }
                                       }
                                       addr464:
                                    }
                                    break;
                                 }
                                 §§goto(addr450);
                              }
                              §§goto(addr436);
                           }
                           §§goto(addr416);
                           if(_loc11_ && param1)
                           {
                              continue;
                           }
                           if(!_loc11_)
                           {
                              if(!_loc11_)
                              {
                                 addr167:
                                 if(_loc8_ >= _loc3_)
                                 {
                                    if(_loc10_)
                                    {
                                       if(_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             param2.x = _loc4_;
                                             addr180:
                                             if(_loc10_)
                                             {
                                                param2.y = _loc6_;
                                                addr164:
                                                if(!_loc11_)
                                                {
                                                   param2.width = _loc5_ - _loc4_;
                                                   addr157:
                                                   if(!_loc11_)
                                                   {
                                                      param2.height = _loc7_ - _loc6_;
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr180);
                                                            }
                                                            return param2;
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   addr364:
                                                   if(_loc5_ > param2.right)
                                                   {
                                                      if(_loc10_ || param2)
                                                      {
                                                         addr317:
                                                         §§push(Number(_loc5_));
                                                         if(!_loc11_)
                                                         {
                                                            addr325:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr333:
                                                               if(_loc10_)
                                                               {
                                                                  addr272:
                                                                  if(_loc6_ < param2.y)
                                                                  {
                                                                     addr280:
                                                                     §§push(_loc6_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr302:
                                                                           §§push(_loc7_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(§§pop() > param2.bottom);
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr209:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc11_ && param2))
                                                                                                               {
                                                                                                                  addr257:
                                                                                                                  addr256:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        if(_loc10_ || param2)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           _loc8_++;
                                                                                                                           addr185:
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§goto(addr167);
                                                                                                                           }
                                                                                                                           §§goto(addr333);
                                                                                                                           addr269:
                                                                                                                        }
                                                                                                                        §§goto(addr325);
                                                                                                                     }
                                                                                                                     §§goto(addr280);
                                                                                                                  }
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§goto(addr280);
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                                  addr245:
                                                                                                               }
                                                                                                               §§goto(addr257);
                                                                                                            }
                                                                                                            §§goto(addr317);
                                                                                                         }
                                                                                                         §§goto(addr272);
                                                                                                      }
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                   §§goto(addr257);
                                                                                                }
                                                                                                §§push(_loc4_);
                                                                                                if(_loc10_ || param2)
                                                                                                {
                                                                                                   addr348:
                                                                                                   if(§§pop() < param2.x)
                                                                                                   {
                                                                                                      addr349:
                                                                                                      §§push(_loc4_);
                                                                                                      if(!(_loc11_ && _loc3_))
                                                                                                      {
                                                                                                         addr363:
                                                                                                         _loc4_ = Number(Number(§§pop()));
                                                                                                         addr358:
                                                                                                         §§goto(addr364);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr358);
                                                                                                   §§push(Number(param2.x));
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                                addr375:
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§push(Number(param2.bottom));
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             §§goto(addr256);
                                                                                          }
                                                                                          §§goto(addr257);
                                                                                       }
                                                                                       §§goto(addr348);
                                                                                    }
                                                                                    §§goto(addr364);
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                              §§goto(addr364);
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr257);
                                                                  §§push(Number(param2.y));
                                                               }
                                                               §§goto(addr349);
                                                            }
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr325);
                                                   §§push(Number(param2.right));
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr180);
                                 }
                                 this.§"I§[_loc8_].getBounds(param1,param2);
                                 §§goto(addr375);
                              }
                              else
                              {
                                 §§goto(addr466);
                              }
                           }
                           else
                           {
                              §§goto(addr451);
                           }
                        }
                        §§goto(addr460);
                     }
                     §§goto(addr463);
                  }
                  §§goto(addr465);
               }
               §§goto(addr464);
            }
            §§goto(addr86);
         }
         §§goto(addr36);
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(!(_loc9_ && param2))
         {
            §§push(param2);
            if(_loc10_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc9_ && _loc3_))
               {
                  addr92:
                  §§push(§§pop());
                  loop7:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop1:
                           while(true)
                           {
                              addr60:
                              while(true)
                              {
                                 §§push(!visible);
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       continue loop7;
                                    }
                                    if(!§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr68:
                                          while(_loc10_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr94:
                     }
                     while(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr49);
                        }
                        if(_loc10_ || param1)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr68);
                     }
                     var _loc3_:Number = param1.x;
                     var _loc4_:Number = param1.y;
                     var _loc5_:int;
                     §§push(_loc5_ = this.§"I§.length);
                     if(_loc10_)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     var _loc6_:* = §§pop();
                     addr176:
                     if(_loc6_ >= 0)
                     {
                        _loc7_ = this.§"I§[_loc6_];
                        if(_loc10_)
                        {
                           §1!%§(_loc7_,§^L§);
                           if(_loc10_)
                           {
                              addr131:
                              transformCoords(§^L§,_loc3_,_loc4_,§-J§);
                           }
                           if(_loc8_ = _loc7_.hitTest(§-J§,param2))
                           {
                              if(_loc9_ && param1)
                              {
                                 §§goto(addr176);
                              }
                              return _loc8_;
                           }
                           §§push(_loc6_);
                           if(!(_loc9_ && param2))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                           §§goto(addr176);
                        }
                        §§goto(addr131);
                     }
                     return null;
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr92);
         }
         addr49:
         return null;
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:DisplayObject = null;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_ || param1)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc6_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:int = this.§"I§.length;
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < _loc3_)
         {
            §§push((_loc5_ = this.§"I§[_loc4_]).alpha);
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§pop();
                                 if(_loc7_ || param1)
                                 {
                                    §§push(_loc5_.visible);
                                    if(!_loc6_)
                                    {
                                       addr238:
                                       §§push(Boolean(§§pop()));
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr239:
                                          loop15:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop16:
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
                                                         addr207:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr208:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.scaleY);
                                                            if(_loc6_ && param1)
                                                            {
                                                               continue loop7;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc7_ || param1))
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           addr196:
                                                                           §§push(!§§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§goto(addr208);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr199:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§,!z§();
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§1w§(_loc5_);
                                                                                          addr162:
                                                                                          loop1:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.render(param1,param2);
                                                                                             loop2:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ || _loc3_))
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                if(_loc6_ && param2)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                if(!(_loc7_ || param1))
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§@!<§();
                                                                                                   addr121:
                                                                                                   while(_loc7_)
                                                                                                   {
                                                                                                      if(_loc6_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc6_ && _loc3_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(true)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr108);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr121);
                                                                              }
                                                                           }
                                                                           addr198:
                                                                        }
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc7_ || param2))
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr198);
                                                                           }
                                                                           addr209:
                                                                           while(true)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr209);
                                          }
                                       }
                                       addr238:
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr239);
                     }
                  }
                  §§goto(addr199);
               }
               §§goto(addr207);
            }
            §§goto(addr173);
         }
      }
      
      public function §""2§(param1:Event) : void
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
               while(_loc3_ && param1);
               
               if(!_loc3_)
               {
                  return;
                  addr56:
               }
            }
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         §§goto(addr56);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(_loc6_)
         {
            this.§4k§(this,param1.type,_loc2_);
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
               if(_loc6_)
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
      
      private function §4k§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
               if(_loc8_ || param3)
               {
                  addr41:
                  param3.push(param1);
                  if(_loc8_ || param3)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr63);
               }
            }
            addr61:
            if(_loc4_)
            {
               addr63:
               §§push(int((_loc5_ = _loc4_.§"I§).length));
               if(!(_loc9_ && param3))
               {
                  _loc6_ = §§pop();
                  if(_loc8_ || param2)
                  {
                     addr116:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     while(_loc7_ < _loc6_)
                     {
                        this.§4k§(_loc5_[_loc7_],param2,param3);
                        if(!_loc8_)
                        {
                           break;
                        }
                        _loc7_++;
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr116);
            }
            addr121:
            return;
         }
         §§goto(addr41);
      }
      
      public function get numChildren() : int
      {
         return this.§"I§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!_loc6_)
         {
            this.§?3§ = param1;
         }
         for each(_loc2_ in this.§"I§)
         {
            if(!_loc6_)
            {
               _loc2_.color = param1;
            }
         }
      }
      
      public function get color() : uint
      {
         return this.§?3§;
      }
   }
}
