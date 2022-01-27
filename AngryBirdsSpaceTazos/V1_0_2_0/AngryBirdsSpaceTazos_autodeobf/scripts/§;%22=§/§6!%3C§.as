package §;"=§
{
   import §'#§.§'!l§;
   
   public class §6!<§ extends §3"=§
   {
      
      protected static const §=-§:int = 300;
      
      protected static const §#">§:int = 5000;
      
      protected static const §[P§:int = 10000;
       
      
      private var §2w§:Object;
      
      protected var §5"<§:§-_§;
      
      public function §6!<§()
      {
         this.§2w§ = {};
         super();
      }
      
      public function get soundManager() : §-_§
      {
         return this.§5"<§;
      }
      
      override protected function initMaterialManager() : void
      {
         §8!1§ = new §"B§();
      }
      
      public function §1"F§(param1:String, param2:String) : void
      {
         this.§''§.§1"F§(param1,param2);
      }
      
      public function §-!!§(param1:String) : void
      {
         this.§5"<§ = new §-_§();
         var _loc2_:Object = §'!l§.§&K§(param1);
         this.§5"<§.§%X§(_loc2_);
      }
      
      public function §^!v§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§[e§ = null;
         var _loc2_:Object = §'!l§.§&K§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §="§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§2w§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §0#§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§+C§ = null;
         var _loc2_:Object = §'!l§.§&K§(param1);
         for each(_loc3_ in _loc2_.levelGoals)
         {
            _loc4_ = null;
            if(_loc3_.levelGoal == true)
            {
               _loc4_ = this.createLevelItemPig(_loc3_);
            }
            else
            {
               _loc4_ = this.createLevelItem(_loc3_,§]"<§.§^"0§);
            }
            §="§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§2w§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §#!=§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§return§ = null;
         var _loc2_:Object = §'!l§.§&K§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.createLevelItemParticle(_loc4_);
            §="§[_loc3_.toLowerCase()] = _loc5_;
            this.§2w§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §@Z§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§+C§ = null;
         var _loc2_:Object = §'!l§.§&K§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§;!"§(_loc4_);
               §="§[_loc4_.definition.toLowerCase()] = _loc5_;
               this.§2w§[_loc4_.definition.toLowerCase()] = _loc5_;
            }
         }
      }
      
      private function §;!"§(param1:Object) : §+C§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §]"<§.§?![§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §]"<§.§8"3§;
            }
            else
            {
               _loc2_ = §]"<§.§^"0§;
            }
         }
         else
         {
            _loc2_ = §]"<§.§^"0§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §+C§
      {
         var _loc3_:String = param1.material;
         return new §+C§(param1,param2,!!_loc3_ ? §8!1§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§=-§));
      }
      
      protected function createLevelItemBird(param1:Object) : §[e§
      {
         return new §[e§(param1,§]"<§.§[8§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§[P§));
      }
      
      protected function createLevelItemPig(param1:Object) : §-'§
      {
         return new §-'§(param1,§]"<§.§?![§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§#">§));
      }
      
      protected function createLevelItemParticle(param1:Object) : §return§
      {
         return new §return§(param1,§]"<§.§3!c§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §''§() : §"B§
      {
         return §8!1§ as §"B§;
      }
   }
}
