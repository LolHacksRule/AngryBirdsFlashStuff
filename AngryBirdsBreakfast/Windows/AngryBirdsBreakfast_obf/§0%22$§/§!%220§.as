package §0"$§
{
   import §,L§.§%J§;
   import §-!;§.§>!B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §!"0§ extends §;§
   {
      
      public static const §?"+§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?"+§ = 4;
         }
      }
      
      private var §7!T§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § z§:String;
      
      public function §!"0§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§7!T§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(!_loc9_)
               {
                  while(true)
                  {
                     this.§7!T§.x = x;
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           this.§7!T§.y = y;
                           if(!_loc9_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr28);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!_loc9_)
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               while(true)
               {
                  this.§7!T§.x = parseInt(_loc4_);
                  addr246:
                  while(true)
                  {
                  }
               }
               addr240:
            }
            loop7:
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  while(true)
                  {
                     this.§7!T§.y = parseInt(_loc5_);
                     addr221:
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr240);
                        }
                     }
                     continue loop7;
                  }
                  addr215:
               }
               while(true)
               {
                  §§push(_loc6_);
                  loop11:
                  while(true)
                  {
                     §§push("parent");
                     addr198:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           addr199:
                           while(true)
                           {
                              this.§7!T§.width = param2.width - mClip.width;
                              addr207:
                              while(true)
                              {
                                 continue loop11;
                              }
                           }
                           addr199:
                        }
                        else
                        {
                           if(isNaN(parseInt(_loc6_)))
                           {
                              continue loop11;
                           }
                           while(true)
                           {
                              this.§7!T§.width = parseInt(_loc6_);
                              addr185:
                              while(!_loc9_)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    continue loop11;
                                 }
                                 continue loop7;
                              }
                              §§goto(addr221);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§>!B§ = super.listenerUIEventOccured(param1,param2);
         §§push(param1);
         if(_loc5_ || _loc3_)
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
                     if(_loc6_ && param2)
                     {
                        addr98:
                     }
                  }
                  else
                  {
                     addr85:
                     §§push(1);
                     if(!_loc6_)
                     {
                        §§goto(addr98);
                     }
                  }
                  addr104:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(!(_loc6_ && this))
                        {
                           break;
                        }
                        break;
                     case 1:
                        this.stopDrag();
                        if(_loc5_ || param2)
                        {
                           break;
                        }
                  }
                  return _loc3_;
                  addr103:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc4_)
                  {
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr103);
               }
               §§goto(addr85);
            }
            §§goto(addr73);
         }
         §§goto(addr104);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(mClip.stage)
            {
               if(_loc2_)
               {
                  mClip.startDrag(false,this.§7!T§);
               }
               while(true)
               {
                  this.mDragging = true;
                  loop1:
                  while(true)
                  {
                     mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!3§);
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                        loop3:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr63);
      }
      
      private function §?!3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerUIEventOccured(§?"+§,§8!=§[§?"+§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                     while(this.§ z§)
                     {
                        loop6:
                        while(_loc2_)
                        {
                           this.setComponentVisualState(this.§ z§);
                           while(_loc2_)
                           {
                              addr49:
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    this.§ z§ = null;
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop5;
                                       }
                                       continue loop6;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              addr99:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                    break loop6;
                                 }
                                 break;
                                 §§goto(addr49);
                              }
                              continue loop0;
                           }
                           while(_loc3_ && this)
                           {
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!3§);
                                 continue loop1;
                              }
                           }
                           continue loop5;
                        }
                        while(true)
                        {
                           this.setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           §§goto(addr74);
                        }
                     }
                     return;
                  }
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        return;
                        addr46:
                     }
                     break;
                  }
                  if(_loc2_ || _loc3_)
                  {
                     continue;
                  }
               }
               return;
               addr73:
            }
            this.§ z§ = param1;
            §§goto(addr73);
         }
         §§goto(addr46);
      }
      
      public function §+k§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!T§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§7!T§.x,param1),this.§7!T§.x + this.§7!T§.width)));
                     addr85:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr86);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() != super.y)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§7!T§.y,param1),this.§7!T§.y + this.§7!T§.height)));
                     addr85:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(_loc2_);
                        
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr59:
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr59);
      }
      
      public function §&x§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§7!T§.x);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§7!T§.y);
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§7!T§.size.length;
         §§push(_loc3_);
         if(!_loc5_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §0!p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.x = this.§7!T§.x + param1 * this.§7!T§.width;
         }
         do
         {
            this.y = this.§7!T§.y + param1 * this.§7!T§.height;
         }
         while(!_loc3_);
         
      }
   }
}
