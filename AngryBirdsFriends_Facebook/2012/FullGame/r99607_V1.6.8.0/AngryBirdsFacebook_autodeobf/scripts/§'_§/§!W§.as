package §'_§
{
   import § !k§.b2World;
   import §!"8§.b2Vec2;
   import §+I§.§9!%§;
   import §3,§.§[!;§;
   import §3,§.§`a§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.Sprite;
   import flash.geom.Point;
   
   public class §!W§ extends §9V§
   {
       
      
      public var §=6§:Boolean = false;
      
      public var §4!9§:Boolean = false;
      
      private var §1!`§:§-§;
      
      private var §3![§:Point;
      
      private var §`!7§:Number = 0;
      
      public function §!W§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§'5§();
      }
      
      private function §'5§() : void
      {
         var _loc1_:§?n§ = §9!%§.§!!M§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§1!`§ = new §-§(_loc1_.texture,true);
         this.§3![§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §9!%§.§!!M§.objects.§,!g§.addChild(this.§1!`§);
      }
      
      public function §+!`§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§`!7§ / 1000 * Math.PI * §`a§.§5r§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§1!`§)
         {
            if(this.§4!9§ || !§2"7§())
            {
               this.§1!`§.alpha -= 0.025;
               this.§1!`§.y += 1;
               this.§1!`§.rotation += 0.01;
               if(this.§1!`§.alpha <= 0)
               {
                  this.§1!`§.dispose();
                  this.§1!`§ = null;
               }
            }
            else
            {
               this.§1!`§.rotation = Math.cos(_loc2_) * §`a§.§ !=§;
               _loc4_ = new Point(-this.§3![§.x,-this.§3![§.y);
               this.§1!`§.x = x + _loc4_.x * Math.cos(this.§1!`§.rotation) - _loc4_.y * Math.sin(this.§1!`§.rotation);
               this.§1!`§.y = y + _loc4_.x * Math.sin(this.§1!`§.rotation) + _loc4_.y * Math.cos(this.§1!`§.rotation);
               if((_loc5_ = §2"7§().GetLinearVelocity().y) > §`a§.§;Z§)
               {
                  _loc5_ = §`a§.§;Z§;
               }
               §2"7§().SetLinearVelocity(new b2Vec2(_loc3_ * §`a§.static,_loc5_));
            }
         }
         this.§`!7§ += param1;
      }
      
      public function get §>!Y§() : Boolean
      {
         return !§2"7§() && this.§1!`§ == null;
      }
   }
}
