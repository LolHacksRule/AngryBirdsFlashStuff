package §5§
{
   import flash.events.Event;
   
   public class §9$6§ extends Event
   {
      
      public static const §8#T§:String = "DREvntLoadedRewardsData";
      
      public static const §>-§:String = "DREvntNewSpinAvailable";
      
      public static const §#!0§:String = "DREvntLoadedRewardsReceived";
      
      public static const §`M§:String = "SpinWheelEntComplete";
      
      public static const §6!R§:String = "SpinWheelEntDataError";
      
      public static const §]"i§:String = "DPRewardFromWheel";
      
      public static const §=w§:String = "DPEventSpinwheel";
       
      
      private var §0"B§:Object;
      
      public function §9$6§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0"B§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§0"B§;
      }
      
      override public function clone() : Event
      {
         return new §9$6§(type,this.data,bubbles,cancelable);
      }
   }
}
