package §-!!§
{
   import § !D§.§;#W§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §`#9§ extends §5"W§
   {
       
      
      private var §1$9§:Boolean;
      
      private var §5!D§:Boolean;
      
      private var §9!h§:Boolean;
      
      private var §5$@§:int;
      
      public function §`#9§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §3#;§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §&!#§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §0!@§() : Boolean
      {
         return this.§5!D§;
      }
      
      public function set §[#k§(param1:int) : void
      {
         this.§5$@§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function §##0§(param1:§ #'§) : void
      {
         if(!this.§1$9§ && §>"&§ > §;#W§.§"#3§)
         {
            this.§1$9§ = true;
            param1.§5#[§(true);
         }
      }
      
      protected function move(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:int = 1;
         if(this.§5!D§)
         {
            this.§!!k§(§;#W§.§2!G§ * param1);
            _loc3_ = -1;
            if(§>"&§ > §;#W§.§!#N§ && !this.§9!h§)
            {
               this.§7"§(param2);
            }
         }
         else
         {
            this.§8d§(param2);
         }
         §]V§(param1,new Point(1,_loc3_ * §;#W§.§6$9§),§;#W§.§"1§);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§##0§(param2);
         this.§&!_§(param2);
         this.move(param1,param2);
      }
      
      protected function §&!_§(param1:§ #'§) : void
      {
         param1.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§'Y§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §8d§(param1:§ #'§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§5!D§ = true;
            _loc2_ = §;#W§.§'!g§;
            _loc3_ = §;#W§.§4",§;
            _loc4_ = §;#W§.§ !=§;
            param1.§?"G§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            this.§",§(param1);
            this.§;!W§(param1);
            §%"T§.§+"M§.checkForLevelEnd();
         }
      }
      
      protected function §",§(param1:§ #'§) : void
      {
         var _loc3_:§9"<§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §9"<§;
            if(_loc3_ && _loc3_.id == this.§5$@§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §;!W§(param1:§ #'§) : void
      {
         var _loc3_:§1$<§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §1$<§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§-"a§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §7"§(param1:§ #'§) : void
      {
         var _loc3_:§1$<§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §1$<§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§1#H§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§9!h§ = true;
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
      
      override protected function specialPower(param1:§ #'§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §!!k§(param1:Number) : void
      {
         var _loc2_:Number = §3#;§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §&!#§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §9!r§() : Boolean
      {
         return this.§9!h§;
      }
   }
}
