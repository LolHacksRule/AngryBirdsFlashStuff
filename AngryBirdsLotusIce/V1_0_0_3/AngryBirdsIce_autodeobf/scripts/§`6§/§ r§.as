package §`6§
{
   import §!Y§.§[o§;
   import §1n§.§1D§;
   import §9_§.§+>§;
   import §9_§.§?!!§;
   import §[x§.§2^§;
   import §[x§.§`5§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class § r§ extends §+>§
   {
       
      
      public var §]Q§:Boolean = false;
      
      public var §02§:Boolean = false;
      
      private var §!C§:§1!,§;
      
      private var §?!3§:Point;
      
      private var §-!8§:Number = 0;
      
      public function § r§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§]a§();
      }
      
      private function §]a§() : void
      {
         var _loc1_:§1D§ = §[o§.§='§.§0!§.§9$§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§!C§ = new §1!,§(_loc1_.texture,true);
         this.§?!3§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §[o§.§='§.objects.§]! §.addChild(this.§!C§);
      }
      
      public function §,W§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§-!8§ / 1000 * Math.PI * §`5§.§package§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§!C§)
         {
            if(this.§02§ || !§>b§())
            {
               this.§!C§.alpha -= 0.025;
               this.§!C§.y += 1;
               this.§!C§.rotation += 0.01;
               if(this.§!C§.alpha <= 0)
               {
                  this.§!C§.dispose();
                  this.§!C§ = null;
               }
            }
            else
            {
               this.§!C§.rotation = Math.cos(_loc2_) * §`5§.§]w§;
               _loc4_ = new Point(-this.§?!3§.x,-this.§?!3§.y);
               this.§!C§.x = x + _loc4_.x * Math.cos(this.§!C§.rotation) - _loc4_.y * Math.sin(this.§!C§.rotation);
               this.§!C§.y = y + _loc4_.x * Math.sin(this.§!C§.rotation) + _loc4_.y * Math.cos(this.§!C§.rotation);
               if((_loc5_ = §>b§().GetLinearVelocity().y) > §`5§.§8!,§)
               {
                  _loc5_ = §`5§.§8!,§;
               }
               §>b§().SetLinearVelocity(new b2Vec2(_loc3_ * §`5§.§>m§,_loc5_));
            }
         }
         this.§-!8§ += param1;
      }
      
      public function get §3@§() : Boolean
      {
         return !§>b§() && this.§!C§ == null;
      }
   }
}
