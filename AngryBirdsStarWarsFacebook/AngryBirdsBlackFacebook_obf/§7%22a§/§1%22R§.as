package §7"a§
{
   import §1!i§.§,#_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1"R§ extends EventDispatcher
   {
      
      public static const CACHING_COMPLETE:String = "CACHING_COMPLETE";
      
      private static var §=!h§:§1"R§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            CACHING_COMPLETE = "CACHING_COMPLETE";
         }
      }
      
      private var §2!D§:§,#_§;
      
      private var §4!,§:int = 0;
      
      private var §;P§:Boolean = true;
      
      public function §1"R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2!D§ = new §,#_§();
            do
            {
               super();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public static function get §%!E§() : §1"R§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§=!h§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr54:
                     §=!h§ = new §1"R§();
                  }
               }
               return §=!h§;
            }
         }
         §§goto(addr54);
      }
      
      public function §]i§(param1:String, param2:String) : §@4§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@4§ = null;
         if(!(_loc4_ && this))
         {
            this.§`"2§(param1,param2);
            if(_loc5_)
            {
               §§push(this.§2!D§);
               if(_loc5_)
               {
                  §§push(param1);
                  if(_loc5_ || this)
                  {
                     §§push(param2);
                     if(_loc5_ || this)
                     {
                        if(§§pop()[§§pop() + §§pop()].length > 0)
                        {
                           addr72:
                           _loc3_ = this.§2!D§[param1 + param2].pop();
                        }
                        else
                        {
                           _loc3_ = new §@4§(param1,true,param2);
                           if(!(_loc4_ && this))
                           {
                              _loc3_.addEventListener(Event.COMPLETE,this.§-#Y§);
                           }
                        }
                        return _loc3_;
                     }
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr72);
      }
      
      public function §1!^§(param1:String, param2:String, param3:§@4§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§`"2§(param1,param2);
         }
         do
         {
            this.§2!D§[param1 + param2].push(param3);
         }
         while(!_loc4_);
         
      }
      
      public function §["u§(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:§@4§ = null;
         if(!_loc8_)
         {
            this.§4!,§ = param1.length;
         }
         for each(_loc2_ in param1)
         {
            if(!(_loc8_ && this))
            {
               §§push(_loc2_.u);
               loop1:
               while(true)
               {
                  _loc3_ = §§pop();
                  addr128:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr107);
         }
      }
      
      private function §-#Y§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§4!,§);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.§4!,§ = _loc3_;
            }
            if(!(_loc5_ && param1))
            {
               §§goto(addr60);
            }
            §§goto(addr81);
         }
         addr60:
         if(this.§4!,§ <= 0)
         {
            if(_loc4_ || _loc2_)
            {
               addr81:
               dispatchEvent(new Event(CACHING_COMPLETE));
            }
         }
      }
      
      private function §`"2§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§2!D§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     if(!§§pop()[§§pop() + §§pop()])
                     {
                        if(!_loc3_)
                        {
                           addr58:
                           this.§2!D§[param1 + param2] = [];
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
