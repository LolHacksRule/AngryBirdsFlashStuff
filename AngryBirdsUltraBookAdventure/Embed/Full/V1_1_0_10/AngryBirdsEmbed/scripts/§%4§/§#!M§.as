package §%4§
{
   import §0!#§.§0K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §#!M§ extends §7-§
   {
      
      public static const §7!!§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7!!§ = 4;
         }
      }
      
      private var §]!$§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §#;§:String;
      
      public function §#!M§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§]!$§ = new Rectangle();
            if(!_loc9_)
            {
               super(param1,param2,param3);
               if(_loc8_ || this)
               {
                  this.§]!$§.x = x;
                  if(_loc8_ || this)
                  {
                  }
                  addr51:
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(!isNaN(parseInt(_loc4_)))
                  {
                     this.§]!$§.x = parseInt(_loc4_);
                  }
                  if(!isNaN(parseInt(_loc5_)))
                  {
                     this.§]!$§.y = parseInt(_loc5_);
                     if(!(_loc9_ && param1))
                     {
                        addr112:
                        §§push(_loc6_);
                        if(!(_loc9_ && param1))
                        {
                           §§push("parent");
                           if(!_loc9_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    this.§]!$§.width = param2.width - mClip.width;
                                 }
                              }
                              else if(!isNaN(parseInt(_loc6_)))
                              {
                                 this.§]!$§.width = parseInt(_loc6_);
                                 if(_loc8_ || param2)
                                 {
                                    addr154:
                                    addr166:
                                    addr155:
                                    if(_loc7_ == "parent")
                                    {
                                       this.§]!$§.height = param2.height - mClip.height;
                                    }
                                    else if(!isNaN(parseInt(_loc7_)))
                                    {
                                       addr182:
                                       this.§]!$§.height = parseInt(_loc7_);
                                       if(_loc9_)
                                       {
                                       }
                                       §§goto(addr195);
                                    }
                                    §else§(§7!!§,param1.@Drag);
                                 }
                                 addr195:
                                 return;
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr112);
               }
            }
            this.§]!$§.y = y;
         }
         §§goto(addr51);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.listenerEventOccured(param1,param2);
         }
         §§push(param1);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param2))
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        addr88:
                     }
                  }
                  else
                  {
                     addr85:
                     §§push(1);
                     if(_loc4_)
                     {
                        §§goto(addr88);
                     }
                  }
                  addr94:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(_loc4_)
                        {
                           break;
                        }
                        break;
                     case 1:
                        this.stopDrag();
                        if(_loc4_ || param2)
                        {
                           break;
                        }
                  }
                  return;
                  addr93:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                  {
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr94);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(mClip.stage)
            {
               mClip.startDrag(false,this.§]!$§);
               if(_loc2_)
               {
                  this.mDragging = true;
                  addr56:
                  mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§5P§);
                  mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                  if(_loc2_)
                  {
                     mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function §5P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§7!!§,§5`§[§7!!§]);
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
            if(mClip.stage)
            {
               mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§5P§);
               mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
               mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
               if(!(_loc2_ && this))
               {
                  this.setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  if(_loc3_ || _loc3_)
                  {
                     addr86:
                     if(this.§#;§)
                     {
                        this.setComponentVisualState(this.§#;§);
                     }
                     §§goto(addr96);
                  }
                  this.§#;§ = null;
                  addr96:
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.mDragging)
            {
               if(_loc2_ || this)
               {
                  this.§#;§ = param1;
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
            }
            super.setComponentVisualState(param1);
         }
      }
      
      public function §^h§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]!$§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() != super.x)
               {
                  if(_loc3_ || param1)
                  {
                     addr78:
                     param1 = Math.min(Math.max(this.§]!$§.x,param1),this.§]!$§.x + this.§]!$§.width);
                     if(!(_loc2_ && this))
                     {
                        addr86:
                        super.x = param1;
                     }
                  }
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr86);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.y)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr73:
                     param1 = Math.min(Math.max(this.§]!$§.y,param1),this.§]!$§.y + this.§]!$§.height);
                     if(_loc2_ && param1)
                     {
                     }
                     §§goto(addr84);
                  }
                  super.y = param1;
                  §§goto(addr84);
               }
               addr84:
               return;
            }
         }
         §§goto(addr73);
      }
      
      public function § !1§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§]!$§.x);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§]!$§.y);
         if(_loc6_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§]!$§.size.length;
         §§push(_loc3_);
         if(!(_loc5_ && _loc1_))
         {
            §§push(§§pop() / _loc4_);
         }
         return §§pop();
      }
      
      public function §;K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.x = this.§]!$§.x + param1 * this.§]!$§.width;
            if(!_loc3_)
            {
               this.y = this.§]!$§.y + param1 * this.§]!$§.height;
            }
         }
      }
   }
}
