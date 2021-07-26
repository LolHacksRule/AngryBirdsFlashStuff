package §8#K§
{
   import §+!Y§.§,#g§;
   import §7"T§.§@"T§;
   import §7#$§.§["5§;
   import §9T§.§ "T§;
   import §?#z§.§]$?§;
   import flash.utils.Dictionary;
   
   public class §?#j§ extends §'#_§
   {
       
      
      private var §`#;§:Object;
      
      protected var §@"0§:§,#g§;
      
      private var §>"k§:Dictionary;
      
      public function §?#j§()
      {
         super();
         this.§@"0§ = new §,#g§();
      }
      
      public function § !>§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§<5§ = null;
         this.§`#;§ = param1;
         §5d§(param1.particles);
         §7$%§(§3!v§).§##%§(param1.dynamicBlocks.materials);
         §7$%§(§3!v§).§##%§(param2.materials);
         §7$%§(§3!v§).§##%§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §8!O§.initBehaviorsDefinition(param1.behaviors);
         }
         §-"3§({});
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §-#x§(_loc5_);
            if(_loc4_.indexOf("BLUEPRINT") > -1)
            {
               if(!this.§>"k§)
               {
                  this.§>"k§ = new Dictionary();
               }
               this.§>"k§[_loc4_] = _loc6_;
            }
            else
            {
               §@"D§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §-#x§(_loc5_);
            §@"D§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §+[§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:§?!t§ = null;
         var _loc11_:* = null;
         var _loc12_:Object = null;
         var _loc13_:§<5§ = null;
         var _loc3_:Array = [];
         var _loc4_:Object = param1.particles;
         for(_loc6_ in _loc4_)
         {
            if((_loc9_ = _loc4_[_loc6_]).definition == undefined)
            {
               _loc9_.definition = _loc6_;
            }
            _loc10_ = §%#f§(_loc9_);
            _loc5_ = _loc6_.toLowerCase();
            §2p§[_loc5_] = _loc10_;
            §?#b§[_loc5_] = _loc10_;
            _loc3_.push(_loc10_);
         }
         if(param1.dynamicBlocks)
         {
            if(param1.dynamicBlocks.materials)
            {
               §7$%§(§3!v§).§##%§(param1.dynamicBlocks.materials);
            }
         }
         if(param1.behaviors)
         {
            §8!O§.initBehaviorsDefinition(param1.behaviors);
         }
         else if(param1.dynamicBlocks && param1.dynamicBlocks.behaviors)
         {
            §8!O§.initBehaviorsDefinition(param1.dynamicBlocks.behaviors);
         }
         if(param1.dynamicBlocks)
         {
            for(_loc11_ in param1.dynamicBlocks.blocks)
            {
               if(this.§>"k§ && this.§>"k§[_loc11_])
               {
                  delete this.§>"k§[_loc11_];
               }
               _loc12_ = param1.dynamicBlocks.blocks[_loc11_];
               _loc12_.definition = _loc12_.definition || _loc11_;
               _loc13_ = §-#x§(_loc12_);
               if(_loc12_.spawnBlock != undefined)
               {
                  _loc13_.§;s§(_loc12_.spawnBlock);
               }
               if(_loc12_.spawnParticles != undefined)
               {
                  _loc13_.§2$§(_loc12_.spawnParticles);
               }
               if(param2)
               {
                  if(§2p§.hasOwnProperty(_loc11_.toLocaleLowerCase()))
                  {
                     _loc13_.§#"c§ = true;
                  }
               }
               _loc5_ = _loc11_.toLowerCase();
               §@"D§(_loc13_,_loc5_);
               _loc3_.push(_loc13_);
            }
         }
         var _loc7_:Array = this.§-!P§();
         for each(_loc8_ in _loc7_)
         {
            _loc3_.push(_loc8_);
         }
         return _loc3_;
      }
      
      public function §-!P§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§>"k§)
         {
            for(_loc2_ in this.§>"k§)
            {
               §@"D§(this.§>"k§[_loc2_],_loc2_.toLowerCase());
               _loc1_.push(this.§>"k§[_loc2_]);
            }
            this.§>"k§ = new Dictionary();
         }
         return _loc1_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §<5§
      {
         var _loc3_:String = param1.material || param1.materialName;
         var _loc4_:§8$-§ = !!_loc3_ ? §[""§.getSoundResource(_loc3_) : §[""§.getSoundResource("MISC_SOUNDS");
         return new §0"p§(param1,param2,!!_loc3_ ? §3!v§.getMaterial(_loc3_) : null,_loc4_,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§6$;§),false,soundManager);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§;"G§(§,$9§.Powerup_Damage_Multipliers);
         this.§"!f§(§,$9§.Powerup_Velocity_Multipliers);
         this.§@F§(§,$9§.Material_Damage_Factor_Limits);
         this.§@"0§.§1$6§(§,$9§.Slingshot_Bonus_Damages_Multipliers);
         this.§@"0§.§@#a§(§,$9§.Slingshot_Bird_Materials);
         this.§@"0§.§9"W§(§,$9§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §;"G§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               § "T§.§&!C§.§]!]§(_loc3_);
            }
         }
      }
      
      protected function §"!f§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               § "T§.§&!C§.§-$4§(_loc3_);
            }
         }
      }
      
      protected function §@F§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:Object = null;
         var _loc4_:XML = null;
         for each(_loc2_ in param1.Bird)
         {
            _loc3_ = new Object();
            for each(_loc4_ in _loc2_.attributes())
            {
               if(_loc4_.name() != "id")
               {
                  _loc3_[§["5§.§2$;§(_loc4_.name())] = _loc4_.valueOf();
               }
            }
            §<!E§.§%1§(_loc2_.@id,_loc3_);
         }
      }
      
      public function §0#w§(param1:String = "") : void
      {
         this.§2#U§(param1);
         this.§ ;§(param1);
      }
      
      private function § ;§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Dictionary = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc2_:Array = [];
         if(this.§`#;§.dynamicBlocks.brandanims && this.§`#;§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§`#;§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§@"T§ = §@"T§(§]$?§.§2#§.animationManager);
         for(_loc4_ in this.§`#;§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§`#;§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§`#;§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
               if(_loc7_)
               {
                  if(_loc10_ is String)
                  {
                     _loc6_[_loc7_] = _loc10_;
                  }
                  else if(_loc10_ is Array)
                  {
                     _loc6_[_loc7_] = _loc10_;
                  }
               }
            }
            _loc8_ = false;
            _loc9_ = 0;
            while(_loc9_ < _loc2_.length)
            {
               if((_loc11_ = _loc2_[_loc9_]) == param1)
               {
                  _loc8_ = true;
                  break;
               }
               _loc9_++;
            }
            if(!_loc8_)
            {
               param1 = "";
            }
            _loc3_.§,"d§(_loc4_,_loc6_,param1);
         }
      }
      
      private function §2#U§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§`#;§.dynamicBlocks.birds && this.§`#;§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§`#;§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§@"T§ = §@"T§(§]$?§.§2#§.animationManager);
         for(_loc4_ in this.§`#;§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§`#;§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§`#;§.dynamicBlocks.birds[_loc4_][_loc6_];
                  if(_loc6_)
                  {
                     if(_loc7_ is String)
                     {
                        _loc5_[_loc6_] = _loc7_;
                     }
                     else if(_loc7_ is Array)
                     {
                        _loc5_[_loc6_] = _loc7_;
                     }
                  }
               }
               if(param1 != _loc2_)
               {
                  param1 = "";
               }
               _loc3_.§'&§(_loc4_,_loc5_,param1);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         §3!v§ = new §7$%§();
      }
   }
}
