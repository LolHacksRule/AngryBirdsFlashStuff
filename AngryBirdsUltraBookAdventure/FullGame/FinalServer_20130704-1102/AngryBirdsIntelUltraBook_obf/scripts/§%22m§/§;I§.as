package §"m§
{
   import § var§.§ 4§;
   import § var§.§!u§;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §=`§.§#`§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.geom.Point;
   
   public class §;I§ extends §!u§
   {
       
      
      public var §&!;§:Boolean = false;
      
      public var §>y§:Boolean = false;
      
      private var §9!R§:§"<§;
      
      private var §3!#§:Point;
      
      private var §4!P§:Number = 0;
      
      public function §;I§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§3=§();
      }
      
      private function §3=§() : void
      {
         var _loc1_:§#`§ = §,!s§.§=!I§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§9!R§ = new §"<§(_loc1_.texture,true);
         this.§3!#§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §,!s§.§=!I§.objects.§<f§.addChild(this.§9!R§);
      }
      
      public function §43§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§4!P§ / 1000 * Math.PI * §2!y§.§4<§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§9!R§)
         {
            if(this.§>y§ || !§63§())
            {
               this.§9!R§.alpha -= 0.025;
               this.§9!R§.y += 1;
               this.§9!R§.rotation += 0.01;
               if(this.§9!R§.alpha <= 0)
               {
                  this.§9!R§.dispose();
                  this.§9!R§ = null;
               }
            }
            else
            {
               this.§9!R§.rotation = Math.cos(_loc2_) * §2!y§.§+#§;
               _loc4_ = new Point(-this.§3!#§.x,-this.§3!#§.y);
               this.§9!R§.x = x + _loc4_.x * Math.cos(this.§9!R§.rotation) - _loc4_.y * Math.sin(this.§9!R§.rotation);
               this.§9!R§.y = y + _loc4_.x * Math.sin(this.§9!R§.rotation) + _loc4_.y * Math.cos(this.§9!R§.rotation);
               if((_loc5_ = §63§().GetLinearVelocity().y) > §2!y§.§>8§)
               {
                  _loc5_ = §2!y§.§>8§;
               }
               §63§().SetLinearVelocity(new b2Vec2(_loc3_ * §2!y§.§^!O§,_loc5_));
            }
         }
         this.§4!P§ += param1;
      }
      
      public function get §%" §() : Boolean
      {
         return !§63§() && this.§9!R§ == null;
      }
   }
}
