package §,j§
{
   import §1§.§&!3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §'3§ extends §0!@§
   {
      
      public static const §"!X§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"!X§ = 4;
         }
      }
      
      private var §#b§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §+5§:String;
      
      public function §'3§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            this.§#b§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(true)
               {
                  addr34:
                  while(true)
                  {
                     this.§#b§.x = x;
                     continue loop1;
                  }
               }
               if(_loc8_ && param3)
               {
                  continue;
               }
               this.§#b§.y = y;
               if(!(_loc8_ && param3))
               {
                  while(false)
                  {
                     §§goto(addr34);
                  }
                  var _loc4_:String = param1.@constraint_x.toString();
                  var _loc5_:String = param1.@constraint_y.toString();
                  var _loc6_:String = param1.@constraint_width.toString();
                  var _loc7_:String = param1.@constraint_height.toString();
                  if(!(_loc8_ && param1))
                  {
                     if(!isNaN(parseInt(_loc4_)))
                     {
                        loop5:
                        while(true)
                        {
                           this.§#b§.x = parseInt(_loc4_);
                           addr277:
                           while(true)
                           {
                           }
                           loop19:
                           while(true)
                           {
                              if(!(_loc9_ || this))
                              {
                                 continue loop5;
                              }
                              loop17:
                              while(true)
                              {
                                 §2!4§(§"!X§,param1.@Drag);
                                 if(!(_loc8_ && param3))
                                 {
                                    addr111:
                                    if(_loc9_ || this)
                                    {
                                       if(!_loc8_)
                                       {
                                          return;
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                this.§#b§.width = param2.width - mClip.width;
                                                loop21:
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc8_)
                                                      {
                                                         §§push("parent");
                                                         if(_loc9_ || param2)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!isNaN(parseInt(_loc7_)))
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        this.§#b§.height = parseInt(_loc7_);
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              addr218:
                                                                              addr218:
                                                                              while(true)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    this.§#b§.height = param2.height - mClip.height;
                                                                                    continue loop19;
                                                                                 }
                                                                                 addr254:
                                                                                 while(true)
                                                                                 {
                                                                                    addr219:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       break loop14;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr180:
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     addr212:
                                                                     while(true)
                                                                     {
                                                                        this.§#b§.width = parseInt(_loc6_);
                                                                        §§goto(addr218);
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  continue loop21;
                                                                  addr140:
                                                               }
                                                               continue loop17;
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               continue loop20;
                                                            }
                                                            if(isNaN(parseInt(_loc6_)))
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         addr222:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr277);
                                             }
                                             while(true)
                                             {
                                                if(!isNaN(parseInt(_loc5_)))
                                                {
                                                   while(true)
                                                   {
                                                      this.§#b§.y = parseInt(_loc5_);
                                                      §§goto(addr254);
                                                   }
                                                   addr248:
                                                }
                                                §§goto(addr219);
                                                §§goto(addr277);
                                             }
                                             addr241:
                                          }
                                          §§goto(addr248);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr155);
                              }
                           }
                        }
                     }
                     §§goto(addr241);
                  }
                  §§goto(addr218);
                  addr32:
               }
               §§goto(addr39);
            }
         }
         §§goto(addr32);
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
                     if(!(_loc4_ && this))
                     {
                        addr81:
                        §§push(0);
                        if(_loc4_ && this)
                        {
                        }
                     }
                     else
                     {
                        addr93:
                        §§push(1);
                        if(_loc5_ || param1)
                        {
                        }
                     }
                     addr117:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(!(_loc4_ && _loc3_))
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr116:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr93);
               }
               §§goto(addr81);
            }
            §§goto(addr117);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§#b§);
                  addr123:
                  while(true)
                  {
                     this.mDragging = true;
                     continue loop0;
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr76);
      }
      
      private function §7!3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.listenerEventOccured(§"!X§,§2!;§[§"!X§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
               loop4:
               while(!(_loc3_ && this))
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  loop5:
                  while(true)
                  {
                     this.setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr81:
                     loop6:
                     while(!_loc3_)
                     {
                        while(this.§+5§)
                        {
                           if(_loc3_ && _loc2_)
                           {
                              continue loop5;
                           }
                           if(_loc3_)
                           {
                              continue loop4;
                           }
                           if(!_loc3_)
                           {
                              this.setComponentVisualState(this.§+5§);
                              continue loop5;
                           }
                           addr113:
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§7!3§);
                              break loop6;
                           }
                        }
                        return;
                     }
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.mDragging)
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     return;
                  }
               }
               while(!_loc2_);
               
               return;
               addr74:
            }
         }
         this.§+5§ = param1;
         §§goto(addr74);
      }
      
      public function §#@§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#b§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§#b§.x,param1),this.§#b§.x + this.§#b§.width)));
                     addr90:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr91);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() != super.y)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§#b§.y,param1),this.§#b§.y + this.§#b§.height)));
                     addr80:
                     addr47:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr25);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr47);
      }
      
      public function §?!!§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§#b§.x);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§#b§.y);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§#b§.size.length;
         §§push(_loc3_);
         if(_loc5_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §4s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = this.§#b§.x + param1 * this.§#b§.width;
            do
            {
               this.y = this.§#b§.y + param1 * this.§#b§.height;
            }
            while(_loc2_);
            
         }
      }
   }
}
