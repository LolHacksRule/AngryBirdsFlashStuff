package §"!2§
{
   import §>!<§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class UISliderRovio extends UIButtonRovio
   {
      
      public static const § !?§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § !?§ = 4;
         }
      }
      
      private var §?!%§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § _§:String;
      
      public function UISliderRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§?!%§ = new Rectangle();
            loop0:
            while(true)
            {
               super(param1,param2,param3);
               while(true)
               {
                  addr36:
                  addr27:
                  while(true)
                  {
                     this.§?!%§.x = x;
                     continue loop0;
                  }
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr36);
                  }
                  else
                  {
                     addr62:
                     var _loc4_:String = param1.@constraint_x.toString();
                     var _loc5_:String = param1.@constraint_y.toString();
                     var _loc6_:String = param1.@constraint_width.toString();
                     var _loc7_:String = param1.@constraint_height.toString();
                     if(_loc8_ || param3)
                     {
                        §§push(!isNaN(parseInt(_loc4_)));
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§?!%§.x = parseInt(_loc4_);
                                 addr287:
                                 while(true)
                                 {
                                 }
                              }
                              addr281:
                           }
                           while(true)
                           {
                              §§push(!isNaN(parseInt(_loc5_)));
                              continue loop5;
                           }
                        }
                     }
                     §§goto(addr167);
                  }
               }
            }
         }
         while(true)
         {
            this.§?!%§.y = y;
            if(!_loc9_)
            {
               §§goto(addr27);
            }
            §§goto(addr42);
         }
         §§goto(addr62);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc5_ || this)
            {
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!(_loc4_ && param2))
                     {
                        addr105:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr121:
                        §§push(2);
                        if(!_loc5_)
                        {
                        }
                     }
                     addr126:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(!(_loc4_ && this))
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr126:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        if(!_loc4_)
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           §§goto(addr121);
                        }
                     }
                     else if(false)
                     {
                        §§goto(addr121);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr121);
               }
               §§goto(addr105);
            }
            §§goto(addr126);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§?!%§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     addr114:
                     loop2:
                     do
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§"W§);
                        while(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           do
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                           }
                           while(_loc2_);
                           
                           if(_loc3_ || param1)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     while(!(_loc3_ || param1));
                     
                  }
               }
            }
            return;
         }
         §§goto(addr114);
      }
      
      private function §"W§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(§ !?§,§-!Z§[§ !?§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
            }
            addr167:
         }
         loop1:
         while(true)
         {
            §§push(Boolean(mClip.stage));
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               while(true)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§"W§);
                  continue loop1;
               }
            }
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
               while(_loc3_);
               
               return;
               addr75:
            }
         }
         this.§ _§ = param1;
         §§goto(addr75);
      }
      
      public function §9B§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!%§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.x)
               {
                  if(_loc3_)
                  {
                     addr87:
                     param1 = Math.min(Math.max(this.§?!%§.x,param1),this.§?!%§.x + this.§?!%§.width);
                     do
                     {
                        super.x = param1;
                     }
                     while(_loc2_ && _loc3_);
                     
                     addr88:
                  }
                  §§goto(addr88);
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != super.y)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§?!%§.y,param1),this.§?!%§.y + this.§?!%§.height)));
                     addr86:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr87);
      }
      
      public function §#P§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§?!%§.x);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§?!%§.y);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§?!%§.size.length;
         §§push(_loc3_);
         if(_loc5_ || _loc2_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §>!i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.x = this.§?!%§.x + param1 * this.§?!%§.width;
            do
            {
               this.y = this.§?!%§.y + param1 * this.§?!%§.height;
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
   }
}
