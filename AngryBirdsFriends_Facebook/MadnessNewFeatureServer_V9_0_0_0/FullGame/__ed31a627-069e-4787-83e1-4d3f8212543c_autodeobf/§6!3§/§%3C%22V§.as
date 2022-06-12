package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §>2§.§!!W§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §<"V§ extends §,s§
   {
       
      
      private var §+8§:Boolean;
      
      private var §3!A§:Boolean;
      
      private var §["w§:Boolean;
      
      private var §6#D§:int;
      
      public function §<"V§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §=#F§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §+!J§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §=!d§() : Boolean
      {
         return this.§3!A§;
      }
      
      public function set §@"'§(param1:int) : void
      {
         this.§6#D§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      protected function §^#C§(param1:§8$B§) : void
      {
         if(!this.§+8§ && §7$;§ > §!!W§.§1"7§)
         {
            this.§+8§ = true;
            param1.§&$8§(true);
         }
      }
      
      protected function move(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:int = 1;
         if(this.§3!A§)
         {
            this.§9"o§(§!!W§.§ $>§ * param1);
            _loc3_ = -1;
            if(§7$;§ > §!!W§.§1"=§ && !this.§["w§)
            {
               this.§8x§(param2);
            }
         }
         else
         {
            this.§0!m§(param2);
         }
         §#$E§(param1,new Point(1,_loc3_ * §!!W§.§[j§),§!!W§.§1A§);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§^#C§(param2);
         this.§6K§(param2);
         this.move(param1,param2);
      }
      
      protected function §6K§(param1:§8$B§) : void
      {
         param1.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x - 3 + Math.random() * (3 * 2),getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§6!9§.getParticleMaterialFromEngineMaterial(itemName),0,0,1,0,4);
      }
      
      private function §0!m§(param1:§8$B§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(getBody().GetPosition().y >= -5.5)
         {
            this.§3!A§ = true;
            _loc2_ = §!!W§.§1"C§;
            _loc3_ = §!!W§.§5"L§;
            _loc4_ = §!!W§.§;# §;
            param1.§&"!§(true,_loc2_,_loc3_,_loc4_);
            param1.destroyAllJoints();
            this.§7d§(param1);
            this.§6!,§(param1);
            §7n§.§ "'§.checkForLevelEnd();
         }
      }
      
      protected function §7d§(param1:§8$B§) : void
      {
         var _loc3_:§5K§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §5K§;
            if(_loc3_ && _loc3_.id == this.§6#D§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §6!,§(param1:§8$B§) : void
      {
         var _loc3_:§>#p§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §>#p§;
            if(_loc3_)
            {
               _loc3_.getBody().SetAwake(true);
               _loc3_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§+$-§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §8x§(param1:§8$B§) : void
      {
         var _loc3_:§>#p§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §>#p§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.§6"k§ * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§["w§ = true;
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
      
      override protected function specialPower(param1:§8$B§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §9"o§(param1:Number) : void
      {
         var _loc2_:Number = §=#F§(getBody().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §+!J§(_loc2_);
         getBody().SetAngle(_loc2_);
      }
      
      public function get §>6§() : Boolean
      {
         return this.§["w§;
      }
   }
}
