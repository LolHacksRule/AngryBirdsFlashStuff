package §2y§
{
   import §@!&§.§-0§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §4!n§ extends §[!i§
   {
      
      public static const §2!M§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2!M§ = 4;
         }
      }
      
      private var §^!g§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §?P§:String;
      
      public function §4!n§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            this.§^!g§ = new Rectangle();
         }
         loop0:
         while(true)
         {
            super(param1,param2,param3);
            while(true)
            {
               addr47:
               while(true)
               {
                  this.§^!g§.x = x;
                  do
                  {
                     this.§^!g§.y = y;
                  }
                  while(_loc9_);
                  
                  if(_loc9_ && this)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr92:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     addr101:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(!_loc5_)
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr100:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr92);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr101);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§^!g§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§]n§);
                        loop3:
                        do
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           while(!_loc2_)
                           {
                              continue loop0;
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        while(_loc2_);
                        
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
               }
               addr99:
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §]n§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§2!M§,§%0§[§2!M§]);
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
               while(true)
               {
                  if(!mClip.stage)
                  {
                     loop3:
                     while(this.§?P§)
                     {
                        loop4:
                        while(true)
                        {
                           this.setComponentVisualState(this.§?P§);
                           while(_loc3_ || _loc3_)
                           {
                              this.§?P§ = null;
                              if(_loc3_ || param1)
                              {
                                 continue loop4;
                              }
                           }
                           loop8:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 this.setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 addr103:
                                 while(_loc2_)
                                 {
                                    §§goto(addr103);
                                 }
                                 addr103:
                                 if(!_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop0;
                                 addr88:
                              }
                              else
                              {
                                 addr141:
                              }
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                              }
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 continue loop8;
                              }
                              §§goto(addr103);
                           }
                        }
                     }
                     return;
                  }
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§]n§);
                        §§goto(addr141);
                     }
                     §§goto(addr49);
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.mDragging)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§?P§ = param1;
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
               while(_loc3_ || param1);
               
            }
         }
      }
      
      public function §>!5§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^!g§ = param1;
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
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§^!g§.x,param1),this.§^!g§.x + this.§^!g§.width)));
                     addr89:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(_loc3_ && _loc3_);
                        
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr73:
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr73);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() != super.y)
               {
                  if(!_loc3_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§^!g§.y,param1),this.§^!g§.y + this.§^!g§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(!_loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      public function §0[§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§^!g§.x);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§^!g§.y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^!g§.size.length;
         §§push(_loc3_);
         if(!(_loc6_ && this))
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §^Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = this.§^!g§.x + param1 * this.§^!g§.width;
         }
         do
         {
            this.y = this.§^!g§.y + param1 * this.§^!g§.height;
         }
         while(_loc3_ && param1);
         
      }
   }
}
