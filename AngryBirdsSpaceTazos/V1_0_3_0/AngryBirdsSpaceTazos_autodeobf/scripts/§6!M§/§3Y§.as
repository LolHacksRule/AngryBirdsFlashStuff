package §6!M§
{
   import §'!n§.§`L§;
   
   public class §3Y§ extends §8"3§
   {
      
      protected static const §'O§:int = 300;
      
      protected static const §8a§:int = 5000;
      
      protected static const §0!9§:int = 10000;
       
      
      private var §]!8§:Object;
      
      protected var §<G§:§=!T§;
      
      public function §3Y§()
      {
         this.§]!8§ = {};
         super();
      }
      
      public function get soundManager() : §=!T§
      {
         return this.§<G§;
      }
      
      override protected function initMaterialManager() : void
      {
         §3F§ = new §;!w§();
      }
      
      public function §=!m§(param1:String, param2:String) : void
      {
         this.§7d§.§=!m§(param1,param2);
      }
      
      public function §@h§(param1:String) : void
      {
         this.§<G§ = new §=!T§();
         var _loc2_:Object = §`L§.§3!,§(param1);
         this.§<G§.§ !p§(_loc2_);
      }
      
      public function §+y§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§9`§ = null;
         var _loc2_:Object = §`L§.§3!,§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §<!d§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§]!8§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §2<§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§%h§ = null;
         var _loc2_:Object = §`L§.§3!,§(param1);
         for each(_loc3_ in _loc2_.levelGoals)
         {
            _loc4_ = null;
            if(_loc3_.levelGoal == true)
            {
               _loc4_ = this.createLevelItemPig(_loc3_);
            }
            else
            {
               _loc4_ = this.createLevelItem(_loc3_,§<!r§.§!"<§);
            }
            §<!d§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§]!8§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §[!@§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§[]§ = null;
         var _loc2_:Object = §`L§.§3!,§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.createLevelItemParticle(_loc4_);
            §<!d§[_loc3_.toLowerCase()] = _loc5_;
            this.§]!8§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §%!K§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§%h§ = null;
         var _loc2_:Object = §`L§.§3!,§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§'!p§(_loc4_);
               §<!d§[_loc4_.definition.toLowerCase()] = _loc5_;
               this.§]!8§[_loc4_.definition.toLowerCase()] = _loc5_;
            }
         }
      }
      
      private function §'!p§(param1:Object) : §%h§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §<!r§.§`";§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §<!r§.§<W§;
            }
            else
            {
               _loc2_ = §<!r§.§!"<§;
            }
         }
         else
         {
            _loc2_ = §<!r§.§!"<§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §%h§
      {
         var _loc3_:String = param1.material;
         return new §%h§(param1,param2,!!_loc3_ ? §3F§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§'O§));
      }
      
      protected function createLevelItemBird(param1:Object) : §9`§
      {
         return new §9`§(param1,§<!r§.§4!t§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§0!9§));
      }
      
      protected function createLevelItemPig(param1:Object) : §74§
      {
         return new §74§(param1,§<!r§.§`";§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8a§));
      }
      
      protected function createLevelItemParticle(param1:Object) : §[]§
      {
         return new §[]§(param1,§<!r§.§]$§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §7d§() : §;!w§
      {
         return §3F§ as §;!w§;
      }
   }
}
