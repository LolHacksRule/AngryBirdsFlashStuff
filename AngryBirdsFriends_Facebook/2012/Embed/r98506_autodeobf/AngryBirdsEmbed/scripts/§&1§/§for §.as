package §&1§
{
   import §"a§.§^>§;
   import §#;§.§4!8§;
   import §#;§.§<!+§;
   import §&c§.§9h§;
   import §&c§.§<'§;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import §`t§.§^?§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §for § extends §9h§
   {
       
      
      public var §5_§:Boolean = false;
      
      public var §<!%§:Boolean = false;
      
      private var §'!D§:§[E§;
      
      private var §@Y§:Point;
      
      private var §>!G§:Number = 0;
      
      public function §for §(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§>!I§();
      }
      
      private function §>!I§() : void
      {
         var _loc1_:§^>§ = §^?§.§]!%§.§`,§.§12§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§'!D§ = new §[E§(_loc1_.texture,true);
         this.§@Y§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §^?§.§]!%§.objects.§?!;§.addChild(this.§'!D§);
      }
      
      public function §1!A§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§>!G§ / 1000 * Math.PI * §<!+§.§5"§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§'!D§)
         {
            if(this.§<!%§ || !§68§())
            {
               this.§'!D§.alpha -= 0.025;
               this.§'!D§.y += 1;
               this.§'!D§.rotation += 0.01;
               if(this.§'!D§.alpha <= 0)
               {
                  this.§'!D§.dispose();
                  this.§'!D§ = null;
               }
            }
            else
            {
               this.§'!D§.rotation = Math.cos(_loc2_) * §<!+§.§<C§;
               _loc4_ = new Point(-this.§@Y§.x,-this.§@Y§.y);
               this.§'!D§.x = x + _loc4_.x * Math.cos(this.§'!D§.rotation) - _loc4_.y * Math.sin(this.§'!D§.rotation);
               this.§'!D§.y = y + _loc4_.x * Math.sin(this.§'!D§.rotation) + _loc4_.y * Math.cos(this.§'!D§.rotation);
               if((_loc5_ = §68§().GetLinearVelocity().y) > §<!+§.§&y§)
               {
                  _loc5_ = §<!+§.§&y§;
               }
               §68§().SetLinearVelocity(new b2Vec2(_loc3_ * §<!+§.§"Q§,_loc5_));
            }
         }
         this.§>!G§ += param1;
      }
      
      public function get §9j§() : Boolean
      {
         return !§68§() && this.§'!D§ == null;
      }
   }
}
