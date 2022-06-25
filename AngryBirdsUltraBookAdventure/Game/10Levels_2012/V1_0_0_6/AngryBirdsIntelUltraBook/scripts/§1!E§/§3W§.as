package §1!E§
{
   import §>7§.§4+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §3W§ extends §==§
   {
      
      public static const § 7§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §3W§)
         {
            § 7§ = 4;
         }
      }
      
      private var §1!j§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §]z§:String;
      
      public function §3W§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            this.§1!j§ = new Rectangle();
         }
         loop0:
         while(true)
         {
            super(param1,param2,param3);
            loop1:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§1!j§.x = x;
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               var _loc3_:* = §§pop();
               if(!(_loc4_ && param2))
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc5_)
                     {
                        addr91:
                        §§push(0);
                        if(!(_loc5_ || this))
                        {
                           addr106:
                        }
                     }
                     else
                     {
                        addr103:
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§goto(addr106);
                        }
                     }
                     addr112:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(_loc5_)
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr111:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr103);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr103);
               }
               §§goto(addr91);
            }
            §§goto(addr112);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§1!j§);
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<M§);
                        while(true)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           continue loop0;
                           addr39:
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      private function §<M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§ 7§,§9t§[§ 7§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
            }
            addr143:
         }
         loop1:
         while(true)
         {
            if(mClip.stage)
            {
               loop2:
               while(true)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<M§);
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                     loop4:
                     for(; _loc2_ || _loc3_; loop6:
                     while(_loc2_ || _loc3_)
                     {
                        while(true)
                        {
                           if(!(_loc2_ || this))
                           {
                              continue loop6;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr143);
                        }
                        continue loop1;
                     })
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                        while(true)
                        {
                           this.setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           continue loop4;
                           addr36:
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            while(this.§]z§)
            {
               if(_loc2_)
               {
                  §§goto(addr36);
               }
               §§goto(addr54);
            }
            §§goto(addr19);
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               return;
            }
            if(_loc2_ || _loc3_)
            {
               this.§]z§ = param1;
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §-!9§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1!j§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != super.x)
               {
                  if(!(_loc3_ && this))
                  {
                     addr84:
                     param1 = Math.min(Math.max(this.§1!j§.x,param1),this.§1!j§.x + this.§1!j§.width);
                     do
                     {
                        super.x = param1;
                     }
                     while(!_loc2_);
                     
                     addr85:
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr84);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != super.y)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§1!j§.y,param1),this.§1!j§.y + this.§1!j§.height)));
                     addr84:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(!_loc2_);
                        
                        if(!(_loc3_ && _loc2_))
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
      
      public function §5M§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§1!j§.x);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§1!j§.y);
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§1!j§.size.length;
         §§push(_loc3_);
         if(_loc6_ || _loc1_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §,!S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = this.§1!j§.x + param1 * this.§1!j§.width;
         }
         do
         {
            this.y = this.§1!j§.y + param1 * this.§1!j§.height;
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
