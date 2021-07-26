package §8"L§
{
   import §`7§.§6#I§;
   
   public class §[t§ extends §8W§
   {
      
      protected static const §="F§:int = 300;
      
      protected static const §!!Y§:int = 5000;
      
      protected static const §9#<§:int = 10000;
       
      
      protected var §?#;§:Object;
      
      protected var §5#S§:§6!0§;
      
      public function §[t§()
      {
         this.§?#;§ = {};
         super();
      }
      
      public function get §"#§() : §6!0§
      {
         return this.§5#S§;
      }
      
      override protected function initMaterialManager() : void
      {
         §@#'§ = new §9"3§();
      }
      
      public function §3g§(param1:String, param2:String) : void
      {
         this.§&H§.§3g§(param1,param2);
      }
      
      public function §7#i§(param1:String) : void
      {
         this.§5#S§ = new §6!0§();
         var _loc2_:Object = §6#I§.§#!§(param1);
         this.§5#S§.§0"V§(_loc2_);
      }
      
      public function §@! §(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9"T§ = null;
         var _loc2_:Object = §6#I§.§#!§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§3V§(_loc3_);
            §6$!§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§?#;§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §,!#§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§5$=§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§&!P§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§4U§.§ T§);
            }
            §6$!§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§?#;§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §,![§(param1:String) : void
      {
         this.§8##§(§6#I§.§#!§(param1).particles);
      }
      
      public function §8##§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§3"s§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§'j§(_loc3_);
            §6$!§[_loc2_.toLowerCase()] = _loc4_;
            this.§?#;§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §&"U§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§5$=§ = null;
         var _loc2_:Object = §6#I§.§#!§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§4!,§(_loc5_);
               this.§;W§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §;W§(param1:§5$=§, param2:String) : void
      {
         §6$!§[param2] = param1;
         this.§?#;§[param2] = param1;
      }
      
      protected function §4!,§(param1:Object) : §5$=§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §4U§.§6]§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §4U§.§?#G§;
            }
            else
            {
               _loc2_ = §4U§.§ T§;
            }
         }
         else
         {
            _loc2_ = §4U§.§ T§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §5$=§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §5K§(param1,param2,!!_loc3_ ? §@#'§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§="F§));
      }
      
      protected function §3V§(param1:Object) : §9"T§
      {
         return new §9"T§(param1,§4U§.§50§,!!param1.material ? §@#'§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§9#<§));
      }
      
      protected function §&!P§(param1:Object) : §7^§
      {
         return new §7^§(param1,§4U§.§6]§,!!param1.material ? §@#'§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!!Y§));
      }
      
      protected function §'j§(param1:Object) : §3"s§
      {
         return new §3"s§(param1,§4U§.§?;§,!!param1.material ? §@#'§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §&H§() : §9"3§
      {
         return §@#'§ as §9"3§;
      }
   }
}
