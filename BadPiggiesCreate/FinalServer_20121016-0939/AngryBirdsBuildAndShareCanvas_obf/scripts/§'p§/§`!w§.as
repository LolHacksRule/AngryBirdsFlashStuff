package §'p§
{
   import §'!A§.§9!!§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §`!w§ extends §="#§
   {
      
      public static const §'m§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §`!w§))
         {
            §'m§ = 4;
         }
      }
      
      private var §5?§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §2!'§:String;
      
      public function §`!w§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§5?§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               addr50:
               loop1:
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     this.§5?§.x = x;
                     continue loop1;
                  }
               }
            }
            addr55:
         }
         while(true)
         {
            this.§5?§.y = y;
            if(_loc8_ && param3)
            {
               continue;
            }
            if(!_loc8_)
            {
               if(_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr55);
               }
               §§goto(addr38);
            }
            §§goto(addr50);
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
                  this.§5?§.x = parseInt(_loc4_);
                  addr252:
                  while(true)
                  {
                  }
               }
               addr246:
            }
            loop6:
            while(true)
            {
               if(!isNaN(parseInt(_loc5_)))
               {
                  loop7:
                  while(true)
                  {
                     this.§5?§.y = parseInt(_loc5_);
                     addr229:
                     while(true)
                     {
                     }
                     loop18:
                     while(true)
                     {
                        if(_loc8_ && param1)
                        {
                           continue loop7;
                        }
                        addr207:
                        this.§5?§.width = param2.width - mClip.width;
                        loop12:
                        while(true)
                        {
                           loop14:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!_loc9_)
                              {
                                 break;
                                 addr199:
                              }
                              §§push("parent");
                              if(!_loc8_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(!isNaN(parseInt(_loc7_)))
                                    {
                                       if(_loc9_ || param2)
                                       {
                                          if(!(_loc8_ && param3))
                                          {
                                             this.§5?§.height = parseInt(_loc7_);
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                addr149:
                                                while(true)
                                                {
                                                   if(_loc9_ || param2)
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         this.§5?§.height = param2.height - mClip.height;
                                                         addr171:
                                                         while(true)
                                                         {
                                                            continue loop15;
                                                         }
                                                         addr171:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr229);
                                                      }
                                                   }
                                                   addr193:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      continue loop18;
                                                   }
                                                   §§goto(addr229);
                                                }
                                             }
                                             addr138:
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr83);
                                 }
                                 §§goto(addr149);
                              }
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    continue loop18;
                                 }
                                 if(isNaN(parseInt(_loc6_)))
                                 {
                                    continue loop14;
                                 }
                                 if(_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop12;
                                    }
                                    if(!_loc8_)
                                    {
                                       this.§5?§.width = parseInt(_loc6_);
                                    }
                                    else
                                    {
                                       §§goto(addr246);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              continue loop6;
                           }
                           addr198:
                           while(true)
                           {
                              §§goto(addr199);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr198);
                  §§goto(addr229);
               }
            }
         }
         §§goto(addr171);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
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
               if(!(_loc5_ && _loc3_))
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr82:
                        §§push(1);
                        if(!_loc4_)
                        {
                        }
                     }
                     addr101:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(_loc4_)
                           {
                              if(_loc5_ && _loc3_)
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
                     addr100:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr82);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr101);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§5?§);
                  addr109:
                  addr58:
                  while(true)
                  {
                     this.mDragging = true;
                     addr90:
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!;§);
                        continue loop0;
                     }
                  }
               }
               addr104:
            }
            return;
         }
         §§goto(addr104);
      }
      
      private function §<!;§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§'m§,§9!$§[§'m§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
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
                     while(this.§2!'§)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr53:
                           if(_loc2_ || this)
                           {
                              this.setComponentVisualState(this.§2!'§);
                              loop8:
                              while(_loc2_ || param1)
                              {
                                 while(true)
                                 {
                                    this.§2!'§ = null;
                                    if(_loc3_)
                                    {
                                       continue loop8;
                                    }
                                    addr34:
                                    if(!(_loc3_ && param1))
                                    {
                                       break loop7;
                                    }
                                    addr121:
                                    addr87:
                                    while(_loc2_ || _loc2_)
                                    {
                                       continue loop7;
                                       §§goto(addr34);
                                    }
                                    while(true)
                                    {
                                       mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                                       addr103:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          addr126:
                                          while(true)
                                          {
                                             mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!;§);
                                             break loop8;
                                          }
                                          §§goto(addr53);
                                       }
                                       continue loop1;
                                       §§goto(addr87);
                                    }
                                    addr87:
                                 }
                              }
                              continue loop0;
                              addr64:
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr64);
                     }
                     return;
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(_loc3_ || this)
                  {
                     return;
                  }
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  break;
               }
               return;
               addr74:
            }
            this.§2!'§ = param1;
         }
         §§goto(addr74);
      }
      
      public function §`a§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5?§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() != super.x)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§5?§.x,param1),this.§5?§.x + this.§5?§.width)));
                     addr80:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.x = param1;
                        }
                        while(!(_loc3_ || _loc3_));
                        
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr54:
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr54);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() != super.y)
               {
                  if(!_loc2_)
                  {
                     addr85:
                     param1 = Math.min(Math.max(this.§5?§.y,param1),this.§5?§.y + this.§5?§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(!(_loc3_ || this));
                  
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      public function §#!l§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§5?§.x);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§5?§.y);
         if(_loc6_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§5?§.size.length;
         §§push(_loc3_);
         if(_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §4<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.x = this.§5?§.x + param1 * this.§5?§.width;
         }
         do
         {
            this.y = this.§5?§.y + param1 * this.§5?§.height;
         }
         while(!_loc2_);
         
      }
   }
}
