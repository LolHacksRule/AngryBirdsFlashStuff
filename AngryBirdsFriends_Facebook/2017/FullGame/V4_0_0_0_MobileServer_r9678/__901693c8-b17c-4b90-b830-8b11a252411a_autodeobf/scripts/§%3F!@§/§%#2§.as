package §?!@§
{
   import flash.events.Event;
   
   public class §%#2§ extends Event
   {
      
      public static const §?#=§:String = "DREvntLoadedRewardsData";
      
      public static const §'#X§:String = "DREvntNewSpinAvailable";
      
      public static const §6"?§:String = "DREvntLoadedRewardsReceived";
      
      public static const §,#t§:String = "SpinWheelEntComplete";
      
      public static const §5#p§:String = "SpinWheelEntDataError";
      
      public static const §3E§:String = "DPRewardFromWheel";
      
      public static const §]$,§:String = "DPEventSpinwheel";
       
      
      private var §`!y§:Object;
      
      public function §%#2§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`!y§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§`!y§;
      }
      
      override public function clone() : Event
      {
         return new §%#2§(type,this.data,bubbles,cancelable);
      }
   }
}
