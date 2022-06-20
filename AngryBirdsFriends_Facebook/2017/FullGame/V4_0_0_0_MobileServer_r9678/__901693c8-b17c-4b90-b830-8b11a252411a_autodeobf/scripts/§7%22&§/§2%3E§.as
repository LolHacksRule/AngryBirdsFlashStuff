package §7"&§
{
   import §6V§.§0#z§;
   
   public class §2>§ extends §&"T§
   {
      
      protected static const §]#q§:int = 300;
      
      protected static const §1>§:int = 5000;
      
      protected static const §8x§:int = 10000;
       
      
      protected var §]$#§:Object;
      
      protected var §="l§:§8"G§;
      
      public function §2>§()
      {
         this.§]$#§ = {};
         super();
      }
      
      public function get §4$;§() : §8"G§
      {
         return this.§="l§;
      }
      
      override protected function initMaterialManager() : void
      {
         §`H§ = new §!$+§();
      }
      
      public function §`"2§(param1:String, param2:String) : void
      {
         this.§+!S§.§`"2§(param1,param2);
      }
      
      public function §3$§(param1:String) : void
      {
         this.§="l§ = new §8"G§();
         var _loc2_:Object = §0#z§.§1!7§(param1);
         this.§="l§.§]!p§(_loc2_);
      }
      
      public function §0u§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§"!U§ = null;
         var _loc2_:Object = §0#z§.§1!7§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§9"3§(_loc3_);
            §+G§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§]$#§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §,i§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§+#p§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§=g§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§!"v§.§;!-§);
            }
            §+G§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§]$#§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §#z§(param1:String) : void
      {
         this.§10§(§0#z§.§1!7§(param1).particles);
      }
      
      public function §10§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§;"$§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§;!'§(_loc3_);
            §+G§[_loc2_.toLowerCase()] = _loc4_;
            this.§]$#§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §]"C§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§+#p§ = null;
         var _loc2_:Object = §0#z§.§1!7§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§1#0§(_loc5_);
               this.§[w§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §[w§(param1:§+#p§, param2:String) : void
      {
         §+G§[param2] = param1;
         this.§]$#§[param2] = param1;
      }
      
      protected function §1#0§(param1:Object) : §+#p§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §!"v§.§3"$§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §!"v§.§!A§;
            }
            else
            {
               _loc2_ = §!"v§.§;!-§;
            }
         }
         else
         {
            _loc2_ = §!"v§.§;!-§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §+#p§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §2p§(param1,param2,!!_loc3_ ? §`H§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§]#q§));
      }
      
      protected function §9"3§(param1:Object) : §"!U§
      {
         return new §"!U§(param1,§!"v§.§"#^§,!!param1.material ? §`H§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8x§));
      }
      
      protected function §=g§(param1:Object) : §##v§
      {
         return new §##v§(param1,§!"v§.§3"$§,!!param1.material ? §`H§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§1>§));
      }
      
      protected function §;!'§(param1:Object) : §;"$§
      {
         return new §;"$§(param1,§!"v§.§8#G§,!!param1.material ? §`H§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §+!S§() : §!$+§
      {
         return §`H§ as §!$+§;
      }
   }
}
