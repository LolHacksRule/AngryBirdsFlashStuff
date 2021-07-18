package §,l§
{
   import §9@§.§!!R§;
   import §9@§.§+"[§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §]! § extends EventDispatcher
   {
       
      
      protected var §1"-§:String;
      
      protected var §`"?§:Number;
      
      protected var §6J§:Number;
      
      protected var §>V§:Number;
      
      protected var §2!H§:§+"[§;
      
      protected var §5"M§:Boolean;
      
      public function §]! §(param1:Object = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            do
            {
               if(param1)
               {
                  if(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§1"-§ = param1.user_currency;
                     }
                     addr104:
                  }
                  while(true)
                  {
                     this.§`"?§ = param1.currency_exchange;
                  }
                  addr108:
               }
               else
               {
                  this.§1!^§();
                  loop1:
                  while(_loc3_ || this)
                  {
                     this.§[^§();
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr20);
                           }
                           while(true)
                           {
                              this.§>V§ = param1.currency_offset;
                              break loop1;
                           }
                           addr87:
                        }
                        while(_loc2_)
                        {
                           §§goto(addr108);
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§6J§ = param1.currency_exchange_inverse;
                  §§goto(addr87);
               }
            }
            while(_loc2_);
            
            addr20:
            return;
         }
         §§goto(addr104);
      }
      
      public function get § !a§() : Boolean
      {
         return this.§5"M§;
      }
      
      private function §[^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§2!H§ = new §+"[§("me",{"fields":"currency"});
         }
         loop0:
         while(true)
         {
            §§push(this.§2!H§);
            loop1:
            while(true)
            {
               §§pop().addEventListener(Event.COMPLETE,this.§;V§);
               addr119:
               while(true)
               {
                  §§push(this.§2!H§);
                  addr88:
                  while(true)
                  {
                     §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     continue loop0;
                     addr34:
                     if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §1!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1"-§ = "USD";
            while(true)
            {
               this.§`"?§ = 10;
            }
            addr62:
         }
         loop1:
         do
         {
            this.§6J§ = 0.1;
            while(!_loc2_)
            {
               this.§>V§ = 100;
               if(!(_loc2_ && _loc2_))
               {
                  continue loop1;
               }
            }
            §§goto(addr62);
         }
         while(!_loc1_);
         
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!^§();
         }
         do
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         while(_loc3_);
         
      }
      
      protected function §;V§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc4_)
            {
               addr30:
               var event:Event = param1;
            }
            try
            {
               var data:Object = this.§2!H§.§8§;
               if(_loc5_)
               {
                  this.§1"-§ = data.currency.user_currency;
                  loop6:
                  while(true)
                  {
                     this.§`"?§ = data.currency.currency_exchange;
                     addr88:
                     while(true)
                     {
                        addr59:
                        addr145:
                        addr209:
                        while(true)
                        {
                           this.§6J§ = data.currency.currency_exchange_inverse;
                           if(!(_loc5_ || this))
                           {
                              break;
                           }
                           continue loop6;
                        }
                        §§push(this.§2!H§);
                        while(true)
                        {
                           §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        }
                     }
                  }
               }
               §§goto(addr214);
            }
            catch(e:Error)
            {
               if(!(_loc4_ && param1))
               {
                  §1!^§();
               }
            }
            §§goto(addr129);
         }
         §§goto(addr30);
      }
      
      public function §3?§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * this.§6J§);
            if(!(_loc4_ && _loc3_))
            {
               addr29:
               return Number(§§pop());
            }
         }
         §§goto(addr29);
      }
      
      public function §=";§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = this.§3?§(param1).toFixed(this.§ 6§());
         §§push(§!!R§.§>"%§(this.§1"-§));
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            if(param2)
            {
               addr46:
               §§push(_loc5_);
               if(_loc7_ || param2)
               {
                  §§push(param3);
                  if(_loc7_)
                  {
                     §§push(§§pop() + §§pop() + _loc4_.toString());
                     if(_loc7_)
                     {
                        addr86:
                        §§push(§§pop());
                        §§push(§§pop());
                     }
                     §§goto(addr86);
                  }
                  var _loc6_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr86);
            }
            else
            {
               §§push(_loc4_);
               if(!_loc8_)
               {
                  §§push(§§pop().toString() + param3 + _loc5_);
                  if(!_loc8_)
                  {
                     §§goto(addr86);
                  }
               }
            }
            §§goto(addr86);
         }
         §§goto(addr46);
      }
      
      protected function § 6§() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§>V§);
         if(_loc3_)
         {
            §§push(§§pop().toString().length - 1);
         }
         var _loc1_:int = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(§§pop() < 0)
               {
                  addr44:
                  §§push(0);
                  if(!_loc3_)
                  {
                     addr51:
                     return int(§§pop());
                  }
                  else
                  {
                     addr47:
                  }
               }
               else
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§goto(addr51);
                  }
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr44);
      }
   }
}
