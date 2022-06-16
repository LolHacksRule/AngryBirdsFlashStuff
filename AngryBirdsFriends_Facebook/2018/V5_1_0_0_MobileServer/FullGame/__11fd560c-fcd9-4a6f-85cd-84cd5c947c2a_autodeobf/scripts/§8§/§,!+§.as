package §8§#8
{
   import § "%§.b2Vec2;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §@0§.§1§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §,!+§ extends §4!y§
   {
       
      
      private const §0$;§:Boolean = true;
      
      private const §5!9§:uint = 10000;
      
      public var §3!0§:Boolean = false;
      
      public var §0i§:Boolean = false;
      
      private var §@"E§:DisplayObject;
      
      private var §"!>§:Number = 0;
      
      private const §`#2§:Number = Math.random() * Math.PI * 2;
      
      private var §9#Y§:Number = 0;
      
      public function §,!+§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§=#f§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(!this.§0i§)
         {
            this.§9#Y§ = this.§5!9§;
            this.§0i§ = true;
         }
         else
         {
            this.§9#Y§ -= 100;
         }
         return §""5§;
      }
      
      private function §=#f§(param1:§0$2§, param2:Sprite) : void
      {
         this.§@"E§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§@"E§);
      }
      
      public function §6#+§(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:§4!y§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§0i§ && getBody())
         {
            this.§9#Y§ -= param1;
            if(this.§0$;§ && !getBody().IsAwake() || this.§9#Y§ <= 0)
            {
               _loc3_ = getBody().GetPosition();
               §!"p§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§`$"§(),§!#L§.ID_NEXT_FREE) as §4!y§)
               {
                  _loc4_.§`#o§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§@"E§)
         {
            _loc5_ = this.§`#2§ + this.§"!>§ / 1000 * Math.PI * §1#7§.§>#;§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§0i§ || !getBody())
            {
               this.§@"E§.alpha -= 0.025;
               this.§@"E§.y += 1;
               this.§@"E§.rotation += 0.01;
               if(this.§@"E§.alpha <= 0)
               {
                  this.§@"E§.dispose();
                  this.§@"E§ = null;
               }
            }
            else
            {
               this.§@"E§.rotation = Math.cos(_loc5_) * §1#7§.§"!o§;
               _loc7_ = new Point(-this.§@"E§.pivotX,-this.§@"E§.pivotY * 2);
               this.§@"E§.x = x + _loc7_.x * Math.cos(this.§@"E§.rotation) - _loc7_.y * Math.sin(this.§@"E§.rotation);
               this.§@"E§.y = y + _loc7_.x * Math.sin(this.§@"E§.rotation) + _loc7_.y * Math.cos(this.§@"E§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §1#7§.§?#T§)
               {
                  _loc8_ = §1#7§.§?#T§;
               }
               else if(_loc8_ < -§1#7§.§?#T§)
               {
                  _loc8_ = -§1#7§.§?#T§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §1#7§.§'#`§,_loc8_));
            }
         }
         this.§"!>§ += param1;
      }
      
      public function get §+<§() : Boolean
      {
         return !getBody() && this.§@"E§ == null;
      }
      
      public function get §,!x§() : Boolean
      {
         return this.§0i§;
      }
   }
}
