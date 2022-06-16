package §?$<§
{
   import §&!_§.§01§;
   
   public class §]#A§ extends §2#W§
   {
      
      protected static const §4#1§:int = 300;
      
      protected static const §"!W§:int = 5000;
      
      protected static const §^#M§:int = 10000;
       
      
      protected var §7"y§:Object;
      
      protected var §6A§:§^#1§;
      
      public function §]#A§()
      {
         this.§7"y§ = {};
         super();
      }
      
      public function get soundManager() : §^#1§
      {
         return this.§6A§;
      }
      
      override protected function initMaterialManager() : void
      {
         §%"e§ = new §>l§();
      }
      
      public function §9$5§(param1:String, param2:String) : void
      {
         this.§7#!§.§9$5§(param1,param2);
      }
      
      public function §;#%§(param1:Object) : void
      {
         if(!this.§6A§)
         {
            this.§6A§ = new §^#1§();
         }
         this.§6A§.§##s§(param1);
      }
      
      public function §4#K§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§>#i§ = null;
         var _loc2_:Object = §01§.§4$>§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§;";§(_loc3_);
            §!$"§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§7"y§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §&O§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§@"q§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§98§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§?$>§.§0#Q§);
            }
            §!$"§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§7"y§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §8!y§(param1:String) : void
      {
         this.§8!`§(§01§.§4$>§(param1).particles);
      }
      
      public function §8!`§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§,#q§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§,#'§(_loc3_);
            §!$"§[_loc2_.toLowerCase()] = _loc4_;
            this.§7"y§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §8"c§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§@"q§ = null;
         var _loc2_:Object = §01§.§4$>§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§?#§(_loc5_);
               this.§;$?§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §;$?§(param1:§@"q§, param2:String) : void
      {
         §!$"§[param2] = param1;
         this.§7"y§[param2] = param1;
      }
      
      protected function §?#§(param1:Object) : §@"q§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §?$>§.§1!f§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §?$>§.§&h§;
            }
            else
            {
               _loc2_ = §?$>§.§0#Q§;
            }
         }
         else
         {
            _loc2_ = §?$>§.§0#Q§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §@"q§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §<#x§(param1,param2,!!_loc3_ ? §%"e§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§4#1§));
      }
      
      protected function §;";§(param1:Object) : §>#i§
      {
         return new §>#i§(param1,§?$>§.§ "j§,!!param1.material ? §%"e§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§^#M§));
      }
      
      protected function §98§(param1:Object) : §-"B§
      {
         return new §-"B§(param1,§?$>§.§1!f§,!!param1.material ? §%"e§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§"!W§));
      }
      
      protected function §,#'§(param1:Object) : §,#q§
      {
         return new §,#q§(param1,§?$>§.§"#§,!!param1.material ? §%"e§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §7#!§() : §>l§
      {
         return §%"e§ as §>l§;
      }
   }
}
