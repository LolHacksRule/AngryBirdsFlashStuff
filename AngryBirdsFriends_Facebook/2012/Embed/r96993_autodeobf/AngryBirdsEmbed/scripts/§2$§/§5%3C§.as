package §2$§
{
   import §#!1§.§4!,§;
   import §#!1§.§;^§;
   import §6u§.§!B§;
   import §>%§.§]3§;
   import §]!6§.§>T§;
   import §]!6§.Sprite;
   import §`i§.§+3§;
   import §`i§.§2W§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §5<§ extends §4!,§
   {
       
      
      public var §"1§:Boolean = false;
      
      public var §4§:Boolean = false;
      
      private var §'$§:§>T§;
      
      private var §5I§:Point;
      
      private var §%#§:Number = 0;
      
      public function §5<§(param1:§;^§, param2:Sprite, param3:b2World, param4:§2W§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§1p§();
      }
      
      private function §1p§() : void
      {
         var _loc1_:§!B§ = §]3§.§;v§.§9V§.§`Y§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§'$§ = new §>T§(_loc1_.texture,true);
         this.§5I§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §]3§.§;v§.objects.§>!0§.addChild(this.§'$§);
      }
      
      public function §"!G§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§%#§ / 1000 * Math.PI * §+3§.§7!0§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§'$§)
         {
            if(this.§4§ || !§!v§())
            {
               this.§'$§.alpha -= 0.025;
               this.§'$§.y += 1;
               this.§'$§.rotation += 0.01;
               if(this.§'$§.alpha <= 0)
               {
                  this.§'$§.dispose();
                  this.§'$§ = null;
               }
            }
            else
            {
               this.§'$§.rotation = Math.cos(_loc2_) * §+3§.§@J§;
               _loc4_ = new Point(-this.§5I§.x,-this.§5I§.y);
               this.§'$§.x = x + _loc4_.x * Math.cos(this.§'$§.rotation) - _loc4_.y * Math.sin(this.§'$§.rotation);
               this.§'$§.y = y + _loc4_.x * Math.sin(this.§'$§.rotation) + _loc4_.y * Math.cos(this.§'$§.rotation);
               if((_loc5_ = §!v§().GetLinearVelocity().y) > §+3§.§;!<§)
               {
                  _loc5_ = §+3§.§;!<§;
               }
               §!v§().SetLinearVelocity(new b2Vec2(_loc3_ * §+3§.§&!8§,_loc5_));
            }
         }
         this.§%#§ += param1;
      }
      
      public function get §+e§() : Boolean
      {
         return !§!v§() && this.§'$§ == null;
      }
   }
}
