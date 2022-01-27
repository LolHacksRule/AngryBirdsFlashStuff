package §1&§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§`!9§;
   import §-!&§.§20§;
   import §-!&§.§3!,§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.Tuner;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §1!B§ extends §3!,§
   {
       
      
      public var §2s§:Boolean = false;
      
      public var §0J§:Boolean = false;
      
      private var §3!§:§1!A§;
      
      private var §!!$§:Point;
      
      private var §+t§:Number = 0;
      
      public function §1!B§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§8!3§();
      }
      
      private function §8!3§() : void
      {
         var _loc1_:§`!9§ = §#! §.§`'§.§<'§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§3!§ = new §1!A§(_loc1_.texture,true);
         this.§!!$§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §#! §.§`'§.objects.§<-§.addChild(this.§3!§);
      }
      
      public function §4!>§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§+t§ / 1000 * Math.PI * Tuner.§=y§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§3!§)
         {
            if(this.§0J§ || !§`%§())
            {
               this.§3!§.alpha -= 0.025;
               this.§3!§.y += 1;
               this.§3!§.rotation += 0.01;
               if(this.§3!§.alpha <= 0)
               {
                  this.§3!§.dispose();
                  this.§3!§ = null;
               }
            }
            else
            {
               this.§3!§.rotation = Math.cos(_loc2_) * Tuner.§3!G§;
               _loc4_ = new Point(-this.§!!$§.x,-this.§!!$§.y);
               this.§3!§.x = x + _loc4_.x * Math.cos(this.§3!§.rotation) - _loc4_.y * Math.sin(this.§3!§.rotation);
               this.§3!§.y = y + _loc4_.x * Math.sin(this.§3!§.rotation) + _loc4_.y * Math.cos(this.§3!§.rotation);
               if((_loc5_ = §`%§().GetLinearVelocity().y) > Tuner.§in §)
               {
                  _loc5_ = Tuner.§in §;
               }
               §`%§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§%f§,_loc5_));
            }
         }
         this.§+t§ += param1;
      }
      
      public function get §6Q§() : Boolean
      {
         return !§`%§() && this.§3!§ == null;
      }
   }
}
