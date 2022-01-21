package §throw§
{
   import §!R§.b2Vec2;
   import §&[§.§,!"§;
   import §1B§.b2World;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   import §5!G§.§6!Y§;
   import §5!G§.§8+§;
   import §@!b§.§0]§;
   import §@!b§.§@!k§;
   import flash.geom.Point;
   
   public class §3M§ extends §6!Y§
   {
       
      
      public var §5?§:Boolean = false;
      
      public var §=!+§:Boolean = false;
      
      private var § M§:§<7§;
      
      private var §%+§:Point;
      
      private var § !l§:Number = 0;
      
      public function §3M§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§'!N§();
      }
      
      private function §'!N§() : void
      {
         var _loc1_:§,!"§ = §<H§.§=3§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§ M§ = new §<7§(_loc1_.texture,true);
         this.§%+§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §<H§.§=3§.objects.§^!X§.addChild(this.§ M§);
      }
      
      public function §=!S§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§ !l§ / 1000 * Math.PI * §0]§.§=c§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§ M§)
         {
            if(this.§=!+§ || !§>j§())
            {
               this.§ M§.alpha -= 0.025;
               this.§ M§.y += 1;
               this.§ M§.rotation += 0.01;
               if(this.§ M§.alpha <= 0)
               {
                  this.§ M§.dispose();
                  this.§ M§ = null;
               }
            }
            else
            {
               this.§ M§.rotation = Math.cos(_loc2_) * §0]§.§'+§;
               _loc4_ = new Point(-this.§%+§.x,-this.§%+§.y);
               this.§ M§.x = x + _loc4_.x * Math.cos(this.§ M§.rotation) - _loc4_.y * Math.sin(this.§ M§.rotation);
               this.§ M§.y = y + _loc4_.x * Math.sin(this.§ M§.rotation) + _loc4_.y * Math.cos(this.§ M§.rotation);
               if((_loc5_ = §>j§().GetLinearVelocity().y) > §0]§.§0!8§)
               {
                  _loc5_ = §0]§.§0!8§;
               }
               §>j§().SetLinearVelocity(new b2Vec2(_loc3_ * §0]§.§9!-§,_loc5_));
            }
         }
         this.§ !l§ += param1;
      }
      
      public function get §@e§() : Boolean
      {
         return !§>j§() && this.§ M§ == null;
      }
   }
}
