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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            if(!_loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr45);
         }
         addr33:
         §+!$§ = new §2U§(this);
         if(_loc2_ || _loc2_)
         {
            addr45:
            §+!$§.init(§=!Z§.§;K§.Views.View_Initialize[0]);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]!;§.sendRequest(§1^§.§ ]§,"","POST",this.§8f§,this.§0Q§,"application/json");
         }
      }
      
      override protected function packageLoaded() : void
      {
      }
      
      private function §8f§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:* = JSON.stringify(_loc2_.level.data);
         var _loc4_:RegExp = /\\"/g;
         if(!(_loc6_ && param1))
         {
            §§push(_loc3_);
            if(_loc7_ || param1)
            {
               §§push(§§pop().substring(1,_loc3_.length - 1).replace(_loc4_,"\""));
            }
            _loc3_ = §§pop();
         }
         var _loc5_:§2! § = §2! §.§%!G§(_loc3_);
         if(!(_loc6_ && this))
         {
            initLevelMain(_loc5_);
         }
      }
      
      private function §0Q§() : void
      {
      }
   }
}
