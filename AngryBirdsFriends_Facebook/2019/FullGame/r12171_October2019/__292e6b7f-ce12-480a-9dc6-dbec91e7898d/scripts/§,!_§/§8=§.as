package §,!_§
{
   import §?#z§.§]$?§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §8=§ extends §=!g§
   {
       
      
      protected var §@"h§:String;
      
      public function §8=§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§@"h§ = param2;
         super(§@z§.§0"W§,param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§@"h§;
         if(this.§^"m§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = super.createJSONRequestData();
         _loc1_.externalAttributes = {
            "userId":§7"C§,
            "accessToken":this.§@"h§
         };
         if(this.§^"m§())
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
         (§]$?§.§;u§ as §@z§).§9$&§();
      }
      
      public function §^"m§() : Boolean
      {
         return §`"V§ && §`"V§.indexOf("FacebookCanvasDesktop") > -1;
      }
      
      public function get §<"k§() : String
      {
         return §<$&§;
      }
   }
}
