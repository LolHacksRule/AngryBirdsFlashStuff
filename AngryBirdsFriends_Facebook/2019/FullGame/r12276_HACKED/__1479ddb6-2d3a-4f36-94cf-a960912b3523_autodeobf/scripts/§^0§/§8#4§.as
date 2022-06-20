package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§&$0§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §8#4§ extends §=Q§
   {
       
      
      private const §?#h§:Boolean = true;
      
      private const §"!s§:uint = 10000;
      
      public var §&"o§:Boolean = false;
      
      public var §[!,§:Boolean = false;
      
      private var §77§:DisplayObject;
      
      private var §=Z§:Number = 0;
      
      private const §^"t§:Number = Math.random() * Math.PI * 2;
      
      private var §88§:Number = 0;
      
      public function §8#4§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§^"g§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(!this.§[!,§)
         {
            this.§88§ = this.§"!s§;
            this.§[!,§ = true;
         }
         else
         {
            this.§88§ -= 100;
         }
         return §,D§;
      }
      
      private function §^"g§(param1:§,`§, param2:Sprite) : void
      {
         this.§77§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§77§);
      }
      
      public function §=!U§(param1:Number, param2:§>"T§) : void
      {
         var _loc4_:§=Q§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§[!,§ && getBody())
         {
            this.§88§ -= param1;
            if(this.§?#h§ && !getBody().IsAwake() || this.§88§ <= 0)
            {
               getBody().GetPosition();
               §4$4§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§<!C§(),§%"^§.ID_NEXT_FREE) as §=Q§)
               {
                  _loc4_.§^l§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§77§)
         {
            _loc5_ = this.§^"t§ + this.§=Z§ / 1000 * Math.PI * §&$0§.§6!-§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§[!,§ || !getBody())
            {
               this.§77§.alpha -= 0.025;
               this.§77§.y += 1;
               this.§77§.rotation += 0.01;
               if(this.§77§.alpha <= 0)
               {
                  this.§77§.dispose();
                  this.§77§ = null;
               }
            }
            else
            {
               this.§77§.rotation = Math.cos(_loc5_) * §&$0§.§"#+§;
               _loc7_ = new Point(-this.§77§.pivotX,-this.§77§.pivotY * 2);
               this.§77§.x = x + _loc7_.x * Math.cos(this.§77§.rotation) - _loc7_.y * Math.sin(this.§77§.rotation);
               this.§77§.y = y + _loc7_.x * Math.sin(this.§77§.rotation) + _loc7_.y * Math.cos(this.§77§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §&$0§.§5#"§)
               {
                  _loc8_ = §&$0§.§5#"§;
               }
               else if(_loc8_ < -§&$0§.§5#"§)
               {
                  _loc8_ = -§&$0§.§5#"§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §&$0§.§'#5§,_loc8_));
            }
         }
         this.§=Z§ += param1;
      }
      
      public function get §5"6§() : Boolean
      {
         return !getBody() && this.§77§ == null;
      }
      
      public function get §7!F§() : Boolean
      {
         return this.§[!,§;
      }
   }
}
