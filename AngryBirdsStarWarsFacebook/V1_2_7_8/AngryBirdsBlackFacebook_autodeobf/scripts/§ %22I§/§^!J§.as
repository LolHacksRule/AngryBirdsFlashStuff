package § "I§
{
   import §7A§.§5"2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^!J§ extends EventDispatcher
   {
      
      public static const CACHING_COMPLETE:String = "CACHING_COMPLETE";
      
      private static var §9"r§:§^!J§;
       
      
      private var §1!,§:§5"2§;
      
      private var §9!D§:int = 0;
      
      private var §?# §:Boolean = true;
      
      public function §^!J§()
      {
         this.§1!,§ = new §5"2§();
         super();
      }
      
      public static function get §-G§() : §^!J§
      {
         if(!§9"r§)
         {
            §9"r§ = new §^!J§();
         }
         return §9"r§;
      }
      
      public function §!"m§(param1:String, param2:String) : §?!%§
      {
         var _loc3_:§?!%§ = null;
         this.§@"T§(param1,param2);
         if(this.§1!,§[param1 + param2].length > 0)
         {
            _loc3_ = this.§1!,§[param1 + param2].pop();
         }
         else
         {
            _loc3_ = new §?!%§(param1,true,param2);
            _loc3_.addEventListener(Event.COMPLETE,this.§9N§);
         }
         return _loc3_;
      }
      
      public function §,>§(param1:String, param2:String, param3:§?!%§) : void
      {
         this.§@"T§(param1,param2);
         this.§1!,§[param1 + param2].push(param3);
      }
      
      public function §<!"§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§?!%§ = null;
         this.§9!D§ = param1.length;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.u;
            _loc4_ = §?!%§.§^"g§;
            if(!this.§1!,§[_loc3_ + _loc4_])
            {
               this.§1!,§[_loc3_ + _loc4_] = [];
            }
            (_loc5_ = new §?!%§(_loc3_,true,_loc4_)).addEventListener(Event.COMPLETE,this.§9N§);
            this.§1!,§[_loc3_ + _loc4_].push(_loc5_);
         }
      }
      
      private function §9N§(param1:Event) : void
      {
         --this.§9!D§;
         if(this.§9!D§ <= 0)
         {
            dispatchEvent(new Event(CACHING_COMPLETE));
         }
      }
      
      private function §@"T§(param1:String, param2:String) : void
      {
         if(!this.§1!,§[param1 + param2])
         {
            this.§1!,§[param1 + param2] = [];
         }
      }
   }
}
