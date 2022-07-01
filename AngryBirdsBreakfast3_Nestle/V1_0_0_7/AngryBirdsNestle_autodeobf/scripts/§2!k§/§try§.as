package §2!k§
{
   import § !=§.Sprite;
   import §-!2§.b2Vec2;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §[^§.§>"§;
   import §[^§.§`!M§;
   import §]A§.§7x§;
   import flash.geom.Point;
   
   public class §try§ extends §6",§
   {
       
      
      private var §15§:Boolean;
      
      private var §-8§:Boolean;
      
      private var §-!R§:Boolean;
      
      private var §#!6§:int;
      
      public function §try§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function §7!z§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §2!^§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get § !h§() : Boolean
      {
         return this.§-8§;
      }
      
      public function set §"j§(param1:int) : void
      {
         this.§#!6§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §9q§(param1:§?N§) : void
      {
         if(!this.§15§ && §]!H§ > §7x§.§&!§)
         {
            this.§15§ = true;
            param1.§?G§(true);
         }
      }
      
      protected function move(param1:Number, param2:§?N§) : void
      {
         var _loc3_:int = 1;
         if(this.§-8§)
         {
            this.§8"3§(§7x§.§-!D§ * param1);
            _loc3_ = -1;
            if(§]!H§ > §7x§.§ !>§ && !this.§-!R§)
            {
               this.§7r§(param2);
            }
         }
         else
         {
            this.§5!o§(param2);
         }
         §^!J§(param1,new Point(1,_loc3_ * §7x§.§<L§),§7x§.§%e§);
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         super.update(param1,param2);
         if(!param2)
         {
            return;
         }
         this.§9q§(param2);
         this.§ !G§(param2);
         this.move(param1,param2);
      }
      
      protected function § !G§(param1:§?N§) : void
      {
         param1.§;$§(§3?§.§3f§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x - 3 + Math.random() * (3 * 2),§ 2§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§3?§.§"N§(itemName),0,0,1,0,4);
      }
      
      private function §5!o§(param1:§?N§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§ 2§().GetPosition().y >= -5.5)
         {
            this.§-8§ = true;
            _loc2_ = §7x§.§'!B§;
            _loc3_ = §7x§.§+"$§;
            _loc4_ = §7x§.§5!L§;
            param1.§!"§(true,_loc2_,_loc3_,_loc4_);
            param1.§<E§();
            §,y§(§>"§.§@!e§);
            this.§+!I§(param1);
            this.§#!Z§(param1);
         }
      }
      
      protected function §+!I§(param1:§?N§) : void
      {
         var _loc3_:§+k§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §+k§;
            if(_loc3_ && _loc3_.id == this.§#!6§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §#!Z§(param1:§?N§) : void
      {
         var _loc3_:§;!1§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §;!1§;
            if(_loc3_)
            {
               _loc3_.§ 2§().SetAwake(true);
               _loc3_.§ 2§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§0!K§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §7r§(param1:§?N§) : void
      {
         var _loc3_:§;!1§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §;!1§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§-!R§ = true;
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
      
      override protected function specialPower(param1:§?N§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §8"3§(param1:Number) : void
      {
         var _loc2_:Number = §7!z§(§ 2§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §2!^§(_loc2_);
         § 2§().SetAngle(_loc2_);
      }
   }
}
