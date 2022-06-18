package §"§
{
   import §10§.§#!4§;
   import §9!?§.§,a§;
   import §9!?§.§^]§;
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §`"§.§"e§;
   import §`"§.§?!;§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+!5§ extends §"e§
   {
       
      
      public var §-!0§:Boolean = false;
      
      public var §use §:Boolean = false;
      
      private var §[!1§:§"!=§;
      
      private var §@!0§:Point;
      
      private var §3!+§:Number = 0;
      
      public function §+!5§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§6v§();
      }
      
      private function §6v§() : void
      {
         var _loc1_:§#H§ = §#!4§.§^Y§.§[y§.§ E§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§[!1§ = new §"!=§(_loc1_.texture,true);
         this.§@!0§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §#!4§.§^Y§.objects.§2!6§.addChild(this.§[!1§);
      }
      
      public function §#M§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§3!+§ / 1000 * Math.PI * §,a§.§2C§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§[!1§)
         {
            if(this.§use § || !§]d§())
            {
               this.§[!1§.alpha -= 0.025;
               this.§[!1§.y += 1;
               this.§[!1§.rotation += 0.01;
               if(this.§[!1§.alpha <= 0)
               {
                  this.§[!1§.dispose();
                  this.§[!1§ = null;
               }
            }
            else
            {
               this.§[!1§.rotation = Math.cos(_loc2_) * §,a§.§'!G§;
               _loc4_ = new Point(-this.§@!0§.x,-this.§@!0§.y);
               this.§[!1§.x = x + _loc4_.x * Math.cos(this.§[!1§.rotation) - _loc4_.y * Math.sin(this.§[!1§.rotation);
               this.§[!1§.y = y + _loc4_.x * Math.sin(this.§[!1§.rotation) + _loc4_.y * Math.cos(this.§[!1§.rotation);
               if((_loc5_ = §]d§().GetLinearVelocity().y) > §,a§.§1,§)
               {
                  _loc5_ = §,a§.§1,§;
               }
               §]d§().SetLinearVelocity(new b2Vec2(_loc3_ * §,a§.§"R§,_loc5_));
            }
         }
         this.§3!+§ += param1;
      }
      
      public function get §[7§() : Boolean
      {
         return !§]d§() && this.§[!1§ == null;
      }
   }
}
