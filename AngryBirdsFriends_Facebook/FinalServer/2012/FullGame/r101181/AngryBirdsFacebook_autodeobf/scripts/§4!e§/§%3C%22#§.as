package §4!e§
{
   import §2!i§.§=!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §<"#§ extends §^!D§
   {
      
      public static const §3!z§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3!z§ = 4;
         }
      }
      
      private var §&![§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §"!Z§:String;
      
      public function §<"#§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§&![§ = new Rectangle();
         }
         loop0:
         while(true)
         {
            super(param1,param2,param3);
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  this.§&![§.x = x;
                  while(!_loc8_)
                  {
                     this.§&![§.y = y;
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                     if(_loc8_)
                     {
                        break loop2;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     var _loc4_:String = param1.@constraint_x.toString();
                     var _loc5_:String = param1.@constraint_y.toString();
                     var _loc6_:String = param1.@constraint_width.toString();
                     var _loc7_:String = param1.@constraint_height.toString();
                     if(_loc9_ || param1)
                     {
                        if(!isNaN(parseInt(_loc4_)))
                        {
                           addr261:
                           this.§&![§.x = parseInt(_loc4_);
                           addr267:
                        }
                        if(!isNaN(parseInt(_loc5_)))
                        {
                           addr248:
                           this.§&![§.y = parseInt(_loc5_);
                        }
                        addr214:
                        if(_loc6_ == "parent")
                        {
                           addr215:
                           this.§&![§.width = param2.width - mClip.width;
                           if(_loc9_ || this)
                           {
                              addr153:
                              §§push(_loc7_);
                              if(!_loc8_)
                              {
                                 §§push("parent");
                                 if(!(_loc8_ && param1))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr166:
                                       this.§&![§.height = param2.height - mClip.height;
                                       if(!_loc8_)
                                       {
                                          addr88:
                                          §@!L§(§3!z§,param1.@Drag);
                                          if(_loc8_ && param2)
                                          {
                                             addr143:
                                             if(_loc9_)
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§goto(addr88);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr166);
                                          }
                                          return;
                                          addr101:
                                       }
                                       addr186:
                                       if(_loc9_ || this)
                                       {
                                          this.§&![§.width = parseInt(_loc6_);
                                          addr199:
                                          if(_loc9_)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr267);
                                             }
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr248);
                                    }
                                    if(!isNaN(parseInt(_loc7_)))
                                    {
                                       if(_loc9_)
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             if(!(_loc8_ && param3))
                                             {
                                                this.§&![§.height = parseInt(_loc7_);
                                                §§goto(addr143);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr88);
                                 }
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr261);
                        }
                        if(!isNaN(parseInt(_loc6_)))
                        {
                           §§goto(addr186);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr101);
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
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
               if(_loc4_ || this)
               {
                  if(LISTENER_EVENT_MOUSE_DOWN === _loc3_)
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_ && this)
                        {
                        }
                     }
                     else
                     {
                        addr107:
                        §§push(1);
                        if(!_loc4_)
                        {
                        }
                     }
                     addr116:
                     switch(§§pop())
                     {
                        case 0:
                           this.startDrag();
                           break;
                        case 1:
                           this.stopDrag();
                           if(!(_loc5_ && this))
                           {
                              if(_loc5_)
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
                     addr115:
                  }
                  else
                  {
                     if(LISTENER_EVENT_MOUSE_UP === _loc3_)
                     {
                        §§goto(addr107);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr115);
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr116);
         }
      }
      
      private function startDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(mClip.stage)
            {
               loop0:
               while(true)
               {
                  mClip.startDrag(false,this.§&![§);
                  addr118:
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     loop2:
                     do
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§7t§);
                        while(_loc2_ || this)
                        {
                           continue loop0;
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           do
                           {
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                           }
                           while(_loc3_);
                           
                           if(_loc2_ || _loc3_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     while(_loc3_ && _loc2_);
                     
                  }
               }
            }
            return;
         }
         §§goto(addr118);
      }
      
      private function §7t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(§3!z§,§=!E§[§3!z§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
                     while(this.§"!Z§)
                     {
                        for(; _loc3_; this.setComponentVisualState(this.§"!Z§),do
                        {
                           this.§"!Z§ = null;
                        }
                        while(!(_loc3_ || _loc2_));
                        ,if(!(_loc3_ || this))
                        {
                           continue;
                        },if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              break loop3;
                           }
                           continue loop1;
                        },§§goto(addr131))
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr91);
                     }
                     return;
                  }
                  loop2:
                  for(; _loc3_; while(!(_loc3_ || _loc2_))
                  {
                     continue loop2;
                  },this.setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT))
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§7t§);
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                        addr117:
                        while(true)
                        {
                           mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr131);
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
                     return;
                  }
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        continue;
                     }
                  }
                  break;
               }
               return;
               addr59:
            }
            this.§"!Z§ = param1;
         }
         §§goto(addr59);
      }
      
      public function §;!Q§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&![§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() != super.x)
               {
                  if(!_loc3_)
                  {
                     addr79:
                     param1 = Math.min(Math.max(this.§&![§.x,param1),this.§&![§.x + this.§&![§.width);
                  }
                  do
                  {
                     super.x = param1;
                  }
                  while(!(_loc2_ || this));
                  
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               if(§§pop() != super.y)
               {
                  loop2:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§&![§.y,param1),this.§&![§.y + this.§&![§.height)));
                     addr85:
                     while(true)
                     {
                        param1 = §§pop();
                        do
                        {
                           super.y = param1;
                        }
                        while(!_loc3_);
                        
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr69:
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr69);
      }
      
      public function §""@§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§&![§.x);
         if(_loc6_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§&![§.y);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§&![§.size.length;
         §§push(_loc3_);
         if(_loc6_)
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §^`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.x = this.§&![§.x + param1 * this.§&![§.width;
         }
         do
         {
            this.y = this.§&![§.y + param1 * this.§&![§.height;
         }
         while(_loc3_);
         
      }
   }
}
