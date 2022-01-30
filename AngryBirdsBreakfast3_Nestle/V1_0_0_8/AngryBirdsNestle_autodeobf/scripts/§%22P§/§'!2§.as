package §"P§
{
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §9G§.§0i§;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   import flash.geom.Point;
   
   public class §'!2§ extends §?!§
   {
       
      
      private var §[V§:Boolean;
      
      private var §!x§:Boolean;
      
      private var §7#§:Boolean;
      
      private var §]!v§:int;
      
      public function §'!2§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §;G§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §2!h§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §6@§() : Boolean
      {
         return this.§!x§;
      }
      
      public function set §<o§(param1:int) : void
      {
         this.§]!v§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §+9§(param1:§0w§) : void
      {
         if(!this.§[V§ && § +§ > §0i§.§'§)
         {
            this.§[V§ = true;
            param1.§@e§(true);
         }
      }
      
      protected function move(param1:Number, param2:§0w§) : void
      {
         var _loc3_:int = 1;
         if(this.§!x§)
         {
            this.§7!k§(§0i§.§13§ * param1);
            _loc3_ = -1;
            if(§ +§ > §0i§.§0!V§ && !this.§7#§)
            {
               this.§>,§(param2);
            }
         }
         else
         {
            this.§?w§(param2);
         }
         §>!g§(param1,new Point(1,_loc3_ * §0i§.§7N§),§0i§.§[" §);
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§+9§(param2);
         this.§=Q§(param2);
         this.move(param1,param2);
      }
      
      protected function §=Q§(param1:§0w§) : void
      {
         param1.§8" §(§@"§.§]!w§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x - 3 + Math.random() * (3 * 2),§7J§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§@"§.§?"1§(itemName),0,0,1,0,4);
      }
      
      private function §?w§(param1:§0w§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§7J§().GetPosition().y >= -5.5)
         {
            this.§!x§ = true;
            _loc2_ = §0i§.§ E§;
            _loc3_ = §0i§.§#"#§;
            _loc4_ = §0i§.§5_§;
            param1.§+!W§(true,_loc2_,_loc3_,_loc4_);
            param1.§3N§();
            §5E§(§'!7§.§8H§);
            this.§'1§(param1);
            this.§2i§(param1);
         }
      }
      
      protected function §'1§(param1:§0w§) : void
      {
         var _loc3_:§[!U§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §[!U§;
            if(_loc3_ && _loc3_.id == this.§]!v§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §2i§(param1:§0w§) : void
      {
         var _loc3_:§=!E§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §=!E§;
            if(_loc3_)
            {
               _loc3_.§7J§().SetAwake(true);
               _loc3_.§7J§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§?!N§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §>,§(param1:§0w§) : void
      {
         var _loc3_:§=!E§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §=!E§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§7#§ = true;
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
      
      override protected function specialPower(param1:§0w§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §7!k§(param1:Number) : void
      {
         var _loc2_:Number = §;G§(§7J§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §2!h§(_loc2_);
         §7J§().SetAngle(_loc2_);
      }
   }
}
