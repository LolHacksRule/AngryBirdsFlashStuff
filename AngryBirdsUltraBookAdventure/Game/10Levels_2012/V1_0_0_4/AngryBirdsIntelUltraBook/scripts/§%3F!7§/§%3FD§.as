package §?!7§
{
   import §9Y§.§+!!§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §?D§ extends §5!I§
   {
      
      public static const § "§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § "§ = 4;
         }
      }
      
      private var §;!8§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §@!<§:String;
      
      public function §?D§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            this.§;!8§ = new Rectangle();
            loop0:
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(true)
               {
                  addr45:
                  while(true)
                  {
                     this.§;!8§.x = x;
                     while(!_loc9_)
                     {
                        this.§;!8§.y = y;
                        if(_loc8_ || param2)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(_loc8_ || param1)
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               if(!_loc9_)
               {
                  this.§;!8§.x = parseInt(_loc4_);
               }
               while(true)
               {
               }
               addr261:
            }
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  while(_loc8_)
                  {
                     this.§;!8§.y = parseInt(_loc5_);
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr238:
               }
               loop9:
               while(true)
               {
                  §§push(_loc6_);
                  loop10:
                  while(true)
                  {
                     §§push("parent");
                     loop11:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!isNaN(parseInt(_loc6_)))
                           {
                              loop12:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    break loop11;
                                 }
                                 this.§;!8§.width = parseInt(_loc6_);
                                 loop13:
                                 while(_loc8_)
                                 {
                                    addr142:
                                    if(!(_loc8_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!(_loc9_ && param3))
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          §7k§(§ "§,param1.@Drag);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          addr135:
                                          addr135:
                                          while(true)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                §§goto(addr142);
                                             }
                                             addr187:
                                             while(true)
                                             {
                                                continue loop17;
                                             }
                                          }
                                          continue loop13;
                                       }
                                       return;
                                       addr97:
                                    }
                                    loop19:
                                    while(true)
                                    {
                                       addr157:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          §§push("parent");
                                          if(!(_loc8_ || param3))
                                          {
                                             continue loop11;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                if(!_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§;!8§.height = param2.height - mClip.height;
                                                   }
                                                   addr179:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§;!8§.width = param2.width - mClip.width;
                                                      continue loop19;
                                                   }
                                                   addr212:
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          else if(!isNaN(parseInt(_loc7_)))
                                          {
                                             if(_loc8_)
                                             {
                                                continue loop12;
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr97);
                                          continue loop19;
                                       }
                                       continue loop10;
                                    }
                                 }
                                 continue loop9;
                              }
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr238);
                  }
               }
            }
         }
         §§goto(addr179);
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
            if(_loc4_ || param1)
            {
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc4_ || param1)
                     {
                        addr85:
                        §§push(0);
                        if(_loc5_)
                        {
                           addr95:
                        }
                     }
                     else
                     {
                        addr92:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr95);
                        }
                     }
                     addr101:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(_loc4_)
                           {
                              break loop0;
                           }
                           break loop0;
                        case 1:
                           continue;
                     }
                     addr100:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr92);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr92);
               }
               §§goto(addr85);
            }
            §§goto(addr101);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§;!8§);
                  addr118:
                  while(true)
                  {
                     this.mDragging = true;
                     continue loop0;
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr97);
      }
      
      private function §?0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§ "§,§#8§[§ "§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
            }
            addr133:
         }
         loop1:
         while(true)
         {
            if(mClip.stage)
            {
               while(true)
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?0§);
                  loop3:
                  while(!_loc3_)
                  {
                     mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              this.setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr133);
                  loop9:
                  while(!(_loc3_ && this))
                  {
                     this.§@!<§ = null;
                     if(!_loc3_)
                     {
                        addr29:
                        if(!(_loc2_ || _loc2_))
                        {
                           while(_loc2_)
                           {
                              this.setComponentVisualState(this.§@!<§);
                              continue loop9;
                              §§goto(addr29);
                           }
                           §§goto(addr70);
                           addr41:
                        }
                        §§goto(addr19);
                     }
                  }
               }
            }
            while(this.§@!<§)
            {
               §§goto(addr41);
            }
            addr19:
            return;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.mDragging)
            {
               if(!_loc3_)
               {
                  this.§@!<§ = param1;
               }
            }
            else
            {
               do
               {
                  super.setComponentVisualState(param1);
               }
               while(_loc3_ && this);
               
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §1m§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!8§ = param1;
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
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§;!8§.x,param1),this.§;!8§.x + this.§;!8§.width)));
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
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               if(§§pop() != super.y)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§;!8§.y,param1),this.§;!8§.y + this.§;!8§.height)));
                     addr95:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(_loc2_ && _loc3_);
                        
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr79:
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr79);
      }
      
      public function §6!+§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§;!8§.x);
         if(_loc5_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§;!8§.y);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§;!8§.size.length;
         §§push(_loc3_);
         if(!_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §-!;§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.x = this.§;!8§.x + param1 * this.§;!8§.width;
         }
         do
         {
            this.y = this.§;!8§.y + param1 * this.§;!8§.height;
         }
         while(!_loc2_);
         
      }
   }
}
