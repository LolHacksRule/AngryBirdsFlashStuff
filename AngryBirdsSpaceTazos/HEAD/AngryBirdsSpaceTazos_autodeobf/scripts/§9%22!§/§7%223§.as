package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §3"#§.;
   import §3>§.§-"8§;
   import §3>§.§=!Z§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import flash.geom.Point;
   
   public class §7"3§ extends §!!H§
   {
       
      
      private var §^a§:Boolean;
      
      private var §!<§:Boolean;
      
      private var §'!L§:Boolean;
      
      private var §-"H§:int;
      
      public function §7"3§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §'?§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §>!]§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §7!U§() : Boolean
      {
         return this.§!<§;
      }
      
      public function set §%!B§(param1:int) : void
      {
         this.§-"H§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §;!0§(param1:§0!s§) : void
      {
         if(!this.§^a§ && §`!L§ > §#2§.§`F§)
         {
            this.§^a§ = true;
            param1.§#<§(true);
         }
      }
      
      protected function move(param1:Number, param2:§0!s§) : void
      {
         var _loc3_:int = 1;
         if(this.§!<§)
         {
            this.§"!-§(§#2§.§>"1§ * param1);
            _loc3_ = -1;
            if(§`!L§ > §#2§.§2!3§ && !this.§'!L§)
            {
               this.§-J§(param2);
            }
         }
         else
         {
            this.§2!v§(param2);
         }
         §>!l§(param1,new Point(1,_loc3_ * §#2§.§&!e§),§#2§.§%!&§);
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§;!0§(param2);
         this.§]"!§(param2);
         this.move(param1,param2);
      }
      
      protected function §]"!§(param1:§0!s§) : void
      {
         param1.§'"-§(§4R§.§6"!§,§switch§.§%!y§,§4R§.§!o§,§`I§().GetPosition().x - 3 + Math.random() * (3 * 2),§`I§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§4R§.§#!y§(itemName),0,0,1,0,4);
      }
      
      private function §2!v§(param1:§0!s§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§`I§().GetPosition().y >= -5.5)
         {
            this.§!<§ = true;
            _loc2_ = §#2§.§8!7§;
            _loc3_ = §#2§.§"!8§;
            _loc4_ = §#2§.§-"2§;
            param1.§#!h§(true,_loc2_,_loc3_,_loc4_);
            param1.§<w§();
            §6!7§(§=!Z§.§=!7§);
            this.§;"B§(param1);
            this.§[!9§(param1);
         }
      }
      
      protected function §;"B§(param1:§0!s§) : void
      {
         var _loc3_:§]B§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §]B§;
            if(_loc3_ && _loc3_.id == this.§-"H§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §[!9§(param1:§0!s§) : void
      {
         var _loc3_:§,r§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §,r§;
            if(_loc3_)
            {
               _loc3_.§`I§().SetAwake(true);
               _loc3_.§`I§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§+!l§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §-J§(param1:§0!s§) : void
      {
         var _loc3_:§,r§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §,r§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§'!L§ = true;
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
      
      override protected function specialPower(param1:§0!s§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §"!-§(param1:Number) : void
      {
         var _loc2_:Number = §'?§(§`I§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §>!]§(_loc2_);
         §`I§().SetAngle(_loc2_);
      }
   }
}
