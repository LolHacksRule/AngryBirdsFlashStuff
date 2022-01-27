package §>!2§
{
   import flash.events.Event;
   
   public class §6!4§ extends Event
   {
      
      public static const §3'§:String = "claimGift";
      
      public static const §`G§:String = "claimInviteGift";
      
      public static const §#!w§:String = "sendBackGift";
      
      public static const §<"8§:String = "removeRequest";
      
      public static const §="S§:String = "playBraggedLevel";
      
      public static const §7D§:String = "sendEnergy";
      
      public static const §>!F§:String = "playTournament";
       
      
      public var data:Object;
      
      public function §6!4§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §6!4§(type,this.data,bubbles,cancelable);
      }
   }
}
