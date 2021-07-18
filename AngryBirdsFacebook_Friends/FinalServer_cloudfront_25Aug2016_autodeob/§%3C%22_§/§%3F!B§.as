package §<"_§
{
   import §?§.§>"$§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §?!B§ extends §6"3§
   {
       
      
      protected var §7#§:String;
      
      public function §?!B§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§7#§ = param2;
         super("AngryBirdsFriends",param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§7#§;
         return _loc1_;
      }
      
      override protected function onLoadComplete(param1:Event) : void
      {
         super.onLoadComplete(param1);
         (§>"$§.§<_§ as §8G§).§1!>§();
      }
   }
}
