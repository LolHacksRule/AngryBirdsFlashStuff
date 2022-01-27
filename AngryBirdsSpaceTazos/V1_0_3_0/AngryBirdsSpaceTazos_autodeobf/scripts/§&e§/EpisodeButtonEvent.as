package §&e§
{
   import flash.events.Event;
   
   public class EpisodeButtonEvent extends Event
   {
      
      public static const §9Q§:String = "EpisodeButtonEvent.OnLevelClick";
       
      
      private var §2D§:String;
      
      private var §1!`§:Number;
      
      private var §<2§:Number;
      
      private var §6w§:§^"0§;
      
      public function EpisodeButtonEvent(param1:String, param2:String, param3:Number, param4:Number, param5:§^"0§, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.§2D§ = param2;
         this.§1!`§ = param3;
         this.§<2§ = param4;
         this.§6w§ = param5;
      }
      
      public function get levelName() : String
      {
         return this.§2D§;
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function get button() : §^"0§
      {
         return this.§6w§;
      }
   }
}
