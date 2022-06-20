package §#"R§
{
   import flash.events.Event;
   
   public class §?""§ extends Event
   {
      
      public static const §'I§:String = "DREvntLoadedRewardsData";
      
      public static const §^"N§:String = "DREvntNewSpinAvailable";
      
      public static const §#§:String = "DREvntLoadedRewardsReceived";
      
      public static const §7V§:String = "SpinWheelEntComplete";
      
      public static const §3!P§:String = "SpinWheelEntDataError";
      
      public static const §5"u§:String = "DPRewardFromWheel";
      
      public static const §!![§:String = "DPEventSpinwheel";
       
      
      private var §3!X§:Object;
      
      public function §?""§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§3!X§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§3!X§;
      }
      
      override public function clone() : Event
      {
         return new §?""§(type,this.data,bubbles,cancelable);
      }
   }
}
