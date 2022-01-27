package §2"§
{
   import flash.events.Event;
   
   public class §%r§ extends Event
   {
      
      public static const §4#U§:String = "claimGift";
      
      public static const §8"L§:String = "claimInviteGift";
      
      public static const §>#N§:String = "sendBackGift";
      
      public static const §]x§:String = "removeRequest";
      
      public static const §+!j§:String = "playBraggedLevel";
      
      public static const §'""§:String = "sendEnergy";
      
      public static const §1"l§:String = "playTournament";
       
      
      public var data:Object;
      
      public function §%r§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §%r§(type,this.data,bubbles,cancelable);
      }
   }
}
