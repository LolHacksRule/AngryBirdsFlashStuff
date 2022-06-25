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
         if(_loc8_ || this)
         {
            this.§;!8§ = new Rectangle();
            loop0:
            while(true)
            {
               super(param1,param2,param3);
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§;!8§.x = x;
                     do
                     {
                        this.§;!8§.y = y;
                     }
                     while(!_loc8_);
                     
                     if(_loc9_)
                     {
                        break;
                     }
                     if(!_loc8_)
                     {
                        continue loop0;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     var _loc4_:String = param1.@constraint_x.toString();
                     var _loc5_:String = param1.@constraint_y.toString();
                     var _loc6_:String = param1.@constraint_width.toString();
                     var _loc7_:String = param1.@constraint_height.toString();
                     if(!(_loc9_ && this))
                     {
                        if(!isNaN(parseInt(_loc4_)))
                        {
                           while(true)
                           {
                              this.§;!8§.x = parseInt(_loc4_);
                              addr256:
                              addr142:
                              while(true)
                              {
                              }
                              if(!(_loc8_ || param3))
                              {
                                 continue;
                              }
                              this.§;!8§.height = parseInt(_loc7_);
                              while(true)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    §7k§(§ "§,param1.@Drag);
                                    if(!(_loc8_ || param1))
                                    {
                                       continue;
                                    }
                                    addr100:
                                    if(!(_loc9_ && param1))
                                    {
                                       if(!_loc9_)
                                       {
                                          addr109:
                                          if(_loc8_ || param3)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   return;
                                                }
                                                addr243:
                                                loop22:
                                                while(true)
                                                {
                                                   addr203:
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
                                                                     if(_loc9_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                     this.§;!8§.width = parseInt(_loc6_);
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr109);
                                                                     }
                                                                     addr169:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ && param1)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        this.§;!8§.height = param2.height - mClip.height;
                                                                        while(true)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc9_ && param3)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push("parent");
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     §§goto(addr169);
                                                                  }
                                                                  else
                                                                  {
                                                                     if(isNaN(parseInt(_loc7_)))
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr142);
                                                                        }
                                                                        §§goto(addr100);
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               continue loop22;
                                                               addr156:
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     this.§;!8§.width = param2.width - mClip.width;
                                                                     break loop19;
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               addr237:
                                                               while(true)
                                                               {
                                                                  this.§;!8§.y = parseInt(_loc5_);
                                                                  continue loop22;
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      continue loop22;
                                                   }
                                                }
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr140);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr156);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!isNaN(parseInt(_loc5_)))
                           {
                              §§goto(addr237);
                           }
                           §§goto(addr203);
                           §§goto(addr256);
                        }
                     }
                     §§goto(addr243);
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super.listenerEventOccured(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(_loc5_ || this)
            {
               var _loc3_:* = §§pop();
               if(_loc5_ || param1)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(_loc5_ || param2)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr111:
                        }
                     }
                     else
                     {
                        addr108:
                        §§push(1);
                        if(_loc5_)
                        {
                           §§goto(addr111);
                        }
                     }
                     addr117:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           if(!(_loc4_ && param1))
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
                        §§goto(addr108);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr117);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§;!8§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     while(true)
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?0§);
                        loop3:
                        while(!(_loc3_ && this))
                        {
                           if(_loc3_ && this)
                           {
                              continue loop1;
                              do
                              {
                                 if(_loc2_ || this)
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                              while(mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag), _loc3_);
                              
                           }
                           continue loop0;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr24);
      }
      
      private function §?0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§ "§,§#8§[§ "§]);
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
                     loop3:
                     while(this.§@!<§)
                     {
                        if(!_loc2_)
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              this.setComponentVisualState(this.§@!<§);
                           }
                           loop7:
                           while(true)
                           {
                              mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                              addr93:
                              while(!_loc3_)
                              {
                                 while(_loc3_)
                                 {
                                    mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?0§);
                                    continue loop7;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        while(_loc3_)
                        {
                           this.§@!<§ = null;
                           if(!_loc2_)
                           {
                              break loop3;
                           }
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              this.setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              continue loop3;
                           }
                           §§goto(addr93);
                           addr112:
                           mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                        }
                        continue loop0;
                     }
                     return;
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr126);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.mDragging)
            {
               do
               {
                  super.setComponentVisualState(param1);
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               while(!(_loc2_ && _loc2_));
               
               return;
               addr59:
            }
         }
         this.§@!<§ = param1;
         §§goto(addr59);
      }
      
      public function §1m§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!8§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != super.x)
               {
                  if(_loc2_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§;!8§.x,param1),this.§;!8§.x + this.§;!8§.width);
                  }
                  do
                  {
                     super.x = param1;
                  }
                  while(_loc3_);
                  
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() != super.y)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§;!8§.y,param1),this.§;!8§.y + this.§;!8§.height)));
                     addr79:
                     addr56:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(!(_loc2_ || param1));
                        
                        if(_loc2_)
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
         §§goto(addr56);
      }
      
      public function §6!+§() : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(x - this.§;!8§.x);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§;!8§.y);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§;!8§.size.length;
         §§push(_loc3_);
         if(_loc5_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §-!;§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.x = this.§;!8§.x + param1 * this.§;!8§.width;
            do
            {
               this.y = this.§;!8§.y + param1 * this.§;!8§.height;
            }
            while(_loc3_ && param1);
            
         }
      }
   }
}
