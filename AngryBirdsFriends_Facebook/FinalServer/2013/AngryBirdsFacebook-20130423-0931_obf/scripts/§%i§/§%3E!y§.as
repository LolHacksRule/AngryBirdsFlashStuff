package §%i§
{
   import §1!t§.§!!G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>!y§ extends §7"0§
   {
      
      public static const §"N§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §"N§ = 4;
         }
      }
      
      private var §2!v§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var § !u§:String;
      
      public function §>!y§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§2!v§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               addr48:
               loop1:
               while(!_loc8_)
               {
                  while(true)
                  {
                     this.§2!v§.x = x;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§2!v§.y = y;
            if(!_loc9_)
            {
               continue;
            }
            if(_loc9_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr48);
            }
            §§goto(addr36);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!_loc8_)
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               while(true)
               {
                  this.§2!v§.x = parseInt(_loc4_);
                  addr257:
                  while(true)
                  {
                  }
               }
               addr251:
            }
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  loop7:
                  for(; !_loc8_; while(true)
                  {
                     if(!(_loc9_ || param2))
                     {
                        continue loop7;
                     }
                     §§goto(addr129);
                  },§§goto(addr244))
                  {
                     this.§2!v§.y = parseInt(_loc5_);
                     loop8:
                     while(true)
                     {
                        loop14:
                        while(true)
                        {
                           if(!(_loc8_ && this))
                           {
                              loop15:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ || param3)
                                 {
                                    §§push("parent");
                                    if(_loc9_ || param3)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc9_ || this)
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop14;
                                             }
                                             continue loop7;
                                          }
                                          addr171:
                                          addr171:
                                          while(true)
                                          {
                                          }
                                          addr171:
                                       }
                                       else if(!isNaN(parseInt(_loc7_)))
                                       {
                                          if(_loc9_)
                                          {
                                             this.§2!v§.height = parseInt(_loc7_);
                                          }
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                §§goto(addr171);
                                             }
                                          }
                                          addr126:
                                       }
                                       while(true)
                                       {
                                          §[o§(§"N§,param1.@Drag);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§goto(addr126);
                                       }
                                       addr91:
                                       if(_loc9_ || param3)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                continue loop14;
                                             }
                                             if(!_loc8_)
                                             {
                                                this.§2!v§.width = param2.width - mClip.width;
                                                continue loop14;
                                             }
                                             §§goto(addr251);
                                          }
                                          else if(isNaN(parseInt(_loc6_)))
                                          {
                                             continue loop15;
                                          }
                                       }
                                       addr198:
                                    }
                                    while(true)
                                    {
                                       this.§2!v§.width = parseInt(_loc6_);
                                       continue loop7;
                                       §§goto(addr91);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop15;
                                    }
                                    addr197:
                                 }
                                 §§goto(addr198);
                              }
                              return;
                              addr129:
                           }
                           continue loop8;
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  §§goto(addr197);
                  §§goto(addr244);
               }
            }
         }
         §§goto(addr171);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ && this)
                        {
                           addr106:
                        }
                     }
                     else
                     {
                        addr103:
                        §§push(1);
                        if(_loc5_)
                        {
                           §§goto(addr106);
                        }
                     }
                     addr112:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(_loc5_ || this)
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr111:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr103);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr112);
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
                  mClip.startDrag(false,this.§2!v§);
                  while(true)
                  {
                     this.mDragging = true;
                     while(_loc2_)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-T§);
                        while(!(_loc3_ && this))
                        {
                           continue loop0;
                           while(_loc2_ || this)
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr19);
                              }
                           }
                        }
                     }
                  }
               }
               addr108:
            }
            addr19:
            return;
         }
         §§goto(addr108);
      }
      
      private function §-T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§"N§,§=!U§[§"N§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
               loop1:
               while(true)
               {
                  if(!mClip.stage)
                  {
                     loop3:
                     while(this.§ !u§)
                     {
                        loop4:
                        while(!(_loc2_ && this))
                        {
                           if(_loc3_ || this)
                           {
                              this.setComponentVisualState(this.§ !u§);
                              do
                              {
                                 this.§ !u§ = null;
                              }
                              while(!_loc3_);
                              
                              if(!_loc2_)
                              {
                                 break loop3;
                              }
                              continue;
                           }
                           addr92:
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr103:
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              addr136:
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                                 continue loop6;
                              }
                           }
                           mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                           while(true)
                           {
                              this.setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              break loop4;
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              continue loop3;
                           }
                           §§goto(addr92);
                        }
                     }
                  }
                  continue;
                  return;
               }
            }
         }
         while(true)
         {
            mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-T§);
            §§goto(addr136);
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.mDragging)
            {
               if(!_loc2_)
               {
                  addr71:
                  this.§ !u§ = param1;
               }
            }
            else
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §<"4§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!v§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§2!v§.x,param1),this.§2!v§.x + this.§2!v§.width)));
                     addr79:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != super.y)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§2!v§.y,param1),this.§2!v§.y + this.§2!v§.height)));
                     addr89:
                     addr51:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(!(_loc2_ || param1));
                        
                        if(!(_loc3_ && this))
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
            §§goto(addr89);
         }
         §§goto(addr51);
      }
      
      public function §?!n§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§2!v§.x);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§2!v§.y);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§2!v§.size.length;
         §§push(_loc3_);
         if(!(_loc6_ && this))
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §8[§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = this.§2!v§.x + param1 * this.§2!v§.width;
         }
         do
         {
            this.y = this.§2!v§.y + param1 * this.§2!v§.height;
         }
         while(!(_loc3_ || this));
         
      }
   }
}
