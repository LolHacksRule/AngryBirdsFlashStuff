package §]!q§
{
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §0I§.§1!N§;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§3!Y§;
   import §5!7§.§7!R§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   import flash.geom.Point;
   
   public class §'!;§ extends §,6§
   {
       
      
      private var §^!-§:Boolean;
      
      private var §+V§:Boolean;
      
      private var §7,§:Boolean;
      
      private var §8!_§:int;
      
      public function §'!;§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §>"1§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §-x§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §2M§() : Boolean
      {
         return this.§+V§;
      }
      
      public function set §0^§(param1:int) : void
      {
         this.§8!_§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §1%§(param1:§5z§) : void
      {
         if(!this.§^!-§ && §?6§ > §1!N§.§@!&§)
         {
            this.§^!-§ = true;
            param1.§[!]§(true);
         }
      }
      
      protected function move(param1:Number, param2:§5z§) : void
      {
         var _loc3_:int = 1;
         if(this.§+V§)
         {
            this.§6""§(§1!N§.§%"'§ * param1);
            _loc3_ = -1;
            if(§?6§ > §1!N§.§`!Z§ && !this.§7,§)
            {
               this.§@6§(param2);
            }
         }
         else
         {
            this.§-!e§(param2);
         }
         §&"!§(param1,new Point(1,_loc3_ * §1!N§.§6?§),§1!N§.§ !=§);
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§1%§(param2);
         this.§5!i§(param2);
         this.move(param1,param2);
      }
      
      protected function §5!i§(param1:§5z§) : void
      {
         param1.§`q§(§?!d§.§="+§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x - 3 + Math.random() * (3 * 2),§4!7§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§?!d§.§ !s§(itemName),0,0,1,0,4);
      }
      
      private function §-!e§(param1:§5z§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§4!7§().GetPosition().y >= -5.5)
         {
            this.§+V§ = true;
            _loc2_ = §1!N§.§""3§;
            _loc3_ = §1!N§.§["+§;
            _loc4_ = §1!N§.§8?§;
            param1.§5!D§(true,_loc2_,_loc3_,_loc4_);
            param1.§+"+§();
            §?[§(§7!R§.§@!v§);
            this.§?!s§(param1);
            this.§9!!§(param1);
         }
      }
      
      protected function §?!s§(param1:§5z§) : void
      {
         var _loc3_:§0"-§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §0"-§;
            if(_loc3_ && _loc3_.id == this.§8!_§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §9!!§(param1:§5z§) : void
      {
         var _loc3_:§ "'§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as § "'§;
            if(_loc3_)
            {
               _loc3_.§4!7§().SetAwake(true);
               _loc3_.§4!7§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§8j§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §@6§(param1:§5z§) : void
      {
         var _loc3_:§ "'§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as § "'§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§7,§ = true;
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
      
      override protected function specialPower(param1:§5z§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §6""§(param1:Number) : void
      {
         var _loc2_:Number = §>"1§(§4!7§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §-x§(_loc2_);
         §4!7§().SetAngle(_loc2_);
      }
   }
}
