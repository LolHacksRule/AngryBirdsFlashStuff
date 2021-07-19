package §77§
{
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §<#§ extends §@_§
   {
      
      public static const §"!?§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §<#§))
         {
            §"!?§ = 4;
         }
      }
      
      private var §9"F§:Rectangle;
      
      private var mDragging:Boolean = false;
      
      private var §9"&§:String;
      
      public function §<#§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§9"F§ = new Rectangle();
            while(true)
            {
               super(param1,param2,param3);
               addr54:
               loop1:
               while(true)
               {
                  addr42:
                  while(true)
                  {
                     this.§9"F§.x = x;
                     continue loop1;
                  }
               }
               addr33:
               if(_loc9_ && this)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr42);
               }
               addr60:
               var _loc4_:String = param1.@constraint_x.toString();
               var _loc5_:String = param1.@constraint_y.toString();
               var _loc6_:String = param1.@constraint_width.toString();
               var _loc7_:String = param1.@constraint_height.toString();
               if(_loc8_ || param3)
               {
                  if(!isNaN(parseInt(_loc4_)))
                  {
                     while(true)
                     {
                        this.§9"F§.x = parseInt(_loc4_);
                        addr276:
                        while(true)
                        {
                        }
                     }
                     addr270:
                  }
                  loop6:
                  while(true)
                  {
                     if(!isNaN(parseInt(_loc5_)))
                     {
                        while(true)
                        {
                           this.§9"F§.y = parseInt(_loc5_);
                           addr253:
                           addr209:
                           while(true)
                           {
                           }
                           if(_loc9_ && param2)
                           {
                              continue;
                           }
                           if(!_loc9_)
                           {
                              this.§9"F§.width = parseInt(_loc6_);
                              loop12:
                              while(true)
                              {
                                 addr148:
                                 addr227:
                                 loop13:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(_loc8_ || this)
                                    {
                                       §§push("parent");
                                       if(!_loc9_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(!isNaN(parseInt(_loc7_)))
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   while(true)
                                                   {
                                                      this.§9"F§.height = parseInt(_loc7_);
                                                   }
                                                   addr124:
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   if(_loc9_ && this)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc8_ || param3)
                                                         {
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               this.§9"F§.height = param2.height - mClip.height;
                                                               continue loop12;
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr229:
                                                         while(true)
                                                         {
                                                            this.§9"F§.width = param2.width - mClip.width;
                                                            break loop14;
                                                         }
                                                      }
                                                      addr161:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   §§goto(addr253);
                                                }
                                                addr140:
                                                addr237:
                                             }
                                             while(true)
                                             {
                                                §]!d§(§"!?§,param1.@Drag);
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                §§goto(addr140);
                                                addr192:
                                             }
                                             return;
                                          }
                                          §§goto(addr161);
                                       }
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr229);
                                          }
                                          else
                                          {
                                             if(isNaN(parseInt(_loc6_)))
                                             {
                                                continue loop13;
                                             }
                                             if(!(_loc8_ || param3))
                                             {
                                                continue loop12;
                                             }
                                             §§goto(addr209);
                                          }
                                       }
                                       addr228:
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr228);
                                    §§goto(addr148);
                                 }
                              }
                           }
                           §§goto(addr270);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr227);
                        §§goto(addr253);
                     }
                  }
               }
               §§goto(addr124);
            }
         }
         while(true)
         {
            this.§9"F§.y = y;
            if(_loc9_ && param2)
            {
               continue;
            }
            if(!_loc9_)
            {
               §§goto(addr33);
            }
            §§goto(addr54);
         }
         §§goto(addr60);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§]"+§ = super.listenerUIEventOccured(param1,param2);
         §§push(param1);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               if(LISTENER_EVENT_MOUSE_DOWN === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc5_ && _loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr81:
                     §§push(1);
                     if(!_loc6_)
                     {
                     }
                  }
                  addr100:
                  switch(§§pop())
                  {
                     case 0:
                        this.startDrag();
                        if(_loc6_ || this)
                        {
                           break;
                        }
                        break;
                     case 1:
                        this.stopDrag();
                        if(!_loc5_)
                        {
                           break;
                        }
                  }
                  return _loc3_;
                  addr99:
               }
               else
               {
                  if(LISTENER_EVENT_MOUSE_UP === _loc4_)
                  {
                     §§goto(addr81);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr99);
               }
            }
            §§goto(addr81);
         }
         §§goto(addr100);
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
                  mClip.startDrag(false,this.§9"F§);
                  loop1:
                  while(true)
                  {
                     this.mDragging = true;
                     addr90:
                     do
                     {
                        mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§2t§);
                        loop3:
                        do
                        {
                           mClip.stage.addEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                           while(!_loc2_)
                           {
                              continue loop0;
                              mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                        while(_loc2_);
                        
                     }
                     while(_loc2_);
                     
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      private function §2t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.listenerUIEventOccured(§"!?§,§"d§[§"!?§]);
         }
      }
      
      private function stopDrag(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                     while(this.§9"&§)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        if(_loc2_ && this)
                        {
                           continue loop0;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              this.setComponentVisualState(this.§9"&§);
                              continue loop1;
                           }
                           §§goto(addr107);
                        }
                     }
                     addr20:
                     return;
                     addr31:
                  }
                  if(_loc3_)
                  {
                     mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§2t§);
                  }
                  while(true)
                  {
                     mClip.stage.removeEventListener(MouseEvent.ROLL_OUT,this.stopDrag);
                     addr107:
                     while(true)
                     {
                        mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDrag);
                     }
                  }
                  addr131:
                  while(!_loc2_)
                  {
                     this.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     continue loop0;
                     §§goto(addr44);
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr30);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.mDragging)
            {
               while(true)
               {
                  super.setComponentVisualState(param1);
                  if(!(_loc2_ && param1))
                  {
                     return;
                     addr50:
                  }
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§9"&§ = param1;
                     }
                     else
                     {
                        addr76:
                     }
                     continue;
                     break;
                  }
                  break;
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr50);
      }
      
      public function §;"6§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9"F§ = param1;
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() != super.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(Math.min(Math.max(this.§9"F§.x,param1),this.§9"F§.x + this.§9"F§.width)));
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               if(§§pop() != super.y)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr89:
                     param1 = Math.min(Math.max(this.§9"F§.y,param1),this.§9"F§.y + this.§9"F§.height);
                  }
                  do
                  {
                     super.y = param1;
                  }
                  while(!_loc2_);
                  
                  addr34:
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr34);
      }
      
      public function §'E§() : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(x - this.§9"F§.x);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(y - this.§9"F§.y);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
         var _loc4_:Number = this.§9"F§.size.length;
         §§push(_loc3_);
         if(!(_loc5_ && this))
         {
            return §§pop() / _loc4_;
         }
      }
      
      public function §'z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.x = this.§9"F§.x + param1 * this.§9"F§.width;
         }
         do
         {
            this.y = this.§9"F§.y + param1 * this.§9"F§.height;
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
