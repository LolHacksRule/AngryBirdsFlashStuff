package §8"L§
{
   import §&$!§.§%#k§;
   import §4"R§.§[T§;
   import §;#D§.§3#U§;
   import §;$3§.§-!'§;
   import §`"8§.§`§;
   import flash.utils.Dictionary;
   
   public class §[#O§ extends §[t§
   {
       
      
      private var §"!?§:Object;
      
      protected var §!"V§:§[T§;
      
      private var §`!z§:Dictionary;
      
      public function §[#O§()
      {
         super();
         this.§!"V§ = new §[T§();
      }
      
      public function §4#7§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§5$=§ = null;
         this.§"!?§ = param1;
         §8##§(param1.particles);
         §?"i§(§@#'§).§?t§(param1.dynamicBlocks.materials);
         §?"i§(§@#'§).§?t§(param2.materials);
         §?"i§(§@#'§).§?t§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §0#=§.initBehaviorsDefinition(param1.behaviors);
         }
         §7#i§("{}");
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §4!,§(_loc5_);
            if(_loc4_.indexOf("BLUEPRINT") > -1)
            {
               if(!this.§`!z§)
               {
                  this.§`!z§ = new Dictionary();
               }
               this.§`!z§[_loc4_] = _loc6_;
            }
            else
            {
               §;W§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §4!,§(_loc5_);
            §;W§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §[r§(param1:Object) : Array
      {
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:§3"s§ = null;
         var _loc10_:* = null;
         var _loc11_:Object = null;
         var _loc12_:§5$=§ = null;
         var _loc2_:Array = [];
         var _loc3_:Object = param1.particles;
         for(_loc5_ in _loc3_)
         {
            if((_loc8_ = _loc3_[_loc5_]).definition == undefined)
            {
               _loc8_.definition = _loc5_;
            }
            _loc9_ = §'j§(_loc8_);
            _loc4_ = _loc5_.toLowerCase();
            §6$!§[_loc4_] = _loc9_;
            §?#;§[_loc4_] = _loc9_;
            _loc2_.push(_loc9_);
         }
         if(param1.dynamicBlocks)
         {
            if(param1.dynamicBlocks.materials)
            {
               §?"i§(§@#'§).§?t§(param1.dynamicBlocks.materials);
            }
         }
         if(param1.behaviors)
         {
            §0#=§.initBehaviorsDefinition(param1.behaviors);
         }
         else if(param1.dynamicBlocks && param1.dynamicBlocks.behaviors)
         {
            §0#=§.initBehaviorsDefinition(param1.dynamicBlocks.behaviors);
         }
         if(param1.dynamicBlocks)
         {
            for(_loc10_ in param1.dynamicBlocks.blocks)
            {
               if(this.§`!z§ && this.§`!z§[_loc10_])
               {
                  delete this.§`!z§[_loc10_];
               }
               _loc11_ = param1.dynamicBlocks.blocks[_loc10_];
               _loc11_.definition = _loc11_.definition || _loc10_;
               _loc12_ = §4!,§(_loc11_);
               _loc4_ = _loc10_.toLowerCase();
               §;W§(_loc12_,_loc4_);
               _loc2_.push(_loc12_);
            }
         }
         var _loc6_:Array = this.§ #>§();
         for each(_loc7_ in _loc6_)
         {
            _loc2_.push(_loc7_);
         }
         return _loc2_;
      }
      
      public function § #>§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§`!z§)
         {
            for(_loc2_ in this.§`!z§)
            {
               §;W§(this.§`!z§[_loc2_],_loc2_.toLowerCase());
               _loc1_.push(this.§`!z§[_loc2_]);
            }
            this.§`!z§ = new Dictionary();
         }
         return _loc1_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §5$=§
      {
         var _loc3_:String = param1.material || param1.materialName;
         var _loc4_:§+"L§ = !!_loc3_ ? §&#x§.getSoundResource(_loc3_) : §&#x§.getSoundResource("MISC_SOUNDS");
         return new §`u§(param1,param2,!!_loc3_ ? §@#'§.getMaterial(_loc3_) : null,_loc4_,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§="F§),false,§"#§);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§3"b§(§4W§.Powerup_Damage_Multipliers);
         this.§6#8§(§4W§.Powerup_Velocity_Multipliers);
         this.§9#8§(§4W§.Material_Damage_Factor_Limits);
         this.§!"V§.§5#<§(§4W§.Slingshot_Bonus_Damages_Multipliers);
         this.§!"V§.§]#j§(§4W§.Slingshot_Bird_Materials);
         this.§!"V§.§##U§(§4W§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §3"b§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §%#k§.§""z§.§`Z§(_loc3_);
            }
         }
      }
      
      protected function §6#8§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §%#k§.§""z§.§1!>§(_loc3_);
            }
         }
      }
      
      protected function §9#8§(param1:XMLList) : void
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
                  _loc3_[§-!'§.§,K§(_loc4_.name())] = _loc4_.valueOf();
               }
            }
            §`"!§.§?"R§(_loc2_.@id,_loc3_);
         }
      }
      
      public function §^!3§(param1:String = "") : void
      {
         this.§,!$§(param1);
         this.§;!z§(param1);
      }
      
      private function §;!z§(param1:String) : void
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
         if(this.§"!?§.dynamicBlocks.brandanims && this.§"!?§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§"!?§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§`#6§ = §`#6§(§3#U§.§#$4§.animationManager);
         for(_loc4_ in this.§"!?§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§"!?§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§"!?§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
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
            _loc3_.§#"h§(_loc4_,_loc6_,param1);
         }
      }
      
      private function §,!$§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§"!?§.dynamicBlocks.birds && this.§"!?§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§"!?§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§`#6§ = §`#6§(§3#U§.§#$4§.animationManager);
         for(_loc4_ in this.§"!?§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§"!?§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§"!?§.dynamicBlocks.birds[_loc4_][_loc6_];
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
               _loc3_.§9"@§(_loc4_,_loc5_,param1);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         §@#'§ = new §?"i§();
      }
   }
}
