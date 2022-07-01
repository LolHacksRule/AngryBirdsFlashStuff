package §"!-§
{
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §;'§.b2World;
   import §@"1§.§<!<§;
   import flash.geom.Point;
   
   public class §2P§ extends § !§
   {
       
      
      private var §-a§:Boolean;
      
      private var §!!x§:Boolean;
      
      private var §>j§:Boolean;
      
      private var §4S§:int;
      
      public function §2P§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §0J§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §<$§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §-U§() : Boolean
      {
         return this.§!!x§;
      }
      
      public function set §<!x§(param1:int) : void
      {
         this.§4S§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §,-§(param1:§!l§) : void
      {
         if(!this.§-a§ && §5!4§ > §<!<§.§!!e§)
         {
            this.§-a§ = true;
            param1.§'+§(true);
         }
      }
      
      protected function move(param1:Number, param2:§!l§) : void
      {
         var _loc3_:int = 1;
         if(this.§!!x§)
         {
            this.§=I§(§<!<§.§+=§ * param1);
            _loc3_ = -1;
            if(§5!4§ > §<!<§.§6!m§ && !this.§>j§)
            {
               this.§=!>§(param2);
            }
         }
         else
         {
            this.§?!L§(param2);
         }
         §;F§(param1,new Point(1,_loc3_ * §<!<§.§!S§),§<!<§.§'!A§);
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§,-§(param2);
         this.§#!x§(param2);
         this.move(param1,param2);
      }
      
      protected function §#!x§(param1:§!l§) : void
      {
         param1.§;!9§(§%v§.§!"3§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x - 3 + Math.random() * (3 * 2),§9l§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§%v§.§#S§(itemName),0,0,1,0,4);
      }
      
      private function §?!L§(param1:§!l§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§9l§().GetPosition().y >= -5.5)
         {
            this.§!!x§ = true;
            _loc2_ = §<!<§.§"m§;
            _loc3_ = §<!<§.§?!s§;
            _loc4_ = §<!<§.§1!3§;
            param1.§3!a§(true,_loc2_,_loc3_,_loc4_);
            param1.§&!P§();
            §0z§(§[!L§.§#!R§);
            this.§<f§(param1);
            this.§"!c§(param1);
         }
      }
      
      protected function §<f§(param1:§!l§) : void
      {
         var _loc3_:§93§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §93§;
            if(_loc3_ && _loc3_.id == this.§4S§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §"!c§(param1:§!l§) : void
      {
         var _loc3_:§"x§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §"x§;
            if(_loc3_)
            {
               _loc3_.§9l§().SetAwake(true);
               _loc3_.§9l§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§5!@§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §=!>§(param1:§!l§) : void
      {
         var _loc3_:§"x§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §"x§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§>j§ = true;
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
      
      override protected function specialPower(param1:§!l§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §=I§(param1:Number) : void
      {
         var _loc2_:Number = §0J§(§9l§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §<$§(_loc2_);
         §9l§().SetAngle(_loc2_);
      }
   }
}
