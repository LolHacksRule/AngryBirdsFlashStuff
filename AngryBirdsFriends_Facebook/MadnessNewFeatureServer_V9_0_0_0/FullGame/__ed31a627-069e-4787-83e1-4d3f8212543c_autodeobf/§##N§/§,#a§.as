package §##N§
{
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class §,#a§ extends §'#c§
   {
       
      
      protected var §>"g§:String;
      
      public function §,#a§(param1:String, param2:String, param3:String = "cloud")
      {
         this.§>"g§ = param2;
         super(§ #v§.§>#r§,param1,param3);
      }
      
      override protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = super.getRequestData();
         _loc1_.facebookAccessToken = this.§>"g§;
         if(this.§1!b§())
         {
            _loc1_.distributionChannel = "gameroom";
         }
         return _loc1_;
      }
      
      override protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = super.createJSONRequestData();
         _loc1_.externalAttributes = {
            "userId":§5#v§,
            "accessToken":this.§>"g§
         };
         if(this.§1!b§())
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
         (§7n§.§-$<§ as § #v§).§12§();
      }
      
      public function §1!b§() : Boolean
      {
         return §?#M§ && §?#M§.indexOf("FacebookCanvasDesktop") > -1;
      }
      
      public function get §2#S§() : String
      {
         return §%!n§;
      }
   }
}
