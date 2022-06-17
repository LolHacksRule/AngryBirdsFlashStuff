package §-"T§
{
   import §+!n§.§+!p§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §[$'§ extends §7#f§
   {
       
      
      protected var §,$6§:String;
      
      public function §[$'§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§,$6§ = param2;
         super(§^"a§.§-!"§,param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§,$6§;
         if(this.§8N§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = super.createJSONRequestData();
         _loc1_.externalAttributes = {
            "userId":§<$3§,
            "accessToken":this.§,$6§
         };
         if(this.§8N§())
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
         (§+!p§.§;"-§ as §^"a§).§>9§();
      }
      
      public function §8N§() : Boolean
      {
         return §`"<§ && §`"<§.indexOf("FacebookCanvasDesktop") > -1;
      }
      
      public function get §!!y§() : String
      {
         return §7k§;
      }
   }
}
