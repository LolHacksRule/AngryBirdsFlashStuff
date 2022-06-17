package §'$9§
{
   import flash.events.Event;
   
   public class §8!L§ extends Event
   {
      
      public static const §!&§:String = "DREvntLoadedRewardsData";
      
      public static const §!!i§:String = "DREvntNewSpinAvailable";
      
      public static const §+!I§:String = "DREvntLoadedRewardsReceived";
      
      public static const §%#$§:String = "SpinWheelEntComplete";
      
      public static const §]#5§:String = "SpinWheelEntDataError";
      
      public static const §'Z§:String = "DPRewardFromWheel";
      
      public static const §9$8§:String = "DPEventSpinwheel";
       
      
      private var §`!J§:Object;
      
      public function §8!L§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`!J§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§`!J§;
      }
      
      override public function clone() : Event
      {
         return new §8!L§(type,this.data,bubbles,cancelable);
      }
   }
}
