package §+D§
{
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §5!V§ extends §^"m§
   {
      
      public static const §>G§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §5!V§)
         {
            §>G§ = 4;
         }
      }
      
      private var §;M§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §8#J§:String;
      
      public function §5!V§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§;M§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               addr59:
               loop1:
               while(true)
               {
                  addr47:
                  while(true)
                  {
                     this.§;M§.x = x;
                     continue loop1;
                  }
               }
               addr38:
               if(!(_loc8_ || param3))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr47);
               }
               addr65:
               var _loc4_:String = param1.@constraint_x.toString();
               var _loc5_:String = param1.@constraint_y.toString();
               var _loc6_:String = param1.@constraint_width.toString();
               var _loc7_:String = param1.@constraint_height.toString();
               if(!(_loc9_ && param3))
               {
                  if(!isNaN(parseInt(_loc4_)))
                  {
                     while(true)
                     {
                        this.§;M§.x = parseInt(_loc4_);
                        addr286:
                        addr131:
                        while(true)
                        {
                        }
                        if(_loc9_ && param1)
                        {
                           continue;
                        }
                        this.§;M§.height = parseInt(_loc7_);
                        loop15:
                        for(; _loc8_; while(true)
                        {
                           § #A§(§>G§,param1.@Drag);
                           if(!(_loc8_ || param2))
                           {
                              continue loop15;
                           }
                           if(_loc8_)
                           {
                              return;
                           }
                           §§goto(addr216);
                        })
                        {
                           addr156:
                           if(_loc8_ || param2)
                           {
                              if(!(_loc9_ && param3))
                              {
                                 continue;
                              }
                              §§goto(addr286);
                           }
                           loop13:
                           while(true)
                           {
                              addr171:
                              loop14:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(_loc8_ || param2)
                                 {
                                    §§push("parent");
                                    if(_loc8_ || param1)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             this.§;M§.height = param2.height - mClip.height;
                                          }
                                       }
                                       else
                                       {
                                          if(isNaN(parseInt(_loc7_)))
                                          {
                                             continue loop15;
                                          }
                                          if(_loc9_)
                                          {
                                             continue loop15;
                                          }
                                          if(!(_loc9_ && param2))
                                          {
                                             §§goto(addr131);
                                          }
                                       }
                                       if(_loc8_ || this)
                                       {
                                          continue loop15;
                                       }
                                       while(true)
                                       {
                                          addr223:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             break loop14;
                                          }
                                       }
                                       addr263:
                                    }
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc8_ || param1))
                                          {
                                             continue loop13;
                                          }
                                          addr234:
                                          if(_loc8_ || param3)
                                          {
                                             this.§;M§.width = param2.width - mClip.width;
                                             continue loop13;
                                          }
                                          addr257:
                                          while(true)
                                          {
                                             this.§;M§.y = parseInt(_loc5_);
                                             §§goto(addr263);
                                             §§goto(addr234);
                                          }
                                       }
                                       else
                                       {
                                          if(isNaN(parseInt(_loc6_)))
                                          {
                                             continue loop14;
                                          }
                                          while(true)
                                          {
                                             this.§;M§.width = parseInt(_loc6_);
                                             break loop15;
                                          }
                                       }
                                    }
                                    addr226:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr226);
                                 §§goto(addr171);
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr171);
                        }
                        addr222:
                     }
                  }
                  while(true)
                  {
                     if(!isNaN(parseInt(_loc5_)))
                     {
                        §§goto(addr257);
                     }
                     §§goto(addr223);
                     §§goto(addr286);
                  }
               }
               §§goto(addr222);
            }
         }
         while(true)
         {
            this.§;M§.y = y;
            if(!(_loc8_ || this))
            {
               continue;
            }
            if(!(_loc9_ && this))
            {
               §§goto(addr38);
            }
            §§goto(addr59);
         }
         §§goto(addr65);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§6#'§ = super.listenerUIEventOccured(param1,param2);
         §§push(param1);
         if(_loc6_ || param2)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc3_)
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        addr89:
                     }
                  }
                  else
                  {
                     addr76:
                     §§push(1);
                     if(!_loc5_)
                     {
                        §§goto(addr89);
                     }
                  }
                  addr95:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(!_loc5_)
                        {
                           break;
                        }
                        break;
                     case 1:
                        this.stopDrag();
                        if(_loc6_)
                        {
                           break;
                        }
                  }
                  return _loc3_;
                  addr94:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc4_)
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr95);
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(mClip.stage)
            {
               if(!_loc3_)
               {
                  addr108:
                  mClip.startDrag(false,this.§;M§);
               }
               loop0:
               do
               {
                  this.mDragging = true;
                  loop1:
                  while(true)
                  {
                     mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§=#!§);
                     do
                     {
                        mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                        continue loop1;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     continue loop0;
                  }
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr108);
      }
      
      private function §=#!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerUIEventOccured(§>G§,§ !_§[§>G§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.stopDrag();
         }
         loop0:
         while(true)
         {
            this.mDragging = false;
            loop1:
            while(true)
            {
               if(!mClip.stage)
               {
                  loop7:
                  while(this.§8#J§)
                  {
                     if(_loc3_)
                     {
                        addr51:
                        if(!(_loc2_ && _loc3_))
                        {
                           addr58:
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           this.setComponentVisualState(this.§8#J§);
                           while(!_loc2_)
                           {
                              this.§8#J§ = null;
                              if(_loc2_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop7;
                                 }
                                 addr131:
                                 while(true)
                                 {
                                    mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                                 }
                              }
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 while(true)
                                 {
                                    this.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    addr82:
                                    while(_loc3_)
                                    {
                                       continue loop7;
                                       §§goto(addr51);
                                    }
                                 }
                              }
                           }
                           continue loop0;
                           addr74:
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr74);
                  }
               }
               continue;
               return;
            }
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(_loc2_ && _loc2_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     return;
                  }
               }
               return;
               addr74:
            }
            this.§8#J§ = param1;
            §§goto(addr74);
         }
         §§goto(addr67);
      }
      
      public function §9#0§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§;M§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§;M§.x,param1),this.§;M§.x + this.§;M§.width)));
                     addr80:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != super.y)
               {
                  if(_loc2_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§;M§.y,param1),this.§;M§.y + this.§;M§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(_loc3_);
                  
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      public function §-+§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§;M§.x);
         if(!(_loc5_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§;M§.y);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§;M§.size.length;
         §§push(_loc3_);
         if(_loc6_ || _loc2_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §7!r§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.x = this.§;M§.x + param1 * this.§;M§.width;
         }
         do
         {
            this.y = this.§;M§.y + param1 * this.§;M§.height;
         }
         while(!(_loc3_ || this));
         
      }
   }
}
