package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§0"x§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import flash.geom.Point;
   
   public class §'"o§ extends §?"N§
   {
       
      
      private var §'"V§:Boolean;
      
      private var §-#<§:Boolean;
      
      private var §%"`§:Boolean;
      
      private var §,L§:int;
      
      public function §'"o§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §4m§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §&f§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §7!X§() : Boolean
      {
         return this.§-#<§;
      }
      
      public function set §1"w§(param1:int) : void
      {
         this.§,L§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function updateShading(param1:§;$§) : void
      {
         if(!this.§'"V§ && §3! § > §0"x§.§&!1§)
         {
            this.§'"V§ = true;
            param1.§5"J§(true);
         }
      }
      
      protected function move(param1:Number, param2:§;$§) : void
      {
         var _loc3_:int = 1;
         if(this.§-#<§)
         {
            this.§7!n§(§0"x§.§5#3§ * param1);
            _loc3_ = -1;
            if(§3! § > §0"x§.§["k§ && !this.§%"`§)
            {
               this.§5m§(param2);
            }
         }
         else
         {
            this.§`,§(param2);
         }
         §!"f§(param1,new Point(1,_loc3_ * §0"x§.§8!6§),§0"x§.§'3§);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
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
      
      protected function addParticles(param1:§;$§) : void
      {
         param1.§;!0§(§ U§.§7!i§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x - 3 + Math.random() * (3 * 2),§3!t§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§ U§.§`"I§(itemName),0,0,1,0,4);
      }
      
      private function §`,§(param1:§;$§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§3!t§().GetPosition().y >= -5.5)
         {
            this.§-#<§ = true;
            _loc2_ = §0"x§.§]#=§;
            _loc3_ = §0"x§.§0!9§;
            _loc4_ = §0"x§.§@#=§;
            param1.§&!G§(true,_loc2_,_loc3_,_loc4_);
            param1.§7U§();
            §[v§(§'#2§.§@N§);
            this.§%!1§(param1);
            this.§,"m§(param1);
         }
      }
      
      protected function §%!1§(param1:§;$§) : void
      {
         var _loc3_:§@#P§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §@#P§;
            if(_loc3_ && _loc3_.id == this.§,L§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §,"m§(param1:§;$§) : void
      {
         var _loc3_:§<!2§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<!2§;
            if(_loc3_)
            {
               _loc3_.§3!t§().SetAwake(true);
               _loc3_.§3!t§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§,"W§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §5m§(param1:§;$§) : void
      {
         var _loc3_:§<!2§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<!2§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§%"`§ = true;
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
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §7!n§(param1:Number) : void
      {
         var _loc2_:Number = §4m§(§3!t§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §&f§(_loc2_);
         §3!t§().SetAngle(_loc2_);
      }
   }
}
