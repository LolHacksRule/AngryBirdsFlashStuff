package §>P§
{
   import §7A§.§7!a§;
   
   public class §5"3§ extends §!!O§
   {
      
      protected static const §0"X§:int = 300;
      
      protected static const §;D§:int = 5000;
      
      protected static const §+!W§:int = 10000;
       
      
      private var §4!`§:Object;
      
      protected var §+!r§:§?[§;
      
      public function §5"3§()
      {
         this.§4!`§ = {};
         super();
      }
      
      public function get soundManager() : §?[§
      {
         return this.§+!r§;
      }
      
      override protected function initMaterialManager() : void
      {
         §9",§ = new §=!2§();
      }
      
      public function §%!u§(param1:String, param2:String) : void
      {
         this.§6L§.§%!u§(param1,param2);
      }
      
      public function §&"u§(param1:String) : void
      {
         this.§+!r§ = new §?[§();
         var _loc2_:Object = §7!a§.§[!V§(param1);
         this.§+!r§.§0!O§(_loc2_);
      }
      
      public function §>w§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§&"§ = null;
         var _loc2_:Object = §7!a§.§[!V§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §+!C§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§4!`§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §2!u§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=4§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.createLevelItemPig(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§=!,§.§1"H§);
            }
            §+!C§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§4!`§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §&a§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§^#'§ = null;
         var _loc2_:Object = §7!a§.§[!V§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.§!!?§(_loc4_);
            §+!C§[_loc3_.toLowerCase()] = _loc5_;
            this.§4!`§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §!h§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§=4§ = null;
         var _loc2_:Object = §7!a§.§[!V§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§="Y§(_loc4_);
               this.§4x§(_loc5_,_loc4_.definition.toLowerCase());
            }
         }
      }
      
      protected function §4x§(param1:§=4§, param2:String) : void
      {
         §+!C§[param2] = param1;
         this.§4!`§[param2] = param1;
      }
      
      protected function §="Y§(param1:Object) : §=4§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §=!,§.§="!§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §=!,§.§00§;
            }
            else
            {
               _loc2_ = §=!,§.§1"H§;
            }
         }
         else
         {
            _loc2_ = §=!,§.§1"H§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §=4§
      {
         var _loc3_:String = param1.material;
         return new §=4§(param1,param2,!!_loc3_ ? §9",§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§0"X§));
      }
      
      protected function createLevelItemBird(param1:Object) : §&"§
      {
         return new §&"§(param1,§=!,§.§3!b§,!!param1.material ? §9",§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§+!W§));
      }
      
      protected function createLevelItemPig(param1:Object) : §&"T§
      {
         return new §&"T§(param1,§=!,§.§="!§,!!param1.material ? §9",§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§;D§));
      }
      
      protected function §!!?§(param1:Object) : §^#'§
      {
         return new §^#'§(param1,§=!,§.§5"Z§,!!param1.material ? §9",§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §6L§() : §=!2§
      {
         return §9",§ as §=!2§;
      }
   }
}
