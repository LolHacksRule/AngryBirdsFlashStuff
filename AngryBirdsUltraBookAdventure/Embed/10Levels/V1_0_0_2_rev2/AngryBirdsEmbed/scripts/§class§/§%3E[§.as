package §class§
{
   import §-!F§.§`!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>[§ extends §?q§
   {
      
      public static const §;g§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §;g§ = 4;
         }
      }
      
      private var §3-§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §[E§:String;
      
      public function §>[§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§3-§ = new Rectangle();
            if(_loc8_ || param3)
            {
               super(param1,param2,param3);
               if(_loc8_)
               {
                  this.§3-§.x = x;
                  if(_loc9_ && param3)
                  {
                  }
                  addr51:
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(!isNaN(parseInt(_loc4_)))
                  {
                     this.§3-§.x = parseInt(_loc4_);
                  }
                  if(!isNaN(parseInt(_loc5_)))
                  {
                     this.§3-§.y = parseInt(_loc5_);
                  }
                  §§push(_loc6_);
                  if(!(_loc9_ && param3))
                  {
                     §§push("parent");
                     if(!(_loc9_ && param1))
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§3-§.width = param2.width - mClip.width;
                           if(_loc8_ || param3)
                           {
                              addr159:
                              if(_loc7_ == "parent")
                              {
                                 this.§3-§.height = param2.height - mClip.height;
                              }
                              else if(!isNaN(parseInt(_loc7_)))
                              {
                                 this.§3-§.height = parseInt(_loc7_);
                                 if(!(_loc9_ && param1))
                                 {
                                    addr200:
                                    §7w§(§;g§,param1.@Drag);
                                 }
                                 §§goto(addr205);
                              }
                           }
                           else
                           {
                              addr151:
                              this.§3-§.width = parseInt(_loc6_);
                              if(_loc8_)
                              {
                                 §§goto(addr159);
                              }
                           }
                           §§goto(addr200);
                        }
                        else if(!isNaN(parseInt(_loc6_)))
                        {
                           if(_loc8_ || param2)
                           {
                              §§goto(addr151);
                           }
                           addr205:
                           return;
                        }
                     }
                  }
                  §§goto(addr159);
               }
            }
            this.§3-§.y = y;
         }
         §§goto(addr51);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
         §§push(param1);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
               {
                  if(_loc4_ || this)
                  {
                     addr83:
                     §§push(0);
                     if(_loc5_)
                     {
                        addr93:
                     }
                  }
                  else
                  {
                     addr90:
                     §§push(1);
                     if(_loc4_)
                     {
                        §§goto(addr93);
                     }
                  }
                  addr99:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        break;
                     case 1:
                        this.stopDrag();
                        if(!_loc5_)
                        {
                           break;
                        }
                  }
                  return;
                  addr98:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                  {
                     §§goto(addr90);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr98);
               }
               §§goto(addr90);
            }
            §§goto(addr83);
         }
         §§goto(addr99);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(mClip.stage)
         {
            mClip.startDrag(false,this.§3-§);
            if(_loc3_ || _loc2_)
            {
               this.mDragging = true;
               mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§9T§);
            }
            mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
            mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
         }
      }
      
      private function §9T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.listenerEventOccured(§;g§,§4F§[§;g§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         mClip.stopDrag();
         this.mDragging = false;
         if(!_loc3_)
         {
            if(mClip.stage)
            {
               mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§9T§);
               if(!(_loc3_ && param1))
               {
                  addr50:
                  mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  if(!(_loc3_ && _loc2_))
                  {
                     this.setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr85:
                     if(this.§[E§)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr95:
                           this.setComponentVisualState(this.§[E§);
                        }
                        this.§[E§ = null;
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr95);
               }
               addr102:
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr50);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.mDragging)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§[E§ = param1;
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr56:
                  super.setComponentVisualState(param1);
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §&K§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3-§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() != super.x)
               {
               }
               §§goto(addr74);
            }
            param1 = §§pop();
            if(_loc3_)
            {
               super.x = param1;
            }
         }
         addr74:
         if(!_loc2_)
         {
            §§push(Number(Math.min(Math.max(this.§3-§.x,param1),this.§3-§.x + this.§3-§.width)));
         }
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() != super.y)
               {
               }
               §§goto(addr78);
            }
            param1 = §§pop();
            if(_loc2_)
            {
               super.y = param1;
            }
         }
         addr78:
         if(_loc2_ || _loc2_)
         {
            §§push(Number(Math.min(Math.max(this.§3-§.y,param1),this.§3-§.y + this.§3-§.height)));
         }
      }
      
      public function §^!+§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§3-§.x);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§3-§.y);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§3-§.size.length;
         §§push(_loc3_);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / _loc4_);
         }
         return §§pop();
      }
      
      public function §4!5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.x = this.§3-§.x + param1 * this.§3-§.width;
            if(!_loc2_)
            {
               addr42:
               this.y = this.§3-§.y + param1 * this.§3-§.height;
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
