package §`M§
{
   import §=R§.§5!a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §<m§ extends §,c§
   {
      
      public static const §4n§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4n§ = 4;
         }
      }
      
      private var §'M§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §]M§:String;
      
      public function §<m§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            this.§'M§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(!_loc8_)
               {
                  while(true)
                  {
                     this.§'M§.x = x;
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           this.§'M§.y = y;
                           if(_loc9_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr34);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!_loc8_)
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               loop5:
               while(true)
               {
                  this.§'M§.x = parseInt(_loc4_);
                  addr257:
                  while(true)
                  {
                  }
                  loop12:
                  while(true)
                  {
                     if(_loc8_ && this)
                     {
                        continue loop5;
                     }
                     this.§'M§.width = parseInt(_loc6_);
                     loop13:
                     while(true)
                     {
                        if(_loc9_ || param3)
                        {
                           loop15:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!(_loc8_ && this))
                              {
                                 §§push("parent");
                                 if(_loc9_ || param1)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop12;
                                          }
                                          this.§'M§.height = param2.height - mClip.height;
                                       }
                                       while(true)
                                       {
                                       }
                                       addr168:
                                    }
                                    else if(!isNaN(parseInt(_loc7_)))
                                    {
                                       if(_loc9_)
                                       {
                                          this.§'M§.height = parseInt(_loc7_);
                                       }
                                       while(true)
                                       {
                                          addr83:
                                          while(true)
                                          {
                                             §;!9§(§4n§,param1.@Drag);
                                             if(_loc8_ && param1)
                                             {
                                                continue;
                                             }
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             §§goto(addr168);
                                          }
                                          continue loop13;
                                       }
                                    }
                                    §§goto(addr83);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!isNaN(parseInt(_loc6_)))
                                          {
                                             continue loop12;
                                          }
                                          continue loop15;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc9_ || param3))
                                          {
                                             break loop12;
                                          }
                                          this.§'M§.width = param2.width - mClip.width;
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop15;
                                             }
                                             addr238:
                                             while(true)
                                             {
                                                this.§'M§.y = parseInt(_loc5_);
                                                break loop14;
                                             }
                                          }
                                          while(true)
                                          {
                                             addr199:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                break loop15;
                                             }
                                          }
                                       }
                                    }
                                    addr202:
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr202);
                              §§goto(addr138);
                           }
                           addr138:
                        }
                        §§goto(addr203);
                     }
                  }
                  §§goto(addr257);
               }
            }
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  §§goto(addr238);
               }
               §§goto(addr199);
               §§goto(addr257);
            }
         }
         §§goto(addr257);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!(_loc5_ && this))
                     {
                        addr90:
                        §§push(0);
                        if(!(_loc4_ || param1))
                        {
                           addr105:
                        }
                     }
                     else
                     {
                        addr102:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr105);
                        }
                     }
                     addr111:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(!_loc5_)
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr110:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr102);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr102);
               }
               §§goto(addr90);
            }
            §§goto(addr111);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§'M§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§`[§);
                        while(_loc2_)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           while(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               addr103:
            }
            return;
         }
         §§goto(addr103);
      }
      
      private function §`[§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(§4n§,§[!J§[§4n§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.stopDrag();
            loop0:
            while(true)
            {
               this.mDragging = false;
               loop1:
               while(true)
               {
                  if(mClip.stage)
                  {
                     loop2:
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§`[§);
                        while(true)
                        {
                           mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           loop4:
                           while(_loc2_)
                           {
                              mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              while(!_loc3_)
                              {
                                 this.setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 while(_loc2_)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop4;
                                 loop9:
                                 while(_loc2_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       this.§]M§ = null;
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop9;
                                       }
                                       if(!_loc3_)
                                       {
                                          §§goto(addr36);
                                       }
                                       while(true)
                                       {
                                          this.setComponentVisualState(this.§]M§);
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(this.§]M§)
                  {
                     §§goto(addr65);
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.mDragging)
            {
               if(!_loc3_)
               {
                  addr50:
                  this.§]M§ = param1;
               }
            }
            else
            {
               do
               {
                  super.setComponentVisualState(param1);
               }
               while(_loc3_);
               
               if(!_loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §&j§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'M§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§'M§.x,param1),this.§'M§.x + this.§'M§.width)));
                     addr85:
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr86);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != super.y)
               {
                  if(_loc3_ || param1)
                  {
                     addr95:
                     param1 = Math.min(Math.max(this.§'M§.y,param1),this.§'M§.y + this.§'M§.height);
                     do
                     {
                        super.y = param1;
                     }
                     while(!(_loc3_ || _loc2_));
                     
                     addr96:
                  }
                  §§goto(addr96);
               }
               return;
            }
         }
         §§goto(addr95);
      }
      
      public function §8!5§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§'M§.x);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§'M§.y);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'M§.size.length;
         §§push(_loc3_);
         if(_loc6_ || this)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §-!h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = this.§'M§.x + param1 * this.§'M§.width;
         }
         do
         {
            this.y = this.§'M§.y + param1 * this.§'M§.height;
         }
         while(_loc2_ && param1);
         
      }
   }
}
