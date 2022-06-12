package §0"7§
{
   import flash.events.Event;
   
   public class § !2§ extends Event
   {
      
      public static const §3G§:String = "surpriseChanged";
      
      public static const §!S§:String = "startUpdate";
      
      public static const §%";§:String = "startLoad";
      
      public static const §#"0§:String = "finishLoad";
      
      public static const §4]§:String = "questsFetched";
      
      public static const §6@§:String = "conditionChange";
      
      public static const §=";§:String = "stateChange";
      
      public static const §0!?§:String = "stabilityCompleted";
      
      public static const §'!N§:String = "stabilityFail";
      
      public static const §^$§:String = "questCompleted";
      
      public static const §>!^§:String = "questError";
      
      public static var §[!Q§:String;
       
      
      private var §-B§:String;
      
      private var §use §:String;
      
      private var §"!<§:String;
      
      public function § !2§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get §#A§() : String
      {
         return this.§"!<§;
      }
      
      public function set §#A§(param1:String) : void
      {
         this.§"!<§ = param1;
      }
      
      public function get §0f§() : String
      {
         return this.§-B§;
      }
      
      public function set §0f§(param1:String) : void
      {
         this.§-B§ = param1;
      }
      
      public function get §'!q§() : String
      {
         return this.§use §;
      }
      
      public function set §'!q§(param1:String) : void
      {
         this.§use § = param1;
      }
   }
}
