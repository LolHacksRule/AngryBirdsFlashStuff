package §>M§
{
   import §'!D§.§0j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §%J§ extends §^-§
   {
      
      public static const §9<§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9<§ = 4;
         }
      }
      
      private var §'!Y§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §&! §:String;
      
      public function §%J§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            this.§'!Y§ = new Rectangle();
         }
         while(true)
         {
            super(param1,param2,param3);
            while(_loc9_ || param1)
            {
               while(true)
               {
                  this.§'!Y§.x = x;
                  do
                  {
                     this.§'!Y§.y = y;
                  }
                  while(!(_loc9_ || param1));
                  
                  if(_loc8_)
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
                  if(_loc9_ || param1)
                  {
                     if(!isNaN(parseInt(_loc4_)))
                     {
                        if(!_loc8_)
                        {
                           this.§'!Y§.x = parseInt(_loc4_);
                        }
                        while(true)
                        {
                           addr170:
                           if(!(_loc9_ || param2))
                           {
                              continue;
                           }
                           this.§'!Y§.height = param2.height - mClip.height;
                           loop15:
                           while(true)
                           {
                              loop16:
                              while(true)
                              {
                                 §8!h§(§9<§,param1.@Drag);
                                 if(!_loc8_)
                                 {
                                    addr106:
                                    if(!(_loc8_ && param3))
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       continue loop15;
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          this.§'!Y§.height = parseInt(_loc7_);
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                continue loop16;
                                             }
                                             addr166:
                                             loop17:
                                             while(_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§goto(addr170);
                                                }
                                                else
                                                {
                                                   addr226:
                                                   while(true)
                                                   {
                                                      this.§'!Y§.y = parseInt(_loc5_);
                                                      break loop17;
                                                   }
                                                   addr226:
                                                }
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                addr204:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push("parent");
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               this.§'!Y§.width = param2.width - mClip.width;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            addr218:
                                                         }
                                                         else if(!isNaN(parseInt(_loc6_)))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§'!Y§.width = parseInt(_loc6_);
                                                               break loop14;
                                                            }
                                                            addr195:
                                                         }
                                                         addr153:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc8_ && param3)
                                                            {
                                                               break;
                                                            }
                                                            §§push("parent");
                                                            if(!_loc9_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!isNaN(parseInt(_loc7_)))
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop16;
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop19;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr153);
                                             }
                                             §§goto(addr218);
                                          }
                                          addr148:
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                                 §§goto(addr148);
                              }
                              return;
                           }
                        }
                        addr257:
                     }
                     while(true)
                     {
                        if(!isNaN(parseInt(_loc5_)))
                        {
                           §§goto(addr226);
                        }
                        §§goto(addr204);
                        §§goto(addr257);
                     }
                  }
                  §§goto(addr226);
               }
            }
         }
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
               if(!(_loc5_ && _loc3_))
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!(_loc5_ && this))
                     {
                        addr85:
                        §§push(0);
                        if(_loc5_ && this)
                        {
                           addr115:
                        }
                     }
                     else
                     {
                        addr97:
                        §§push(1);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr115);
                        }
                     }
                     addr121:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(_loc4_)
                           {
                              if(_loc5_ && param2)
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
                     addr120:
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
                     §§goto(addr120);
                  }
                  §§goto(addr97);
               }
               §§goto(addr85);
            }
            §§goto(addr121);
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
                  mClip.startDrag(false,this.§'!Y§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6L§);
                        addr89:
                        while(true)
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           do
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                           }
                           while(_loc3_ && this);
                           
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr71);
                     }
                  }
               }
            }
            addr71:
            return;
         }
         §§goto(addr89);
      }
      
      private function §6L§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§9<§,§>S§[§9<§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                     loop7:
                     for(; this.§&! §; while(true)
                     {
                        continue loop7;
                     })
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              addr52:
                              if(!(_loc3_ && param1))
                              {
                                 this.setComponentVisualState(this.§&! §);
                                 continue loop0;
                              }
                              addr123:
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6L§);
                                 §§goto(addr52);
                              }
                           }
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                              loop4:
                              while(true)
                              {
                                 mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                 addr95:
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr123);
               }
            }
         }
         while(true)
         {
            this.§&! § = null;
            if(_loc2_ || _loc3_)
            {
               addr24:
            }
            continue;
            return;
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
                  if(_loc2_ || param1)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                  }
                  break;
               }
               return;
               addr68:
            }
            this.§&! § = param1;
         }
         §§goto(addr68);
      }
      
      public function §]!'§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!Y§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != super.x)
               {
                  if(!_loc3_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§'!Y§.x,param1),this.§'!Y§.x + this.§'!Y§.width);
                  }
                  do
                  {
                     super.x = param1;
                  }
                  while(_loc3_ && _loc2_);
                  
                  addr44:
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr44);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() != super.y)
               {
                  if(_loc2_)
                  {
                     addr74:
                     param1 = Math.min(Math.max(this.§'!Y§.y,param1),this.§'!Y§.y + this.§'!Y§.height);
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
         §§goto(addr74);
      }
      
      public function §`0§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§'!Y§.x);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§'!Y§.y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§'!Y§.size.length;
         §§push(_loc3_);
         if(!(_loc6_ && this))
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §9!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = this.§'!Y§.x + param1 * this.§'!Y§.width;
            do
            {
               this.y = this.§'!Y§.y + param1 * this.§'!Y§.height;
            }
            while(_loc2_);
            
         }
      }
   }
}
