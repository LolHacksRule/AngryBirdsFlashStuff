package §?^§
{
   import §&p§.§%?§;
   import §&p§.§'_§;
   import §&p§.§`G§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §5!?§:Vector.<§%?§>;
      
      private var §#g§:Boolean;
      
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
            this.§9!B§();
            if(!(_loc2_ && _loc1_))
            {
               super.dispose();
            }
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§#g§;
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
               if(§§pop() == this.§#g§)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
                  addr52:
                  this.§#g§ = param1;
                  if(_loc2_ || param1)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr71);
               }
               §§goto(addr52);
            }
            addr64:
            if(this.§#g§)
            {
               addEventListener(TouchEvent.§!r§,this.§'k§);
               addr71:
            }
            else
            {
               removeEventListener(TouchEvent.§!r§,this.§'k§);
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §'k§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Mouse.cursor = !!param1.§^$§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§'_§.§17§);
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
                     §§push(§'_§.§17§);
                     if(!_loc2_)
                     {
                        addr32:
                        §§push(§§pop().§+y§);
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
                  dispatchEventOnChildren(new Event(Event.§#!7§));
                  if(this.§5!?§ == null)
                  {
                     this.§5!?§ = new Vector.<§%?§>(0);
                     if(_loc1_)
                     {
                        addr91:
                        §'_§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr103);
                     }
                  }
                  §%?§.§3f§(this,this.§5!?§);
               }
            }
            addr103:
            return;
         }
         §§goto(addr32);
      }
      
      public function §9!B§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         §§push(§'_§.§17§);
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
                        §§push(§'_§.§17§);
                        if(!_loc4_)
                        {
                           §§push(§§pop().§+y§);
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
               if(this.§5!?§)
               {
                  if(!_loc4_)
                  {
                     addr70:
                     §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
                     §§push(int(this.§5!?§.length));
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
                                 this.§5!?§ = null;
                                 break;
                              }
                              break;
                           }
                           this.§5!?§[_loc2_].dispose();
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
      
      private function §-%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§5!?§)
            {
               if(!_loc3_)
               {
                  this.§5!?§ = new Vector.<§%?§>(0);
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
      
      public function get §^K§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5!?§ == null);
         if(!(_loc2_ && _loc1_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && param2))
         {
            §§push(Boolean(this.§5!?§));
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
                  param1.§#E§();
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
                     §§push(int(this.§5!?§.length));
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
                        this.§5!?§[_loc4_].render(param1.context,param1.§1!<§,param2);
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
