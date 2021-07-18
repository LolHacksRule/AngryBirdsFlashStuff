package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §'!&§.b2World;
   import §'4§.§4#§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import flash.geom.Point;
   
   public class §5"$§ extends § 6§
   {
       
      
      private var §#!9§:Boolean;
      
      private var §while§:Boolean;
      
      private var §6V§:Boolean;
      
      private var §^!@§:int;
      
      public function §5"$§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §%!$§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §,"'§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §>6§() : Boolean
      {
         return this.§while§;
      }
      
      public function set §<!<§(param1:int) : void
      {
         this.§^!@§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §1!p§(param1:§;U§) : void
      {
         if(!this.§#!9§ && §=!c§ > §4#§.§7!E§)
         {
            this.§#!9§ = true;
            param1.§!N§(true);
         }
      }
      
      protected function move(param1:Number, param2:§;U§) : void
      {
         var _loc3_:int = 1;
         if(this.§while§)
         {
            this.§#"7§(§4#§.§%"B§ * param1);
            _loc3_ = -1;
            if(§=!c§ > §4#§.§,!+§ && !this.§6V§)
            {
               this.§3!y§(param2);
            }
         }
         else
         {
            this.§=f§(param2);
         }
         §@!F§(param1,new Point(1,_loc3_ * §4#§.§0W§),§4#§.§11§);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§1!p§(param2);
         this.§%h§(param2);
         this.move(param1,param2);
      }
      
      protected function §%h§(param1:§;U§) : void
      {
         param1.§%!y§(§2!V§.§^"9§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x - 3 + Math.random() * (3 * 2),§^!z§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§2!V§.§+9§(itemName),0,0,1,0,4);
      }
      
      private function §=f§(param1:§;U§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§^!z§().GetPosition().y >= -5.5)
         {
            this.§while§ = true;
            _loc2_ = §4#§.§+"+§;
            _loc3_ = §4#§.§ a§;
            _loc4_ = §4#§.§,'§;
            param1.§&c§(true,_loc2_,_loc3_,_loc4_);
            param1.§0!T§();
            §'!p§(§=C§.§+5§);
            this.§]V§(param1);
            this.§7"'§(param1);
         }
      }
      
      protected function §]V§(param1:§;U§) : void
      {
         var _loc3_:§<Y§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<Y§;
            if(_loc3_ && _loc3_.id == this.§^!@§)
            {
               param1.§!!m§(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §7"'§(param1:§;U§) : void
      {
         var _loc3_:§50§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §50§;
            if(_loc3_)
            {
               _loc3_.§^!z§().SetAwake(true);
               _loc3_.§^!z§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§,M§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §3!y§(param1:§;U§) : void
      {
         var _loc3_:§50§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §50§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§6V§ = true;
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
      
      override protected function specialPower(param1:§;U§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §#"7§(param1:Number) : void
      {
         var _loc2_:Number = §%!$§(§^!z§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §,"'§(_loc2_);
         §^!z§().SetAngle(_loc2_);
      }
   }
}
