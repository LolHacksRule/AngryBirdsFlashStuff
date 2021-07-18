package §-!`§
{
   import §@!X§.§"W§;
   import §@!X§.§#L§;
   import §@!X§.§7j§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §`!,§:Vector.<§#L§>;
      
      private var §<u§:Boolean;
      
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
            this.§!u§();
            if(!(_loc2_ && _loc2_))
            {
               super.dispose();
            }
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<u§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            if(§§pop() == this.§<u§)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
            else
            {
               this.§<u§ = param1;
               if(_loc3_)
               {
                  §§goto(addr58);
               }
            }
            §§goto(addr67);
         }
         addr58:
         if(this.§<u§)
         {
            addEventListener(TouchEvent.§1C§,this.§6!j§);
            if(!_loc2_)
            {
               addr67:
            }
         }
         else
         {
            removeEventListener(TouchEvent.§1C§,this.§6!j§);
         }
      }
      
      private function §6!j§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            Mouse.cursor = !!param1.§]W§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(§7j§.§else§);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr49:
                        §§pop();
                        §§goto(addr96);
                     }
                  }
                  if(§§pop())
                  {
                     dispatchEventOnChildren(new Event(Event.§^!g§));
                     if(this.§`!,§ == null)
                     {
                        this.§`!,§ = new Vector.<§#L§>(0);
                        if(_loc1_)
                        {
                           addr96:
                           addr50:
                           §§push(§7j§.§else§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop().§3!g§);
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
                           if(!_loc2_)
                           {
                              addr103:
                              §#L§.§0z§(this,this.§`!,§);
                           }
                           return;
                           §§push(§7j§.§else§);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr50);
      }
      
      public function §!u§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         §§push(§7j§.§else§);
         if(_loc3_ || _loc1_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     §§push(§7j§.§else§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop().§3!g§);
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr76);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr70:
            if(§§pop())
            {
               if(this.§`!,§)
               {
                  addr76:
                  §7j§.§else§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
                  §§push(int(this.§`!,§.length));
                  if(!_loc4_)
                  {
                     _loc1_ = §§pop();
                     §§push(0);
                  }
                  _loc2_ = §§pop();
                  do
                  {
                     if(_loc2_ < _loc1_)
                     {
                        this.§`!,§[_loc2_].dispose();
                        if(!_loc4_)
                        {
                           _loc2_++;
                           if(_loc4_ && this)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  while(_loc4_);
                  
                  this.§`!,§ = null;
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function §=!S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§`!,§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§`!,§ = new Vector.<§#L§>(0);
                  if(_loc2_)
                  {
                  }
                  §§goto(addr56);
               }
               this.flatten();
            }
         }
         addr56:
      }
      
      public function get §;!_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`!,§ == null);
         if(_loc2_ || _loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         §§push(Boolean(this.§`!,§));
         if(_loc5_)
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  addr29:
                  §§pop();
                  if(!_loc6_)
                  {
                     §§goto(addr35);
                  }
                  §§goto(addr63);
               }
            }
            addr35:
            if(color == 16777215)
            {
               param1.§<Q§();
               §§push(param2);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * this.alpha);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param2 = §§pop();
               addr63:
               §§push(int(this.§`!,§.length));
               if(!(_loc6_ && param1))
               {
                  _loc3_ = §§pop();
                  §§push(0);
               }
               _loc4_ = §§pop();
               while(true)
               {
                  if(_loc4_ >= _loc3_)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                     break;
                  }
                  this.§`!,§[_loc4_].render(param1.context,param1.§7!0§,param2);
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc4_++;
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            else
            {
               super.render(param1,param2);
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
