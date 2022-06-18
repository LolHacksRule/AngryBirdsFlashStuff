package §7"&§
{
   import §6"r§.§!#A§;
   import §7!j§.§!"J§;
   import §;P§.§super§;
   import §=#C§.§5!S§;
   import §@#§.§7!O§;
   import flash.utils.Dictionary;
   
   public class §5#`§ extends §2>§
   {
       
      
      private var §7#H§:Object;
      
      protected var §4'§:§5!S§;
      
      private var §4"@§:Dictionary;
      
      public function §5#`§()
      {
         super();
         this.§4'§ = new §5!S§();
      }
      
      public function §5G§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§+#p§ = null;
         this.§7#H§ = param1;
         §10§(param1.particles);
         §##O§(§`H§).§+!G§(param1.dynamicBlocks.materials);
         §##O§(§`H§).§+!G§(param2.materials);
         §##O§(§`H§).§+!G§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §7$6§.initBehaviorsDefinition(param1.behaviors);
         }
         §3$§("{}");
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §1#0§(_loc5_);
            if(_loc4_.indexOf("BLUEPRINT") > -1)
            {
               if(!this.§4"@§)
               {
                  this.§4"@§ = new Dictionary();
               }
               this.§4"@§[_loc4_] = _loc6_;
            }
            else
            {
               §[w§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §1#0§(_loc5_);
            §[w§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §90§(param1:Object) : Array
      {
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:§;"$§ = null;
         var _loc11_:Object = null;
         var _loc12_:§+#p§ = null;
         var _loc2_:Array = [];
         var _loc3_:Object = param1.particles;
         for(_loc5_ in _loc3_)
         {
            if((_loc9_ = _loc3_[_loc5_]).definition == undefined)
            {
               _loc9_.definition = _loc5_;
            }
            _loc10_ = §;!'§(_loc9_);
            _loc4_ = _loc5_.toLowerCase();
            §+G§[_loc4_] = _loc10_;
            §]$#§[_loc4_] = _loc10_;
            _loc2_.push(_loc10_);
         }
         if(param1.dynamicBlocks.materials)
         {
            §##O§(§`H§).§+!G§(param1.dynamicBlocks.materials);
         }
         if(param1.behaviors)
         {
            §7$6§.initBehaviorsDefinition(param1.behaviors);
         }
         else if(param1.dynamicBlocks.behaviors)
         {
            §7$6§.initBehaviorsDefinition(param1.dynamicBlocks.behaviors);
         }
         for(_loc6_ in param1.dynamicBlocks.blocks)
         {
            if(this.§4"@§ && this.§4"@§[_loc6_])
            {
               delete this.§4"@§[_loc6_];
            }
            _loc11_ = param1.dynamicBlocks.blocks[_loc6_];
            _loc11_.definition = _loc11_.definition || _loc6_;
            _loc12_ = §1#0§(_loc11_);
            _loc4_ = _loc6_.toLowerCase();
            §[w§(_loc12_,_loc4_);
            _loc2_.push(_loc12_);
         }
         _loc7_ = this.§7$ §();
         for each(_loc8_ in _loc7_)
         {
            _loc2_.push(_loc8_);
         }
         return _loc2_;
      }
      
      public function §7$ §() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§4"@§)
         {
            for(_loc2_ in this.§4"@§)
            {
               §[w§(this.§4"@§[_loc2_],_loc2_.toLowerCase());
               _loc1_.push(this.§4"@§[_loc2_]);
            }
            this.§4"@§ = new Dictionary();
         }
         return _loc1_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §+#p§
      {
         var _loc3_:String = param1.material || param1.materialName;
         var _loc4_:§>"f§ = !!_loc3_ ? §+#Q§.getSoundResource(_loc3_) : §+#Q§.getSoundResource("MISC_SOUNDS");
         return new §;"x§(param1,param2,!!_loc3_ ? §`H§.getMaterial(_loc3_) : null,_loc4_,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§]#q§),false,§4$;§);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§"T§(§5#d§.Powerup_Damage_Multipliers);
         this.§2!H§(§5#d§.Powerup_Velocity_Multipliers);
         this.§ "I§(§5#d§.Material_Damage_Factor_Limits);
         this.§4'§.§^"4§(§5#d§.Slingshot_Bonus_Damages_Multipliers);
         this.§4'§.§,"+§(§5#d§.Slingshot_Bird_Materials);
         this.§4'§.§^"s§(§5#d§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §"T§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §super§.§@"B§.§^6§(_loc3_);
            }
         }
      }
      
      protected function §2!H§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §super§.§@"B§.§-S§(_loc3_);
            }
         }
      }
      
      protected function § "I§(param1:XMLList) : void
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
                  _loc3_[§7!O§.§ f§(_loc4_.name())] = _loc4_.valueOf();
               }
            }
            §2!Y§.§+U§(_loc2_.@id,_loc3_);
         }
      }
      
      public function §-6§(param1:String = "") : void
      {
         this.§!Z§(param1);
         this.§-"v§(param1);
      }
      
      private function §-"v§(param1:String) : void
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
         if(this.§7#H§.dynamicBlocks.brandanims && this.§7#H§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§7#H§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§!"J§ = §!"J§(§!#A§.§#F§.animationManager);
         for(_loc4_ in this.§7#H§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§7#H§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§7#H§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
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
            _loc3_.§5N§(_loc4_,_loc6_,param1);
         }
      }
      
      private function §!Z§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§7#H§.dynamicBlocks.birds && this.§7#H§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§7#H§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§!"J§ = §!"J§(§!#A§.§#F§.animationManager);
         for(_loc4_ in this.§7#H§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§7#H§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§7#H§.dynamicBlocks.birds[_loc4_][_loc6_];
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
               _loc3_.§2k§(_loc4_,_loc5_,param1);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         §`H§ = new §##O§();
      }
   }
}
