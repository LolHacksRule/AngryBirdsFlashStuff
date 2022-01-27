package §3B§
{
   import §&b§.§[F§;
   import §4!-§.§%o§;
   import §4!-§.Tuner;
   import §4!0§.§#^§;
   import §86§.§?5§;
   import §86§.Sprite;
   import §>Y§.§#o§;
   import §>Y§.§2>§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §^a§ extends §#o§
   {
       
      
      public var §;§:Boolean = false;
      
      public var §<e§:Boolean = false;
      
      private var §+'§:§?5§;
      
      private var §[!<§:Point;
      
      private var §%U§:Number = 0;
      
      public function §^a§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§1;§();
      }
      
      private function §1;§() : void
      {
         var _loc1_:§#^§ = §[F§.§9u§.§>"§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§+'§ = new §?5§(_loc1_.texture,true);
         this.§[!<§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §[F§.§9u§.objects.§!_§.addChild(this.§+'§);
      }
      
      public function §7O§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§%U§ / 1000 * Math.PI * Tuner.§^K§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§+'§)
         {
            if(this.§<e§ || !§[5§())
            {
               this.§+'§.alpha -= 0.025;
               this.§+'§.y += 1;
               this.§+'§.rotation += 0.01;
               if(this.§+'§.alpha <= 0)
               {
                  this.§+'§.dispose();
                  this.§+'§ = null;
               }
            }
            else
            {
               this.§+'§.rotation = Math.cos(_loc2_) * Tuner.§1f§;
               _loc4_ = new Point(-this.§[!<§.x,-this.§[!<§.y);
               this.§+'§.x = x + _loc4_.x * Math.cos(this.§+'§.rotation) - _loc4_.y * Math.sin(this.§+'§.rotation);
               this.§+'§.y = y + _loc4_.x * Math.sin(this.§+'§.rotation) + _loc4_.y * Math.cos(this.§+'§.rotation);
               if((_loc5_ = §[5§().GetLinearVelocity().y) > Tuner.§^!0§)
               {
                  _loc5_ = Tuner.§^!0§;
               }
               §[5§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§%!&§,_loc5_));
            }
         }
         this.§%U§ += param1;
      }
      
      public function get §%!K§() : Boolean
      {
         return !§[5§() && this.§+'§ == null;
      }
   }
}
