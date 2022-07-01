package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§&z§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   import flash.geom.Point;
   
   public class §[!J§ extends §^"2§
   {
       
      
      private var §%!s§:Boolean;
      
      private var §4!h§:Boolean;
      
      private var §[a§:Boolean;
      
      private var §"!g§:int;
      
      public function §[!J§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §%o§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[!4§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §&@§() : Boolean
      {
         return this.§4!h§;
      }
      
      public function set § !1§(param1:int) : void
      {
         this.§"!g§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §+!C§(param1:§`!m§) : void
      {
         if(!this.§%!s§ && §#e§ > §&z§.§<!!§)
         {
            this.§%!s§ = true;
            param1.§+!M§(true);
         }
      }
      
      protected function move(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:int = 1;
         if(this.§4!h§)
         {
            this.§"!e§(§&z§.§=![§ * param1);
            _loc3_ = -1;
            if(§#e§ > §&z§.§[!k§ && !this.§[a§)
            {
               this.§ z§(param2);
            }
         }
         else
         {
            this.§`"&§(param2);
         }
         §?"&§(param1,new Point(1,_loc3_ * §&z§.§#!n§),§&z§.§1y§);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§+!C§(param2);
         this.§-! §(param2);
         this.move(param1,param2);
      }
      
      protected function §-! §(param1:§`!m§) : void
      {
         param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x - 3 + Math.random() * (3 * 2),§!!I§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§`""§.§6!X§(itemName),0,0,1,0,4);
      }
      
      private function §`"&§(param1:§`!m§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§!!I§().GetPosition().y >= -5.5)
         {
            this.§4!h§ = true;
            _loc2_ = §&z§.§?C§;
            _loc3_ = §&z§.§#!Z§;
            _loc4_ = §&z§.§ A§;
            param1.§8%§(true,_loc2_,_loc3_,_loc4_);
            param1.§0!7§();
            §8!U§(§89§.§&7§);
            this.§7"7§(param1);
            this.§<!3§(param1);
         }
      }
      
      protected function §7"7§(param1:§`!m§) : void
      {
         var _loc3_:§>S§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §>S§;
            if(_loc3_ && _loc3_.id == this.§"!g§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §<!3§(param1:§`!m§) : void
      {
         var _loc3_:§7k§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §7k§;
            if(_loc3_)
            {
               _loc3_.§!!I§().SetAwake(true);
               _loc3_.§!!I§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§]!Q§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function § z§(param1:§`!m§) : void
      {
         var _loc3_:§7k§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §7k§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§[a§ = true;
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
      
      override protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §"!e§(param1:Number) : void
      {
         var _loc2_:Number = §%o§(§!!I§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §[!4§(_loc2_);
         §!!I§().SetAngle(_loc2_);
      }
      
      public function get § var§() : Boolean
      {
         return this.§[a§;
      }
   }
}
