package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class UISliderRovio extends UIButtonRovio
   {
      
      public static const §>4§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>4§ = 4;
         }
      }
      
      private var §>J§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §[R§:String;
      
      public function UISliderRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§>J§ = new Rectangle();
         }
         loop0:
         while(true)
         {
            super(param1,param2,param3);
            while(true)
            {
               while(true)
               {
                  this.§>J§.x = x;
                  do
                  {
                     this.§>J§.y = y;
                  }
                  while(_loc8_ && param2);
                  
                  if(_loc8_ && param3)
                  {
                     break;
                  }
                  if(!_loc9_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(_loc9_ || this)
                  {
                     addr286:
                     if(!isNaN(parseInt(_loc4_)))
                     {
                        addr287:
                        this.§>J§.x = parseInt(_loc4_);
                        addr293:
                     }
                     addr272:
                     if(!isNaN(parseInt(_loc5_)))
                     {
                        addr273:
                        this.§>J§.y = parseInt(_loc5_);
                     }
                     if(_loc6_ == "parent")
                     {
                        addr245:
                        this.§>J§.width = param2.width - mClip.width;
                        addr167:
                        addr264:
                        §§push(_loc7_);
                        if(_loc9_)
                        {
                           §§push("parent");
                           if(_loc9_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 addr175:
                                 if(!(_loc8_ && param2))
                                 {
                                    this.§>J§.height = param2.height - mClip.height;
                                    addr95:
                                    §[!5§(§>4§,param1.@Drag);
                                    addr191:
                                    if(!(_loc8_ && param2))
                                    {
                                       if(_loc8_)
                                       {
                                          this.§>J§.height = parseInt(_loc7_);
                                          addr145:
                                          if(_loc9_ || param1)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§goto(addr95);
                                                }
                                                addr233:
                                                if(_loc9_ || param1)
                                                {
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr191);
                                          addr129:
                                       }
                                       return;
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr293);
                              }
                              §§push(!isNaN(parseInt(_loc7_)));
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr129);
                                       }
                                       §§goto(addr95);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr272);
                              }
                              addr201:
                              if(§§pop())
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    if(_loc9_)
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!_loc8_)
                                             {
                                                this.§>J§.width = parseInt(_loc6_);
                                                §§goto(addr233);
                                             }
                                             §§goto(addr287);
                                          }
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr245);
                           }
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr201);
                     §§push(!isNaN(parseInt(_loc6_)));
                  }
                  §§goto(addr273);
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(!_loc4_)
            {
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(0);
                        if(_loc5_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr110:
                        §§push(1);
                        if(_loc4_ && param2)
                        {
                        }
                     }
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr110);
                        }
                        addr131:
                        switch(§§pop())
                        {
                           case 0:
                              this.startDrag();
                              if(!(_loc4_ && param2))
                              {
                                 break loop0;
                              }
                              break loop0;
                           case 1:
                              continue;
                        }
                        addr131:
                     }
                     else
                     {
                        if(true)
                        {
                           §§goto(addr131);
                           §§push(2);
                        }
                        §§goto(addr131);
                     }
                     §§push(2);
                     if(_loc4_ && this)
                     {
                     }
                  }
                  §§goto(addr131);
               }
               §§goto(addr110);
            }
            §§goto(addr131);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§>J§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6f§);
                        loop3:
                        while(!_loc3_)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           do
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           while(mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag), _loc3_ && param1);
                           
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr19);
      }
      
      private function §6f§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§>4§,§]r§[§>4§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.stopDrag();
            loop0:
            while(true)
            {
               this.mDragging = false;
               loop1:
               while(true)
               {
                  §§push(Boolean(mClip.stage));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr142:
                        while(true)
                        {
                           mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6f§);
                           addr152:
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                              addr135:
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 addr113:
                                 while(true)
                                 {
                                    this.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    addr101:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                        addr142:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(this.§[R§));
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    this.setComponentVisualState(this.§[R§);
                                    for(; !(_loc3_ && _loc2_); this.§[R§ = null,if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    },if(_loc2_ || _loc2_)
                                    {
                                       break loop3;
                                    },§§goto(addr135))
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr101);
                                    addr77:
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr77);
                           }
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.mDragging)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§[R§ = param1;
               }
            }
            else
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               return;
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §4!Q§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>J§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != super.x)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§>J§.x,param1),this.§>J§.x + this.§>J§.width)));
                     addr96:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(_loc3_ && param1);
                        
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr78:
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr78);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop() != super.y)
               {
                  if(!_loc2_)
                  {
                     addr87:
                     param1 = Math.min(Math.max(this.§>J§.y,param1),this.§>J§.y + this.§>J§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(_loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      public function §%K§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§>J§.x);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§>J§.y);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§>J§.size.length;
         §§push(_loc3_);
         if(!_loc5_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §^!!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.x = this.§>J§.x + param1 * this.§>J§.width;
         }
         do
         {
            this.y = this.§>J§.y + param1 * this.§>J§.height;
         }
         while(!_loc2_);
         
      }
   }
}
