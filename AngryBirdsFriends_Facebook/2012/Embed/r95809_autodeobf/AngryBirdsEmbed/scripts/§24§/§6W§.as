package §24§
{
   import §+!%§.§'!"§;
   import §+!%§.§use§;
   import §->§.§2! §;
   import §->§.Sprite;
   import §-l§.§?'§;
   import §<[§.§6q§;
   import §<[§.§>!4§;
   import §[!$§.§89§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §6W§ extends §>!4§
   {
       
      
      public var §[x§:Boolean = false;
      
      public var §2!>§:Boolean = false;
      
      private var §%5§:§2! §;
      
      private var §<E§:Point;
      
      private var §@+§:Number = 0;
      
      public function §6W§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§4@§();
      }
      
      private function §4@§() : void
      {
         var _loc1_:§89§ = §?'§.§5!§.§@!5§.§`!-§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§%5§ = new §2! §(_loc1_.texture,true);
         this.§<E§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §?'§.§5!§.objects.§]$§.addChild(this.§%5§);
      }
      
      public function § try§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§@+§ / 1000 * Math.PI * §use§.set;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§%5§)
         {
            if(this.§2!>§ || !§27§())
            {
               this.§%5§.alpha -= 0.025;
               this.§%5§.y += 1;
               this.§%5§.rotation += 0.01;
               if(this.§%5§.alpha <= 0)
               {
                  this.§%5§.dispose();
                  this.§%5§ = null;
               }
            }
            else
            {
               this.§%5§.rotation = Math.cos(_loc2_) * §use§.§57§;
               _loc4_ = new Point(-this.§<E§.x,-this.§<E§.y);
               this.§%5§.x = x + _loc4_.x * Math.cos(this.§%5§.rotation) - _loc4_.y * Math.sin(this.§%5§.rotation);
               this.§%5§.y = y + _loc4_.x * Math.sin(this.§%5§.rotation) + _loc4_.y * Math.cos(this.§%5§.rotation);
               if((_loc5_ = §27§().GetLinearVelocity().y) > §use§.§5y§)
               {
                  _loc5_ = §use§.§5y§;
               }
               §27§().SetLinearVelocity(new b2Vec2(_loc3_ * §use§.§'t§,_loc5_));
            }
         }
         this.§@+§ += param1;
      }
      
      public function get §&'§() : Boolean
      {
         return !§27§() && this.§%5§ == null;
      }
   }
}
