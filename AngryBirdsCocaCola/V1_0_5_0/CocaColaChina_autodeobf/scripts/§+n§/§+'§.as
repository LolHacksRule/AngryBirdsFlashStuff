package §+n§
{
   import §=!<§.§%P§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §+'§ implements §0l§
   {
      
      public static const §5!+§:String = "LEVEL_START";
       
      
      private var §]i§:Array;
      
      public function §+'§()
      {
         this.§]i§ = [];
         super();
      }
      
      public function §?!O§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§%P§ = null;
         switch(param1)
         {
            case §5!+§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§5!+§};
               _loc4_ = new §%P§(_loc3_,§6T§.§&H§ + _loc2_,this,§%P§.§]!J§);
               this.§]i§.push(_loc4_);
         }
      }
      
      public function §!!7§() : void
      {
         var _loc1_:§%P§ = null;
         for each(_loc1_ in this.§]i§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§]i§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9!%§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=p§(param1:IOErrorEvent) : void
      {
      }
   }
}
