package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§1!$§;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.geom.Point;
   
   public class §?c§ extends §"7§
   {
       
      
      private var §`"+§:Boolean;
      
      private var §5!j§:Boolean;
      
      private var §[#M§:Boolean;
      
      private var §'T§:int;
      
      public function §?c§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §#Z§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §>!M§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §;D§() : Boolean
      {
         return this.§5!j§;
      }
      
      public function set §;"-§(param1:int) : void
      {
         this.§'T§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §]#P§(param1:§-!S§) : void
      {
         if(!this.§`"+§ && §`"b§ > §1!$§.§-"u§)
         {
            this.§`"+§ = true;
            param1.§+l§(true);
         }
      }
      
      protected function move(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:int = 1;
         if(this.§5!j§)
         {
            this.§@#5§(§1!$§.§#!E§ * param1);
            _loc3_ = -1;
            if(§`"b§ > §1!$§.§,#H§ && !this.§[#M§)
            {
               this.§<!9§(param2);
            }
         }
         else
         {
            this.§;]§(param2);
         }
         §[!'§(param1,new Point(1,_loc3_ * §1!$§.§]!!§),§1!$§.§8#?§);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§]#P§(param2);
         this.§'"Y§(param2);
         this.move(param1,param2);
      }
      
      protected function §'"Y§(param1:§-!S§) : void
      {
         param1.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§2"^§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §;]§(param1:§-!S§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§5!j§ = true;
            _loc2_ = §1!$§.§6B§;
            _loc3_ = §1!$§.§2"G§;
            _loc4_ = §1!$§.§#"?§;
            param1.§#2§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            this.§+;§(param1);
            this.§2#;§(param1);
            §!#A§.§=![§.checkForLevelEnd();
         }
      }
      
      protected function §+;§(param1:§-!S§) : void
      {
         var _loc3_:§!"6§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §!"6§;
            if(_loc3_ && _loc3_.id == this.§'T§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §2#;§(param1:§-!S§) : void
      {
         var _loc3_:§76§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §76§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§!U§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §<!9§(param1:§-!S§) : void
      {
         var _loc3_:§76§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §76§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§##6§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§[#M§ = true;
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
      
      override protected function specialPower(param1:§-!S§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §@#5§(param1:Number) : void
      {
         var _loc2_:Number = §#Z§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §>!M§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §9#@§() : Boolean
      {
         return this.§[#M§;
      }
   }
}
