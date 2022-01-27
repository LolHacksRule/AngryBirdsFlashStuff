package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §+!c§.PowerupFlash;
   import §+!c§.SuperSlingshotRubber;
   import §2"Y§.§"t§;
   import §2"Y§.§=+§;
   import §7P§.§=1§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   import flash.geom.Point;
   
   public class §>f§ extends § !Y§
   {
      
      protected static const §1#S§:uint = 4294049791;
      
      protected static var §""U§:Texture;
      
      private static const §]""§:Number = 2;
      
      private static const §^!<§:Number = -90;
      
      private static const §;"§:Number = 6;
      
      private static const §try §:Number = 4.5;
       
      
      protected var §-"k§:§#"t§;
      
      protected var §!"n§:§#"t§;
      
      protected var § #2§:SuperSlingshotRubber;
      
      protected var §]#H§:Boolean = false;
      
      protected var §'8§:§`"]§;
      
      private var §=!9§:Boolean = false;
      
      private var §'!2§:Boolean = false;
      
      private var §catch§:PowerupFlash;
      
      private var §6"9§:Number;
      
      private var §?=§:Number;
      
      public function §>f§(param1:§#_§, param2:§8!B§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function get §=#`§() : Boolean
      {
         return this.§=!9§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§'!2§ = param1;
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§'!2§)
         {
            return false;
         }
         return super.canStartDragging(param1);
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§=!9§ = false;
         var _loc3_:§`"]§ = null;
         if(§,!?§.length > §72§)
         {
            _loc3_ = §,!?§[§72§];
         }
         if(!_loc3_)
         {
            return;
         }
         if(_loc3_.levelItem.itemName != §=1§.§+"§)
         {
            this.§'8§ = _loc3_;
         }
         super.shootCurrentBird(param1,param2);
      }
      
      override public function useMightyEagle() : §`"]§
      {
         var _loc2_:§`"]§ = null;
         if(§,!?§.length > 0)
         {
            _loc2_ = §,!?§[§72§];
            if(_loc2_.levelItem.itemName != §=1§.§+"§)
            {
               this.§'8§ = _loc2_;
            }
         }
         var _loc1_:§'"3§ = §'"3§(super.useMightyEagle());
         if(this.§]#H§)
         {
            _loc1_.§&"D§ = §0"x§.§!"'§;
            _loc1_.§<z§ = §0"x§.§6`§;
            _loc1_.§#">§();
         }
         return _loc1_;
      }
      
      public function §;"O§() : void
      {
         this.§=!9§ = true;
      }
      
      public function §+#2§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`"]§
      {
         this.§=!9§ = true;
         var _loc5_:§'"3§ = §'"3§(§4§(param1,param2,param3,param4));
         if(this.§]#H§)
         {
            _loc5_.§&"D§ = §0"x§.§!"'§;
            _loc5_.§<z§ = §0"x§.§6`§;
            _loc5_.§#">§();
         }
         _loc5_.§3i§();
         return _loc5_;
      }
      
      public function get §6!8§() : §`"]§
      {
         return this.§'8§;
      }
      
      public function get §0"%§() : §`"]§
      {
         if(§,!?§.length > 0)
         {
            return §,!?§[§72§];
         }
         return this.§6!8§;
      }
      
      public function §#W§() : void
      {
         if(§,!?§.length == 0)
         {
            return;
         }
         §'"3§(§,!?§[§72§]).§#W§();
         this.§@!9§(§8!+§ / §#_§.§8]§ + 30,§=!Z§ / §#_§.§8]§ + 30,0.7);
         §?!r§.§"#_§("thermal_detonator_activate");
      }
      
      public function §@#Y§() : void
      {
         if(§,!?§.length == 0)
         {
            return;
         }
         §'"3§(§,!?§[§72§]).§@#Y§();
         this.§@!9§(§8!+§ / §#_§.§8]§ + 10,§=!Z§ / §#_§.§8]§ - 90,1);
         §?!r§.§"#_§("laser_droid_activate");
      }
      
      override protected function initializeSlingshotObject(param1:§"t§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`"]§
      {
         if(param1 is §=+§)
         {
            return new §'"3§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      public function §?"q§() : void
      {
         this.§2"6§(false);
      }
      
      public function §%"f§() : void
      {
         var _loc3_:§'"3§ = null;
         if(this.§-"k§ || this.§!"n§)
         {
            this.§2"6§(true);
            return;
         }
         §?!r§.§"#_§("light_slingshot");
         var _loc1_:Texture = §2#G§.textureManager.getTexture("SABERSLING_BACK").texture;
         var _loc2_:Texture = §2#G§.textureManager.getTexture("SABERSLING_FRONT").texture;
         this.§-"k§ = new §#"t§(_loc1_);
         this.§!"n§ = new §#"t§(_loc2_);
         this.§-"k§.pivotX = §"#S§.pivotX - 5;
         this.§-"k§.pivotY = §"#S§.pivotY;
         this.§!"n§.pivotX = §-4§.pivotX - 3;
         this.§!"n§.pivotY = §-4§.pivotY + 1;
         this.§ #2§ = new SuperSlingshotRubber();
         this.§2"6§(true);
         for each(_loc3_ in §,!?§)
         {
            _loc3_.§&"D§ = §0"x§.§!"'§;
            _loc3_.§<z§ = §0"x§.§6`§;
            _loc3_.§#">§();
         }
         this.§@!9§(§8!+§ / §#_§.§8]§,§=!Z§ / §#_§.§8]§ + 20,1.5);
      }
      
      private function §@!9§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§catch§ = new PowerupFlash();
         §%G§.addChild(this.§catch§);
         this.§catch§.x = param1;
         this.§catch§.y = param2;
         this.§catch§.scaleX = this.§catch§.scaleY = param3;
      }
      
      protected function §2"6§(param1:Boolean = false) : void
      {
         if(this.§]#H§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§,"F§();
            §]<§.removeChild(§;Y§);
            §]<§.addChild(this.§ #2§);
         }
         else
         {
            §@P§();
         }
         §"!S§ = !!param1 ? Number(§0"x§.§!"2§) : Number(§0"x§.§,b§);
         this.§]#H§ = param1;
         while(§%G§.numChildren > 0)
         {
            §%G§.removeChildAt(0);
         }
         §0!4§ = new Sprite();
         §0!4§.addChild(!!param1 ? this.§-"k§ : §"#S§);
         §0!4§.addChild(§@s§);
         §9"h§ = new Sprite();
         §9"h§.addChild(§]<§);
         §9"h§.addChild(§4I§);
         §9"h§.addChild(!!param1 ? this.§!"n§ : §-4§);
         §%!Q§();
         §["]§ = true;
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§catch§)
         {
            this.§catch§.update(param1);
            if(!this.§catch§.§<"M§)
            {
               §%G§.removeChild(this.§catch§,true);
            }
         }
         if(this.§]#H§ && this.§ #2§ != null)
         {
            this.§ #2§.update(param1);
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§]#H§)
         {
            §?!r§.§"#_§("light_slingshot_fire");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§`"]§ = §,!?§[§72§];
         var _loc3_:Number = §,!8§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§^"+§;
            if(_loc2_ && _loc2_.§&"D§ > 0)
            {
               return _loc2_.§&"D§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      override public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc5_:§`"]§ = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§6"9§ == param1 && this.§?=§ == param2)
         {
            return true;
         }
         if(§,!?§.length > 0)
         {
            _loc5_ = §,!?§[§72§];
            (_loc6_ = new Point(param1 - §9"C§,param2 - §-#;§)).normalize(_loc5_.radius);
            param1 += _loc6_.x;
            param2 += _loc6_.y;
         }
         §&##§ = Math.sqrt((param2 - §-#;§) * (param2 - §-#;§) + (param1 - §9"C§) * (param1 - §9"C§));
         var _loc4_:Number = §&##§;
         if(§>"o§ > §"!S§)
         {
            if(param3)
            {
               _loc7_ = this.§6"9§ - §9"C§;
               _loc8_ = this.§?=§ - §-#;§;
               §&##§ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
               return false;
            }
            §&##§ = §"!S§ / §!#R§;
         }
         this.§6"9§ = param1;
         this.§?=§ = param2;
         §7"1§ = Math.atan2(-(this.§?=§ - §-#;§),this.§6"9§ - §9"C§);
         §7"1§ *= 180 / Math.PI;
         if(!mDragging && _loc5_)
         {
            this.§?=§ = §-#;§ + (_loc5_.radius > §]""§ ? §]""§ : _loc5_.radius);
            §7"1§ = §^!<§;
         }
         if(§?t§)
         {
            _loc9_ = 12;
            _loc10_ = 5;
            _loc11_ = 4;
            _loc12_ = §"!S§ / 2;
            if(§&##§ > _loc12_ && §7"1§ > -90 - _loc9_ + _loc10_ && §7"1§ < -90 + _loc9_ + _loc10_)
            {
               param1 = §9"C§ + _loc12_ * (param1 - §9"C§) / _loc4_;
               param2 = §-#;§ + _loc12_ * (param2 - §-#;§) / _loc4_;
               §&##§ = _loc12_;
               this.§6"9§ = param1;
               this.§?=§ = param2;
            }
            else if(§&##§ > _loc12_ && §7"1§ > -90 - _loc9_ - _loc11_ + _loc10_ && §7"1§ < -90 + _loc9_ + _loc11_ + _loc10_)
            {
               _loc13_ = _loc12_ + (§"!S§ - _loc12_) * (Math.abs(§7"1§ - -90 - _loc10_) - _loc9_) / _loc11_;
               param1 = §9"C§ + _loc13_ * (param1 - §9"C§) / _loc4_;
               param2 = §-#;§ + _loc13_ * (param2 - §-#;§) / _loc4_;
               §&##§ = _loc13_;
               this.§6"9§ = param1;
               this.§?=§ = param2;
            }
         }
         if(§&##§ <= §try §)
         {
            §6"U§ = true;
         }
         else if(§6"U§ && §&##§ >= §;"§)
         {
            playStretchSound();
            §6"U§ = false;
         }
         §["]§ = true;
         return true;
      }
      
      public function §`#5§(param1:Number) : §`"]§
      {
         var _loc2_:§`"]§ = null;
         _loc2_ = §,!?§[§72§];
         if(_loc2_.§<z§ < 1)
         {
            _loc2_.§<z§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §,"F§() : void
      {
         §@P§(§1#S§,§1#S§,true);
      }
      
      override public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §`"]§
      {
         var _loc5_:§`"]§ = this.addSlingshotObject(param1,param2,param3,param4,this.§<!D§());
         this.sortBirds();
         return _loc5_;
      }
      
      override public function sortBirds() : void
      {
         var _loc1_:§`"]§ = null;
         §,!?§.sort(this.§ !6§);
         while(§<v§.numChildren > 0)
         {
            §<v§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < §,!?§.length)
         {
            _loc1_ = §,!?§[_loc2_];
            §<v§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function § !6§(param1:§`"]§, param2:§`"]§) : Number
      {
         if(param1.§""J§ < param2.§""J§)
         {
            return -1;
         }
         if(param1.§""J§ > param2.§""J§)
         {
            return 1;
         }
         return 0;
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §`"]§
      {
         return super.addSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      private function §<!D§() : int
      {
         var _loc2_:§`"]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §,!?§)
         {
            if(_loc2_.§""J§ > _loc1_)
            {
               _loc1_ = _loc2_.§""J§;
            }
         }
         return _loc1_;
      }
      
      public function get §2!z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:§`"]§ = §,!?§[§72§];
         if(_loc2_ is §'"3§)
         {
            if(!§'"3§(_loc2_).§[g§ && !§'"3§(_loc2_).§!#?§)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
   }
}
