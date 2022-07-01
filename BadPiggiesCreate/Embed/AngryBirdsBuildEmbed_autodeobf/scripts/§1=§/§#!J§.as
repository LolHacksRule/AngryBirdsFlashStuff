package §1=§
{
   import § !t§.b2World;
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;J§;
   import §<!B§.b2Vec2;
   import §=U§.§>?§;
   import §>!'§.§'!Y§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import flash.geom.Point;
   
   public class §#!J§ extends §<!3§
   {
       
      
      public var §,9§:Boolean = false;
      
      public var §3t§:Boolean = false;
      
      private var §0E§:§7!J§;
      
      private var §]%§:Point;
      
      private var §-D§:Number = 0;
      
      public function §#!J§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         this.§2Y§();
      }
      
      private function §2Y§() : void
      {
         var _loc1_:§>?§ = §'!V§.§1!2§.§@!o§.§`!!§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§0E§ = new §7!J§(_loc1_.texture,true);
         this.§]%§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
         §'!V§.§1!2§.objects.§&s§.addChild(this.§0E§);
      }
      
      public function §;h§(param1:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         super.update(param1);
         var _loc2_:Number = this.§-D§ / 1000 * Math.PI * §;J§.§<!m§;
         var _loc3_:Number = Math.sin(_loc2_);
         if(this.§0E§)
         {
            if(this.§3t§ || !getBody())
            {
               this.§0E§.alpha -= 0.025;
               this.§0E§.y += 1;
               this.§0E§.rotation += 0.01;
               if(this.§0E§.alpha <= 0)
               {
                  this.§0E§.dispose();
                  this.§0E§ = null;
               }
            }
            else
            {
               this.§0E§.rotation = Math.cos(_loc2_) * §;J§.§7`§;
               _loc4_ = new Point(-this.§]%§.x,-this.§]%§.y);
               this.§0E§.x = x + _loc4_.x * Math.cos(this.§0E§.rotation) - _loc4_.y * Math.sin(this.§0E§.rotation);
               this.§0E§.y = y + _loc4_.x * Math.sin(this.§0E§.rotation) + _loc4_.y * Math.cos(this.§0E§.rotation);
               if((_loc5_ = getBody().GetLinearVelocity().y) > §;J§.§^!s§)
               {
                  _loc5_ = §;J§.§^!s§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc3_ * §;J§.§#!c§,_loc5_));
            }
         }
         this.§-D§ += param1;
      }
      
      public function get § get§() : Boolean
      {
         return !getBody() && this.§0E§ == null;
      }
   }
}
