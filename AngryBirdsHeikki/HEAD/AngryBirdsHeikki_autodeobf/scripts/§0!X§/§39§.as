package §0!X§
{
   import §>!M§.§2?§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §39§ implements §!!Z§
   {
      
      public static const §8§:String = "LEVEL_START";
       
      
      private var §-Q§:Array;
      
      public function §39§()
      {
         this.§-Q§ = [];
         super();
      }
      
      public function §-f§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§2?§ = null;
         switch(param1)
         {
            case §8§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§8§};
               _loc4_ = new §2?§(_loc3_,§"!R§.§['§ + _loc2_,this,§2?§.§&!g§);
               this.§-Q§.push(_loc4_);
         }
      }
      
      public function §!!J§() : void
      {
         var _loc1_:§2?§ = null;
         for each(_loc1_ in this.§-Q§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§-Q§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
      }
   }
}
