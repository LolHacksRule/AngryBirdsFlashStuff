package §!j§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§#!E§;
   import §9K§.§,z§;
   import §^!A§.§;!%§;
   import §^!A§.§@H§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+m§ extends §;!%§
   {
       
      
      public var §'V§:Boolean = false;
      
      public var §[5§:Boolean = false;
      
      private var §3Q§:§?T§;
      
      private var §?z§:Point;
      
      private var §"8§:Number = 0;
      
      public function §+m§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§'H§();
      }
      
      private function §'H§() : void
      {
         var _loc1_:§,z§ = §=w§.§ o§.§;!L§.§8!0§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§3Q§ = new §?T§(_loc1_.texture,true);
         this.§?z§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §=w§.§ o§.objects.§`$§.addChild(this.§3Q§);
      }
      
      public function §@3§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§"8§ / 1000 * Math.PI * §#!E§.§ !A§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§3Q§)
         {
            if(this.§[5§ || !§'[§())
            {
               this.§3Q§.alpha -= 0.025;
               this.§3Q§.y += 1;
               this.§3Q§.rotation += 0.01;
               if(this.§3Q§.alpha <= 0)
               {
                  this.§3Q§.dispose();
                  this.§3Q§ = null;
               }
            }
            else
            {
               this.§3Q§.rotation = Math.cos(_loc2_) * §#!E§.§@$§;
               _loc4_ = new Point(-this.§?z§.x,-this.§?z§.y);
               this.§3Q§.x = x + _loc4_.x * Math.cos(this.§3Q§.rotation) - _loc4_.y * Math.sin(this.§3Q§.rotation);
               this.§3Q§.y = y + _loc4_.x * Math.sin(this.§3Q§.rotation) + _loc4_.y * Math.cos(this.§3Q§.rotation);
               if((_loc5_ = §'[§().GetLinearVelocity().y) > §#!E§.§5x§)
               {
                  _loc5_ = §#!E§.§5x§;
               }
               §'[§().SetLinearVelocity(new b2Vec2(_loc3_ * §#!E§.§8!9§,_loc5_));
            }
         }
         this.§"8§ += param1;
      }
      
      public function get §'!!§() : Boolean
      {
         return !§'[§() && this.§3Q§ == null;
      }
   }
}
