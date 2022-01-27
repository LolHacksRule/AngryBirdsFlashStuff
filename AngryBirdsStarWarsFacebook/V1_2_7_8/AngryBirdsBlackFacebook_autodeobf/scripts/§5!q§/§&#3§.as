package §5!q§
{
   import §,"v§.§@§;
   import §,#+§.§<U§;
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §6"R§.§7#"§;
   import §7""§.PowerupFlash;
   import §7""§.SuperSlingshotRubber;
   import §<"L§.Texture;
   import §>P§.§&"§;
   import §>P§.§=!,§;
   import flash.geom.Point;
   
   public class §&#3§ extends §=&§
   {
      
      protected static const §`"d§:uint = 4294049791;
      
      protected static var §#,§:Texture;
      
      private static const §+n§:Number = 2;
      
      private static const §1!h§:Number = -90;
      
      private static const §<!;§:Number = 6;
      
      private static const §`!3§:Number = 4.5;
       
      
      protected var §=x§:§-i§;
      
      protected var §4!A§:§-i§;
      
      protected var §'g§:SuperSlingshotRubber;
      
      protected var §,e§:Boolean = false;
      
      protected var §-[§:§+e§;
      
      private var §^"x§:Boolean = false;
      
      private var §`0§:Boolean = false;
      
      private var §9"[§:PowerupFlash;
      
      private var §8!c§:Number;
      
      private var §9!0§:Number;
      
      public function §&#3§(param1:§3"X§, param2:§<U§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function get §=!N§() : Boolean
      {
         return this.§^"x§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§`0§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§`0§ = param1;
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§`0§)
         {
            return false;
         }
         return super.canStartDragging(param1);
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.§^"x§ = false;
         var _loc3_:§+e§ = null;
         if(§1#!§.length > §%r§)
         {
            _loc3_ = §1#!§[§%r§];
         }
         if(!_loc3_)
         {
            return;
         }
         if(_loc3_.levelItem.itemName != §7#"§.§^!3§)
         {
            this.§-[§ = _loc3_;
         }
         super.shootCurrentBird(param1,param2);
      }
      
      override public function useMightyEagle() : §+e§
      {
         var _loc2_:§+e§ = null;
         if(§1#!§.length > 0)
         {
            _loc2_ = §1#!§[§%r§];
            if(_loc2_.levelItem.itemName != §7#"§.§^!3§)
            {
               this.§-[§ = _loc2_;
            }
         }
         var _loc1_:§[E§ = §[E§(super.useMightyEagle());
         if(this.§,e§)
         {
            _loc1_.§=!8§ = §<"n§.§^!k§;
            _loc1_.§,"a§ = §<"n§.§2!i§;
            _loc1_.§;"2§();
         }
         return _loc1_;
      }
      
      public function §1#%§() : void
      {
         this.§^"x§ = true;
      }
      
      public function §0"F§(param1:String, param2:Number, param3:Number, param4:int = -1) : §+e§
      {
         this.§^"x§ = true;
         var _loc5_:§[E§ = §[E§(§7y§(param1,param2,param3,param4));
         if(this.§,e§)
         {
            _loc5_.§=!8§ = §<"n§.§^!k§;
            _loc5_.§,"a§ = §<"n§.§2!i§;
            _loc5_.§;"2§();
         }
         _loc5_.§4!6§();
         return _loc5_;
      }
      
      public function get §8!m§() : §+e§
      {
         return this.§-[§;
      }
      
      public function get §""H§() : §+e§
      {
         if(§1#!§.length > 0)
         {
            return §1#!§[§%r§];
         }
         return this.§8!m§;
      }
      
      public function §7#%§() : void
      {
         if(§1#!§.length == 0)
         {
            return;
         }
         §[E§(§1#!§[§%r§]).§7#%§();
         this.§>! §(§]!_§ / §3"X§.§;"l§ + 30,§#j§ / §3"X§.§;"l§ + 30,0.7);
         §@§.§=Y§("thermal_detonator_activate");
      }
      
      public function §^H§() : void
      {
         if(§1#!§.length == 0)
         {
            return;
         }
         §[E§(§1#!§[§%r§]).§^H§();
         this.§>! §(§]!_§ / §3"X§.§;"l§ + 10,§#j§ / §3"X§.§;"l§ - 90,1);
         §@§.§=Y§("laser_droid_activate");
      }
      
      override protected function initializeSlingshotObject(param1:§=!,§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §+e§
      {
         if(param1 is §&"§)
         {
            return new §[E§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      public function §""5§() : void
      {
         this.§ "G§(false);
      }
      
      public function §5"1§() : void
      {
         var _loc3_:§[E§ = null;
         if(this.§=x§ || this.§4!A§)
         {
            this.§ "G§(true);
            return;
         }
         §@§.§=Y§("light_slingshot");
         var _loc1_:Texture = §]""§.textureManager.getTexture("SABERSLING_BACK").texture;
         var _loc2_:Texture = §]""§.textureManager.getTexture("SABERSLING_FRONT").texture;
         this.§=x§ = new §-i§(_loc1_);
         this.§4!A§ = new §-i§(_loc2_);
         this.§=x§.pivotX = §6!I§.pivotX - 5;
         this.§=x§.pivotY = §6!I§.pivotY;
         this.§4!A§.pivotX = §-!?§.pivotX - 3;
         this.§4!A§.pivotY = §-!?§.pivotY + 1;
         this.§'g§ = new SuperSlingshotRubber();
         this.§ "G§(true);
         for each(_loc3_ in §1#!§)
         {
            _loc3_.§=!8§ = §<"n§.§^!k§;
            _loc3_.§,"a§ = §<"n§.§2!i§;
            _loc3_.§;"2§();
         }
         this.§>! §(§]!_§ / §3"X§.§;"l§,§#j§ / §3"X§.§;"l§ + 20,1.5);
      }
      
      private function §>! §(param1:Number, param2:Number, param3:Number) : void
      {
         this.§9"[§ = new PowerupFlash();
         § "6§.addChild(this.§9"[§);
         this.§9"[§.x = param1;
         this.§9"[§.y = param2;
         this.§9"[§.scaleX = this.§9"[§.scaleY = param3;
      }
      
      protected function § "G§(param1:Boolean = false) : void
      {
         if(this.§,e§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§-!g§();
            §`"F§.removeChild(§,"x§);
            §`"F§.addChild(this.§'g§);
         }
         else
         {
            §'q§();
         }
         §'!J§ = !!param1 ? Number(§<"n§.§?_§) : Number(§<"n§.§%!!§);
         this.§,e§ = param1;
         while(§ "6§.numChildren > 0)
         {
            § "6§.removeChildAt(0);
         }
         §9F§ = new Sprite();
         §9F§.addChild(!!param1 ? this.§=x§ : §6!I§);
         §9F§.addChild(§5!Q§);
         §6"b§ = new Sprite();
         §6"b§.addChild(§`"F§);
         §6"b§.addChild(§""0§);
         §6"b§.addChild(!!param1 ? this.§4!A§ : §-!?§);
         §0!U§();
         §1"S§ = true;
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§9"[§)
         {
            this.§9"[§.update(param1);
            if(!this.§9"[§.§^"h§)
            {
               § "6§.removeChild(this.§9"[§,true);
            }
         }
         if(this.§,e§ && this.§'g§ != null)
         {
            this.§'g§.update(param1);
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§,e§)
         {
            §@§.§=Y§("light_slingshot_fire");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§+e§ = §1#!§[§%r§];
         var _loc3_:Number = §6!+§();
         if(_loc2_)
         {
            _loc1_ = _loc2_.§,!§;
            if(_loc2_ && _loc2_.§=!8§ > 0)
            {
               return _loc2_.§=!8§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      override public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc5_:§+e§ = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§8!c§ == param1 && this.§9!0§ == param2)
         {
            return true;
         }
         if(§1#!§.length > 0)
         {
            _loc5_ = §1#!§[§%r§];
            (_loc6_ = new Point(param1 - §4"`§,param2 - §0"W§)).normalize(_loc5_.radius);
            param1 += _loc6_.x;
            param2 += _loc6_.y;
         }
         §>#3§ = Math.sqrt((param2 - §0"W§) * (param2 - §0"W§) + (param1 - §4"`§) * (param1 - §4"`§));
         var _loc4_:Number = §>#3§;
         if(§!9§ > §'!J§)
         {
            if(param3)
            {
               _loc7_ = this.§8!c§ - §4"`§;
               _loc8_ = this.§9!0§ - §0"W§;
               §>#3§ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
               return false;
            }
            §>#3§ = §'!J§ / §#u§;
         }
         this.§8!c§ = param1;
         this.§9!0§ = param2;
         §<P§ = Math.atan2(-(this.§9!0§ - §0"W§),this.§8!c§ - §4"`§);
         §<P§ *= 180 / Math.PI;
         if(!mDragging && _loc5_)
         {
            this.§9!0§ = §0"W§ + (_loc5_.radius > §+n§ ? §+n§ : _loc5_.radius);
            §<P§ = §1!h§;
         }
         if(§?;§)
         {
            _loc9_ = 12;
            _loc10_ = 5;
            _loc11_ = 4;
            _loc12_ = §'!J§ / 2;
            if(§>#3§ > _loc12_ && §<P§ > -90 - _loc9_ + _loc10_ && §<P§ < -90 + _loc9_ + _loc10_)
            {
               param1 = §4"`§ + _loc12_ * (param1 - §4"`§) / _loc4_;
               param2 = §0"W§ + _loc12_ * (param2 - §0"W§) / _loc4_;
               §>#3§ = _loc12_;
               this.§8!c§ = param1;
               this.§9!0§ = param2;
            }
            else if(§>#3§ > _loc12_ && §<P§ > -90 - _loc9_ - _loc11_ + _loc10_ && §<P§ < -90 + _loc9_ + _loc11_ + _loc10_)
            {
               _loc13_ = _loc12_ + (§'!J§ - _loc12_) * (Math.abs(§<P§ - -90 - _loc10_) - _loc9_) / _loc11_;
               param1 = §4"`§ + _loc13_ * (param1 - §4"`§) / _loc4_;
               param2 = §0"W§ + _loc13_ * (param2 - §0"W§) / _loc4_;
               §>#3§ = _loc13_;
               this.§8!c§ = param1;
               this.§9!0§ = param2;
            }
         }
         if(§>#3§ <= §`!3§)
         {
            §""4§ = true;
         }
         else if(§""4§ && §>#3§ >= §<!;§)
         {
            playStretchSound();
            §""4§ = false;
         }
         §1"S§ = true;
         return true;
      }
      
      public function §finally§(param1:Number) : §+e§
      {
         var _loc2_:§+e§ = null;
         _loc2_ = §1#!§[§%r§];
         if(_loc2_.§,"a§ < 1)
         {
            _loc2_.§,"a§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §-!g§() : void
      {
         §'q§(§`"d§,§`"d§,true);
      }
      
      override public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §+e§
      {
         var _loc5_:§+e§ = this.addSlingshotObject(param1,param2,param3,param4,this.§`z§());
         this.sortBirds();
         return _loc5_;
      }
      
      override public function sortBirds() : void
      {
         var _loc1_:§+e§ = null;
         §1#!§.sort(this.§6"O§);
         while(§4!J§.numChildren > 0)
         {
            §4!J§.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < §1#!§.length)
         {
            _loc1_ = §1#!§[_loc2_];
            §4!J§.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function §6"O§(param1:§+e§, param2:§+e§) : Number
      {
         if(param1.§8"=§ < param2.§8"=§)
         {
            return -1;
         }
         if(param1.§8"=§ > param2.§8"=§)
         {
            return 1;
         }
         return 0;
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §+e§
      {
         return super.addSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      private function §`z§() : int
      {
         var _loc2_:§+e§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in §1#!§)
         {
            if(_loc2_.§8"=§ > _loc1_)
            {
               _loc1_ = _loc2_.§8"=§;
            }
         }
         return _loc1_;
      }
      
      public function get §8"N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:§+e§ = §1#!§[§%r§];
         if(_loc2_ is §[E§)
         {
            if(!§[E§(_loc2_).§ &§ && !§[E§(_loc2_).§!"C§)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
   }
}
