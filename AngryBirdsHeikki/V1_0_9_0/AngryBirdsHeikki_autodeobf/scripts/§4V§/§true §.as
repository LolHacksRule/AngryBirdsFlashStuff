package §4V§
{
   import §5!O§.§%!O§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §true § implements §@!Y§
   {
      
      public static const §]F§:String = "LEVEL_START";
       
      
      private var §4!7§:Array;
      
      public function §true §()
      {
         this.§4!7§ = [];
         super();
      }
      
      public function §"6§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§%!O§ = null;
         switch(param1)
         {
            case §]F§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§]F§};
               _loc4_ = new §%!O§(_loc3_,§"H§.§4O§ + _loc2_,this,§%!O§.§4!-§);
               this.§4!7§.push(_loc4_);
         }
      }
      
      public function §?D§() : void
      {
         var _loc1_:§%!O§ = null;
         for each(_loc1_ in this.§4!7§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§4!7§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
      }
   }
}
