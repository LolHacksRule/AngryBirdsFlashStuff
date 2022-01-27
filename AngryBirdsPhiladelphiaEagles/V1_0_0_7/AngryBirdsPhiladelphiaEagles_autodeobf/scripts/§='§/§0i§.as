package §='§
{
   import §"^§.§9=§;
   import §+f§.§=3§;
   import §,!F§.§#§;
   import §,!F§.Tuner;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import §8x§.§8C§;
   import §8x§.§>A§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §0i§ extends §8C§
   {
       
      
      public var §2!2§:Boolean = false;
      
      public var §+;§:Boolean = false;
      
      private var §%j§:§`l§;
      
      private var §>c§:Point;
      
      private var §7!6§:Number = 0;
      
      public function §0i§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§<>§();
      }
      
      private function §<>§() : void
      {
         var _loc1_:§=3§ = §9=§.§<!@§.§94§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§%j§ = new §`l§(_loc1_.texture,true);
         this.§>c§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §9=§.§<!@§.objects.§"!B§.addChild(this.§%j§);
      }
      
      public function §>;§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§7!6§ / 1000 * Math.PI * Tuner.§?9§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§%j§)
         {
            if(this.§+;§ || !§]!7§())
            {
               this.§%j§.alpha -= 0.025;
               this.§%j§.y += 1;
               this.§%j§.rotation += 0.01;
               if(this.§%j§.alpha <= 0)
               {
                  this.§%j§.dispose();
                  this.§%j§ = null;
               }
            }
            else
            {
               this.§%j§.rotation = Math.cos(_loc2_) * Tuner.§-t§;
               _loc4_ = new Point(-this.§>c§.x,-this.§>c§.y);
               this.§%j§.x = x + _loc4_.x * Math.cos(this.§%j§.rotation) - _loc4_.y * Math.sin(this.§%j§.rotation);
               this.§%j§.y = y + _loc4_.x * Math.sin(this.§%j§.rotation) + _loc4_.y * Math.cos(this.§%j§.rotation);
               if((_loc5_ = §]!7§().GetLinearVelocity().y) > Tuner.§-!'§)
               {
                  _loc5_ = Tuner.§-!'§;
               }
               §]!7§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§,u§,_loc5_));
            }
         }
         this.§7!6§ += param1;
      }
      
      public function get §3j§() : Boolean
      {
         return !§]!7§() && this.§%j§ == null;
      }
   }
}
