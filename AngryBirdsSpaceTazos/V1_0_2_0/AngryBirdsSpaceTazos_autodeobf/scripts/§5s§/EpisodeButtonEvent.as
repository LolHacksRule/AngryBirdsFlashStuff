package §5s§
{
   import flash.events.Event;
   
   public class EpisodeButtonEvent extends Event
   {
      
      public static const §"!M§:String = "EpisodeButtonEvent.OnLevelClick";
       
      
      private var §<!P§:String;
      
      private var §>!J§:Number;
      
      private var §;`§:Number;
      
      private var §]i§:§3l§;
      
      public function EpisodeButtonEvent(param1:String, param2:String, param3:Number, param4:Number, param5:§3l§, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.§<!P§ = param2;
         this.§>!J§ = param3;
         this.§;`§ = param4;
         this.§]i§ = param5;
      }
      
      public function get levelName() : String
      {
         return this.§<!P§;
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function get button() : §3l§
      {
         return this.§]i§;
      }
   }
}
