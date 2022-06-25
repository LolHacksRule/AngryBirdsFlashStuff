package §_-6C§
{
   import §_-MN§.§_-rR§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-wm§ extends §_-Mu§
   {
      
      public static const §_-02M§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-02M§ = 4;
         }
      }
      
      private var §_-H9§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §_-09X§:String;
      
      public function §_-wm§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            this.§_-H9§ = new Rectangle();
            loop0:
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     this.§_-H9§.x = x;
                     addr43:
                     while(!_loc9_)
                     {
                        if(_loc9_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§_-H9§.y = y;
            if(!(_loc9_ && this))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr38);
            }
            §§goto(addr43);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(_loc8_)
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               while(true)
               {
                  this.§_-H9§.x = parseInt(_loc4_);
                  addr261:
                  while(true)
                  {
                  }
               }
               addr255:
            }
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  if(!(_loc9_ && this))
                  {
                     if(_loc9_ && param3)
                     {
                        continue;
                     }
                     this.§_-H9§.y = parseInt(_loc5_);
                  }
                  while(true)
                  {
                  }
                  addr248:
               }
               while(true)
               {
                  §§push(_loc6_);
                  loop10:
                  while(true)
                  {
                     §§push("parent");
                     loop11:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!isNaN(parseInt(_loc6_)))
                           {
                              loop12:
                              while(true)
                              {
                                 this.§_-H9§.width = parseInt(_loc6_);
                                 loop13:
                                 while(true)
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                          addr156:
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§push("parent");
                                          if(!_loc8_)
                                          {
                                             continue loop11;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             if(!isNaN(parseInt(_loc7_)))
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   if(_loc8_ || param3)
                                                   {
                                                      this.§_-H9§.height = parseInt(_loc7_);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               addr87:
                                                               while(true)
                                                               {
                                                                  §_-Ay§(§_-02M§,param1.@Drag);
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               addr87:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§_-H9§.width = param2.width - mClip.width;
                                                                  addr210:
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               addr202:
                                                            }
                                                         }
                                                         §§goto(addr87);
                                                      }
                                                      continue loop13;
                                                      addr144:
                                                   }
                                                   else
                                                   {
                                                      addr164:
                                                      this.§_-H9§.height = param2.height - mClip.height;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr87);
                                                   }
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr87);
                                          }
                                          §§goto(addr164);
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr255);
                              }
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr202);
                     }
                  }
                  §§goto(addr248);
               }
            }
         }
         §§goto(addr104);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(!_loc5_)
            {
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(0);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr97:
                        §§push(1);
                        if(!_loc4_)
                        {
                        }
                     }
                     addr106:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(true)
                              {
                                 break loop0;
                              }
                              continue;
                           }
                     }
                     break;
                     addr105:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr97);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr106);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§_-H9§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-09K§);
                        loop3:
                        while(!(_loc3_ && param1))
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           while(!_loc3_)
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              if(_loc2_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr24);
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr103:
            }
            addr24:
            return;
         }
         §§goto(addr103);
      }
      
      private function §_-09K§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§_-02M§,§_-4W§[§_-02M§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     while(this.§_-09X§)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              this.setComponentVisualState(this.§_-09X§);
                              while(_loc3_ || _loc2_)
                              {
                                 this.§_-09X§ = null;
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                                    continue loop0;
                                 }
                                 addr141:
                              }
                              addr55:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              }
                              addr103:
                           }
                           while(true)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop0;
                              }
                              addr85:
                              if(!(_loc2_ && _loc3_))
                              {
                                 break;
                              }
                              addr134:
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-09K§);
                                 §§goto(addr141);
                                 §§goto(addr85);
                              }
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           continue loop1;
                           addr78:
                        }
                        §§goto(addr55);
                     }
                     return;
                  }
                  §§goto(addr134);
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.mDragging)
            {
               do
               {
                  super.setComponentVisualState(param1);
               }
               while(!_loc3_);
               
               if(!_loc2_)
               {
                  if(!(_loc2_ && param1))
                  {
                     return;
                  }
               }
               return;
               addr74:
            }
            this.§_-09X§ = param1;
         }
         §§goto(addr74);
      }
      
      public function §_-Ca§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-H9§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               if(§§pop() != super.x)
               {
                  if(_loc2_ || param1)
                  {
                     addr94:
                     param1 = Math.min(Math.max(this.§_-H9§.x,param1),this.§_-H9§.x + this.§_-H9§.width);
                  }
                  do
                  {
                     super.x = param1;
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr94);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() != super.y)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§_-H9§.y,param1),this.§_-H9§.y + this.§_-H9§.height)));
                     addr84:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(!_loc2_);
                        
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr68:
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr68);
      }
      
      public function §_-MS§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§_-H9§.x);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§_-H9§.y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§_-H9§.size.length;
         §§push(_loc3_);
         if(!_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §_-pq§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.x = this.§_-H9§.x + param1 * this.§_-H9§.width;
            do
            {
               this.y = this.§_-H9§.y + param1 * this.§_-H9§.height;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
   }
}
