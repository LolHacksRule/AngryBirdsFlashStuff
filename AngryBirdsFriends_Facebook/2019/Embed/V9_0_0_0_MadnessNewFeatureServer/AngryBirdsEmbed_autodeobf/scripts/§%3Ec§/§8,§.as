package §>c§
{
   import §#?§.§^@§;
   import §90§.§8S§;
   import §90§.Sprite;
   import §>!O§.§[+§;
   import §?!8§.§#K§;
   import §?!8§.§]f§;
   import §`!4§.§6l§;
   import §`!4§.§=Z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §8,§ extends §]f§
   {
       
      
      public var §0h§:Boolean = false;
      
      public var §2!A§:Boolean = false;
      
      private var §'P§:§8S§;
      
      private var §+! §:Point;
      
      private var §%&§:Number = 0;
      
      public function §8,§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§1F§();
      }
      
      private function §1F§() : void
      {
         var _loc1_:§^@§ = §[+§.§,!&§.§7g§.§"!$§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§'P§ = new §8S§(_loc1_.texture,true);
         this.§+! § = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §[+§.§,!&§.objects.§`X§.addChild(this.§'P§);
      }
      
      public function §;!2§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§%&§ / 1000 * Math.PI * §=Z§.§[m§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§'P§)
         {
            if(this.§2!A§ || !§<!9§())
            {
               this.§'P§.alpha -= 0.025;
               this.§'P§.y += 1;
               this.§'P§.rotation += 0.01;
               if(this.§'P§.alpha <= 0)
               {
                  this.§'P§.dispose();
                  this.§'P§ = null;
               }
            }
            else
            {
               this.§'P§.rotation = Math.cos(_loc2_) * §=Z§.§;v§;
               _loc4_ = new Point(-this.§+! §.x,-this.§+! §.y);
               this.§'P§.x = x + _loc4_.x * Math.cos(this.§'P§.rotation) - _loc4_.y * Math.sin(this.§'P§.rotation);
               this.§'P§.y = y + _loc4_.x * Math.sin(this.§'P§.rotation) + _loc4_.y * Math.cos(this.§'P§.rotation);
               if((_loc5_ = §<!9§().GetLinearVelocity().y) > §=Z§.§]!N§)
               {
                  _loc5_ = §=Z§.§]!N§;
               }
               §<!9§().SetLinearVelocity(new b2Vec2(_loc3_ * §=Z§.§"J§,_loc5_));
            }
         }
         this.§%&§ += param1;
      }
      
      public function get §4C§() : Boolean
      {
         return !§<!9§() && this.§'P§ == null;
      }
   }
}
