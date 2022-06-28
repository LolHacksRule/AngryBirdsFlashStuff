package §@§
{
   import §+!?§.§"h§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§&!"§;
   import §5`§.§%F§;
   import §8u§.§0r§;
   import §8u§.§6a§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+!9§ extends §0r§
   {
       
      
      public var §7C§:Boolean = false;
      
      public var §8^§:Boolean = false;
      
      private var §=!§:§4K§;
      
      private var §?&§:Point;
      
      private var §='§:Number = 0;
      
      public function §+!9§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§8!§();
      }
      
      private function §8!§() : void
      {
         var _loc1_:§%F§ = §"h§.§1C§.§ use§.§,!;§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§=!§ = new §4K§(_loc1_.texture,true);
         this.§?&§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §"h§.§1C§.objects.§@?§.addChild(this.§=!§);
      }
      
      public function §2!>§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§='§ / 1000 * Math.PI * §&!"§.§+!5§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§=!§)
         {
            if(this.§8^§ || !§?n§())
            {
               this.§=!§.alpha -= 0.025;
               this.§=!§.y += 1;
               this.§=!§.rotation += 0.01;
               if(this.§=!§.alpha <= 0)
               {
                  this.§=!§.dispose();
                  this.§=!§ = null;
               }
            }
            else
            {
               this.§=!§.rotation = Math.cos(_loc2_) * §&!"§.§>J§;
               _loc4_ = new Point(-this.§?&§.x,-this.§?&§.y);
               this.§=!§.x = x + _loc4_.x * Math.cos(this.§=!§.rotation) - _loc4_.y * Math.sin(this.§=!§.rotation);
               this.§=!§.y = y + _loc4_.x * Math.sin(this.§=!§.rotation) + _loc4_.y * Math.cos(this.§=!§.rotation);
               if((_loc5_ = §?n§().GetLinearVelocity().y) > §&!"§.§+!=§)
               {
                  _loc5_ = §&!"§.§+!=§;
               }
               §?n§().SetLinearVelocity(new b2Vec2(_loc3_ * §&!"§.§>!<§,_loc5_));
            }
         }
         this.§='§ += param1;
      }
      
      public function get §>!$§() : Boolean
      {
         return !§?n§() && this.§=!§ == null;
      }
   }
}
