package §"§#0
{
   import §!r§.§&$§;
   import §#g§.§11§;
   import §#g§.§["%§;
   import §&"s§.Texture;
   import §`"1§.§=Q§;
   import §`"]§.PowerupFlash;
   import §`"]§.SuperSlingshotRubber;
   import flash.geom.Point;
   import §null §.§>#-§;
   import §use§.§,!u§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §<U§ extends §8!U§
   {
      
      protected static const §@3§:uint = 4294049791;
      
      protected static var §]0§:Texture;
      
      private static const §,!I§:Number = 2;
      
      private static const §]"R§:Number = -90;
      
      private static const §7S§:Number = 6;
      
      private static const §4;§:Number = 4.5;
       
      
      protected var §!"n§:§,!u§;
      
      protected var §4"§:§,!u§;
      
      protected var §`3§:SuperSlingshotRubber;
      
      protected var §]K§:Boolean = false;
      
      protected var §`R§:§1!T§;
      
      private var §@,§:Boolean = false;
      
      private var §?!-§:Boolean = false;
      
      private var §&"1§:PowerupFlash;
      
      private var §+_§:Number;
      
      private var §<d§:Number;
      
      public function §<U§(param1:§;!E§, param2:§>#-§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function get §8c§() : Boolean
      {
         return this.§@,§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§?!-§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§?!-§ = param1;
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§?!-§)
         {
            return false;
         }
         return super.canStartDragging(param1);
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§@,§ = false;
         var _loc3_:§1!T§ = null;
         if(§&"P§.length > §#!A§)
         {
            _loc3_ = §&"P§[§#!A§];
         }
         if(!_loc3_)
         {
            return;
         }
         if(_loc3_.levelItem.itemName != §&$§.§5!L§)
         {
            this.§`R§ = _loc3_;
         }
         super.shootCurrentBird(param1,param2);
      }
      
      override public function useMightyEagle() : §1!T§
      {
         var _loc2_:§1!T§ = null;
         if(§&"P§.length > 0)
         {
            _loc2_ = §&"P§[§#!A§];
            if(_loc2_.levelItem.itemName != §&$§.§5!L§)
            {
               this.§`R§ = _loc2_;
            }
         }
         var _loc1_:§%!_§ = §%!_§(super.useMightyEagle());
         if(this.§]K§)
         {
            _loc1_.§@"7§ = §96§.§]"[§;
            _loc1_.§<!T§ = §96§.§8R§;
            _loc1_.§?U§();
         }
         return _loc1_;
      }
      
      public function §,"b§() : void
      {
         this.§@,§ = true;
      }
      
      public function §2#,§(param1:String, param2:Number, param3:Number, param4:int = -1) : §1!T§
      {
         this.§@,§ = true;
         var _loc5_:§%!_§ = §%!_§(§<"<§(param1,param2,param3,param4));
         if(this.§]K§)
         {
            _loc5_.§@"7§ = §96§.§]"[§;
            _loc5_.§<!T§ = §96§.§8R§;
            _loc5_.§?U§();
         }
         _loc5_.§,"n§();
         return _loc5_;
      }
      
      public function get §@o§() : §1!T§
      {
         return this.§`R§;
      }
      
      public function get §0!"§() : §1!T§
      {
         if(§&"P§.length > 0)
         {
            return §&"P§[§#!A§];
         }
         return this.§@o§;
      }
      
      public function §="p§() : void
      {
         if(§&"P§.length == 0)
         {
            return;
         }
         §%!_§(§&"P§[§#!A§]).§="p§();
         this.§0!`§(§0U§ / §;!E§.§0"?§ + 30,§3"[§ / §;!E§.§0"?§ + 30,0.7);
         §=Q§.§`!A§("thermal_detonator_activate");
      }
      
      public function §2§() : void
      {
         if(§&"P§.length == 0)
         {
            return;
         }
         §%!_§(§&"P§[§#!A§]).§2§();
         this.§0!`§(§0U§ / §;!E§.§0"?§ + 10,§3"[§ / §;!E§.§0"?§ - 90,1);
         §=Q§.§`!A§("laser_droid_activate");
      }
      
      override protected function initializeSlingshotObject(param1:§["%§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1!T§
      {
         if(param1 is §11§)
         {
            return new §%!_§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      public function §[!v§() : void
      {
         this.§'!%§(false);
      }
      
      public function §5!8§() : void
      {
         var _loc3_:§%!_§ = null;
         if(this.§!"n§ || this.§4"§)
         {
            this.§'!%§(true);
            return;
         }
         §=Q§.§`!A§("light_slingshot");
         var _loc1_:Texture = §+!E§.textureManager.getTexture("SABERSLING_BACK").texture;
         var _loc2_:Texture = §+!E§.textureManager.getTexture("SABERSLING_FRONT").texture;
         this.§!"n§ = new §,!u§(_loc1_);
         this.§4"§ = new §,!u§(_loc2_);
         this.§!"n§.pivotX = § each§.pivotX - 5;
         this.§!"n§.pivotY = § each§.pivotY;
         this.§4"§.pivotX = §8T§.pivotX - 3;
         this.§4"§.pivotY = §8T§.pivotY + 1;
         this.§`3§ = new SuperSlingshotRubber();
         this.§'!%§(true);
         for each(_loc3_ in §&"P§)
         {
            _loc3_.§@"7§ = §96§.§]"[§;
            _loc3_.§<!T§ = §96§.§8R§;
            _loc3_.§?U§();
         }
         this.§0!`§(§0U§ / §;!E§.§0"?§,§3"[§ / §;!E§.§0"?§ + 20,1.5);
      }
      
      private function §0!`§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§&"1§ = new PowerupFlash();
         §0v§.addChild(this.§&"1§);
         this.§&"1§.x = param1;
         this.§&"1§.y = param2;
         this.§&"1§.scaleX = this.§&"1§.scaleY = param3;
      }
      
      protected function §'!%§(param1:Boolean = false) : void
      {
         if(this.§]K§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§;!>§();
            §8!O§.removeChild(§1"B§);
            §8!O§.addChild(this.§`3§);
         }
         else
         {
            § `§();
         }
         §`""§ = !!param1 ? Number(§96§.§+a§) : Number(§96§.§>!$§);
         this.§]K§ = param1;
         while(§0v§.numChildren > 0)
         {
            §0v§.removeChildAt(0);
         }
         §"!n§ = new Sprite();
         §"!n§.addChild(!!param1 ? this.§!"n§ : § each§);
         §"!n§.addChild(§ L§);
         §9!W§ = new Sprite();
         §9!W§.addChild(§8!O§);
         §9!W§.addChild(§""1§);
         §9!W§.addChild(!!param1 ? this.§4"§ : §8T§);
         §,"1§();
         §<"e§ = true;
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§&"1§)
         {
            this.§&"1§.update(param1);
            if(!this.§&"1§.§["z§)
            {
               §0v§.removeChild(this.§&"1§,true);
            }
         }
         if(this.§]K§ && this.§`3§ != null)
         {
            this.§`3§.update(param1);
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§]K§)
         {
            §=Q§.§`!A§("light_slingshot_fire");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§1!T§ = §&"P§[§#!A§];
         var _loc3_:Number = §`"'§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§5T§;
            if(_loc2_ && _loc2_.§@"7§ > 0)
            {
               return _loc2_.§@"7§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      override public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc5_:§1!T§ = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§+_§ == param1 && this.§<d§ == param2)
         {
            return true;
         }
         if(§&"P§.length > 0)
         {
            _loc5_ = §&"P§[§#!A§];
            (_loc6_ = new Point(param1 - §`u§,param2 - §>s§)).normalize(_loc5_.radius);
            param1 += _loc6_.x;
            param2 += _loc6_.y;
         }
         §'"]§ = Math.sqrt((param2 - §>s§) * (param2 - §>s§) + (param1 - §`u§) * (param1 - §`u§));
         var _loc4_:Number = §'"]§;
         if(§@Y§ > §`""§)
         {
            if(param3)
            {
               _loc7_ = this.§+_§ - §`u§;
               _loc8_ = this.§<d§ - §>s§;
               §'"]§ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
               return false;
            }
            §'"]§ = §`""§ / §8=§;
         }
         this.§+_§ = param1;
         this.§<d§ = param2;
         §^#6§ = Math.atan2(-(this.§<d§ - §>s§),this.§+_§ - §`u§);
         §^#6§ *= 180 / Math.PI;
         if(!mDragging && _loc5_)
         {
            this.§<d§ = §>s§ + (_loc5_.radius > §,!I§ ? §,!I§ : _loc5_.radius);
            §^#6§ = §]"R§;
         }
         if(§0"`§)
         {
            _loc9_ = 12;
            _loc10_ = 5;
            _loc11_ = 4;
            _loc12_ = §`""§ / 2;
            if(§'"]§ > _loc12_ && §^#6§ > -90 - _loc9_ + _loc10_ && §^#6§ < -90 + _loc9_ + _loc10_)
            {
               param1 = §`u§ + _loc12_ * (param1 - §`u§) / _loc4_;
               param2 = §>s§ + _loc12_ * (param2 - §>s§) / _loc4_;
               §'"]§ = _loc12_;
               this.§+_§ = param1;
               this.§<d§ = param2;
            }
            else if(§'"]§ > _loc12_ && §^#6§ > -90 - _loc9_ - _loc11_ + _loc10_ && §^#6§ < -90 + _loc9_ + _loc11_ + _loc10_)
            {
               _loc13_ = _loc12_ + (§`""§ - _loc12_) * (Math.abs(§^#6§ - -90 - _loc10_) - _loc9_) / _loc11_;
               param1 = §`u§ + _loc13_ * (param1 - §`u§) / _loc4_;
               param2 = §>s§ + _loc13_ * (param2 - §>s§) / _loc4_;
               §'"]§ = _loc13_;
               this.§+_§ = param1;
               this.§<d§ = param2;
            }
         }
         if(§'"]§ <= §4;§)
         {
            §>!M§ = true;
         }
         else if(§>!M§ && §'"]§ >= §7S§)
         {
            playStretchSound();
            §>!M§ = false;
         }
         §<"e§ = true;
         return true;
      }
      
      public function §`!O§(param1:Number) : §1!T§
      {
         var _loc2_:§1!T§ = null;
         _loc2_ = §&"P§[§#!A§];
         if(_loc2_.§<!T§ < 1)
         {
            _loc2_.§<!T§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §;!>§() : void
      {
         § `§(§@3§,§@3§,true);
      }
      
      override public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §1!T§
      {
         var _loc5_:§1!T§ = this.addSlingshotObject(param1,param2,param3,param4,this.§+z§());
         this.sortBirds();
         return _loc5_;
      }
      
      override public function sortBirds() : void
      {
         var _loc1_:§1!T§ = null;
         §&"P§.sort(this.§>!'§);
         while(§6Q§.numChildren > 0)
         {
            §6Q§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < §&"P§.length)
         {
            _loc1_ = §&"P§[_loc2_];
            §6Q§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §>!'§(param1:§1!T§, param2:§1!T§) : Number
      {
         if(param1.§+v§ < param2.§+v§)
         {
            return -1;
         }
         if(param1.§+v§ > param2.§+v§)
         {
            return 1;
         }
         return 0;
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §1!T§
      {
         return super.addSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      private function §+z§() : int
      {
         var _loc2_:§1!T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §&"P§)
         {
            if(_loc2_.§+v§ > _loc1_)
            {
               _loc1_ = _loc2_.§+v§;
            }
         }
         return _loc1_;
      }
      
      public function get §'"%§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:§1!T§ = §&"P§[§#!A§];
         if(_loc2_ is §%!_§)
         {
            if(!§%!_§(_loc2_).§8'§ && !§%!_§(_loc2_).§]P§)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
   }
}
