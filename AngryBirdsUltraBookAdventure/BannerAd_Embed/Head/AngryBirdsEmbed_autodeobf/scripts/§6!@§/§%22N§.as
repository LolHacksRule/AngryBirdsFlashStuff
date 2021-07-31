package §6!@§
{
   import § !3§.§'§;
   import § !3§.§]!9§;
   import §"!5§.§,!!§;
   import §%-§.§%!,§;
   import §%-§.Sprite;
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §<h§.§]^§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §"N§ extends §'§
   {
       
      
      public var §+g§:Boolean = false;
      
      public var §9z§:Boolean = false;
      
      private var §in §:§%!,§;
      
      private var §7o§:Point;
      
      private var §<R§:Number = 0;
      
      public function §"N§(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§4!A§();
      }
      
      private function §4!A§() : void
      {
         var _loc1_:§]^§ = §,!!§.§;4§.§+!!§.§3H§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§in § = new §%!,§(_loc1_.texture,true);
         this.§7o§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §,!!§.§;4§.objects.§^!9§.addChild(this.§in §);
      }
      
      public function §5M§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§<R§ / 1000 * Math.PI * §#!;§.§]Z§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§in §)
         {
            if(this.§9z§ || !§9! §())
            {
               this.§in §.alpha -= 0.025;
               this.§in §.y += 1;
               this.§in §.rotation += 0.01;
               if(this.§in §.alpha <= 0)
               {
                  this.§in §.dispose();
                  this.§in § = null;
               }
            }
            else
            {
               this.§in §.rotation = Math.cos(_loc2_) * §#!;§.§'>§;
               _loc4_ = new Point(-this.§7o§.x,-this.§7o§.y);
               this.§in §.x = x + _loc4_.x * Math.cos(this.§in §.rotation) - _loc4_.y * Math.sin(this.§in §.rotation);
               this.§in §.y = y + _loc4_.x * Math.sin(this.§in §.rotation) + _loc4_.y * Math.cos(this.§in §.rotation);
               if((_loc5_ = §9! §().GetLinearVelocity().y) > §#!;§.§3U§)
               {
                  _loc5_ = §#!;§.§3U§;
               }
               §9! §().SetLinearVelocity(new b2Vec2(_loc3_ * §#!;§.§,+§,_loc5_));
            }
         }
         this.§<R§ += param1;
      }
      
      public function get §%7§() : Boolean
      {
         return !§9! §() && this.§in § == null;
      }
   }
}
