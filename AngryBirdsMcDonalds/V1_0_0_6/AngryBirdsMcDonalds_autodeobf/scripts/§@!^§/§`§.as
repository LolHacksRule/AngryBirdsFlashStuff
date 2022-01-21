package §@!^§
{
   import §#M§.§+!Z§;
   import §&!!§.§7N§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §5!L§.§,!&§;
   import §5!L§.§?8§;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   import §<L§.§6H§;
   import §@![§.b2Vec2;
   import flash.geom.Point;
   
   public class §`§ extends §,!&§
   {
       
      
      public var §,y§:Boolean = false;
      
      public var §?O§:Boolean = false;
      
      private var §-'§:§[!U§;
      
      private var §`!d§:Point;
      
      private var §,!,§:Number = 0;
      
      public function §`§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§<$§();
      }
      
      private function §<$§() : void
      {
         var _loc1_:§7N§ = §+!Z§.§?!<§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§-'§ = new §[!U§(_loc1_.texture,true);
         this.§`!d§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §+!Z§.§?!<§.objects.§3!o§.addChild(this.§-'§);
      }
      
      public function §"!_§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§,!,§ / 1000 * Math.PI * §6H§.§=y§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§-'§)
         {
            if(this.§?O§ || !§;G§())
            {
               this.§-'§.alpha -= 0.025;
               this.§-'§.y += 1;
               this.§-'§.rotation += 0.01;
               if(this.§-'§.alpha <= 0)
               {
                  this.§-'§.dispose();
                  this.§-'§ = null;
               }
            }
            else
            {
               this.§-'§.rotation = Math.cos(_loc2_) * §6H§.§!v§;
               _loc4_ = new Point(-this.§`!d§.x,-this.§`!d§.y);
               this.§-'§.x = x + _loc4_.x * Math.cos(this.§-'§.rotation) - _loc4_.y * Math.sin(this.§-'§.rotation);
               this.§-'§.y = y + _loc4_.x * Math.sin(this.§-'§.rotation) + _loc4_.y * Math.cos(this.§-'§.rotation);
               if((_loc5_ = §;G§().GetLinearVelocity().y) > §6H§.§2;§)
               {
                  _loc5_ = §6H§.§2;§;
               }
               §;G§().SetLinearVelocity(new b2Vec2(_loc3_ * §6H§.§<!M§,_loc5_));
            }
         }
         this.§,!,§ += param1;
      }
      
      public function get §[!<§() : Boolean
      {
         return !§;G§() && this.§-'§ == null;
      }
   }
}
