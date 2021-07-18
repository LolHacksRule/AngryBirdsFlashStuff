package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §4!<§.§^!Z§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import §<T§.§^"5§;
   import §@!"§.§?l§;
   import flash.geom.Point;
   
   public class §=!D§ extends §[!8§
   {
       
      
      private const §]!Y§:Boolean = true;
      
      private const §4!i§:uint = 10000;
      
      public var §,i§:Boolean = false;
      
      public var §>"J§:Boolean = false;
      
      private var §@!G§:§ "E§;
      
      private var §5!d§:Point;
      
      private var §^"!§:Number = 0;
      
      private const §,!K§:Number = Math.random() * Math.PI * 2;
      
      private var §'H§:§]"'§;
      
      private var §@!k§:Number = 0;
      
      public function §=!D§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§'H§ = param1 as §]"'§;
         this.§`R§();
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         if(!this.§>"J§)
         {
            this.§@!k§ = this.§4!i§;
            this.§>"J§ = true;
         }
         else
         {
            this.§@!k§ -= 100;
         }
         return §^!2§;
      }
      
      private function §`R§() : void
      {
         var _loc1_:§^"5§ = §?l§.§'h§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§@!G§ = new § "E§(_loc1_.texture,true);
         this.§5!d§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §?l§.§'h§.objects.§-!2§.addChild(this.§@!G§);
      }
      
      public function §>x§(param1:Number) : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:§[!8§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         super.update(param1);
         if(this.§>"J§ && getBody())
         {
            this.§@!k§ -= param1;
            if(this.§]!Y§ && !getBody().IsAwake() || this.§@!k§ <= 0)
            {
               _loc2_ = getBody().GetPosition();
               §?l§.§'h§.particles.§@6§("POWERUP_BOMB_UNWRAP",§0i§.§^"X§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y,2000,"",§0i§.§?"Z§,0,0,0,0,1,20,true);
               §@"M§.§3"C§("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               _loc3_ = this.§'H§.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§,!c§());
               _loc3_.§+" §(getBody().GetLinearVelocity().Copy());
               _loc3_.§0!?§(getBody().GetAngularVelocity());
               this.§'H§.§8`§(this);
            }
         }
         if(this.§@!G§)
         {
            _loc4_ = this.§,!K§ + this.§^"!§ / 1000 * Math.PI * §^!Z§.§1d§;
            _loc5_ = Math.sin(_loc4_);
            if(this.§>"J§ || !getBody())
            {
               this.§@!G§.alpha -= 0.025;
               this.§@!G§.y += 1;
               this.§@!G§.rotation += 0.01;
               if(this.§@!G§.alpha <= 0)
               {
                  this.§@!G§.dispose();
                  this.§@!G§ = null;
               }
            }
            else
            {
               this.§@!G§.rotation = Math.cos(_loc4_) * §^!Z§.§1!Z§;
               _loc6_ = new Point(-this.§5!d§.x,-this.§5!d§.y * 2);
               this.§@!G§.x = x + _loc6_.x * Math.cos(this.§@!G§.rotation) - _loc6_.y * Math.sin(this.§@!G§.rotation);
               this.§@!G§.y = y + _loc6_.x * Math.sin(this.§@!G§.rotation) + _loc6_.y * Math.cos(this.§@!G§.rotation);
               if((_loc7_ = getBody().GetLinearVelocity().y) > §^!Z§.§3!8§)
               {
                  _loc7_ = §^!Z§.§3!8§;
               }
               else if(_loc7_ < -§^!Z§.§3!8§)
               {
                  _loc7_ = -§^!Z§.§3!8§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc5_ * §^!Z§.§&"H§,_loc7_));
            }
         }
         this.§^"!§ += param1;
      }
      
      public function get §&"+§() : Boolean
      {
         return !getBody() && this.§@!G§ == null;
      }
      
      public function get §'"9§() : Boolean
      {
         return this.§>"J§;
      }
   }
}
