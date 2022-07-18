package §2"Y§
{
   import §1!i§.§7#&§;
   
   public class §>"X§ extends §,#5§
   {
      
      protected static const §8!S§:int = 300;
      
      protected static const §'!Y§:int = 5000;
      
      protected static const §+L§:int = 10000;
       
      
      private var §=!R§:Object;
      
      protected var §>"Q§:§%"3§;
      
      public function §>"X§()
      {
         this.§=!R§ = {};
         super();
      }
      
      public function get soundManager() : §%"3§
      {
         return this.§>"Q§;
      }
      
      override protected function initMaterialManager() : void
      {
         §-#J§ = new §!""§();
      }
      
      public function §'#P§(param1:String, param2:String) : void
      {
         this.§1"P§.§'#P§(param1,param2);
      }
      
      public function §%"W§(param1:String) : void
      {
         this.§>"Q§ = new §%"3§();
         var _loc2_:Object = §7#&§.§06§(param1);
         this.§>"Q§.§7!f§(_loc2_);
      }
      
      public function §5l§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§=+§ = null;
         var _loc2_:Object = §7#&§.§06§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §%"u§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§=!R§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §""9§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§["$§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.createLevelItemPig(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§"t§.§;"e§);
            }
            §%"u§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§=!R§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function § !y§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§2"q§ = null;
         var _loc2_:Object = §7#&§.§06§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.§?!g§(_loc4_);
            §%"u§[_loc3_.toLowerCase()] = _loc5_;
            this.§=!R§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §9!e§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§["$§ = null;
         var _loc2_:Object = §7#&§.§06§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§5#>§(_loc4_);
               this.§9"0§(_loc5_,_loc4_.definition.toLowerCase());
            }
         }
      }
      
      protected function §9"0§(param1:§["$§, param2:String) : void
      {
         §%"u§[param2] = param1;
         this.§=!R§[param2] = param1;
      }
      
      protected function §5#>§(param1:Object) : §["$§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §"t§.§5s§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §"t§.§5k§;
            }
            else
            {
               _loc2_ = §"t§.§;"e§;
            }
         }
         else
         {
            _loc2_ = §"t§.§;"e§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §["$§
      {
         var _loc3_:String = param1.material;
         return new §["$§(param1,param2,!!_loc3_ ? §-#J§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8!S§));
      }
      
      protected function createLevelItemBird(param1:Object) : §=+§
      {
         return new §=+§(param1,§"t§.§&#F§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§+L§));
      }
      
      protected function createLevelItemPig(param1:Object) : §%#@§
      {
         return new §%#@§(param1,§"t§.§5s§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§'!Y§));
      }
      
      protected function §?!g§(param1:Object) : §2"q§
      {
         return new §2"q§(param1,§"t§.§ 4§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §1"P§() : §!""§
      {
         return §-#J§ as §!""§;
      }
   }
}
