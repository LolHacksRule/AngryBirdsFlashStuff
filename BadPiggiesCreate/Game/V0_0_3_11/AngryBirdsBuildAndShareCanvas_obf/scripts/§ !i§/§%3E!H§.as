package § !i§
{
   import flash.events.Event;
   
   public class §>!H§ extends Event
   {
      
      public static const §9&§:String = "surpriseChanged";
      
      public static const §7u§:String = "startUpdate";
      
      public static const §'! §:String = "startLoad";
      
      public static const §7Z§:String = "finishLoad";
      
      public static const §"!L§:String = "conditionChange";
      
      public static const §'§:String = "stateChange";
      
      public static const §-!§:String = "stabilityCompleted";
      
      public static const §^%§:String = "stabilityFail";
      
      public static const §4l§:String = "questCompleted";
      
      public static const §+!<§:String = "questError";
      
      public static var §!!4§:String;
       
      
      private var §;1§:String;
      
      private var §7A§:String;
      
      private var §`a§:String;
      
      public function §>!H§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get §&X§() : String
      {
         return this.§`a§;
      }
      
      public function set §&X§(param1:String) : void
      {
         this.§`a§ = param1;
      }
      
      public function get §%!u§() : String
      {
         return this.§;1§;
      }
      
      public function set §%!u§(param1:String) : void
      {
         this.§;1§ = param1;
      }
      
      public function get §@!5§() : String
      {
         return this.§7A§;
      }
      
      public function set §@!5§(param1:String) : void
      {
         this.§7A§ = param1;
      }
   }
}
