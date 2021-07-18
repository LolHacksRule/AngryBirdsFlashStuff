package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§;!p§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §8"i§ extends §-k§
   {
       
      
      private var §`$2§:Boolean;
      
      private var §[v§:Boolean;
      
      private var §+#R§:Boolean;
      
      private var §3!6§:int;
      
      public function §8"i§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §3#+§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §?!3§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §!#[§() : Boolean
      {
         return this.§[v§;
      }
      
      public function set §5!-§(param1:int) : void
      {
         this.§3!6§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §<!!§(param1:§7!O§) : void
      {
         if(!this.§`$2§ && §"4§ > §;!p§.§]^§)
         {
            this.§`$2§ = true;
            param1.§4"q§(true);
         }
      }
      
      protected function move(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:int = 1;
         if(this.§[v§)
         {
            this.§,C§(§;!p§.§9,§ * param1);
            _loc3_ = -1;
            if(§"4§ > §;!p§.§#"A§ && !this.§+#R§)
            {
               this.§<#v§(param2);
            }
         }
         else
         {
            this.§6#Q§(param2);
         }
         §#$9§(param1,new Point(1,_loc3_ * §;!p§.§0"G§),§;!p§.§<#f§);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§<!!§(param2);
         this.§7"t§(param2);
         this.move(param1,param2);
      }
      
      protected function §7"t§(param1:§7!O§) : void
      {
         param1.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§=$4§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §6#Q§(param1:§7!O§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§[v§ = true;
            _loc2_ = §;!p§.§"!y§;
            _loc3_ = §;!p§.§2!;§;
            _loc4_ = §;!p§.§7!8§;
            param1.§ !A§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            §&!N§(§0!y§.§5#u§);
            this.§'##§(param1);
            this.§1"O§(param1);
            §>"$§.§#0§.checkForLevelEnd();
         }
      }
      
      protected function §'##§(param1:§7!O§) : void
      {
         var _loc3_:§4!d§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §4!d§;
            if(_loc3_ && _loc3_.id == this.§3!6§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §1"O§(param1:§7!O§) : void
      {
         var _loc3_:§3a§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §3a§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§%"Q§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §<#v§(param1:§7!O§) : void
      {
         var _loc3_:§3a§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §3a§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§2!w§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§+#R§ = true;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override protected function fly() : void
      {
      }
      
      override protected function specialPower(param1:§7!O§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §,C§(param1:Number) : void
      {
         var _loc2_:Number = §3#+§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §?!3§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §["O§() : Boolean
      {
         return this.§+#R§;
      }
   }
}
