package §3>§
{
   import §4u§.§"!+§;
   
   public class §[8§ extends §]!N§
   {
      
      protected static const §,"<§:int = 300;
      
      protected static const §!!?§:int = 5000;
      
      protected static const §>2§:int = 10000;
       
      
      private var §'!#§:Object;
      
      protected var §0"0§:§%5§;
      
      public function §[8§()
      {
         this.§'!#§ = {};
         super();
      }
      
      public function get soundManager() : §%5§
      {
         return this.§0"0§;
      }
      
      override protected function initMaterialManager() : void
      {
         §8!5§ = new §'v§();
      }
      
      public function §1!>§(param1:String, param2:String) : void
      {
         this.§@!U§.§1!>§(param1,param2);
      }
      
      public function §9!'§(param1:String) : void
      {
         this.§0"0§ = new §%5§();
         var _loc2_:Object = §"!+§.§%$§(param1);
         this.§0"0§.§9!9§(_loc2_);
      }
      
      public function §9!j§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§1!;§ = null;
         var _loc2_:Object = §"!+§.§%$§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §,[§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§'!#§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §3!I§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§3n§ = null;
         var _loc2_:Object = §"!+§.§%$§(param1);
         for each(_loc3_ in _loc2_.levelGoals)
         {
            _loc4_ = null;
            if(_loc3_.levelGoal == true)
            {
               _loc4_ = this.createLevelItemPig(_loc3_);
            }
            else
            {
               _loc4_ = this.createLevelItem(_loc3_,§-"8§.§&!s§);
            }
            §,[§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§'!#§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §5!0§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§7!%§ = null;
         var _loc2_:Object = §"!+§.§%$§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.createLevelItemParticle(_loc4_);
            §,[§[_loc3_.toLowerCase()] = _loc5_;
            this.§'!#§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §0e§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§3n§ = null;
         var _loc2_:Object = §"!+§.§%$§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§@R§(_loc4_);
               §,[§[_loc4_.definition.toLowerCase()] = _loc5_;
               this.§'!#§[_loc4_.definition.toLowerCase()] = _loc5_;
            }
         }
      }
      
      private function §@R§(param1:Object) : §3n§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §-"8§.§9!s§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §-"8§.§&3§;
            }
            else
            {
               _loc2_ = §-"8§.§&!s§;
            }
         }
         else
         {
            _loc2_ = §-"8§.§&!s§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §3n§
      {
         var _loc3_:String = param1.material;
         return new §3n§(param1,param2,!!_loc3_ ? §8!5§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§,"<§));
      }
      
      protected function createLevelItemBird(param1:Object) : §1!;§
      {
         return new §1!;§(param1,§-"8§.§&!§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§>2§));
      }
      
      protected function createLevelItemPig(param1:Object) : §34§
      {
         return new §34§(param1,§-"8§.§9!s§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!!?§));
      }
      
      protected function createLevelItemParticle(param1:Object) : §7!%§
      {
         return new §7!%§(param1,§-"8§.§ m§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §@!U§() : §'v§
      {
         return §8!5§ as §'v§;
      }
   }
}
