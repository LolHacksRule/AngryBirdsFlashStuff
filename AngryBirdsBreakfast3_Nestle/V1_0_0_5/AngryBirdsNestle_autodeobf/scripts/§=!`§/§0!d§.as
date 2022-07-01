package §=!`§
{
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   import §]k§.§#w§;
   import flash.geom.Point;
   
   public class §0!d§ extends §6!-§
   {
       
      
      private var §!E§:Boolean;
      
      private var §"!w§:Boolean;
      
      private var §8!4§:Boolean;
      
      private var §@?§:int;
      
      public function §0!d§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §7!6§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §&" §(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §0!g§() : Boolean
      {
         return this.§"!w§;
      }
      
      public function set §`!6§(param1:int) : void
      {
         this.§@?§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §`0§(param1:§'`§) : void
      {
         if(!this.§!E§ && §&"4§ > §#w§.§`!@§)
         {
            this.§!E§ = true;
            param1.§&!%§(true);
         }
      }
      
      protected function move(param1:Number, param2:§'`§) : void
      {
         var _loc3_:int = 1;
         if(this.§"!w§)
         {
            this.§5!<§(§#w§.§0!,§ * param1);
            _loc3_ = -1;
            if(§&"4§ > §#w§.§;Z§ && !this.§8!4§)
            {
               this.§!!R§(param2);
            }
         }
         else
         {
            this.§3!O§(param2);
         }
         §>!h§(param1,new Point(1,_loc3_ * §#w§.§"b§),§#w§.§9b§);
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§`0§(param2);
         this.§[!u§(param2);
         this.move(param1,param2);
      }
      
      protected function §[!u§(param1:§'`§) : void
      {
         param1.§6!=§(§=f§.§,!3§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x - 3 + Math.random() * (3 * 2),§^",§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§=f§.§6!M§(itemName),0,0,1,0,4);
      }
      
      private function §3!O§(param1:§'`§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§^",§().GetPosition().y >= -5.5)
         {
            this.§"!w§ = true;
            _loc2_ = §#w§.§8" §;
            _loc3_ = §#w§.§9!g§;
            _loc4_ = §#w§.§;b§;
            param1.§-!t§(true,_loc2_,_loc3_,_loc4_);
            param1.§4!=§();
            §&!z§(§;#§.§%!T§);
            this.§1%§(param1);
            this.§!!U§(param1);
         }
      }
      
      protected function §1%§(param1:§'`§) : void
      {
         var _loc3_:§?!G§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §?!G§;
            if(_loc3_ && _loc3_.id == this.§@?§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §!!U§(param1:§'`§) : void
      {
         var _loc3_:§&6§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §&6§;
            if(_loc3_)
            {
               _loc3_.§^",§().SetAwake(true);
               _loc3_.§^",§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§9G§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §!!R§(param1:§'`§) : void
      {
         var _loc3_:§&6§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §&6§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§8!4§ = true;
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
      
      override protected function specialPower(param1:§'`§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §5!<§(param1:Number) : void
      {
         var _loc2_:Number = §7!6§(§^",§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §&" §(_loc2_);
         §^",§().SetAngle(_loc2_);
      }
   }
}
