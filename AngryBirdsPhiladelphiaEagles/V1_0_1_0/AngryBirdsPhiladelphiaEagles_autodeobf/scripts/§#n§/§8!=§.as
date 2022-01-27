package §#n§
{
   import § !N§.§6!§;
   import §3F§.§0z§;
   import §3F§.§2!3§;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import §>2§.§4h§;
   import §>2§.Tuner;
   import §@w§.§2G§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §8!=§ extends §2!3§
   {
       
      
      public var §2N§:Boolean = false;
      
      public var § B§:Boolean = false;
      
      private var §=!9§:§`!@§;
      
      private var §7K§:Point;
      
      private var §'@§:Number = 0;
      
      public function §8!=§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§3B§();
      }
      
      private function §3B§() : void
      {
         var _loc1_:§6!§ = §2G§.§7!,§.§4!C§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§=!9§ = new §`!@§(_loc1_.texture,true);
         this.§7K§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §2G§.§7!,§.objects.§default§.addChild(this.§=!9§);
      }
      
      public function §12§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§'@§ / 1000 * Math.PI * Tuner.§!c§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§=!9§)
         {
            if(this.§ B§ || !§?!M§())
            {
               this.§=!9§.alpha -= 0.025;
               this.§=!9§.y += 1;
               this.§=!9§.rotation += 0.01;
               if(this.§=!9§.alpha <= 0)
               {
                  this.§=!9§.dispose();
                  this.§=!9§ = null;
               }
            }
            else
            {
               this.§=!9§.rotation = Math.cos(_loc2_) * Tuner.§!s§;
               _loc4_ = new Point(-this.§7K§.x,-this.§7K§.y);
               this.§=!9§.x = x + _loc4_.x * Math.cos(this.§=!9§.rotation) - _loc4_.y * Math.sin(this.§=!9§.rotation);
               this.§=!9§.y = y + _loc4_.x * Math.sin(this.§=!9§.rotation) + _loc4_.y * Math.cos(this.§=!9§.rotation);
               if((_loc5_ = §?!M§().GetLinearVelocity().y) > Tuner.§;!8§)
               {
                  _loc5_ = Tuner.§;!8§;
               }
               §?!M§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§?!+§,_loc5_));
            }
         }
         this.§'@§ += param1;
      }
      
      public function get §"A§() : Boolean
      {
         return !§?!M§() && this.§=!9§ == null;
      }
   }
}
