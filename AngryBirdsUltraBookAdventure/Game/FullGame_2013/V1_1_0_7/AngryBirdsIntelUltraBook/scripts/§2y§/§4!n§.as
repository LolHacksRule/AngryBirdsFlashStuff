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
         if(_loc1_)
         {
            §2!M§ = 4;
         }
      }
      
      private var §^!g§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §?P§:String;
      
      public function §4!n§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
         {
            this.§^!g§ = new Rectangle();
         }
         while(true)
         {
            super(param1,param2,param3);
            while(_loc9_)
            {
               while(true)
               {
                  this.§^!g§.x = x;
                  do
                  {
                     this.§^!g§.y = y;
                  }
                  while(_loc8_ && param3);
                  
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(_loc9_)
                  {
                     if(!isNaN(parseInt(_loc4_)))
                     {
                        loop4:
                        while(true)
                        {
                           this.§^!g§.x = parseInt(_loc4_);
                           addr267:
                           while(true)
                           {
                           }
                           loop8:
                           while(true)
                           {
                              if(_loc8_ && param2)
                              {
                                 continue loop4;
                              }
                              while(true)
                              {
                                 §§push(_loc6_);
                                 loop10:
                                 while(true)
                                 {
                                    §§push("parent");
                                    addr212:
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             this.§^!g§.width = param2.width - mClip.width;
                                          }
                                          while(true)
                                          {
                                             continue loop10;
                                          }
                                          addr223:
                                       }
                                       else
                                       {
                                          if(isNaN(parseInt(_loc6_)))
                                          {
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             this.§^!g§.width = parseInt(_loc6_);
                                             addr206:
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop10;
                                                }
                                                addr241:
                                                while(true)
                                                {
                                                   this.§^!g§.y = parseInt(_loc5_);
                                                   break loop13;
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr267);
                        }
                     }
                     while(true)
                     {
                        if(!isNaN(parseInt(_loc5_)))
                        {
                           §§goto(addr241);
                        }
                        §§goto(addr209);
                        §§goto(addr267);
                     }
                  }
                  §§goto(addr190);
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr88:
                        §§push(1);
                        if(_loc4_ && param1)
                        {
                        }
                     }
                     addr102:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(_loc5_)
                           {
                              if(!_loc5_)
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
                     addr101:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr88);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr102);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
                     addr99:
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§]n§);
                        loop3:
                        while(_loc2_ || _loc2_)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           while(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 if(_loc2_)
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                    }
                                    continue loop3;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §]n§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§2!M§,§%0§[§2!M§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.stopDrag();
            loop0:
            while(true)
            {
               this.mDragging = false;
               loop1:
               while(true)
               {
                  if(!mClip.stage)
                  {
                     while(this.§?P§)
                     {
                        continue loop1;
                        §§goto(addr81);
                     }
                     addr24:
                  }
                  loop2:
                  for(; !_loc3_; loop4:
                  while(!(_loc3_ && param1))
                  {
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                        addr90:
                        while(true)
                        {
                           this.setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr79:
                           while(!_loc2_)
                           {
                              continue loop4;
                           }
                           addr81:
                        }
                     }
                  })
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§]n§);
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                        continue loop2;
                        addr40:
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr24);
                        }
                     }
                  }
                  continue loop0;
                  return;
               }
            }
         }
         §§goto(addr116);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        return;
                     }
                     break;
                  }
                  if(!(_loc3_ && param1))
                  {
                     continue;
                  }
               }
               return;
               addr73:
            }
            this.§?P§ = param1;
            §§goto(addr73);
         }
         §§goto(addr66);
      }
      
      public function §>!5§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!g§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§^!g§.x,param1),this.§^!g§.x + this.§^!g§.width)));
                     addr79:
                     addr41:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(_loc3_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr19);
                  }
               }
               addr19:
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr41);
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
                  if(_loc2_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§^!g§.y,param1),this.§^!g§.y + this.§^!g§.height);
                     do
                     {
                        super.y = param1;
                     }
                     while(!_loc2_);
                     
                     addr80:
                  }
                  §§goto(addr80);
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      public function §0[§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§^!g§.x);
         if(!(_loc5_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§^!g§.y);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^!g§.size.length;
         §§push(_loc3_);
         if(_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §^Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = this.§^!g§.x + param1 * this.§^!g§.width;
            do
            {
               this.y = this.§^!g§.y + param1 * this.§^!g§.height;
            }
            while(_loc2_ && this);
            
         }
      }
   }
}
