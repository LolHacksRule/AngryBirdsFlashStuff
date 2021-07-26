package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@0§.§1§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §6"6§ extends §?$%§
   {
       
      
      private var §9!_§:Boolean;
      
      private var §'!P§:Boolean;
      
      private var §""u§:Boolean;
      
      private var §="Y§:int;
      
      public function §6"6§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §^#A§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §"#f§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §,!x§() : Boolean
      {
         return this.§'!P§;
      }
      
      public function set §=!+§(param1:int) : void
      {
         this.§="Y§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §^"]§(param1:§&#V§) : void
      {
         if(!this.§9!_§ && §8G§ > §1#7§.§!!V§)
         {
            this.§9!_§ = true;
            param1.§6$6§(true);
         }
      }
      
      protected function move(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:int = 1;
         if(this.§'!P§)
         {
            this.§7#&§(§1#7§.§4",§ * param1);
            _loc3_ = -1;
            if(§8G§ > §1#7§.§6i§ && !this.§""u§)
            {
               this.§0#J§(param2);
            }
         }
         else
         {
            this.§7o§(param2);
         }
         §@K§(param1,new Point(1,_loc3_ * §1#7§.§"!U§),§1#7§.§7"d§);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§^"]§(param2);
         this.§&#8§(param2);
         this.move(param1,param2);
      }
      
      protected function §&#8§(param1:§&#V§) : void
      {
         param1.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§@>§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §7o§(param1:§&#V§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§'!P§ = true;
            _loc2_ = §1#7§.§+#f§;
            _loc3_ = §1#7§.§ !X§;
            _loc4_ = §1#7§.§#3§;
            param1.§""x§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            this.§>!^§(param1);
            this.§%#%§(param1);
            §3#U§.§8I§.checkForLevelEnd();
         }
      }
      
      protected function §>!^§(param1:§&#V§) : void
      {
         var _loc3_:§%$'§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §%$'§;
            if(_loc3_ && _loc3_.id == this.§="Y§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §%#%§(param1:§&#V§) : void
      {
         var _loc3_:§6!H§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §6!H§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§`c§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §0#J§(param1:§&#V§) : void
      {
         var _loc3_:§6!H§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §6!H§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§""5§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§""u§ = true;
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
      
      override protected function specialPower(param1:§&#V§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §7#&§(param1:Number) : void
      {
         var _loc2_:Number = §^#A§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §"#f§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §9!z§() : Boolean
      {
         return this.§""u§;
      }
   }
}
