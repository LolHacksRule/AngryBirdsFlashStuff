package § "§
{
   import §%"§.§ do§;
   import §%"§.Tuner;
   import §'R§.§!m§;
   import §'R§.§&r§;
   import §<!F§.§5!+§;
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §^'§.§!!M§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §4!F§ extends §&r§
   {
       
      
      public var §-q§:Boolean = false;
      
      public var §?=§:Boolean = false;
      
      private var §&R§:§&M§;
      
      private var §3L§:Point;
      
      private var §>-§:Number = 0;
      
      public function §4!F§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§1z§();
      }
      
      private function §1z§() : void
      {
         var _loc1_:§!!M§ = §5!+§.§6!§.§4i§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§&R§ = new §&M§(_loc1_.texture,true);
         this.§3L§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §5!+§.§6!§.objects.§1!9§.addChild(this.§&R§);
      }
      
      public function §+R§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§>-§ / 1000 * Math.PI * Tuner.§^f§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§&R§)
         {
            if(this.§?=§ || !§<!I§())
            {
               this.§&R§.alpha -= 0.025;
               this.§&R§.y += 1;
               this.§&R§.rotation += 0.01;
               if(this.§&R§.alpha <= 0)
               {
                  this.§&R§.dispose();
                  this.§&R§ = null;
               }
            }
            else
            {
               this.§&R§.rotation = Math.cos(_loc2_) * Tuner.§#4§;
               _loc4_ = new Point(-this.§3L§.x,-this.§3L§.y);
               this.§&R§.x = x + _loc4_.x * Math.cos(this.§&R§.rotation) - _loc4_.y * Math.sin(this.§&R§.rotation);
               this.§&R§.y = y + _loc4_.x * Math.sin(this.§&R§.rotation) + _loc4_.y * Math.cos(this.§&R§.rotation);
               if((_loc5_ = §<!I§().GetLinearVelocity().y) > Tuner.§-p§)
               {
                  _loc5_ = Tuner.§-p§;
               }
               §<!I§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§+l§,_loc5_));
            }
         }
         this.§>-§ += param1;
      }
      
      public function get §@!A§() : Boolean
      {
         return !§<!I§() && this.§&R§ == null;
      }
   }
}
