package §+P§
{
   import § !J§.§%M§;
   import § !J§.§,![§;
   import §+S§.b2Vec2;
   import §4j§.§0K§;
   import §4j§.§9M§;
   import §7F§.§2M§;
   import §8T§.b2World;
   import §9`§.§8!P§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   import flash.geom.Point;
   
   public class §#X§ extends §9M§
   {
       
      
      public var §3!6§:Boolean = false;
      
      public var §>K§:Boolean = false;
      
      private var §with§:§+i§;
      
      private var §-K§:Point;
      
      private var §[!3§:Number = 0;
      
      public function §#X§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§4!b§();
      }
      
      private function §4!b§() : void
      {
         var _loc1_:§8!P§ = §2M§.§1?§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§with§ = new §+i§(_loc1_.texture,true);
         this.§-K§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §2M§.§1?§.objects.§@!%§.addChild(this.§with§);
      }
      
      public function §`Q§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§[!3§ / 1000 * Math.PI * §,![§.§+l§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§with§)
         {
            if(this.§>K§ || !§3H§())
            {
               this.§with§.alpha -= 0.025;
               this.§with§.y += 1;
               this.§with§.rotation += 0.01;
               if(this.§with§.alpha <= 0)
               {
                  this.§with§.dispose();
                  this.§with§ = null;
               }
            }
            else
            {
               this.§with§.rotation = Math.cos(_loc2_) * §,![§.§,8§;
               _loc4_ = new Point(-this.§-K§.x,-this.§-K§.y);
               this.§with§.x = x + _loc4_.x * Math.cos(this.§with§.rotation) - _loc4_.y * Math.sin(this.§with§.rotation);
               this.§with§.y = y + _loc4_.x * Math.sin(this.§with§.rotation) + _loc4_.y * Math.cos(this.§with§.rotation);
               if((_loc5_ = §3H§().GetLinearVelocity().y) > §,![§.§!"§)
               {
                  _loc5_ = §,![§.§!"§;
               }
               §3H§().SetLinearVelocity(new b2Vec2(_loc3_ * §,![§.§5s§,_loc5_));
            }
         }
         this.§[!3§ += param1;
      }
      
      public function get §=!P§() : Boolean
      {
         return !§3H§() && this.§with§ == null;
      }
   }
}
