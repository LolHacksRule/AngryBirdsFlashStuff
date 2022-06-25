package §,_§
{
   import §catch§.§'d§;
   import §catch§.§2O§;
   import §catch§.§4@§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,!D§:Vector.<§2O§>;
      
      private var §9!@§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6L§();
            if(_loc1_)
            {
               super.dispose();
            }
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!@§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || param1)
         {
            if(§§pop() == this.§9!@§)
            {
               return;
            }
            this.§9!@§ = param1;
            §§push(this.§9!@§);
         }
         if(§§pop())
         {
            if(_loc2_ || _loc3_)
            {
               addEventListener(TouchEvent.§8m§,this.§3R§);
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr81);
            }
         }
         else
         {
            removeEventListener(TouchEvent.§8m§,this.§3R§);
         }
         addr81:
      }
      
      private function §3R§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            Mouse.cursor = !!param1.§`s§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§4@§.§0W§);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr40:
                        §§pop();
                        §§goto(addr103);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr67:
                        dispatchEventOnChildren(new Event(Event.§02§));
                        if(_loc2_)
                        {
                           addr75:
                           if(this.§,!D§ == null)
                           {
                              if(_loc2_)
                              {
                                 this.§,!D§ = new Vector.<§2O§>(0);
                                 if(_loc2_)
                                 {
                                    addr103:
                                    §§push(§4@§.§0W§);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(§§pop().§[!#§);
                                       if(_loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
                                    if(_loc2_)
                                    {
                                       addr110:
                                       §2O§.§;B§(this,this.§,!D§);
                                    }
                                    return;
                                    §§push(§4@§.§0W§);
                                 }
                              }
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr40);
         }
         §§goto(addr67);
      }
      
      public function §6L§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            §§push(§4@§.§0W§);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr33:
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(§4@§.§0W§);
                           if(_loc3_)
                           {
                              §§push(§§pop().§[!#§);
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr79);
                     }
                  }
                  addr44:
                  if(§§pop())
                  {
                     if(this.§,!D§)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr67:
                           §4@§.§0W§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
                           addr72:
                           §§push(int(this.§,!D§.length));
                           if(!_loc4_)
                           {
                              _loc1_ = §§pop();
                              addr79:
                              §§push(0);
                           }
                           _loc2_ = §§pop();
                           while(true)
                           {
                              if(_loc2_ >= _loc1_)
                              {
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    this.§,!D§ = null;
                                    break;
                                 }
                                 break;
                              }
                              this.§,!D§[_loc2_].dispose();
                              if(!(_loc4_ && this))
                              {
                                 _loc2_++;
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                           }
                        }
                        §§goto(addr72);
                     }
                  }
                  return;
               }
               §§goto(addr33);
            }
         }
         §§goto(addr67);
      }
      
      private function §]B§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§,!D§)
            {
               if(_loc2_)
               {
                  addr33:
                  this.§,!D§ = new Vector.<§2O§>(0);
                  if(!(_loc3_ && this))
                  {
                     this.flatten();
                  }
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function get § N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,!D§ == null);
         if(!(_loc1_ && this))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      override public function render(param1:§'d§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         §§push(Boolean(this.§,!D§));
         if(!(_loc5_ && this))
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  addr35:
                  §§pop();
                  §§push(color == 16777215);
               }
            }
            if(§§pop())
            {
               if(!(_loc5_ && _loc3_))
               {
                  param1.§--§();
                  if(!_loc5_)
                  {
                     §§push(param2);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(_loc6_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     §§push(int(this.§,!D§.length));
                     if(_loc6_)
                     {
                        _loc3_ = §§pop();
                        §§push(0);
                     }
                     _loc4_ = §§pop();
                  }
               }
               do
               {
                  if(_loc4_ < _loc3_)
                  {
                     this.§,!D§[_loc4_].render(param1.context,param1.§get §,param2);
                     if(!(_loc5_ && param1))
                     {
                        _loc4_++;
                        if(_loc5_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
               }
               while(_loc5_ && this);
               
            }
            else
            {
               super.render(param1,param2);
            }
            return;
         }
         §§goto(addr35);
      }
   }
}
