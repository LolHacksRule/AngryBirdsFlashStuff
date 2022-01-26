package §while§
{
   import §"o§.§ M§;
   import §"o§.§,J§;
   import §&V§.§;Q§;
   import §;j§.§8[§;
   import §@!=§.§"S§;
   import §@!=§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import §finally§.§%!7§;
   import §finally§.§3X§;
   import flash.geom.Point;
   
   public class §&!?§ extends §%!7§
   {
       
      
      public var §1!!§:Boolean = false;
      
      public var §+U§:Boolean = false;
      
      private var §#`§:§"S§;
      
      private var §0!#§:Point;
      
      private var §7Q§:Number = 0;
      
      public function §&!?§(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§8j§();
      }
      
      private function §8j§() : void
      {
         var _loc1_:§;Q§ = §8[§.§import§.§]P§.§!D§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§#`§ = new §"S§(_loc1_.texture,true);
         this.§0!#§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §8[§.§import§.objects.§-y§.addChild(this.§#`§);
      }
      
      public function §8!=§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§7Q§ / 1000 * Math.PI * §,J§.§=!2§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§#`§)
         {
            if(this.§+U§ || !§+!-§())
            {
               this.§#`§.alpha -= 0.025;
               this.§#`§.y += 1;
               this.§#`§.rotation += 0.01;
               if(this.§#`§.alpha <= 0)
               {
                  this.§#`§.dispose();
                  this.§#`§ = null;
               }
            }
            else
            {
               this.§#`§.rotation = Math.cos(_loc2_) * §,J§.§&D§;
               _loc4_ = new Point(-this.§0!#§.x,-this.§0!#§.y);
               this.§#`§.x = x + _loc4_.x * Math.cos(this.§#`§.rotation) - _loc4_.y * Math.sin(this.§#`§.rotation);
               this.§#`§.y = y + _loc4_.x * Math.sin(this.§#`§.rotation) + _loc4_.y * Math.cos(this.§#`§.rotation);
               if((_loc5_ = §+!-§().GetLinearVelocity().y) > §,J§.§4Y§)
               {
                  _loc5_ = §,J§.§4Y§;
               }
               §+!-§().SetLinearVelocity(new b2Vec2(_loc3_ * §,J§.§ p§,_loc5_));
            }
         }
         this.§7Q§ += param1;
      }
      
      public function get §3!;§() : Boolean
      {
         return !§+!-§() && this.§#`§ == null;
      }
   }
}
