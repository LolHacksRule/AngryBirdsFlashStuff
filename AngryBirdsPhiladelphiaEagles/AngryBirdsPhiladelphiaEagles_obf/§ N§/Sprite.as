package § N§
{
   import §5Z§.§4]§;
   import §5Z§.§[Z§;
   import §5Z§.§]5§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §&e§:Vector.<§]5§>;
      
      private var §while§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1j§();
            do
            {
               super.dispose();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§while§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         loop0:
         for(; §§pop() != this.§while§; while(true)
         {
            §§push(this.§while§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(!(_loc2_ && this))
                     {
                        addEventListener(TouchEvent.§=!?§,this.§;!1§);
                        break;
                     }
                     §§goto(addr88);
                  }
                  break;
               }
               removeEventListener(TouchEvent.§=!?§,this.§;!1§);
               if(!_loc3_)
               {
                  break;
               }
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr18);
               }
               continue;
            }
            continue loop0;
         },addr18:,return)
         {
            while(true)
            {
               this.§while§ = param1;
               continue loop0;
            }
         }
      }
      
      private function §;!1§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            Mouse.cursor = !!param1.§'M§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§[Z§.§%m§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr130:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§push(§[Z§.§%m§);
                        continue loop0;
                     }
                     addr132:
                  }
                  else
                  {
                     while(true)
                     {
                        addr119:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 dispatchEventOnChildren(new Event(Event.§"@§));
                                 if(this.§&e§ != null)
                                 {
                                    break;
                                 }
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 this.§&e§ = new Vector.<§]5§>(0);
                                 while(true)
                                 {
                                    §§push(§[Z§.§%m§);
                                    if(!_loc1_)
                                    {
                                       §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr20:
                                 return;
                                 addr79:
                                 addr37:
                              }
                              while(true)
                              {
                                 §]5§.§[&§(this,this.§&e§);
                                 if(_loc1_ && this)
                                 {
                                    §§goto(addr79);
                                 }
                                 §§goto(addr37);
                              }
                           }
                           §§goto(addr20);
                        }
                     }
                     addr118:
                  }
               }
            }
         }
         §§goto(addr20);
      }
      
      public function §1j§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(§[Z§.§%m§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(§[Z§.§%m§);
                     if(_loc4_ && _loc2_)
                     {
                        break;
                     }
                     §§push(§§pop().§,;§);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               if(!§§pop())
               {
                  break;
               }
               if(!this.§&e§)
               {
                  break;
               }
               §§push(§[Z§.§%m§);
            }
            §§goto(addr23);
         }
         do
         {
            §§push(int(this.§&e§.length));
            do
            {
               _loc1_ = §§pop();
               §§push(0);
            }
            while(!_loc3_);
            
            _loc2_ = §§pop();
         }
         while(_loc4_ && _loc2_);
         
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     this.§&e§ = null;
                     break;
                  }
                  _loc2_++;
                  continue;
                  addr52:
               }
               break;
            }
            this.§&e§[_loc2_].dispose();
            §§goto(addr52);
         }
         addr23:
      }
      
      private function §]!$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§&e§)
            {
               loop0:
               while(true)
               {
                  this.§&e§ = new Vector.<§]5§>(0);
                  addr57:
                  while(true)
                  {
                     this.flatten();
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr57);
      }
      
      public function get §^A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&e§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            §§push(Boolean(this.§&e§));
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(color == 16777215);
                  }
                  while(_loc6_);
                  
                  addr151:
               }
               if(§§pop())
               {
                  param1.§2!0§();
                  §§push(param2);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() * this.alpha);
                     if(_loc5_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
                  do
                  {
                     §§push(int(this.§&e§.length));
                     do
                     {
                        _loc3_ = §§pop();
                        §§push(0);
                     }
                     while(!_loc5_);
                     
                     _loc4_ = §§pop();
                  }
                  while(_loc6_ && _loc3_);
                  
                  loop5:
                  while(true)
                  {
                     if(_loc4_ >= _loc3_)
                     {
                        addr31:
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc5_)
                           {
                              _loc4_++;
                              continue;
                              addr75:
                           }
                        }
                        else
                        {
                           while(!_loc5_)
                           {
                              continue loop5;
                              §§goto(addr31);
                           }
                           addr46:
                        }
                        return;
                     }
                     this.§&e§[_loc4_].render(param1.§,!D§,param1.§^Z§,param2);
                     §§goto(addr75);
                  }
                  addr138:
               }
               else
               {
                  super.render(param1,param2);
               }
               §§goto(addr46);
            }
            §§goto(addr151);
         }
         §§goto(addr138);
      }
   }
}
