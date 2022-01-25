package §%Z§
{
   import § 2§.§3t§;
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§2!_§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   import flash.geom.Point;
   
   public class §2h§ extends §=!V§
   {
       
      
      private var §&"-§:Boolean;
      
      private var §<p§:Boolean;
      
      private var §@!T§:Boolean;
      
      private var §>A§:int;
      
      public function §2h§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §%!5§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §3!O§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §0H§() : Boolean
      {
         return this.§<p§;
      }
      
      public function set §%F§(param1:int) : void
      {
         this.§>A§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §;J§(param1:§8!m§) : void
      {
         if(!this.§&"-§ && §54§ > §3t§.§;T§)
         {
            this.§&"-§ = true;
            param1.§["'§(true);
         }
      }
      
      protected function move(param1:Number, param2:§8!m§) : void
      {
         var _loc3_:int = 1;
         if(this.§<p§)
         {
            this.§,!h§(§3t§.§>2§ * param1);
            _loc3_ = -1;
            if(§54§ > §3t§.§;!%§ && !this.§@!T§)
            {
               this.§="'§(param2);
            }
         }
         else
         {
            this.§8]§(param2);
         }
         §!!v§(param1,new Point(1,_loc3_ * §3t§.§]!,§),§3t§.§'"3§);
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§;J§(param2);
         this.§+"!§(param2);
         this.move(param1,param2);
      }
      
      protected function §+"!§(param1:§8!m§) : void
      {
         param1.§+<§(§'!P§.§^3§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x - 3 + Math.random() * (3 * 2),§-!N§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§'!P§.§&%§(itemName),0,0,1,0,4);
      }
      
      private function §8]§(param1:§8!m§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§-!N§().GetPosition().y >= -5.5)
         {
            this.§<p§ = true;
            _loc2_ = §3t§.§@!s§;
            _loc3_ = §3t§.§@r§;
            _loc4_ = §3t§.§2S§;
            param1.§<!;§(true,_loc2_,_loc3_,_loc4_);
            param1.§18§();
            §9!9§(§2!_§.§!!I§);
            this.§1Y§(param1);
            this.§-"#§(param1);
         }
      }
      
      protected function §1Y§(param1:§8!m§) : void
      {
         var _loc3_:§'!M§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §'!M§;
            if(_loc3_ && _loc3_.id == this.§>A§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §-"#§(param1:§8!m§) : void
      {
         var _loc3_:§+!!§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §+!!§;
            if(_loc3_)
            {
               _loc3_.§-!N§().SetAwake(true);
               _loc3_.§-!N§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§"!t§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §="'§(param1:§8!m§) : void
      {
         var _loc3_:§+!!§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §+!!§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§@!T§ = true;
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
      
      override protected function specialPower(param1:§8!m§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §,!h§(param1:Number) : void
      {
         var _loc2_:Number = §%!5§(§-!N§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §3!O§(_loc2_);
         §-!N§().SetAngle(_loc2_);
      }
      
      public function get §-!#§() : Boolean
      {
         return this.§@!T§;
      }
   }
}
