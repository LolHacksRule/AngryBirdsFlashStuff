package §9W§
{
   import §#!;§.§,U§;
   import §#!;§.§;T§;
   import §#!;§.§?h§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §"]§:Vector.<§,U§>;
      
      private var §7Z§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!Z§();
            if(!(_loc2_ && _loc1_))
            {
               super.dispose();
            }
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§7Z§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() == this.§7Z§)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
                  addr52:
                  this.§7Z§ = param1;
                  if(_loc2_ || param1)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr71);
               }
               §§goto(addr52);
            }
            addr64:
            if(this.§7Z§)
            {
               addEventListener(TouchEvent.§?6§,this.§1H§);
               addr71:
            }
            else
            {
               removeEventListener(TouchEvent.§?6§,this.§1H§);
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §1H§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Mouse.cursor = !!param1.§8"§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§;T§.§,H§);
         if(!_loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     §§push(§;T§.§,H§);
                     if(!_loc2_)
                     {
                        addr32:
                        §§push(§§pop().§=8§);
                        if(_loc2_ && _loc1_)
                        {
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr51);
               }
            }
            addr51:
            if(§§pop())
            {
               if(!(_loc2_ && _loc1_))
               {
                  dispatchEventOnChildren(new Event(Event.§!M§));
                  if(this.§"]§ == null)
                  {
                     this.§"]§ = new Vector.<§,U§>(0);
                     if(_loc1_)
                     {
                        addr91:
                        §;T§.§,H§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr103);
                     }
                  }
                  §,U§.§8B§(this,this.§"]§);
               }
            }
            addr103:
            return;
         }
         §§goto(addr32);
      }
      
      public function §!Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         §§push(§;T§.§,H§);
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_ || this)
                     {
                        §§push(§;T§.§,H§);
                        if(!_loc4_)
                        {
                           §§push(§§pop().§=8§);
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr52);
                        }
                     }
                     §§goto(addr70);
                  }
               }
            }
            addr52:
            if(§§pop())
            {
               if(this.§"]§)
               {
                  if(!_loc4_)
                  {
                     addr70:
                     §;T§.§,H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
                     §§push(int(this.§"]§.length));
                     if(_loc3_ || this)
                     {
                        _loc1_ = §§pop();
                        if(!(_loc4_ && this))
                        {
                           addr95:
                           _loc2_ = 0;
                        }
                        while(true)
                        {
                           if(_loc2_ >= _loc1_)
                           {
                              if(_loc3_)
                              {
                                 addr133:
                                 this.§"]§ = null;
                                 break;
                              }
                              break;
                           }
                           this.§"]§[_loc2_].dispose();
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           _loc2_++;
                           if(!(_loc4_ && this))
                           {
                              continue;
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr95);
               }
            }
            addr136:
            return;
         }
         §§goto(addr70);
      }
      
      private function §'!0§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§"]§)
            {
               if(!_loc3_)
               {
                  this.§"]§ = new Vector.<§,U§>(0);
                  if(!_loc3_)
                  {
                     addr43:
                     this.flatten();
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function get §4I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§"]§ == null);
         if(!(_loc2_ && _loc1_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      override public function render(param1:§?h§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && param2))
         {
            §§push(Boolean(this.§"]§));
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  if(_loc6_ || param2)
                  {
                     addr47:
                     §§pop();
                     if(_loc6_ || param1)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr95);
                  }
               }
               addr68:
               if(color == 16777215)
               {
                  param1.§?Y§();
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() * this.alpha);
                     if(_loc6_)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                     param2 = §§pop();
                     addr81:
                     §§push(int(this.§"]§.length));
                     if(!(_loc5_ && param2))
                     {
                        _loc3_ = §§pop();
                        §§push(0);
                     }
                     _loc4_ = §§pop();
                     addr95:
                     do
                     {
                        if(_loc4_ >= _loc3_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              break;
                           }
                           break;
                        }
                        this.§"]§[_loc4_].render(param1.context,param1.§;+§,param2);
                        if(_loc5_)
                        {
                           break;
                        }
                        _loc4_++;
                     }
                     while(!(_loc5_ && param2));
                     
                     §§goto(addr142);
                  }
                  §§goto(addr79);
               }
               else
               {
                  super.render(param1,param2);
               }
               addr142:
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr81);
      }
   }
}
