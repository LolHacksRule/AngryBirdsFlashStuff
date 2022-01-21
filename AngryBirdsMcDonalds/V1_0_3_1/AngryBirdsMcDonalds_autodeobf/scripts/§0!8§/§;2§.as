package §0!8§
{
   import § !%§.§0!U§;
   import § !Y§.§2#§;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   import §&x§.b2World;
   import §0,§.b2Vec2;
   import §3!@§.§ s§;
   import §3!@§.§'!0§;
   import §?!§.§%o§;
   import §?!§.§>!4§;
   import flash.geom.Point;
   
   public class §;2§ extends §%o§
   {
       
      
      public var § for§:Boolean = false;
      
      public var §!!g§:Boolean = false;
      
      private var §]I§:§%!a§;
      
      private var §?!O§:Point;
      
      private var §&z§:Number = 0;
      
      public function §;2§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§6P§();
      }
      
      private function §6P§() : void
      {
         var _loc1_:§0!U§ = §2#§.§"@§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§]I§ = new §%!a§(_loc1_.texture,true);
         this.§?!O§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §2#§.§"@§.objects.§38§.addChild(this.§]I§);
      }
      
      public function §&+§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§&z§ / 1000 * Math.PI * §'!0§.§4!h§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§]I§)
         {
            if(this.§!!g§ || !§2!!§())
            {
               this.§]I§.alpha -= 0.025;
               this.§]I§.y += 1;
               this.§]I§.rotation += 0.01;
               if(this.§]I§.alpha <= 0)
               {
                  this.§]I§.dispose();
                  this.§]I§ = null;
               }
            }
            else
            {
               this.§]I§.rotation = Math.cos(_loc2_) * §'!0§.§`?§;
               _loc4_ = new Point(-this.§?!O§.x,-this.§?!O§.y);
               this.§]I§.x = x + _loc4_.x * Math.cos(this.§]I§.rotation) - _loc4_.y * Math.sin(this.§]I§.rotation);
               this.§]I§.y = y + _loc4_.x * Math.sin(this.§]I§.rotation) + _loc4_.y * Math.cos(this.§]I§.rotation);
               if((_loc5_ = §2!!§().GetLinearVelocity().y) > §'!0§.§ !K§)
               {
                  _loc5_ = §'!0§.§ !K§;
               }
               §2!!§().SetLinearVelocity(new b2Vec2(_loc3_ * §'!0§.§6?§,_loc5_));
            }
         }
         this.§&z§ += param1;
      }
      
      public function get §<r§() : Boolean
      {
         return !§2!!§() && this.§]I§ == null;
      }
   }
}
