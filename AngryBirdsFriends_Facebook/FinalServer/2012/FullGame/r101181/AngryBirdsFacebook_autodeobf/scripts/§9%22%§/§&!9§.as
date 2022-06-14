package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §6!D§.§3!K§;
   import §9"!§.§4"F§;
   import §9"!§.§9"3§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §&!9§ extends §&!r§
   {
       
      
      public var §"!`§:Boolean = false;
      
      public var §4!7§:Boolean = false;
      
      private var §;@§:§0!N§;
      
      private var §?J§:Point;
      
      private var §]!a§:Number = 0;
      
      public function §&!9§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§ h§();
      }
      
      private function § h§() : void
      {
         var _loc1_:§3!K§ = §#6§.§6!z§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§;@§ = new §0!N§(_loc1_.texture,true);
         this.§?J§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §#6§.§6!z§.objects.§9" §.addChild(this.§;@§);
      }
      
      public function §9!`§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§]!a§ / 1000 * Math.PI * §4"F§.§="§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§;@§)
         {
            if(this.§4!7§ || !§=!y§())
            {
               this.§;@§.alpha -= 0.025;
               this.§;@§.y += 1;
               this.§;@§.rotation += 0.01;
               if(this.§;@§.alpha <= 0)
               {
                  this.§;@§.dispose();
                  this.§;@§ = null;
               }
            }
            else
            {
               this.§;@§.rotation = Math.cos(_loc2_) * §4"F§.§4j§;
               _loc4_ = new Point(-this.§?J§.x,-this.§?J§.y);
               this.§;@§.x = x + _loc4_.x * Math.cos(this.§;@§.rotation) - _loc4_.y * Math.sin(this.§;@§.rotation);
               this.§;@§.y = y + _loc4_.x * Math.sin(this.§;@§.rotation) + _loc4_.y * Math.cos(this.§;@§.rotation);
               if((_loc5_ = §=!y§().GetLinearVelocity().y) > §4"F§.§`!x§)
               {
                  _loc5_ = §4"F§.§`!x§;
               }
               §=!y§().SetLinearVelocity(new b2Vec2(_loc3_ * §4"F§.§+a§,_loc5_));
            }
         }
         this.§]!a§ += param1;
      }
      
      public function get §@4§() : Boolean
      {
         return !§=!y§() && this.§;@§ == null;
      }
   }
}
