package §%!c§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §,6§.§5z§;
   import §5i§.§4!]§;
   import §8>§.b2Vec2;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §]![§.§4!H§;
   import §]![§.§[?§;
   import flash.geom.Point;
   
   public class §"f§ extends §4!H§
   {
       
      
      public var §98§:Boolean = false;
      
      public var §[j§:Boolean = false;
      
      private var §!!H§:§;!U§;
      
      private var §4E§:Point;
      
      private var §87§:Number = 0;
      
      public function §"f§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§5"§();
      }
      
      private function §5"§() : void
      {
         var _loc1_:§5z§ = §4!]§.§8C§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§!!H§ = new §;!U§(_loc1_.texture,true);
         this.§4E§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §4!]§.§8C§.objects.§;+§.addChild(this.§!!H§);
      }
      
      public function §[I§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§87§ / 1000 * Math.PI * §3D§.§@Y§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§!!H§)
         {
            if(this.§[j§ || !§+$§())
            {
               this.§!!H§.alpha -= 0.025;
               this.§!!H§.y += 1;
               this.§!!H§.rotation += 0.01;
               if(this.§!!H§.alpha <= 0)
               {
                  this.§!!H§.dispose();
                  this.§!!H§ = null;
               }
            }
            else
            {
               this.§!!H§.rotation = Math.cos(_loc2_) * §3D§.§&!"§;
               _loc4_ = new Point(-this.§4E§.x,-this.§4E§.y);
               this.§!!H§.x = x + _loc4_.x * Math.cos(this.§!!H§.rotation) - _loc4_.y * Math.sin(this.§!!H§.rotation);
               this.§!!H§.y = y + _loc4_.x * Math.sin(this.§!!H§.rotation) + _loc4_.y * Math.cos(this.§!!H§.rotation);
               if((_loc5_ = §+$§().GetLinearVelocity().y) > §3D§.§6K§)
               {
                  _loc5_ = §3D§.§6K§;
               }
               §+$§().SetLinearVelocity(new b2Vec2(_loc3_ * §3D§.§"!G§,_loc5_));
            }
         }
         this.§87§ += param1;
      }
      
      public function get §^!H§() : Boolean
      {
         return !§+$§() && this.§!!H§ == null;
      }
   }
}
