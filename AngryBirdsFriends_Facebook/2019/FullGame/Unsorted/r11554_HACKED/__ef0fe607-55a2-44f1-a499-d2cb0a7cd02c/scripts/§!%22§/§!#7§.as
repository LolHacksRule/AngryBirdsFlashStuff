package §!"§
{
   import §=!2§.§%"T§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §!#7§ extends §-!<§
   {
       
      
      protected var §&#a§:String;
      
      public function §!#7§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§&#a§ = param2;
         super(§'"a§.§;#M§,param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§&#a§;
         if(this.§0!l§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = super.createJSONRequestData();
         _loc1_.externalAttributes = {
            "userId":§,x§,
            "accessToken":this.§&#a§
         };
         if(this.§0!l§())
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
         (§%"T§.§>$<§ as §'"a§).§1&§();
      }
      
      public function §0!l§() : Boolean
      {
         return §'#d§ && §'#d§.indexOf("FacebookCanvasDesktop") > -1;
      }
      
      public function get §2!o§() : String
      {
         return §`Q§;
      }
   }
}
