package §2u§
{
   import §!!,§.§^!0§;
   import §!!,§.§`Q§;
   import §#!@§.§0V§;
   import §#!@§.Sprite;
   import §6h§.§[!4§;
   import §9s§.§^9§;
   import §9s§.§^u§;
   import §[v§.§'P§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §`!M§ extends §`Q§
   {
       
      
      public var §-h§:Boolean = false;
      
      public var §`!C§:Boolean = false;
      
      private var §&;§:§0V§;
      
      private var §2!4§:Point;
      
      private var §const§:Number = 0;
      
      public function §`!M§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§%Z§();
      }
      
      private function §%Z§() : void
      {
         var _loc1_:§'P§ = §[!4§.§continue§.§%F§.§ +§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§&;§ = new §0V§(_loc1_.texture,true);
         this.§2!4§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §[!4§.§continue§.objects.§-!!§.addChild(this.§&;§);
      }
      
      public function §>!&§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§const§ / 1000 * Math.PI * §^u§.§>%§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§&;§)
         {
            if(this.§`!C§ || !§ 7§())
            {
               this.§&;§.alpha -= 0.025;
               this.§&;§.y += 1;
               this.§&;§.rotation += 0.01;
               if(this.§&;§.alpha <= 0)
               {
                  this.§&;§.dispose();
                  this.§&;§ = null;
               }
            }
            else
            {
               this.§&;§.rotation = Math.cos(_loc2_) * §^u§.§?!G§;
               _loc4_ = new Point(-this.§2!4§.x,-this.§2!4§.y);
               this.§&;§.x = x + _loc4_.x * Math.cos(this.§&;§.rotation) - _loc4_.y * Math.sin(this.§&;§.rotation);
               this.§&;§.y = y + _loc4_.x * Math.sin(this.§&;§.rotation) + _loc4_.y * Math.cos(this.§&;§.rotation);
               if((_loc5_ = § 7§().GetLinearVelocity().y) > §^u§.§,!&§)
               {
                  _loc5_ = §^u§.§,!&§;
               }
               § 7§().SetLinearVelocity(new b2Vec2(_loc3_ * §^u§.§"!§,_loc5_));
            }
         }
         this.§const§ += param1;
      }
      
      public function get §72§() : Boolean
      {
         return !§ 7§() && this.§&;§ == null;
      }
   }
}
