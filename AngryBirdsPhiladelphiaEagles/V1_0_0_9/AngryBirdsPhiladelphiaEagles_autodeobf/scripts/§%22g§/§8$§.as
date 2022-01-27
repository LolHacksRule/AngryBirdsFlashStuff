package §"g§
{
   import §,T§.Tuner;
   import §,T§.§[-§;
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import §0=§.§2p§;
   import §0=§.§6!M§;
   import §<A§.§8<§;
   import §=z§.§0!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §8$§ extends §2p§
   {
       
      
      public var §]1§:Boolean = false;
      
      public var §3M§:Boolean = false;
      
      private var §1<§:§3!1§;
      
      private var §?Y§:Point;
      
      private var §55§:Number = 0;
      
      public function §8$§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§!K§();
      }
      
      private function §!K§() : void
      {
         var _loc1_:§8<§ = §0!E§.§9!B§.§,F§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§1<§ = new §3!1§(_loc1_.texture,true);
         this.§?Y§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §0!E§.§9!B§.objects.§&! §.addChild(this.§1<§);
      }
      
      public function §6!A§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§55§ / 1000 * Math.PI * Tuner.§0X§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§1<§)
         {
            if(this.§3M§ || !§;!M§())
            {
               this.§1<§.alpha -= 0.025;
               this.§1<§.y += 1;
               this.§1<§.rotation += 0.01;
               if(this.§1<§.alpha <= 0)
               {
                  this.§1<§.dispose();
                  this.§1<§ = null;
               }
            }
            else
            {
               this.§1<§.rotation = Math.cos(_loc2_) * Tuner.§"U§;
               _loc4_ = new Point(-this.§?Y§.x,-this.§?Y§.y);
               this.§1<§.x = x + _loc4_.x * Math.cos(this.§1<§.rotation) - _loc4_.y * Math.sin(this.§1<§.rotation);
               this.§1<§.y = y + _loc4_.x * Math.sin(this.§1<§.rotation) + _loc4_.y * Math.cos(this.§1<§.rotation);
               if((_loc5_ = §;!M§().GetLinearVelocity().y) > Tuner.§`!>§)
               {
                  _loc5_ = Tuner.§`!>§;
               }
               §;!M§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§4&§,_loc5_));
            }
         }
         this.§55§ += param1;
      }
      
      public function get §9v§() : Boolean
      {
         return !§;!M§() && this.§1<§ == null;
      }
   }
}
