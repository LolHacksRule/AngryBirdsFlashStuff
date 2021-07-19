package §[v§
{
   import §`W§.§<r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class § %§ extends §^P§
   {
      
      public static const § >§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § %§)
         {
            § >§ = 4;
         }
      }
      
      private var §4s§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §6!'§:String;
      
      public function § %§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param3)
         {
            this.§4s§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               loop3:
               while(_loc8_ || param2)
               {
                  this.§4s§.y = y;
                  if(_loc9_)
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§4s§.x = x;
                           continue loop3;
                        }
                        addr60:
                        var _loc4_:String = param1.@constraint_x.toString();
                        var _loc5_:String = param1.@constraint_y.toString();
                        var _loc6_:String = param1.@constraint_width.toString();
                        var _loc7_:String = param1.@constraint_height.toString();
                        addr35:
                     }
                     else
                     {
                        §§goto(addr60);
                     }
                     if(!isNaN(parseInt(_loc4_)))
                     {
                        this.§4s§.x = parseInt(_loc4_);
                     }
                     if(!isNaN(parseInt(_loc5_)))
                     {
                        this.§4s§.y = parseInt(_loc5_);
                     }
                     §§push(_loc6_);
                     loop4:
                     while(true)
                     {
                        §§push("parent");
                        loop5:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc9_ && param2))
                              {
                                 this.§4s§.width = param2.width - mClip.width;
                              }
                              while(true)
                              {
                              }
                              addr214:
                           }
                           else if(!isNaN(parseInt(_loc6_)))
                           {
                              while(true)
                              {
                                 this.§4s§.width = parseInt(_loc6_);
                                 addr184:
                                 while(true)
                                 {
                                 }
                                 addr98:
                                 if(_loc8_ || param1)
                                 {
                                    return;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push("parent");
                              if(!(_loc8_ || param1))
                              {
                                 continue loop5;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!isNaN(parseInt(_loc7_)))
                                 {
                                    if(!_loc9_)
                                    {
                                       if(_loc8_ || this)
                                       {
                                          this.§4s§.height = parseInt(_loc7_);
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc9_)
                                                {
                                                   break;
                                                }
                                                if(!_loc9_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr214);
                                             }
                                             else
                                             {
                                                addr160:
                                                while(true)
                                                {
                                                   this.§4s§.height = param2.height - mClip.height;
                                                }
                                                addr160:
                                             }
                                          }
                                          continue;
                                          addr140:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr85);
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr85);
                              }
                              §§goto(addr160);
                           }
                           continue loop4;
                        }
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr54:
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
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
               if(!(_loc4_ && param1))
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                           addr106:
                        }
                     }
                     else
                     {
                        addr98:
                        §§push(1);
                        if(!(_loc4_ && param2))
                        {
                           §§goto(addr106);
                        }
                     }
                     addr112:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(_loc5_)
                           {
                              if(_loc4_)
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
                     addr111:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr98);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr112);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(mClip.stage)
         {
            mClip.startDrag(false,this.§4s§);
            this.mDragging = true;
            mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§56§);
            while(true)
            {
               mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
               while(!(_loc3_ && _loc3_))
               {
                  mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr17);
               }
            }
         }
         addr17:
      }
      
      private function §56§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§ >§,§>t§[§ >§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.stopDrag();
            this.mDragging = false;
            loop0:
            while(true)
            {
               if(!mClip.stage)
               {
                  loop2:
                  for(; this.§6!'§; while(true)
                  {
                     continue loop2;
                  })
                  {
                     while(_loc3_)
                     {
                        this.setComponentVisualState(this.§6!'§);
                        if(_loc2_ && this)
                        {
                           continue loop2;
                        }
                        this.§6!'§ = null;
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           addr32:
                           if(_loc3_ || _loc3_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        addr82:
                        while(true)
                        {
                           this.setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                        §§goto(addr82);
                     }
                  }
               }
               mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§56§);
               continue;
               return;
            }
         }
         §§goto(addr101);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        return;
                        addr42:
                     }
                     break;
                  }
                  if(!(_loc2_ && param1))
                  {
                     continue;
                  }
               }
               return;
               addr59:
            }
            this.§6!'§ = param1;
            §§goto(addr59);
         }
         §§goto(addr42);
      }
      
      public function §<!&§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4s§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.x)
               {
                  if(_loc3_ || this)
                  {
                     addr80:
                     param1 = Math.min(Math.max(this.§4s§.x,param1),this.§4s§.x + this.§4s§.width);
                     do
                     {
                        super.x = param1;
                     }
                     while(!_loc3_);
                     
                     addr81:
                  }
                  §§goto(addr81);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != super.y)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§4s§.y,param1),this.§4s§.y + this.§4s§.height)));
                     addr79:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(!_loc2_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr63:
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr63);
      }
      
      public function §?m§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§4s§.x);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§4s§.y);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§4s§.size.length;
         §§push(_loc3_);
         if(_loc5_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §1k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.x = this.§4s§.x + param1 * this.§4s§.width;
            do
            {
               this.y = this.§4s§.y + param1 * this.§4s§.height;
            }
            while(!_loc3_);
            
         }
      }
   }
}
