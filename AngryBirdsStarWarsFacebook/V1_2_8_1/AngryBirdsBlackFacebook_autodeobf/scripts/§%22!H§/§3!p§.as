package §"!H§
{
   import flash.events.Event;
   
   public class §3!p§ extends Event
   {
      
      public static const §`"`§:String = "claimGift";
      
      public static const §-!A§:String = "claimInviteGift";
      
      public static const §4",§:String = "sendBackGift";
      
      public static const §>v§:String = "removeRequest";
      
      public static const §="_§:String = "playBraggedLevel";
      
      public static const §<"s§:String = "sendEnergy";
      
      public static const §&",§:String = "playTournament";
       
      
      public var data:Object;
      
      public function §3!p§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §3!p§(type,this.data,bubbles,cancelable);
      }
   }
}
