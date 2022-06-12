package §8"g§
{
   import flash.events.Event;
   
   public class §^#$§ extends Event
   {
      
      public static const §>"o§:String = "DREvntLoadedRewardsData";
      
      public static const §0Q§:String = "DREvntNewSpinAvailable";
      
      public static const §[Y§:String = "DREvntLoadedRewardsReceived";
      
      public static const §<#=§:String = "SpinWheelEntComplete";
      
      public static const §8"!§:String = "SpinWheelEntDataError";
      
      public static const §]!Q§:String = "DPRewardFromWheel";
      
      public static const §>#a§:String = "DPEventSpinwheel";
       
      
      private var §@!=§:Object;
      
      public function §^#$§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§@!=§ = param2;
      }
      
      public function get data() : Object
      {
         return this.§@!=§;
      }
      
      override public function clone() : Event
      {
         return new §^#$§(type,this.data,bubbles,cancelable);
      }
   }
}
