package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§7#E§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §;"h§ extends §[!k§
   {
       
      
      private var §4!W§:Boolean;
      
      private var §@"c§:Boolean;
      
      private var §##V§:Boolean;
      
      private var § T§:int;
      
      public function §;"h§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §`"F§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §6#L§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §[#6§() : Boolean
      {
         return this.§@"c§;
      }
      
      public function set §6!O§(param1:int) : void
      {
         this.§ T§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function §!#d§(param1:§]!m§) : void
      {
         if(!this.§4!W§ && §1!j§ > §7#E§.§2![§)
         {
            this.§4!W§ = true;
            param1.§!"#§(true);
         }
      }
      
      protected function move(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:int = 1;
         if(this.§@"c§)
         {
            this.§+w§(§7#E§.§1#X§ * param1);
            _loc3_ = -1;
            if(§1!j§ > §7#E§.§8$2§ && !this.§##V§)
            {
               this.§&"W§(param2);
            }
         }
         else
         {
            this.§["r§(param2);
         }
         §@Q§(param1,new Point(1,_loc3_ * §7#E§.§&i§),§7#E§.§]O§);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§!#d§(param2);
         this.§=#$§(param2);
         this.move(param1,param2);
      }
      
      protected function §=#$§(param1:§]!m§) : void
      {
         param1.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§=,§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §["r§(param1:§]!m§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§@"c§ = true;
            _loc2_ = §7#E§.§ !b§;
            _loc3_ = §7#E§.§`!i§;
            _loc4_ = §7#E§.§!$&§;
            param1.§-!D§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            this.§<"l§(param1);
            this.§&]§(param1);
            §]$?§.§;r§.checkForLevelEnd();
         }
      }
      
      protected function §<"l§(param1:§]!m§) : void
      {
         var _loc3_:§"d§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §"d§;
            if(_loc3_ && _loc3_.id == this.§ T§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §&]§(param1:§]!m§) : void
      {
         var _loc3_:§#!m§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §#!m§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§0# § = true;
            }
            _loc2_--;
         }
      }
      
      protected function §&"W§(param1:§]!m§) : void
      {
         var _loc3_:§#!m§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §#!m§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§+#_§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§##V§ = true;
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
      
      override protected function specialPower(param1:§]!m§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §+w§(param1:Number) : void
      {
         var _loc2_:Number = §`"F§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §6#L§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §-"9§() : Boolean
      {
         return this.§##V§;
      }
   }
}
