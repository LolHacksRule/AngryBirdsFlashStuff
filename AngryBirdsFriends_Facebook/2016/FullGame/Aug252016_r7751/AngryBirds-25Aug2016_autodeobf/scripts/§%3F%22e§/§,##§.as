package §?"e§
{
   import flash.events.Event;
   
   public class §,##§ extends Event
   {
      
      public static const §-2§:String = "DREvntLoadedRewardsData";
      
      public static const §0#s§:String = "DREvntNewSpinAvailable";
      
      public static const §>#v§:String = "DREvntLoadedRewardsReceived";
      
      public static const §8$ §:String = "SpinWheelEntComplete";
      
      public static const §&"N§:String = "SpinWheelEntDataError";
      
      public static const §-$1§:String = "DPRewardFromWheel";
      
      public static const §?"P§:String = "DPEventSpinwheel";
       
      
      private var §+"9§:Object;
      
      public function §,##§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+"9§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§+"9§;
      }
      
      override public function clone() : Event
      {
         return new §,##§(type,this.data,bubbles,cancelable);
      }
   }
}
