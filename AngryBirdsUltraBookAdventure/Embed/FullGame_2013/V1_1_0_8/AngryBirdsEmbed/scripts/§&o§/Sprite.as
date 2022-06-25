package §&o§
{
   import §=!0§.§2N§;
   import §=!0§.§>4§;
   import §=!0§.§>I§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §6e§:Vector.<§>4§>;
      
      private var §#>§:Boolean;
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>,§();
            if(!(_loc1_ && _loc2_))
            {
               super.dispose();
            }
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§#>§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() == this.§#>§)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               this.§#>§ = param1;
               if(_loc3_ || this)
               {
                  addr65:
                  if(this.§#>§)
                  {
                     if(_loc3_ || this)
                     {
                        addr73:
                        addEventListener(TouchEvent.§7!4§,this.§2h§);
                        if(_loc2_)
                        {
                        }
                        §§goto(addr88);
                     }
                  }
                  else
                  {
                     removeEventListener(TouchEvent.§7!4§,this.§2h§);
                  }
               }
               addr88:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr73);
      }
      
      private function §2h§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            Mouse.cursor = !!param1.§&Q§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§>I§.§`S§);
         if(!_loc2_)
         {
            §§push(Boolean(§§pop()));
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§>I§.§`S§);
                        if(_loc1_)
                        {
                           addr59:
                           §§push(§§pop().§09§);
                           if(_loc1_ || _loc1_)
                           {
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr68);
            }
            addr68:
            if(§§pop())
            {
               if(_loc1_)
               {
                  dispatchEventOnChildren(new Event(Event.§0@§));
                  if(this.§6e§ == null)
                  {
                     this.§6e§ = new Vector.<§>4§>(0);
                     addr101:
                     §>I§.§`S§.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
                     addr99:
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr113);
                  }
               }
               §>4§.§4S§(this,this.§6e§);
            }
            addr113:
            return;
         }
         §§goto(addr59);
      }
      
      public function §>,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         §§push(§>I§.§`S§);
         if(!(_loc3_ && _loc1_))
         {
            §§push(Boolean(§§pop()));
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr42:
                     §§pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§>I§.§`S§);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§pop().§09§);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr73);
               }
               addr73:
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr76:
                     if(this.§6e§)
                     {
                        addr81:
                        §>I§.§`S§.removeEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
                        if(!_loc3_)
                        {
                           §§push(int(this.§6e§.length));
                           if(!_loc3_)
                           {
                              _loc1_ = §§pop();
                              §§goto(addr99);
                           }
                           _loc2_ = §§pop();
                           §§goto(addr99);
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr99);
               }
               addr99:
               if(!_loc3_)
               {
                  addr97:
                  §§push(0);
               }
               while(true)
               {
                  if(_loc2_ >= _loc1_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr141:
                        this.§6e§ = null;
                        break;
                     }
                     break;
                  }
                  this.§6e§[_loc2_].dispose();
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  _loc2_++;
                  if(!(_loc3_ && _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr141);
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr81);
      }
      
      private function §@!C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6e§)
            {
               if(!_loc3_)
               {
                  this.§6e§ = new Vector.<§>4§>(0);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr45);
               }
               this.flatten();
            }
         }
         addr45:
      }
      
      public function get §[G§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6e§ == null);
         if(_loc1_ || this)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            §§push(Boolean(this.§6e§));
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr36:
                     §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr47);
                     }
                     §§goto(addr94);
                  }
               }
               addr47:
               if(color == 16777215)
               {
                  if(!_loc6_)
                  {
                     param1.§6J§();
                     addr52:
                     §§push(param2);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!(_loc6_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                  }
                  §§push(int(this.§6e§.length));
                  if(!(_loc6_ && param1))
                  {
                     _loc3_ = §§pop();
                     addr94:
                     §§push(0);
                  }
                  _loc4_ = §§pop();
                  do
                  {
                     if(_loc4_ < _loc3_)
                     {
                        this.§6e§[_loc4_].render(param1.context,param1.§false§,param2);
                        if(!(_loc6_ && param1))
                        {
                           _loc4_++;
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                  }
                  while(_loc6_ && param1);
                  
               }
               else
               {
                  super.render(param1,param2);
               }
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr52);
      }
   }
}
