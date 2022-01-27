package §9y§
{
   import flash.events.Event;
   
   public class EpisodeButtonEvent extends Event
   {
      
      public static const § for§:String = "EpisodeButtonEvent.OnLevelClick";
       
      
      private var §'!D§:String;
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var § r§:§><§;
      
      public function EpisodeButtonEvent(param1:String, param2:String, param3:Number, param4:Number, param5:§><§, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.§'!D§ = param2;
         this.§""4§ = param3;
         this.§%W§ = param4;
         this.§ r§ = param5;
      }
      
      public function get levelName() : String
      {
         return this.§'!D§;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get button() : §><§
      {
         return this.§ r§;
      }
   }
}
