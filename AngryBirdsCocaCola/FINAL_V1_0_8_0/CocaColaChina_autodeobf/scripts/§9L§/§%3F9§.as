package §9L§
{
   import §!!4§.§8>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §?9§ implements §?%§
   {
      
      public static const §%!2§:String = "LEVEL_START";
       
      
      private var §5,§:Array;
      
      public function §?9§()
      {
         this.§5,§ = [];
         super();
      }
      
      public function §+!J§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§8>§ = null;
         switch(param1)
         {
            case §%!2§:
               _loc2_ = "tracking";
               _loc3_ = {"type":§%!2§};
               _loc4_ = new §8>§(_loc3_,§-!#§.§>+§ + _loc2_,this,§8>§.§+!O§);
               this.§5,§.push(_loc4_);
         }
      }
      
      public function §!@§() : void
      {
         var _loc1_:§8>§ = null;
         for each(_loc1_ in this.§5,§)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.§5,§ = [];
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §#!5§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0!B§(param1:IOErrorEvent) : void
      {
      }
   }
}
