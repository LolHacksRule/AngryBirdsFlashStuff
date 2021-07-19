package §8!8§
{
   import §@R§.§<d§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §,!!§ extends §+!M§
   {
      
      public static const §for§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §for§ = 4;
         }
      }
      
      private var §^!P§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §<`§:String;
      
      public function §,!!§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            this.§^!P§ = new Rectangle();
            loop0:
            while(true)
            {
               super(param1,param2,param3);
               loop1:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     this.§^!P§.x = x;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr40);
         }
         var _loc4_:String = param1.@constraint_x.toString();
         var _loc5_:String = param1.@constraint_y.toString();
         var _loc6_:String = param1.@constraint_width.toString();
         var _loc7_:String = param1.@constraint_height.toString();
         if(!_loc9_)
         {
            if(!isNaN(parseInt(_loc4_)))
            {
               while(true)
               {
                  this.§^!P§.x = parseInt(_loc4_);
                  addr271:
                  while(true)
                  {
                  }
                  addr155:
                  if(_loc9_ && param1)
                  {
                     continue;
                  }
                  loop19:
                  while(true)
                  {
                     §?^§(§for§,param1.@Drag);
                     if(!(_loc9_ && param1))
                     {
                        if(_loc8_)
                        {
                           if(!_loc9_)
                           {
                              return;
                           }
                           loop20:
                           while(true)
                           {
                              this.§^!P§.width = param2.width - mClip.width;
                              loop14:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(_loc8_ || param2)
                                       {
                                          §§push("parent");
                                          if(!(_loc9_ && param2))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   this.§^!P§.height = param2.height - mClip.height;
                                                }
                                             }
                                             else
                                             {
                                                if(isNaN(parseInt(_loc7_)))
                                                {
                                                   continue loop19;
                                                }
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc9_ && param1)
                                                         {
                                                            break;
                                                            addr146:
                                                         }
                                                         this.§^!P§.height = parseInt(_loc7_);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(_loc9_ && param1)
                                                               {
                                                                  break loop14;
                                                               }
                                                               §§goto(addr155);
                                                            }
                                                            addr206:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ || param3))
                                                               {
                                                                  break loop17;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§^!P§.width = parseInt(_loc6_);
                                                                  continue loop15;
                                                               }
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop15;
                                                   }
                                                }
                                                §§goto(addr271);
                                             }
                                             while(true)
                                             {
                                                continue loop19;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                continue loop20;
                                             }
                                             if(isNaN(parseInt(_loc6_)))
                                             {
                                                continue loop15;
                                             }
                                             §§goto(addr206);
                                          }
                                          addr223:
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr223);
                                       §§goto(addr163);
                                    }
                                    addr163:
                                    addr222:
                                 }
                                 addr242:
                                 while(true)
                                 {
                                    this.§^!P§.y = parseInt(_loc5_);
                                    break loop14;
                                 }
                              }
                              loop9:
                              while(true)
                              {
                                 addr220:
                                 while(true)
                                 {
                                    §§goto(addr222);
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr146);
                  }
               }
            }
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  §§goto(addr242);
               }
               §§goto(addr220);
               §§goto(addr271);
            }
         }
         §§goto(addr213);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(!_loc5_)
            {
               var _loc3_:* = §§pop();
               if(!(_loc5_ && param1))
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc4_ || this)
                     {
                        §§push(0);
                        if(!(_loc4_ || param2))
                        {
                           addr110:
                        }
                     }
                     else
                     {
                        addr97:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr110);
                        }
                     }
                     addr116:
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
                     addr115:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr97);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr115);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr116);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§^!P§);
                  addr119:
                  while(true)
                  {
                     this.mDragging = true;
                     continue loop0;
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr72);
      }
      
      private function §,p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(§for§,§=a§[§for§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.stopDrag();
            while(true)
            {
               this.mDragging = false;
               loop4:
               for(; !(_loc2_ && param1); while(!(_loc2_ && this))
               {
                  this.setComponentVisualState(this.§<`§);
                  §§goto(addr60);
               })
               {
                  mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                  while(true)
                  {
                     this.setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(_loc3_ || _loc3_)
                     {
                        if(!_loc2_)
                        {
                           while(this.§<`§)
                           {
                              continue loop4;
                           }
                           addr20:
                           return;
                           addr45:
                        }
                        else
                        {
                           addr141:
                        }
                        while(true)
                        {
                           mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           continue loop4;
                        }
                        for(; _loc3_ || this; this.§<`§ = null,if(_loc2_ && this)
                        {
                           continue;
                        },if(!_loc3_)
                        {
                           continue loop4;
                        },addr37:,if(!(_loc3_ || _loc2_))
                        {
                           while(true)
                           {
                              if(mClip.stage)
                              {
                                 §§goto(addr124);
                              }
                              else
                              {
                                 §§goto(addr45);
                              }
                           }
                           addr146:
                        },§§goto(addr20))
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           addr124:
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,p§);
                              §§goto(addr141);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.mDragging)
            {
               if(_loc2_)
               {
                  addr70:
                  this.§<`§ = param1;
               }
            }
            else
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §&!&§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^!P§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§^!P§.x,param1),this.§^!P§.x + this.§^!P§.width)));
                     addr80:
                     addr47:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(_loc2_);
                        
                        if(_loc3_)
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
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != super.y)
               {
                  if(_loc3_)
                  {
                     addr85:
                     param1 = Math.min(Math.max(this.§^!P§.y,param1),this.§^!P§.y + this.§^!P§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(_loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      public function §<a§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§^!P§.x);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§^!P§.y);
         if(!(_loc6_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§^!P§.size.length;
         §§push(_loc3_);
         if(!(_loc6_ && _loc3_))
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §'y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.x = this.§^!P§.x + param1 * this.§^!P§.width;
            do
            {
               this.y = this.§^!P§.y + param1 * this.§^!P§.height;
            }
            while(_loc3_);
            
         }
      }
   }
}
