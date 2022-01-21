package §@!T§
{
   import §"U§.b2Vec2;
   import §%`§.§"s§;
   import §%`§.§,!k§;
   import §'a§.§0!f§;
   import §'a§.§^N§;
   import §3!g§.b2World;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   import §9!W§.§=!@§;
   import flash.geom.Point;
   
   public class § l§ extends §"s§
   {
       
      
      public var §7!G§:Boolean = false;
      
      public var §<g§:Boolean = false;
      
      private var §@a§:§2!K§;
      
      private var §7@§:Point;
      
      private var §=+§:Number = 0;
      
      public function § l§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§%!"§();
      }
      
      private function §%!"§() : void
      {
         var _loc1_:§9Z§ = §=!@§.§>!T§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§@a§ = new §2!K§(_loc1_.texture,true);
         this.§7@§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §=!@§.§>!T§.objects.§"![§.addChild(this.§@a§);
      }
      
      public function §3R§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§=+§ / 1000 * Math.PI * §^N§.§;!_§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§@a§)
         {
            if(this.§<g§ || !§%9§())
            {
               this.§@a§.alpha -= 0.025;
               this.§@a§.y += 1;
               this.§@a§.rotation += 0.01;
               if(this.§@a§.alpha <= 0)
               {
                  this.§@a§.dispose();
                  this.§@a§ = null;
               }
            }
            else
            {
               this.§@a§.rotation = Math.cos(_loc2_) * §^N§.§6!2§;
               _loc4_ = new Point(-this.§7@§.x,-this.§7@§.y);
               this.§@a§.x = x + _loc4_.x * Math.cos(this.§@a§.rotation) - _loc4_.y * Math.sin(this.§@a§.rotation);
               this.§@a§.y = y + _loc4_.x * Math.sin(this.§@a§.rotation) + _loc4_.y * Math.cos(this.§@a§.rotation);
               if((_loc5_ = §%9§().GetLinearVelocity().y) > §^N§.§?!1§)
               {
                  _loc5_ = §^N§.§?!1§;
               }
               §%9§().SetLinearVelocity(new b2Vec2(_loc3_ * §^N§.§<!§,_loc5_));
            }
         }
         this.§=+§ += param1;
      }
      
      public function get §6!n§() : Boolean
      {
         return !§%9§() && this.§@a§ == null;
      }
   }
}
