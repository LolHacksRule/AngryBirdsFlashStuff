package §'!N§
{
   import §8P§.§4!Y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%!-§ extends §<i§
   {
      
      public static const §-!!§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §-!!§ = 4;
         }
      }
      
      private var §<!E§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §7!E§:String;
      
      public function §%!-§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            this.§<!E§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(true)
               {
                  addr34:
                  while(true)
                  {
                     this.§<!E§.x = x;
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr34);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!(_loc8_ && this))
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               if(_loc9_)
               {
                  this.§<!E§.x = parseInt(_loc4_);
               }
               while(true)
               {
               }
               addr257:
            }
            loop6:
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  addr226:
                  while(true)
                  {
                     this.§<!E§.y = parseInt(_loc5_);
                     addr232:
                     while(true)
                     {
                     }
                  }
                  addr226:
               }
               loop7:
               while(true)
               {
                  §§push(_loc6_);
                  loop8:
                  while(true)
                  {
                     §§push("parent");
                     loop9:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc9_)
                           {
                              this.§<!E§.width = param2.width - mClip.width;
                           }
                           while(true)
                           {
                           }
                           addr218:
                        }
                        else if(!isNaN(parseInt(_loc6_)))
                        {
                           while(true)
                           {
                              this.§<!E§.width = parseInt(_loc6_);
                              addr194:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    if(!(_loc9_ || param3))
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr218);
                                 }
                              }
                              addr120:
                              continue loop7;
                              if(!(_loc9_ || param3))
                              {
                                 continue;
                              }
                              this.§<!E§.height = parseInt(_loc7_);
                              loop15:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    while(true)
                                    {
                                       §[!O§(§-!!§,param1.@Drag);
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       continue loop15;
                                    }
                                    addr159:
                                 }
                                 §§goto(addr93);
                              }
                              addr143:
                           }
                        }
                        while(true)
                        {
                           §§push(_loc7_);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§push("parent");
                           if(!(_loc9_ || param1))
                           {
                              continue loop9;
                           }
                           if(§§pop() != §§pop())
                           {
                              if(!isNaN(parseInt(_loc7_)))
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc9_ || param3)
                                    {
                                       §§goto(addr120);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr143);
                              }
                              addr93:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       addr170:
                                       this.§<!E§.height = param2.height - mClip.height;
                                       while(true)
                                       {
                                          §§goto(addr170);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr226);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr194);
                                 }
                              }
                              continue loop6;
                              return;
                           }
                           §§goto(addr159);
                        }
                        continue loop8;
                     }
                  }
               }
            }
         }
         §§goto(addr226);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc5_)
            {
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc5_ || this)
                     {
                        §§push(0);
                        if(!(_loc5_ || param2))
                        {
                           addr101:
                        }
                     }
                     else
                     {
                        addr88:
                        §§push(1);
                        if(_loc5_)
                        {
                           §§goto(addr101);
                        }
                     }
                     addr107:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(!_loc4_)
                           {
                              if(!_loc5_)
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
                     addr106:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr88);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr107);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§<!E§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[I§);
                        while(true)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           loop4:
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                          if(_loc2_ || param1)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function §[I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§-!!§,§=5§[§-!!§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
               loop3:
               while(!(_loc2_ && _loc2_))
               {
                  mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                     loop5:
                     while(!(_loc2_ && this))
                     {
                        this.setComponentVisualState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        loop6:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 loop7:
                                 while(this.§7!E§)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc3_)
                                       {
                                          this.setComponentVisualState(this.§7!E§);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[I§);
                                             continue loop3;
                                          }
                                          addr102:
                                       }
                                    }
                                    while(_loc3_)
                                    {
                                       this.§7!E§ = null;
                                       if(!(_loc2_ && this))
                                       {
                                          break loop7;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr36:
                              }
                              break;
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           if(!mClip.stage)
                           {
                              §§goto(addr36);
                           }
                           §§goto(addr102);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.mDragging)
            {
               if(_loc3_ || param1)
               {
                  this.§7!E§ = param1;
               }
            }
            else
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               while(!_loc2_);
               
            }
         }
      }
      
      public function §%!F§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!E§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != super.x)
               {
                  if(!_loc3_)
                  {
                     addr89:
                     param1 = Math.min(Math.max(this.§<!E§.x,param1),this.§<!E§.x + this.§<!E§.width);
                  }
                  do
                  {
                     super.x = param1;
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               return;
            }
         }
         §§goto(addr89);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() != super.y)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr90:
                     param1 = Math.min(Math.max(this.§<!E§.y,param1),this.§<!E§.y + this.§<!E§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(!_loc3_);
                  
                  addr35:
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr35);
      }
      
      public function §%!P§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§<!E§.x);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§<!E§.y);
         if(!(_loc6_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§<!E§.size.length;
         §§push(_loc3_);
         if(_loc5_ || _loc2_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §>@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.x = this.§<!E§.x + param1 * this.§<!E§.width;
            do
            {
               this.y = this.§<!E§.y + param1 * this.§<!E§.height;
            }
            while(!_loc3_);
            
         }
      }
   }
}
