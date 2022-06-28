package §6!'§
{
   import §!+§.§#-§;
   import §!+§.§>G§;
   import §'k§.§2v§;
   import §5H§.§[k§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import §?b§.§&z§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class get extends §>G§
   {
       
      
      public var §5@§:Boolean = false;
      
      public var §`;§:Boolean = false;
      
      private var §1J§:§6!0§;
      
      private var §6!9§:Point;
      
      private var §0^§:Number = 0;
      
      public function get(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§,-§();
      }
      
      private function §,-§() : void
      {
         var _loc1_:§2v§ = §[k§.§&@§.§!`§.§`l§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§1J§ = new §6!0§(_loc1_.texture,true);
         this.§6!9§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §[k§.§&@§.objects.§3!H§.addChild(this.§1J§);
      }
      
      public function §#!I§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§0^§ / 1000 * Math.PI * §&z§.§7X§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§1J§)
         {
            if(this.§`;§ || !§`t§())
            {
               this.§1J§.alpha -= 0.025;
               this.§1J§.y += 1;
               this.§1J§.rotation += 0.01;
               if(this.§1J§.alpha <= 0)
               {
                  this.§1J§.dispose();
                  this.§1J§ = null;
               }
            }
            else
            {
               this.§1J§.rotation = Math.cos(_loc2_) * §&z§.§%4§;
               _loc4_ = new Point(-this.§6!9§.x,-this.§6!9§.y);
               this.§1J§.x = x + _loc4_.x * Math.cos(this.§1J§.rotation) - _loc4_.y * Math.sin(this.§1J§.rotation);
               this.§1J§.y = y + _loc4_.x * Math.sin(this.§1J§.rotation) + _loc4_.y * Math.cos(this.§1J§.rotation);
               if((_loc5_ = §`t§().GetLinearVelocity().y) > §&z§.§ !§)
               {
                  _loc5_ = §&z§.§ !§;
               }
               §`t§().SetLinearVelocity(new b2Vec2(_loc3_ * §&z§.§,!A§,_loc5_));
            }
         }
         this.§0^§ += param1;
      }
      
      public function get §%-§() : Boolean
      {
         return !§`t§() && this.§1J§ == null;
      }
   }
}
