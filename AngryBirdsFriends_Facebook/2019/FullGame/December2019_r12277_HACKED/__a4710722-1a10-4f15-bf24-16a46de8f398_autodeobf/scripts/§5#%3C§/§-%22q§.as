package §5#<§
{
   import flash.events.Event;
   
   public class §-"q§ extends Event
   {
      
      public static const §2"9§:String = "DREvntLoadedRewardsData";
      
      public static const §%!D§:String = "DREvntNewSpinAvailable";
      
      public static const §[!P§:String = "DREvntLoadedRewardsReceived";
      
      public static const §=!i§:String = "SpinWheelEntComplete";
      
      public static const §,"Q§:String = "SpinWheelEntDataError";
      
      public static const §>"#§:String = "DPRewardFromWheel";
      
      public static const §1#d§:String = "DPEventSpinwheel";
       
      
      private var §5!X§:Object;
      
      public function §-"q§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§5!X§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§5!X§;
      }
      
      override public function clone() : Event
      {
         return new §-"q§(type,this.data,bubbles,cancelable);
      }
   }
}
