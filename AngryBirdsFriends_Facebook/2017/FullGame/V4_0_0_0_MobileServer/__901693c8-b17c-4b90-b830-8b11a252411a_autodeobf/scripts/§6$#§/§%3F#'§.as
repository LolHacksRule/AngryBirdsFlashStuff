package §6$#§
{
   import §6"r§.§!#A§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §?#'§ extends §]"$§
   {
       
      
      protected var § !n§:String;
      
      public function §?#'§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§ !n§ = param2;
         super("AngryBirdsFriends",param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§ !n§;
         if(this.§%$=§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = super.createJSONRequestData();
         _loc1_.externalAttributes = {
            "userId":§8"I§,
            "accessToken":this.§ !n§
         };
         if(this.§%$=§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function getClientSecret() : String
      {
         return "LK89BGor97GgrEt89gsTyeYegpo0oPaM";
      }
      
      override protected function onLoadComplete(param1:Event) : void
      {
         super.onLoadComplete(param1);
         (§!#A§.§>q§ as §-#+§).§=!5§();
      }
      
      public function §%$=§() : Boolean
      {
         return §<#q§ && §<#q§.indexOf("FacebookCanvasDesktop") > -1;
      }
   }
}
