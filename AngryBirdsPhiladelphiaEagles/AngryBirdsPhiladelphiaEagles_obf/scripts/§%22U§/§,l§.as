package §"U§
{
   import §6v§.§@V§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,l§ extends §^'§
   {
      
      public static const §8u§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8u§ = 4;
         }
      }
      
      private var §do§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §&=§:String;
      
      public function §,l§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            this.§do§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
            }
            addr60:
         }
         loop1:
         while(true)
         {
            addr36:
            addr61:
            while(true)
            {
               this.§do§.x = x;
               continue loop1;
            }
            var _loc4_:String = param1.@constraint_x.toString();
            var _loc5_:String = param1.@constraint_y.toString();
            var _loc6_:String = param1.@constraint_width.toString();
            addr155:
            var _loc7_:String = param1.@constraint_height.toString();
            if(_loc9_)
            {
               if(!isNaN(parseInt(_loc4_)))
               {
                  while(true)
                  {
                     this.§do§.x = parseInt(_loc4_);
                     addr223:
                     while(true)
                     {
                     }
                  }
                  addr217:
               }
               while(true)
               {
                  if(!isNaN(parseInt(_loc5_)))
                  {
                     this.§do§.y = parseInt(_loc5_);
                     while(true)
                     {
                     }
                     addr210:
                  }
                  loop8:
                  while(true)
                  {
                     §§push(_loc6_);
                     loop9:
                     while(true)
                     {
                        §§push("parent");
                        addr175:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc9_)
                              {
                                 break;
                              }
                              this.§do§.width = param2.width - mClip.width;
                              continue loop9;
                           }
                           if(isNaN(parseInt(_loc6_)))
                           {
                              continue loop9;
                           }
                           this.§do§.width = parseInt(_loc6_);
                           while(true)
                           {
                              continue loop9;
                           }
                        }
                        continue loop8;
                     }
                  }
                  §§goto(addr223);
               }
            }
            §§goto(addr88);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
         do
         {
            §§push(param1);
            if(!_loc5_)
            {
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc4_ || param2)
                     {
                        addr95:
                        §§push(0);
                        if(_loc5_ && param1)
                        {
                           addr110:
                        }
                     }
                     else
                     {
                        addr107:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr110);
                        }
                     }
                     addr116:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(_loc4_ || param2)
                           {
                              if(!(_loc4_ || param1))
                              {
                                 break;
                              }
                              continue;
                           }
                     }
                     break;
                     addr115:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr107);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr107);
               }
               §§goto(addr95);
            }
            §§goto(addr116);
         }
         while(false);
         
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(mClip.stage)
         {
            mClip.startDrag(false,this.§do§);
            while(true)
            {
               this.mDragging = true;
               while(!(_loc2_ && param1))
               {
                  mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#!P§);
                  mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                  while(_loc3_ || _loc3_)
                  {
                     mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr18);
                  }
               }
            }
         }
         addr18:
      }
      
      private function §#!P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§8u§,§6R§[§8u§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.stopDrag();
            this.mDragging = false;
            loop0:
            while(true)
            {
               if(mClip.stage)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#!P§);
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                     addr96:
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                        this.setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                     addr34:
                     while(true)
                     {
                        this.setComponentVisualState(this.§&=§);
                        if(_loc3_ && _loc2_)
                        {
                           break;
                        }
                        continue loop0;
                        addr62:
                        this.§&=§ = null;
                        if(_loc2_)
                        {
                           §§goto(addr19);
                        }
                     }
                  }
               }
               while(this.§&=§)
               {
                  §§goto(addr34);
               }
               addr19:
               return;
            }
         }
         §§goto(addr96);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.mDragging)
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
               while(!(_loc2_ && param1));
               
               return;
               addr74:
            }
         }
         this.§&=§ = param1;
         §§goto(addr74);
      }
      
      public function §#Z§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§do§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != super.x)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§do§.x,param1),this.§do§.x + this.§do§.width)));
                     addr85:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr69:
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr69);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() != super.y)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§do§.y,param1),this.§do§.y + this.§do§.height)));
                     addr84:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      public function § -§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§do§.x);
         if(_loc5_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§do§.y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§do§.size.length;
         §§push(_loc3_);
         if(_loc5_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §@F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.x = this.§do§.x + param1 * this.§do§.width;
         }
         do
         {
            this.y = this.§do§.y + param1 * this.§do§.height;
         }
         while(!_loc3_);
         
      }
   }
}
