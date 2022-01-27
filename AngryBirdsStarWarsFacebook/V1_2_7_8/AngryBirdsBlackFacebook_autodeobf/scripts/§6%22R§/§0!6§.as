package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§<"n§;
   import §>P§.§&s§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   import flash.geom.Point;
   
   public class §0!6§ extends §%!0§
   {
       
      
      private var §@;§:Boolean;
      
      private var §>!r§:Boolean;
      
      private var §4D§:Boolean;
      
      private var §%!P§:int;
      
      public function §0!6§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §#"Z§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §9"3§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §4"-§() : Boolean
      {
         return this.§>!r§;
      }
      
      public function set §#!L§(param1:int) : void
      {
         this.§%!P§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function updateShading(param1:§""M§) : void
      {
         if(!this.§@;§ && §-=§ > §<"n§.native)
         {
            this.§@;§ = true;
            param1.§ "5§(true);
         }
      }
      
      protected function move(param1:Number, param2:§""M§) : void
      {
         var _loc3_:int = 1;
         if(this.§>!r§)
         {
            this.§9#-§(§<"n§.§<&§ * param1);
            _loc3_ = -1;
            if(§-=§ > §<"n§.§@"`§ && !this.§4D§)
            {
               this.§3&§(param2);
            }
         }
         else
         {
            this.§]!X§(param2);
         }
         §"y§(param1,new Point(1,_loc3_ * §<"n§.§8!5§),§<"n§.§@!B§);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.updateShading(param2);
         this.addParticles(param2);
         this.move(param1,param2);
      }
      
      protected function addParticles(param1:§""M§) : void
      {
         param1.§[#$§(§;6§.§>!B§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x - 3 + Math.random() * (3 * 2),§?"Z§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§;6§.§ "'§(itemName),0,0,1,0,4);
      }
      
      private function §]!X§(param1:§""M§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§?"Z§().GetPosition().y >= -5.5)
         {
            this.§>!r§ = true;
            _loc2_ = §<"n§.§7@§;
            _loc3_ = §<"n§.§,!k§;
            _loc4_ = §<"n§.§8!A§;
            param1.§6X§(true,_loc2_,_loc3_,_loc4_);
            param1.§="f§();
            §#!D§(§&s§.§ "s§);
            this.§8">§(param1);
            this.§?^§(param1);
         }
      }
      
      protected function §8">§(param1:§""M§) : void
      {
         var _loc3_:§4;§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §4;§;
            if(_loc3_ && _loc3_.id == this.§%!P§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §?^§(param1:§""M§) : void
      {
         var _loc3_:§-#'§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §-#'§;
            if(_loc3_)
            {
               _loc3_.§?"Z§().SetAwake(true);
               _loc3_.§?"Z§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§@""§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §3&§(param1:§""M§) : void
      {
         var _loc3_:§-#'§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §-#'§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§4D§ = true;
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
      
      override protected function specialPower(param1:§""M§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §9#-§(param1:Number) : void
      {
         var _loc2_:Number = §#"Z§(§?"Z§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §9"3§(_loc2_);
         §?"Z§().SetAngle(_loc2_);
      }
   }
}
