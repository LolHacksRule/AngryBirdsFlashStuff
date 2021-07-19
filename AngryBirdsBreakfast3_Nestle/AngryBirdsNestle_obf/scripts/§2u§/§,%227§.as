package §2u§
{
   import §!""§.§]H§;
   import §'"!§.§-!g§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,"7§ extends §]"%§
   {
      
      public static const §2!Y§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2!Y§ = 4;
         }
      }
      
      private var §&"§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §]!r§:String;
      
      public function §,"7§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            this.§&"§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               addr51:
               if(_loc8_ && param2)
               {
                  continue;
               }
               this.§&"§.y = y;
               if(!(_loc8_ && this))
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§&"§.x = x;
                        addr44:
                        addr65:
                        while(_loc9_ || this)
                        {
                           §§goto(addr51);
                        }
                        while(true)
                        {
                           continue loop2;
                           §§goto(addr44);
                        }
                     }
                  }
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(!(_loc8_ && param2))
                  {
                     if(!isNaN(parseInt(_loc4_)))
                     {
                        while(true)
                        {
                           this.§&"§.x = parseInt(_loc4_);
                           addr282:
                           while(true)
                           {
                           }
                        }
                        addr276:
                     }
                     loop6:
                     while(true)
                     {
                        if(!isNaN(parseInt(_loc5_)))
                        {
                           while(true)
                           {
                              this.§&"§.y = parseInt(_loc5_);
                              addr259:
                              while(true)
                              {
                              }
                              addr118:
                              if(!(_loc9_ || param3))
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 return;
                              }
                              §§goto(addr276);
                           }
                        }
                        loop8:
                        while(true)
                        {
                           §§push(_loc6_);
                           loop9:
                           while(true)
                           {
                              §§push("parent");
                              loop10:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(!isNaN(parseInt(_loc6_)))
                                    {
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!(_loc9_ || param2))
                                             {
                                                break;
                                             }
                                             this.§&"§.width = parseInt(_loc6_);
                                             while(!_loc8_)
                                             {
                                                if(_loc8_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr118);
                                             }
                                             continue loop6;
                                          }
                                          addr237:
                                          while(true)
                                          {
                                             this.§&"§.width = param2.width - mClip.width;
                                             while(true)
                                             {
                                                addr168:
                                                if(_loc8_ && param2)
                                                {
                                                   continue;
                                                }
                                                this.§&"§.height = parseInt(_loc7_);
                                                loop15:
                                                while(true)
                                                {
                                                   addr103:
                                                   while(true)
                                                   {
                                                      §^1§(§2!Y§,param1.@Drag);
                                                      if(!_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop15;
                                                   }
                                                   §§goto(addr111);
                                                }
                                             }
                                          }
                                          addr161:
                                          if(!(_loc9_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr168);
                                       }
                                       continue loop8;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       §§push("parent");
                                       if(_loc8_ && param2)
                                       {
                                          continue loop10;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             this.§&"§.height = param2.height - mClip.height;
                                          }
                                          addr205:
                                       }
                                       else if(!isNaN(parseInt(_loc7_)))
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                §§goto(addr161);
                                             }
                                             else
                                             {
                                                §§goto(addr205);
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr103);
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr237);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr259);
               }
               §§goto(addr44);
            }
         }
         §§goto(addr65);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§]H§ = super.listenerUIEventOccured(param1,param2);
         §§push(param1);
         if(!(_loc6_ && _loc3_))
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc4_)
               {
                  if(_loc5_)
                  {
                     addr73:
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr80:
                     §§push(1);
                     if(_loc6_)
                     {
                     }
                  }
                  addr99:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(_loc5_ || this)
                        {
                           break;
                        }
                        addr54:
                        break;
                     case 1:
                        this.stopDrag();
                        if(_loc5_ || param1)
                        {
                           §§goto(addr54);
                        }
                  }
                  return _loc3_;
                  addr98:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc4_)
                  {
                     §§goto(addr80);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr98);
               }
               §§goto(addr80);
            }
            §§goto(addr73);
         }
         §§goto(addr99);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§&"§);
                  addr108:
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§=!F§);
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                              while(_loc2_)
                              {
                                 continue loop0;
                                 mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 if(_loc2_ || param1)
                                 {
                                    §§goto(addr19);
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr108);
      }
      
      private function §=!F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.listenerUIEventOccured(§2!Y§,§7""§[§2!Y§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.stopDrag();
            loop0:
            while(true)
            {
               this.mDragging = false;
               loop1:
               while(true)
               {
                  if(!mClip.stage)
                  {
                     loop5:
                     while(this.§]!r§)
                     {
                        if(_loc3_)
                        {
                           this.setComponentVisualState(this.§]!r§);
                        }
                        while(_loc3_)
                        {
                           continue loop0;
                           this.§]!r§ = null;
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(_loc2_ && this)
                           {
                              continue loop5;
                           }
                           if(_loc2_ && _loc3_)
                           {
                              continue loop1;
                           }
                           addr49:
                           if(_loc3_ || param1)
                           {
                              break loop5;
                           }
                           addr146:
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                              continue loop1;
                              §§goto(addr49);
                           }
                        }
                        while(!(_loc3_ || param1))
                        {
                        }
                        this.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                     return;
                  }
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§=!F§);
                     §§goto(addr146);
                     §§goto(addr101);
                  }
               }
            }
         }
         while(true)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
            §§goto(addr101);
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.mDragging)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§]!r§ = param1;
               }
            }
            else
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
               while(!_loc2_);
               
            }
         }
      }
      
      public function §-!]§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&"§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§&"§.x,param1),this.§&"§.x + this.§&"§.width)));
                     addr90:
                     addr57:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(!(_loc3_ || _loc3_));
                        
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr25);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr57);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != super.y)
               {
                  if(_loc2_)
                  {
                     addr74:
                     param1 = Math.min(Math.max(this.§&"§.y,param1),this.§&"§.y + this.§&"§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(_loc3_);
                  
                  addr39:
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr39);
      }
      
      public function §=!k§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§&"§.x);
         if(_loc5_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§&"§.y);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§&"§.size.length;
         §§push(_loc3_);
         if(!_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §=X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = this.§&"§.x + param1 * this.§&"§.width;
         }
         do
         {
            this.y = this.§&"§.y + param1 * this.§&"§.height;
         }
         while(_loc3_);
         
      }
   }
}
