package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§=b§;
   import flash.geom.Point;
   
   public class §+f§ extends §?!z§
   {
       
      
      private var §!!§:Boolean;
      
      private var §6!]§:Boolean;
      
      private var §<!w§:Boolean;
      
      private var §1" §:int;
      
      public function §+f§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §"""§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §8t§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get § ![§() : Boolean
      {
         return this.§6!]§;
      }
      
      public function set §`!0§(param1:int) : void
      {
         this.§1" § = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §[!c§(param1:§3!#§) : void
      {
         if(!this.§!!§ && §<E§ > §=b§.§]%§)
         {
            this.§!!§ = true;
            param1.§#!j§(true);
         }
      }
      
      protected function move(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:int = 1;
         if(this.§6!]§)
         {
            this.§@%§(§=b§.§>i§ * param1);
            _loc3_ = -1;
            if(§<E§ > §=b§.§,!W§ && !this.§<!w§)
            {
               this.§]!R§(param2);
            }
         }
         else
         {
            this.§%!z§(param2);
         }
         §^s§(param1,new Point(1,_loc3_ * §=b§.§7!p§),§=b§.§<O§);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§[!c§(param2);
         this.§8!#§(param2);
         this.move(param1,param2);
      }
      
      protected function §8!#§(param1:§3!#§) : void
      {
         param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x - 3 + Math.random() * (3 * 2),§^`§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§2_§.§%j§(itemName),0,0,1,0,4);
      }
      
      private function §%!z§(param1:§3!#§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§^`§().GetPosition().y >= -5.5)
         {
            this.§6!]§ = true;
            _loc2_ = §=b§.§,D§;
            _loc3_ = §=b§.§>v§;
            _loc4_ = §=b§.§9!M§;
            param1.§0h§(true,_loc2_,_loc3_,_loc4_);
            param1.§&!h§();
            §]Y§(§,4§.§-!A§);
            this.§0"!§(param1);
            this.§]!T§(param1);
         }
      }
      
      protected function §0"!§(param1:§3!#§) : void
      {
         var _loc3_:§!t§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §!t§;
            if(_loc3_ && _loc3_.id == this.§1" §)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §]!T§(param1:§3!#§) : void
      {
         var _loc3_:§[!=§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §[!=§;
            if(_loc3_)
            {
               _loc3_.§^`§().SetAwake(true);
               _loc3_.§^`§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§%!,§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §]!R§(param1:§3!#§) : void
      {
         var _loc3_:§[!=§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §[!=§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§<!w§ = true;
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
      
      override protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §@%§(param1:Number) : void
      {
         var _loc2_:Number = §"""§(§^`§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §8t§(_loc2_);
         §^`§().SetAngle(_loc2_);
      }
   }
}
