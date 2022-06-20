package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§&$0§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §]#m§ extends §[# §
   {
       
      
      private var §;!f§:Boolean;
      
      private var §5#4§:Boolean;
      
      private var § x§:Boolean;
      
      private var §;Y§:int;
      
      public function §]#m§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §#$=§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §^#$§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §7!F§() : Boolean
      {
         return this.§5#4§;
      }
      
      public function set §3!_§(param1:int) : void
      {
         this.§;Y§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function §="1§(param1:§>"T§) : void
      {
         if(!this.§;!f§ && §<K§ > §&$0§.§;#%§)
         {
            this.§;!f§ = true;
            param1.§9n§(true);
         }
      }
      
      protected function move(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:int = 1;
         if(this.§5#4§)
         {
            this.§;#'§(§&$0§.§<#0§ * param1);
            _loc3_ = -1;
            if(§<K§ > §&$0§.§"!b§ && !this.§ x§)
            {
               this.§]#0§(param2);
            }
         }
         else
         {
            this.§2"Y§(param2);
         }
         §32§(param1,new Point(1,_loc3_ * §&$0§.§5e§),§&$0§.§-# §);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§="1§(param2);
         this.§=#D§(param2);
         this.move(param1,param2);
      }
      
      protected function §=#D§(param1:§>"T§) : void
      {
         param1.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§`#I§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §2"Y§(param1:§>"T§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§5#4§ = true;
            _loc2_ = §&$0§.§<#Z§;
            _loc3_ = §&$0§.§8"n§;
            _loc4_ = §&$0§.§`4§;
            param1.§7"f§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            this.§-#E§(param1);
            this.§8!A§(param1);
            §+!p§.§-#W§.checkForLevelEnd();
         }
      }
      
      protected function §-#E§(param1:§>"T§) : void
      {
         var _loc3_:§ var§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as § var§;
            if(_loc3_ && _loc3_.id == this.§;Y§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §8!A§(param1:§>"T§) : void
      {
         var _loc3_:§&"e§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §&"e§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§`"Q§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §]#0§(param1:§>"T§) : void
      {
         var _loc3_:§&"e§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §&"e§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§,D§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§ x§ = true;
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
      
      override protected function specialPower(param1:§>"T§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §;#'§(param1:Number) : void
      {
         var _loc2_:Number = §#$=§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §^#$§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §@#j§() : Boolean
      {
         return this.§ x§;
      }
   }
}
