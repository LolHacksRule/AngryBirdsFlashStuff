package §,k§
{
   import §#]§.§'5§;
   import §4n§.§8y§;
   import §4n§.§@!4§;
   import §;'§.§>-§;
   import §;'§.§?!D§;
   import §;^§.§ @§;
   import §;^§.Sprite;
   import §=!K§.§@p§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §@6§ extends §@!4§
   {
       
      
      public var §%§:Boolean = false;
      
      public var §;;§:Boolean = false;
      
      private var §<^§:§ @§;
      
      private var §5<§:Point;
      
      private var § !"§:Number = 0;
      
      public function §@6§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§^]§();
      }
      
      private function §^]§() : void
      {
         var _loc1_:§@p§ = §'5§.§^;§.§6?§.§]C§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§<^§ = new § @§(_loc1_.texture,true);
         this.§5<§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §'5§.§^;§.objects.§=j§.addChild(this.§<^§);
      }
      
      public function §2!D§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§ !"§ / 1000 * Math.PI * §>-§.§#3§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§<^§)
         {
            if(this.§;;§ || !§^C§())
            {
               this.§<^§.alpha -= 0.025;
               this.§<^§.y += 1;
               this.§<^§.rotation += 0.01;
               if(this.§<^§.alpha <= 0)
               {
                  this.§<^§.dispose();
                  this.§<^§ = null;
               }
            }
            else
            {
               this.§<^§.rotation = Math.cos(_loc2_) * §>-§.§;!B§;
               _loc4_ = new Point(-this.§5<§.x,-this.§5<§.y);
               this.§<^§.x = x + _loc4_.x * Math.cos(this.§<^§.rotation) - _loc4_.y * Math.sin(this.§<^§.rotation);
               this.§<^§.y = y + _loc4_.x * Math.sin(this.§<^§.rotation) + _loc4_.y * Math.cos(this.§<^§.rotation);
               if((_loc5_ = §^C§().GetLinearVelocity().y) > §>-§.§4<§)
               {
                  _loc5_ = §>-§.§4<§;
               }
               §^C§().SetLinearVelocity(new b2Vec2(_loc3_ * §>-§.§,3§,_loc5_));
            }
         }
         this.§ !"§ += param1;
      }
      
      public function get §6K§() : Boolean
      {
         return !§^C§() && this.§<^§ == null;
      }
   }
}
