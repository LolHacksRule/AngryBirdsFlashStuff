package §1!a§
{
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §<!Y§ implements §7!I§
   {
      
      public static const §,Y§:String = "LEVEL_START";
       
      
      private var §,!&§:Array;
      
      public function §<!Y§()
      {
         this.§,!&§ = [];
         super();
      }
      
      public function §1!?§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§;§ = null;
         switch(param1)
         {
            case §,Y§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§,Y§};
               _loc4_ = new §;§(_loc3_,§,-§.§ 6§ + _loc2_,this,§;§.§@<§);
               this.§,!&§.push(_loc4_);
         }
      }
      
      public function §]u§() : void
      {
         var _loc1_:§;§ = null;
         for each(_loc1_ in this.§,!&§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§,!&§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
      }
   }
}
