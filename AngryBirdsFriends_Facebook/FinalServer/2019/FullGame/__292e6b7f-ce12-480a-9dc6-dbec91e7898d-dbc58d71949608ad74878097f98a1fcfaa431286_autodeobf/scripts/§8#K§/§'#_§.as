package §8#K§
{
   import §#"4§.§%#F§;
   
   public class §'#_§ extends §2#3§
   {
      
      protected static const §6$;§:int = 300;
      
      protected static const §""V§:int = 5000;
      
      protected static const §6"K§:int = 10000;
       
      
      protected var §?#b§:Object;
      
      protected var §!"`§:§ !q§;
      
      public function §'#_§()
      {
         this.§?#b§ = {};
         super();
      }
      
      public function get soundManager() : § !q§
      {
         return this.§!"`§;
      }
      
      override protected function initMaterialManager() : void
      {
         §3!v§ = new §+!v§();
      }
      
      public function §7!-§(param1:String, param2:String) : void
      {
         this.§;#P§.§7!-§(param1,param2);
      }
      
      public function §-"3§(param1:Object) : void
      {
         if(!this.§!"`§)
         {
            this.§!"`§ = new § !q§();
         }
         this.§!"`§.§!"M§(param1);
      }
      
      public function §##U§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§[#!§ = null;
         var _loc2_:Object = §%#F§.§@"b§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§'!D§(_loc3_);
            §2p§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§?#b§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §-"+§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§<5§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§+p§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§&2§.§]!i§);
            }
            §2p§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§?#b§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §-!<§(param1:String) : void
      {
         this.§5d§(§%#F§.§@"b§(param1).particles);
      }
      
      public function §5d§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§?!t§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§%#f§(_loc3_);
            §2p§[_loc2_.toLowerCase()] = _loc4_;
            this.§?#b§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §0[§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§<5§ = null;
         var _loc2_:Object = §%#F§.§@"b§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§-#x§(_loc5_);
               this.§@"D§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §@"D§(param1:§<5§, param2:String) : void
      {
         §2p§[param2] = param1;
         this.§?#b§[param2] = param1;
      }
      
      protected function §-#x§(param1:Object) : §<5§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §&2§.§0!D§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §&2§.§6"!§;
            }
            else
            {
               _loc2_ = §&2§.§]!i§;
            }
         }
         else
         {
            _loc2_ = §&2§.§]!i§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §<5§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new § !=§(param1,param2,!!_loc3_ ? §3!v§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§6$;§));
      }
      
      protected function §'!D§(param1:Object) : §[#!§
      {
         return new §[#!§(param1,§&2§.§&$5§,!!param1.material ? §3!v§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§6"K§));
      }
      
      protected function §+p§(param1:Object) : §?"L§
      {
         return new §?"L§(param1,§&2§.§0!D§,!!param1.material ? §3!v§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§""V§));
      }
      
      protected function §%#f§(param1:Object) : §?!t§
      {
         return new §?!t§(param1,§&2§.§;"=§,!!param1.material ? §3!v§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §;#P§() : §+!v§
      {
         return §3!v§ as §+!v§;
      }
   }
}
