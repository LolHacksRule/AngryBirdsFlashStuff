package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§96§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import flash.geom.Point;
   import §use§.Sprite;
   
   public class §0"t§ extends §;!T§
   {
       
      
      private var §-!b§:Boolean;
      
      private var §2T§:Boolean;
      
      private var §95§:Boolean;
      
      private var §[!x§:int;
      
      public function §0"t§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §'"V§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §""G§(param1:Number) : Number
      {
         return Number((360 + param1 % 360) % 360 / (180 / Math.PI));
      }
      
      public function get §^!d§() : Boolean
      {
         return this.§2T§;
      }
      
      public function set §1!d§(param1:int) : void
      {
         this.§[!x§ = param1;
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function updateShading(param1:§'=§) : void
      {
         if(!this.§-!b§ && §<!"§ > §96§.§+!D§)
         {
            this.§-!b§ = true;
            param1.§6"p§(true);
         }
      }
      
      protected function move(param1:Number, param2:§'=§) : void
      {
         var _loc3_:int = 1;
         if(this.§2T§)
         {
            this.§ "t§(§96§.§6"R§ * param1);
            _loc3_ = -1;
            if(§<!"§ > §96§.§6"w§ && !this.§95§)
            {
               this.§-"C§(param2);
            }
         }
         else
         {
            this.§?F§(param2);
         }
         §&"`§(param1,new Point(1,_loc3_ * §96§.§6'§),§96§.§^O§);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
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
      
      protected function addParticles(param1:§'=§) : void
      {
         param1.§>#1§(§?"E§.§[J§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x - 3 + Math.random() * (3 * 2),§3"s§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§?"E§.§##+§(itemName),0,0,1,0,4);
      }
      
      private function §?F§(param1:§'=§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(§3"s§().GetPosition().y >= -5.5)
         {
            this.§2T§ = true;
            _loc2_ = §96§.§0"w§;
            _loc3_ = §96§.§<!&§;
            _loc4_ = §96§.§[!U§;
            param1.§6!m§(true,_loc2_,_loc3_,_loc4_);
            param1.§<"T§();
            §!5§(§^i§.§ #+§);
            this.§7+§(param1);
            this.§5A§(param1);
         }
      }
      
      protected function §7+§(param1:§'=§) : void
      {
         var _loc3_:§4?§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §4?§;
            if(_loc3_ && _loc3_.id == this.§[!x§)
            {
               param1.removeObject(_loc3_);
               return;
            }
            _loc2_--;
         }
      }
      
      protected function §5A§(param1:§'=§) : void
      {
         var _loc3_:§4%§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §4%§;
            if(_loc3_)
            {
               _loc3_.§3"s§().SetAwake(true);
               _loc3_.§3"s§().SetLinearVelocity(new b2Vec2(0,-18));
               _loc3_.§>+§ = true;
            }
            _loc2_--;
         }
      }
      
      protected function §-"C§(param1:§'=§) : void
      {
         var _loc3_:§4%§ = null;
         var _loc2_:int = param1.objectCount - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §4%§;
            if(_loc3_)
            {
               _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
            }
            _loc2_--;
         }
         this.§95§ = true;
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
      
      override protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function § "t§(param1:Number) : void
      {
         var _loc2_:Number = §'"V§(§3"s§().GetAngle());
         _loc2_ += param1 * 360 / 1000;
         _loc2_ = §""G§(_loc2_);
         §3"s§().SetAngle(_loc2_);
      }
   }
}
