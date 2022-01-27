package §`>§
{
   import flash.events.Event;
   
   public class EpisodeButtonEvent extends Event
   {
      
      public static const §-!c§:String = "EpisodeButtonEvent.OnLevelClick";
       
      
      private var §"-§:String;
      
      private var §''§:Number;
      
      private var §3"<§:Number;
      
      private var §;9§:§"!R§;
      
      public function EpisodeButtonEvent(param1:String, param2:String, param3:Number, param4:Number, param5:§"!R§, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.§"-§ = param2;
         this.§''§ = param3;
         this.§3"<§ = param4;
         this.§;9§ = param5;
      }
      
      public function get levelName() : String
      {
         return this.§"-§;
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function get button() : §"!R§
      {
         return this.§;9§;
      }
   }
}
