package §=!7§
{
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §8q§ extends §9"8§
   {
      
      public static const §+$§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+$§ = 4;
         }
      }
      
      private var §`"6§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §+c§:String;
      
      public function §8q§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§`"6§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               loop3:
               while(!(_loc8_ && param1))
               {
                  this.§`"6§.y = y;
                  if(!_loc9_)
                  {
                     continue;
                  }
                  addr27:
                  if(_loc9_ || param3)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§`"6§.x = x;
                           continue loop3;
                        }
                        addr61:
                        var _loc4_:String = param1.@constraint_x.toString();
                        var _loc5_:String = param1.@constraint_y.toString();
                        var _loc6_:String = param1.@constraint_width.toString();
                        var _loc7_:String = param1.@constraint_height.toString();
                        if(_loc9_)
                        {
                           if(!isNaN(parseInt(_loc4_)))
                           {
                              while(true)
                              {
                                 this.§`"6§.x = parseInt(_loc4_);
                                 addr262:
                                 while(true)
                                 {
                                 }
                              }
                              addr256:
                           }
                           loop6:
                           while(true)
                           {
                              if(!isNaN(parseInt(_loc5_)))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§`"6§.y = parseInt(_loc5_);
                                    addr232:
                                    while(!(_loc8_ && this))
                                    {
                                    }
                                    continue loop6;
                                    loop20:
                                    while(true)
                                    {
                                       if(!(_loc9_ || this))
                                       {
                                          continue loop7;
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc9_ || this)
                                          {
                                             §§push("parent");
                                             if(!_loc8_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(!isNaN(parseInt(_loc7_)))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§`"6§.height = parseInt(_loc7_);
                                                               addr142:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §7"'§(§+$§,param1.@Drag);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                        addr158:
                                                                        while(true)
                                                                        {
                                                                           this.§`"6§.height = param2.height - mClip.height;
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     addr88:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§`"6§.width = parseInt(_loc6_);
                                                                     }
                                                                     addr176:
                                                                  }
                                                               }
                                                            }
                                                            addr136:
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               continue loop14;
                                                            }
                                                            addr194:
                                                            while(true)
                                                            {
                                                               if(_loc8_ && this)
                                                               {
                                                                  break loop13;
                                                               }
                                                               if(_loc9_)
                                                               {
                                                                  this.§`"6§.width = param2.width - mClip.width;
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   §§goto(addr88);
                                                }
                                                §§goto(addr158);
                                             }
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(isNaN(parseInt(_loc6_)))
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr194);
                                             }
                                             addr193:
                                          }
                                          break;
                                       }
                                       addr218:
                                       while(true)
                                       {
                                          §§goto(addr193);
                                          §§goto(addr145);
                                       }
                                       addr145:
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr192);
                              }
                           }
                        }
                        addr36:
                     }
                     else
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     while(true)
                     {
                        §§goto(addr27);
                     }
                     addr55:
                  }
                  §§goto(addr36);
               }
            }
         }
         §§goto(addr55);
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
            if(!(_loc4_ && this))
            {
               var _loc3_:* = §§pop();
               if(_loc5_ || _loc3_)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr93:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     addr112:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(!_loc4_)
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
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr112);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§`"6§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8#§);
                        loop3:
                        while(_loc3_ || param1)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           while(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr20);
                                    }
                                    continue loop3;
                                    continue loop3;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr99:
            }
            addr20:
            return;
         }
         §§goto(addr99);
      }
      
      private function §8#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§+$§,§&!W§[§+$§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     loop6:
                     for(; this.§+c§; while(true)
                     {
                        continue loop6;
                     })
                     {
                        if(_loc3_)
                        {
                           addr51:
                           if(_loc2_ && _loc3_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              this.setComponentVisualState(this.§+c§);
                           }
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                           addr103:
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              break loop7;
                           }
                        }
                        while(true)
                        {
                           this.setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           continue loop6;
                           §§goto(addr37);
                        }
                     }
                  }
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  continue loop0;
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(_loc3_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        return;
                     }
                     break;
                  }
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
               }
               return;
               addr74:
            }
            this.§+c§ = param1;
         }
         §§goto(addr74);
      }
      
      public function §8!a§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`"6§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || this)
            {
               if(§§pop() != super.x)
               {
                  if(!_loc3_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§`"6§.x,param1),this.§`"6§.x + this.§`"6§.width);
                  }
                  do
                  {
                     super.x = param1;
                  }
                  while(!_loc2_);
                  
                  addr29:
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr29);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() != super.y)
               {
                  if(_loc3_ || param1)
                  {
                     addr80:
                     param1 = Math.min(Math.max(this.§`"6§.y,param1),this.§`"6§.y + this.§`"6§.height);
                     do
                     {
                        super.y = param1;
                     }
                     while(_loc2_);
                     
                     addr81:
                  }
                  §§goto(addr81);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      public function §&!#§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§`"6§.x);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§`"6§.y);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§`"6§.size.length;
         §§push(_loc3_);
         if(!_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function final(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = this.§`"6§.x + param1 * this.§`"6§.width;
            do
            {
               this.y = this.§`"6§.y + param1 * this.§`"6§.height;
            }
            while(!_loc3_);
            
         }
      }
   }
}
