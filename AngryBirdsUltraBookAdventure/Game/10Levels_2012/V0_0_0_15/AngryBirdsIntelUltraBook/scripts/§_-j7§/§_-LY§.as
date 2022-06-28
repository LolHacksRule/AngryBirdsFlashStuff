package §_-j7§
{
   import §_-8d§.§_-vz§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-L8§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-lt§.§_-30§;
   import §_-lt§.§_-eZ§;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import flash.geom.Point;
   
   public class §_-LY§ extends §_-eZ§
   {
       
      
      public var §_-09m§:Boolean = false;
      
      public var §_-Up§:Boolean = false;
      
      private var §_-p6§:§_-09b§;
      
      private var §_-gp§:Point;
      
      private var §_-047§:Number = 0;
      
      public function §_-LY§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§_-gH§();
      }
      
      private function §_-gH§() : void
      {
         var _loc1_:§_-vz§ = § in§.§_-Dc§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§_-p6§ = new §_-09b§(_loc1_.texture,true);
         this.§_-gp§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         § in§.§_-Dc§.objects.§_-eJ§.addChild(this.§_-p6§);
      }
      
      public function §_-6K§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§_-047§ / 1000 * Math.PI * §_-L8§.§_-06I§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§_-p6§)
         {
            if(this.§_-Up§ || !§_-SJ§())
            {
               this.§_-p6§.alpha -= 0.025;
               this.§_-p6§.y += 1;
               this.§_-p6§.rotation += 0.01;
               if(this.§_-p6§.alpha <= 0)
               {
                  this.§_-p6§.dispose();
                  this.§_-p6§ = null;
               }
            }
            else
            {
               this.§_-p6§.rotation = Math.cos(_loc2_) * §_-L8§.§_-sp§;
               _loc4_ = new Point(-this.§_-gp§.x,-this.§_-gp§.y);
               this.§_-p6§.x = x + _loc4_.x * Math.cos(this.§_-p6§.rotation) - _loc4_.y * Math.sin(this.§_-p6§.rotation);
               this.§_-p6§.y = y + _loc4_.x * Math.sin(this.§_-p6§.rotation) + _loc4_.y * Math.cos(this.§_-p6§.rotation);
               if((_loc5_ = §_-SJ§().GetLinearVelocity().y) > §_-L8§.§_-mk§)
               {
                  _loc5_ = §_-L8§.§_-mk§;
               }
               §_-SJ§().SetLinearVelocity(new b2Vec2(_loc3_ * §_-L8§.§_-Lm§,_loc5_));
            }
         }
         this.§_-047§ += param1;
      }
      
      public function get §_-tO§() : Boolean
      {
         return !§_-SJ§() && this.§_-p6§ == null;
      }
   }
}
