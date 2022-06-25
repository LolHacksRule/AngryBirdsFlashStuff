package §4C§
{
   import §`!0§.§[4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §3!"§ extends §6<§
   {
      
      public static const §<3§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<3§ = 4;
         }
      }
      
      private var §7!B§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §<C§:String;
      
      public function §3!"§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            this.§7!B§ = new Rectangle();
            if(_loc9_)
            {
               super(param1,param2,param3);
               if(!(_loc8_ && param2))
               {
                  this.§7!B§.x = x;
                  if(_loc9_)
                  {
                     addr48:
                     this.§7!B§.y = y;
                  }
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(!isNaN(parseInt(_loc4_)))
                  {
                     this.§7!B§.x = parseInt(_loc4_);
                  }
                  if(!isNaN(parseInt(_loc5_)))
                  {
                     this.§7!B§.y = parseInt(_loc5_);
                     if(_loc9_ || param3)
                     {
                        addr113:
                        §§push(_loc6_);
                        if(_loc9_)
                        {
                           §§push("parent");
                           if(!(_loc8_ && param2))
                           {
                              if(§§pop() == §§pop())
                              {
                                 this.§7!B§.width = param2.width - mClip.width;
                              }
                              else if(!isNaN(parseInt(_loc6_)))
                              {
                                 this.§7!B§.width = parseInt(_loc6_);
                              }
                              addr147:
                              §§push(_loc7_);
                              §§push("parent");
                           }
                           if(§§pop() == §§pop())
                           {
                              if(_loc9_ || param2)
                              {
                                 this.§7!B§.height = param2.height - mClip.height;
                              }
                              else
                              {
                                 addr188:
                                 this.§7!B§.height = parseInt(_loc7_);
                              }
                           }
                           else if(!isNaN(parseInt(_loc7_)))
                           {
                              if(_loc9_ || param3)
                              {
                                 §§goto(addr188);
                              }
                              §§goto(addr199);
                           }
                           §1?§(§<3§,param1.@Drag);
                           addr199:
                           return;
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr48);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.listenerEventOccured(param1,param2);
         }
         §§push(param1);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
               {
                  if(_loc5_ || this)
                  {
                     addr84:
                     §§push(0);
                     if(_loc5_ || param2)
                     {
                     }
                  }
                  else
                  {
                     addr96:
                     §§push(1);
                     if(_loc5_ || _loc3_)
                     {
                     }
                  }
                  addr110:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        addr55:
                        break;
                     case 1:
                        this.stopDrag();
                        if(_loc5_ || param1)
                        {
                           §§goto(addr55);
                        }
                  }
                  return;
                  addr109:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                  {
                     §§goto(addr96);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr109);
               }
               §§goto(addr96);
            }
            §§goto(addr84);
         }
         §§goto(addr110);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(mClip.stage)
         {
            if(_loc2_)
            {
               mClip.startDrag(false,this.§7!B§);
               this.mDragging = true;
               if(!(_loc3_ && this))
               {
                  mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#3§);
                  if(_loc2_ || this)
                  {
                  }
                  §§goto(addr91);
               }
               mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
               if(_loc2_ || param1)
               {
                  mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
               }
            }
         }
         addr91:
      }
      
      private function §#3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.listenerEventOccured(§<3§,§,>§[§<3§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         mClip.stopDrag();
         if(!_loc2_)
         {
            this.mDragging = false;
            if(_loc3_ || param1)
            {
               if(mClip.stage)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#3§);
                  if(!_loc2_)
                  {
                     mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                  }
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  this.setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(!(_loc2_ && param1))
                  {
                     addr88:
                     if(this.§<C§)
                     {
                        addr91:
                        this.setComponentVisualState(this.§<C§);
                        if(!(_loc2_ && this))
                        {
                           this.§<C§ = null;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr88);
            }
            §§goto(addr91);
         }
         §§goto(addr88);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.mDragging)
            {
               if(!_loc2_)
               {
                  this.§<C§ = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            super.setComponentVisualState(param1);
            return;
         }
         addr44:
      }
      
      public function §-a§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§7!B§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() != super.x)
               {
                  if(_loc2_ || this)
                  {
                     addr77:
                     param1 = Math.min(Math.max(this.§7!B§.x,param1),this.§7!B§.x + this.§7!B§.width);
                     if(_loc2_)
                     {
                        addr80:
                        super.x = param1;
                     }
                  }
                  §§goto(addr80);
               }
               return;
            }
            §§goto(addr77);
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
            if(!(_loc3_ && this))
            {
               if(§§pop() != super.y)
               {
                  if(_loc2_ || this)
                  {
                     addr77:
                     param1 = Math.min(Math.max(this.§7!B§.y,param1),this.§7!B§.y + this.§7!B§.height);
                     if(!(_loc3_ && _loc3_))
                     {
                        super.y = param1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §%!=§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§7!B§.x);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§7!B§.y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§7!B§.size.length;
         §§push(_loc3_);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / _loc4_);
         }
         return §§pop();
      }
      
      public function §-E§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = this.§7!B§.x + param1 * this.§7!B§.width;
            if(_loc2_)
            {
               addr41:
               this.y = this.§7!B§.y + param1 * this.§7!B§.height;
            }
            return;
         }
         §§goto(addr41);
      }
   }
}
