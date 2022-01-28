package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §&!0§.§]!;§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   
   public class §3S§ extends §?Y§
   {
       
      
      public function §3S§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_Initialize[0]);
      }
      
      override protected function initLevelLoad() : void
      {
         §]!;§.sendRequest(§1^§.§ ]§,"","POST",this.§8f§,this.§0Q§,"application/json");
      }
      
      override protected function packageLoaded() : void
      {
      }
      
      private function §8f§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:String = JSON.stringify(_loc2_.level.data);
         var _loc4_:RegExp = /\\"/g;
         _loc3_ = _loc3_.substring(1,_loc3_.length - 1).replace(_loc4_,"\"");
         var _loc5_:§2! § = §2! §.§%!G§(_loc3_);
         initLevelMain(_loc5_);
      }
      
      private function §0Q§() : void
      {
      }
   }
}
