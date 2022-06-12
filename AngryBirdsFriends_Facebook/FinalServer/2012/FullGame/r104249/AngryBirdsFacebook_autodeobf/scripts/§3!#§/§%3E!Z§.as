package §3!#§
{
   import §#S§.§6!r§;
   import §&!Y§.b2World;
   import §0!2§.§3`§;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §>s§.§+m§;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   import flash.geom.Point;
   
   public class §>!Z§ extends §5"A§
   {
       
      
      private const §%!%§:Boolean = true;
      
      private const §%" §:uint = 10000;
      
      public var §7">§:Boolean = false;
      
      public var §>p§:Boolean = false;
      
      private var §6!=§:§'!=§;
      
      private var §#!7§:Point;
      
      private var §%K§:Number = 0;
      
      private const §,V§:Number = Math.random() * Math.PI * 2;
      
      private var §-!5§:§<!g§;
      
      private var §8A§:Number = 0;
      
      public function §>!Z§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§-!5§ = param1 as §<!g§;
         this.§!!B§();
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         if(!this.§>p§)
         {
            this.§8A§ = this.§%" §;
            this.§>p§ = true;
         }
         else
         {
            this.§8A§ -= 100;
         }
         return §3!A§;
      }
      
      private function §!!B§() : void
      {
         var _loc1_:§6!r§ = §&2§.§],§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§6!=§ = new §'!=§(_loc1_.texture,true);
         this.§#!7§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §&2§.§],§.objects.§-"!§.addChild(this.§6!=§);
      }
      
      public function §8"2§(param1:Number) : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:§5"A§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         super.update(param1);
         if(this.§>p§ && §`!y§())
         {
            this.§8A§ -= param1;
            if(this.§%!%§ && !§`!y§().IsAwake() || this.§8A§ <= 0)
            {
               _loc2_ = §`!y§().GetPosition();
               §&2§.§],§.particles.§-!O§("POWERUP_BOMB_UNWRAP",§4! §.§+Y§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y,2000,"",§4! §.§-p§,0,0,0,0,1,20,true);
               §+m§.§]!N§("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               _loc3_ = this.§-!5§.addObject("MISC_EXPLOSIVE_TNT",§`!y§().GetPosition().x,§`!y§().GetPosition().y,§#"<§());
               _loc3_.§1!2§(§`!y§().GetLinearVelocity().Copy());
               _loc3_.§4!Z§(§`!y§().GetAngularVelocity());
               this.§-!5§.§ !"§(this);
            }
         }
         if(this.§6!=§)
         {
            _loc4_ = this.§,V§ + this.§%K§ / 1000 * Math.PI * §3`§.§`K§;
            _loc5_ = Math.sin(_loc4_);
            if(this.§>p§ || !§`!y§())
            {
               this.§6!=§.alpha -= 0.025;
               this.§6!=§.y += 1;
               this.§6!=§.rotation += 0.01;
               if(this.§6!=§.alpha <= 0)
               {
                  this.§6!=§.dispose();
                  this.§6!=§ = null;
               }
            }
            else
            {
               this.§6!=§.rotation = Math.cos(_loc4_) * §3`§.§1"L§;
               _loc6_ = new Point(-this.§#!7§.x,-this.§#!7§.y * 2);
               this.§6!=§.x = x + _loc6_.x * Math.cos(this.§6!=§.rotation) - _loc6_.y * Math.sin(this.§6!=§.rotation);
               this.§6!=§.y = y + _loc6_.x * Math.sin(this.§6!=§.rotation) + _loc6_.y * Math.cos(this.§6!=§.rotation);
               if((_loc7_ = §`!y§().GetLinearVelocity().y) > §3`§.§5W§)
               {
                  _loc7_ = §3`§.§5W§;
               }
               else if(_loc7_ < -§3`§.§5W§)
               {
                  _loc7_ = -§3`§.§5W§;
               }
               §`!y§().SetLinearVelocity(new b2Vec2(_loc5_ * §3`§.§6!-§,_loc7_));
            }
         }
         this.§%K§ += param1;
      }
      
      public function get §=!M§() : Boolean
      {
         return !§`!y§() && this.§6!=§ == null;
      }
      
      public function get §1"2§() : Boolean
      {
         return this.§>p§;
      }
   }
}
