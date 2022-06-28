package §9Y§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §^!Y§.§1C§;
   import flash.geom.Point;
   
   public class §[w§ extends §`!_§
   {
       
      
      public var §4z§:Boolean = false;
      
      public var §!X§:Boolean = false;
      
      private var §&!,§:§-§;
      
      private var §]!`§:Point;
      
      private var §09§:Number = 0;
      
      public function §[w§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§%q§();
      }
      
      private function §%q§() : void
      {
         var _loc1_:§1C§ = §^!c§.§5!Y§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§&!,§ = new §-§(_loc1_.texture,true);
         this.§]!`§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §^!c§.§5!Y§.objects.§#!-§.addChild(this.§&!,§);
      }
      
      public function §<A§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§09§ / 1000 * Math.PI * §,L§.§<!2§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§&!,§)
         {
            if(this.§!X§ || !§3J§())
            {
               this.§&!,§.alpha -= 0.025;
               this.§&!,§.y += 1;
               this.§&!,§.rotation += 0.01;
               if(this.§&!,§.alpha <= 0)
               {
                  this.§&!,§.dispose();
                  this.§&!,§ = null;
               }
            }
            else
            {
               this.§&!,§.rotation = Math.cos(_loc2_) * §,L§.§2!C§;
               _loc4_ = new Point(-this.§]!`§.x,-this.§]!`§.y);
               this.§&!,§.x = x + _loc4_.x * Math.cos(this.§&!,§.rotation) - _loc4_.y * Math.sin(this.§&!,§.rotation);
               this.§&!,§.y = y + _loc4_.x * Math.sin(this.§&!,§.rotation) + _loc4_.y * Math.cos(this.§&!,§.rotation);
               if((_loc5_ = §3J§().GetLinearVelocity().y) > §,L§.§1_§)
               {
                  _loc5_ = §,L§.§1_§;
               }
               §3J§().SetLinearVelocity(new b2Vec2(_loc3_ * §,L§.§=!S§,_loc5_));
            }
         }
         this.§09§ += param1;
      }
      
      public function get §!W§() : Boolean
      {
         return !§3J§() && this.§&!,§ == null;
      }
   }
}
