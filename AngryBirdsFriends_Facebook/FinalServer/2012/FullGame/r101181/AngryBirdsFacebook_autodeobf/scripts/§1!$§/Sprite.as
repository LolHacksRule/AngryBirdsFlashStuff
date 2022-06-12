package §1!$§
{
   import §'6§.§"]§;
   import §'6§.§'"3§;
   import §'6§.§[!f§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §3!p§:Vector.<§[!f§>;
      
      private var §-[§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§4l§();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§-[§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§-[§; while(true)
            {
               §§push(this.§-[§);
               if(!_loc2_)
               {
                  continue loop0;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addEventListener(TouchEvent.§2t§,this.§]!p§);
                        break;
                     }
                     break loop0;
                  }
                  break;
               }
               removeEventListener(TouchEvent.§2t§,this.§]!p§);
               if(!_loc2_)
               {
                  break;
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               if(!(_loc2_ || this))
               {
                  §§goto(addr96);
               }
            },return)
            {
               while(true)
               {
                  this.§-[§ = param1;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      private function §]!p§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Mouse.cursor = !!param1.§,-§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§"]§.§!X§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§"]§.§!X§);
                           loop4:
                           while(_loc1_)
                           {
                              §§push(§§pop().§<Z§);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue loop1;
                              }
                              loop11:
                              while(true)
                              {
                                 §§push(§"]§.§!X§);
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop11;
                                    }
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§3!p§ = new Vector.<§[!f§>(0);
                                       continue loop11;
                                    }
                                    §§goto(addr61);
                                 }
                                 addr61:
                                 addr80:
                                 while(true)
                                 {
                                    §[!f§.§40§(this,this.§3!p§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break;
                                    }
                                    §§goto(addr76);
                                    §§goto(addr80);
                                 }
                                 addr76:
                                 addr28:
                                 if(!(_loc2_ && this))
                                 {
                                    if(!_loc1_)
                                    {
                                       while(true)
                                       {
                                          dispatchEventOnChildren(new Event(Event.§'!l§));
                                          addr136:
                                          while(_loc1_ || _loc1_)
                                          {
                                             if(this.§3!p§ != null)
                                             {
                                                §§goto(addr28);
                                             }
                                             §§goto(addr86);
                                          }
                                          continue loop3;
                                       }
                                       addr130:
                                    }
                                    §§goto(addr24);
                                 }
                                 §§goto(addr136);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr130);
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §4l§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§"]§.§!X§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr177:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(§"]§.§!X§);
                           if(_loc3_ || _loc3_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
                              loop5:
                              while(true)
                              {
                                 §§push(int(this.§3!p§.length));
                                 loop6:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr104:
                                    while(_loc3_ || _loc3_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                     addr179:
                  }
                  else
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr139);
                        }
                     }
                     addr137:
                  }
                  return;
               }
            }
         }
         §§goto(addr156);
      }
      
      private function §-""§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§3!p§)
            {
               do
               {
                  this.§3!p§ = new Vector.<§[!f§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               while(_loc3_);
               
               addr49:
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get §>2§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3!p§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!_loc5_)
         {
            §§push(Boolean(this.§3!p§));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr166:
                     loop6:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              super.render(param1,param2);
                              break;
                           }
                           if(_loc6_ || param1)
                           {
                              param1.§-!=§();
                           }
                           while(true)
                           {
                              if(!(_loc5_ && param2))
                              {
                                 §§push(param2);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() * this.alpha);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 param2 = §§pop();
                                 continue;
                              }
                              continue loop6;
                           }
                           continue loop6;
                        }
                        §§goto(addr24);
                     }
                  }
                  addr165:
               }
               §§goto(addr139);
            }
            §§goto(addr165);
         }
         §§goto(addr166);
      }
   }
}
