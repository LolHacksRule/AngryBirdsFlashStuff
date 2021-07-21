package §"!E§
{
   import §#!4§.§<f§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §0X§ extends §#!'§
   {
      
      public static const §;p§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;p§ = 4;
         }
      }
      
      private var §'3§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §="§:String;
      
      public function §0X§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            this.§'3§ = new Rectangle();
            if(_loc9_)
            {
               addr30:
               super(param1,param2,param3);
               if(_loc9_ || this)
               {
                  this.§'3§.x = x;
                  if(_loc9_ || this)
                  {
                     addr53:
                     this.§'3§.y = y;
                  }
               }
               var _loc4_:String = param1.@constraint_x.toString();
               var _loc5_:String = param1.@constraint_y.toString();
               var _loc6_:String = param1.@constraint_width.toString();
               var _loc7_:String = param1.@constraint_height.toString();
               if(!_loc8_)
               {
                  if(!isNaN(parseInt(_loc4_)))
                  {
                     this.§'3§.x = parseInt(_loc4_);
                     if(!_loc8_)
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr136);
                  }
                  addr93:
                  if(!isNaN(parseInt(_loc5_)))
                  {
                     addr109:
                     this.§'3§.y = parseInt(_loc5_);
                     if(_loc9_ || param3)
                     {
                     }
                     addr136:
                     this.§'3§.width = param2.width - mClip.width;
                     if(_loc9_ || param2)
                     {
                        §§goto(addr171);
                     }
                     else
                     {
                        addr158:
                        this.§'3§.width = parseInt(_loc6_);
                        if(_loc9_ || param3)
                        {
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr201);
                  }
                  §§push(_loc6_);
                  if(_loc9_)
                  {
                     §§push("parent");
                     if(!(_loc8_ && param2))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc8_)
                           {
                              §§goto(addr136);
                           }
                           §§goto(addr201);
                        }
                        else if(!isNaN(parseInt(_loc6_)))
                        {
                           §§goto(addr158);
                        }
                        addr171:
                        §§goto(addr173);
                     }
                     addr173:
                     §§goto(addr172);
                  }
                  addr172:
                  if(_loc7_ == "parent")
                  {
                     if(_loc9_ || param1)
                     {
                        this.§'3§.height = param2.height - mClip.height;
                        if(_loc9_)
                        {
                           addr201:
                        }
                     }
                  }
                  else if(!isNaN(parseInt(_loc7_)))
                  {
                     this.§'3§.height = parseInt(_loc7_);
                  }
                  §<!k§(§;p§,param1.@Drag);
                  return;
               }
               §§goto(addr109);
            }
            §§goto(addr53);
         }
         §§goto(addr30);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param2))
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
               {
                  if(_loc4_)
                  {
                     addr88:
                     §§push(0);
                     if(!(_loc4_ || _loc3_))
                     {
                        addr108:
                     }
                  }
                  else
                  {
                     addr100:
                     §§push(1);
                     if(_loc4_ || param2)
                     {
                        §§goto(addr108);
                     }
                  }
                  addr114:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(!(_loc5_ && _loc3_))
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
                  addr113:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                  {
                     §§goto(addr100);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr113);
               }
               §§goto(addr100);
            }
            §§goto(addr88);
         }
         §§goto(addr114);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(mClip.stage)
            {
               mClip.startDrag(false,this.§'3§);
               addr37:
               this.mDragging = true;
               if(_loc3_)
               {
                  mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[!`§);
               }
               mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
               if(_loc3_ || param1)
               {
                  mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function §[!`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§;p§,§!!X§[§;p§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         mClip.stopDrag();
         if(!(_loc2_ && param1))
         {
            this.mDragging = false;
            if(_loc3_ || _loc2_)
            {
               if(mClip.stage)
               {
                  addr49:
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[!`§);
                  mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                  addr73:
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  this.setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(_loc3_)
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr93);
               }
               addr86:
               if(this.§="§)
               {
                  this.setComponentVisualState(this.§="§);
                  addr93:
                  this.§="§ = null;
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr49);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.mDragging)
            {
               if(_loc2_ || _loc2_)
               {
                  addr43:
                  this.§="§ = param1;
                  if(_loc3_ && _loc2_)
                  {
                     §§goto(addr59);
                  }
               }
               return;
            }
            super.setComponentVisualState(param1);
            addr59:
            return;
         }
         §§goto(addr43);
      }
      
      public function §[?§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§'3§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != super.x)
               {
                  if(!_loc2_)
                  {
                     addr68:
                     param1 = Math.min(Math.max(this.§'3§.x,param1),this.§'3§.x + this.§'3§.width);
                     if(_loc2_ && param1)
                     {
                     }
                     §§goto(addr79);
                  }
                  super.x = param1;
                  §§goto(addr79);
               }
               addr79:
               return;
            }
         }
         §§goto(addr68);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() != super.y)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr72:
                     param1 = Math.min(Math.max(this.§'3§.y,param1),this.§'3§.y + this.§'3§.height);
                     addr56:
                     if(_loc2_ || _loc2_)
                     {
                     }
                     §§goto(addr83);
                  }
                  super.y = param1;
               }
               addr83:
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr56);
      }
      
      public function §8!T§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§'3§.x);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§'3§.y);
         if(_loc5_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'3§.size.length;
         §§push(_loc3_);
         if(_loc5_)
         {
            §§push(§§pop() / _loc4_);
         }
         return §§pop();
      }
      
      public function §'!a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.x = this.§'3§.x + param1 * this.§'3§.width;
            if(_loc3_)
            {
               this.y = this.§'3§.y + param1 * this.§'3§.height;
            }
         }
      }
   }
}
