package §-#F§
{
   import §;#D§.§3#U§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §'#1§ extends §@!5§
   {
       
      
      protected var §&"Y§:String;
      
      public function §'#1§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§&"Y§ = param2;
         super(§,A§.§ !;§,param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§&"Y§;
         if(this.§-r§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = super.createJSONRequestData();
         _loc1_.externalAttributes = {
            "userId":§1!j§,
            "accessToken":this.§&"Y§
         };
         if(this.§-r§())
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
         (§3#U§.§9#^§ as §,A§).§6"3§();
      }
      
      public function §-r§() : Boolean
      {
         return §>!,§ && §>!,§.indexOf("FacebookCanvasDesktop") > -1;
      }
      
      public function get §>"j§() : String
      {
         return §&#j§;
      }
   }
}
