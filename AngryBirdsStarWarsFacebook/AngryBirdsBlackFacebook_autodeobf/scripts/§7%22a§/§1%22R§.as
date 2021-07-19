package §7"a§
{
   import §1!i§.§,#_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1"R§ extends EventDispatcher
   {
      
      public static const CACHING_COMPLETE:String = "CACHING_COMPLETE";
      
      private static var §=!h§:§1"R§;
       
      
      private var §2!D§:§,#_§;
      
      private var §4!,§:int = 0;
      
      private var §;P§:Boolean = true;
      
      public function §1"R§()
      {
         this.§2!D§ = new §,#_§();
         super();
      }
      
      public static function get §%!E§() : §1"R§
      {
         if(!§=!h§)
         {
            §=!h§ = new §1"R§();
         }
         return §=!h§;
      }
      
      public function §]i§(param1:String, param2:String) : §@4§
      {
         var _loc3_:§@4§ = null;
         this.§`"2§(param1,param2);
         if(this.§2!D§[param1 + param2].length > 0)
         {
            _loc3_ = this.§2!D§[param1 + param2].pop();
         }
         else
         {
            _loc3_ = new §@4§(param1,true,param2);
            _loc3_.addEventListener(Event.COMPLETE,this.§-#Y§);
         }
         return _loc3_;
      }
      
      public function §1!^§(param1:String, param2:String, param3:§@4§) : void
      {
         this.§`"2§(param1,param2);
         this.§2!D§[param1 + param2].push(param3);
      }
      
      public function §["u§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§@4§ = null;
         this.§4!,§ = param1.length;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.u;
            _loc4_ = §@4§.§ R§;
            if(!this.§2!D§[_loc3_ + _loc4_])
            {
               this.§2!D§[_loc3_ + _loc4_] = [];
            }
            (_loc5_ = new §@4§(_loc3_,true,_loc4_)).addEventListener(Event.COMPLETE,this.§-#Y§);
            this.§2!D§[_loc3_ + _loc4_].push(_loc5_);
         }
      }
      
      private function §-#Y§(param1:Event) : void
      {
         --this.§4!,§;
         if(this.§4!,§ <= 0)
         {
            dispatchEvent(new Event(CACHING_COMPLETE));
         }
      }
      
      private function §`"2§(param1:String, param2:String) : void
      {
         if(!this.§2!D§[param1 + param2])
         {
            this.§2!D§[param1 + param2] = [];
         }
      }
   }
}
