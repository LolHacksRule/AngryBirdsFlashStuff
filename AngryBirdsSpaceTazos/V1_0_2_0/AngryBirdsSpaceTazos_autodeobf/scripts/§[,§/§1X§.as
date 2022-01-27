package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §8o§.§]!U§;
   import §;"=§.§"!Y§;
   import §;"=§.§]"<§;
   import §?!<§.§`!Y§;
   import flash.geom.Point;
   
   public class §1X§ extends §#!v§
   {
       
      
      private var §#"+§:Boolean;
      
      private var §'!g§:Boolean;
      
      private var §@M§:Boolean;
      
      private var §^d§:int;
      
      public function §1X§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §6!+§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[C§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §!!1§() : Boolean
      {
         return this.§'!g§;
      }
      
      public function set §3!8§(param1:int) : void
      {
         this.§^d§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §`^§(param1:§class§) : void
      {
         if(!this.§#"+§ && §8Y§ > §`!Y§.§ R§)
         {
            this.§#"+§ = true;
            param1.§^f§(true);
         }
      }
      
      protected function move(param1:Number, param2:§class§) : void
      {
         var _loc3_:int = 1;
         if(this.§'!g§)
         {
            this.§ !O§(§`!Y§.§[1§ * param1);
            _loc3_ = -1;
            if(§8Y§ > §`!Y§.§!M§ && !this.§@M§)
            {
               this.§+!V§(param2);
            }
         }
         else
         {
            this.§9"1§(param2);
         }
         §&R§(param1,new Point(1,_loc3_ * §`!Y§.§ P§),§`!Y§.§5_§);
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§`^§(param2);
         this.§#!M§(param2);
         this.move(param1,param2);
      }
      
      protected function §#!M§(param1:§class§) : void
      {
         param1.§=J§(§9!v§.§=!`§,§?L§.§7!B§,§9!v§.§7!@§,§ <§().GetPosition().x - 3 + Math.random() * (3 * 2),§ <§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§9!v§.§'!Y§(itemName),0,0,1,0,4);
      }
      
      private function §9"1§(param1:§class§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§ <§().GetPosition().y >= -5.5)
         {
            this.§'!g§ = true;
            _loc2_ = §`!Y§.§?O§;
            _loc3_ = §`!Y§.§9!I§;
            _loc4_ = §`!Y§.§@"@§;
            param1.§+!I§(true,_loc2_,_loc3_,_loc4_);
            param1.§9""§();
            §<">§(§"!Y§.§4!z§);
            this.§'@§(param1);
            this.§!!!§(param1);
         }
      }
      
      protected function §'@§(param1:§class§) : void
      {
         var _loc3_:§;W§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §;W§;
            if(_loc3_ && _loc3_.id == this.§^d§)
            {
               param1.§="6§(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §!!!§(param1:§class§) : void
      {
         var _loc3_:§<!f§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<!f§;
            if(_loc3_)
            {
               _loc3_.§ <§().SetAwake(true);
               _loc3_.§ <§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§%!J§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §+!V§(param1:§class§) : void
      {
         var _loc3_:§<!f§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<!f§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§@M§ = true;
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
      
      override protected function specialPower(param1:§class§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function § !O§(param1:Number) : void
      {
         var _loc2_:Number = §6!+§(§ <§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §[C§(_loc2_);
         § <§().SetAngle(_loc2_);
      }
   }
}
