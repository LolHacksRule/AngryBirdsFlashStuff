package §"G§
{
   import §%Q§.§=[§;
   import §%Q§.§`!<§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§^g§;
   import §-w§.§+W§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   import flash.geom.Point;
   import §true§.§ _§;
   
   public class §>!"§ extends §`!<§
   {
       
      
      public var §"e§:Boolean = false;
      
      public var §;y§:Boolean = false;
      
      private var §?7§:§?!U§;
      
      private var §6>§:Point;
      
      private var §?!2§:Number = 0;
      
      public function §>!"§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§"!v§();
      }
      
      private function §"!v§() : void
      {
         var _loc1_:§+W§ = § _§.§!6§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§?7§ = new §?!U§(_loc1_.texture,true);
         this.§6>§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         § _§.§!6§.objects.§9G§.addChild(this.§?7§);
      }
      
      public function §05§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§?!2§ / 1000 * Math.PI * §0;§.§+j§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§?7§)
         {
            if(this.§;y§ || !§5b§())
            {
               this.§?7§.alpha -= 0.025;
               this.§?7§.y += 1;
               this.§?7§.rotation += 0.01;
               if(this.§?7§.alpha <= 0)
               {
                  this.§?7§.dispose();
                  this.§?7§ = null;
               }
            }
            else
            {
               this.§?7§.rotation = Math.cos(_loc2_) * §0;§.§#B§;
               _loc4_ = new Point(-this.§6>§.x,-this.§6>§.y);
               this.§?7§.x = x + _loc4_.x * Math.cos(this.§?7§.rotation) - _loc4_.y * Math.sin(this.§?7§.rotation);
               this.§?7§.y = y + _loc4_.x * Math.sin(this.§?7§.rotation) + _loc4_.y * Math.cos(this.§?7§.rotation);
               if((_loc5_ = §5b§().GetLinearVelocity().y) > §0;§.§9!'§)
               {
                  _loc5_ = §0;§.§9!'§;
               }
               §5b§().SetLinearVelocity(new b2Vec2(_loc3_ * §0;§.§[!o§,_loc5_));
            }
         }
         this.§?!2§ += param1;
      }
      
      public function get §3f§() : Boolean
      {
         return !§5b§() && this.§?7§ == null;
      }
   }
}
