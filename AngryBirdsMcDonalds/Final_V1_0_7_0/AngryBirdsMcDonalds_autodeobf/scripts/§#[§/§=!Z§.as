package §#[§
{
   import §%!5§.§7;§;
   import §'!`§.§%!H§;
   import §'!`§.§for§;
   import §-0§.b2World;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §55§.§7!k§;
   import §55§.§>![§;
   import §7! §.§%!h§;
   import §^!%§.b2Vec2;
   import flash.geom.Point;
   
   public class §=!Z§ extends §%!H§
   {
       
      
      public var §3§:Boolean = false;
      
      public var §"!V§:Boolean = false;
      
      private var §5!D§:§1]§;
      
      private var §`![§:Point;
      
      private var §+!&§:Number = 0;
      
      public function §=!Z§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§'Q§();
      }
      
      private function §'Q§() : void
      {
         var _loc1_:§%!h§ = §7;§.§1h§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§5!D§ = new §1]§(_loc1_.texture,true);
         this.§`![§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §7;§.§1h§.objects.§2!N§.addChild(this.§5!D§);
      }
      
      public function §^!G§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§+!&§ / 1000 * Math.PI * §7!k§.§'!"§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§5!D§)
         {
            if(this.§"!V§ || !§&!p§())
            {
               this.§5!D§.alpha -= 0.025;
               this.§5!D§.y += 1;
               this.§5!D§.rotation += 0.01;
               if(this.§5!D§.alpha <= 0)
               {
                  this.§5!D§.dispose();
                  this.§5!D§ = null;
               }
            }
            else
            {
               this.§5!D§.rotation = Math.cos(_loc2_) * §7!k§.§3&§;
               _loc4_ = new Point(-this.§`![§.x,-this.§`![§.y);
               this.§5!D§.x = x + _loc4_.x * Math.cos(this.§5!D§.rotation) - _loc4_.y * Math.sin(this.§5!D§.rotation);
               this.§5!D§.y = y + _loc4_.x * Math.sin(this.§5!D§.rotation) + _loc4_.y * Math.cos(this.§5!D§.rotation);
               if((_loc5_ = §&!p§().GetLinearVelocity().y) > §7!k§.§=6§)
               {
                  _loc5_ = §7!k§.§=6§;
               }
               §&!p§().SetLinearVelocity(new b2Vec2(_loc3_ * §7!k§.§]g§,_loc5_));
            }
         }
         this.§+!&§ += param1;
      }
      
      public function get §#!^§() : Boolean
      {
         return !§&!p§() && this.§5!D§ == null;
      }
   }
}
