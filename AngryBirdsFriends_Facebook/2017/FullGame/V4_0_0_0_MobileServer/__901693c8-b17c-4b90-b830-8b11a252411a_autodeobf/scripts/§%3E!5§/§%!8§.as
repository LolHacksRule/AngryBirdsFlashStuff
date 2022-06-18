package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §+!C§.§1!$§;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import flash.geom.Point;
   
   public class §%!8§ extends §^"9§
   {
       
      
      private const §5"_§:Boolean = true;
      
      private const §'#A§:uint = 10000;
      
      public var §!F§:Boolean = false;
      
      public var §-;§:Boolean = false;
      
      private var §=t§:DisplayObject;
      
      private var §+_§:Number = 0;
      
      private const §86§:Number = Math.random() * Math.PI * 2;
      
      private var §2"P§:Number = 0;
      
      public function §%!8§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§+"-§(param2,param1);
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(!this.§-;§)
         {
            this.§2"P§ = this.§'#A§;
            this.§-;§ = true;
         }
         else
         {
            this.§2"P§ -= 100;
         }
         return §##6§;
      }
      
      private function §+"-§(param1:§8#B§, param2:Sprite) : void
      {
         this.§=t§ = param1.getSubAnimation("parachute").getFrame(0,null);
         param2.addChild(this.§=t§);
      }
      
      public function §9#j§(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:§^"9§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§-;§ && getBody())
         {
            this.§2"P§ -= param1;
            if(this.§5"_§ && !getBody().IsAwake() || this.§2"P§ <= 0)
            {
               _loc3_ = getBody().GetPosition();
               §!#&§.playSound("Sound_Tnt_Gift_Unwrap_" + Math.round(Math.random() * 2 + 1));
               if(_loc4_ = param2.addObject("MISC_EXPLOSIVE_TNT",getBody().GetPosition().x,getBody().GetPosition().y,§%D§(),§6#-§.ID_NEXT_FREE) as §^"9§)
               {
                  _loc4_.§+N§(getBody().GetAngularVelocity());
               }
               param2.removeObject(this);
            }
         }
         if(this.§=t§)
         {
            _loc5_ = this.§86§ + this.§+_§ / 1000 * Math.PI * §1!$§.§?!&§;
            _loc6_ = Math.sin(_loc5_);
            if(this.§-;§ || !getBody())
            {
               this.§=t§.alpha -= 0.025;
               this.§=t§.y += 1;
               this.§=t§.rotation += 0.01;
               if(this.§=t§.alpha <= 0)
               {
                  this.§=t§.dispose();
                  this.§=t§ = null;
               }
            }
            else
            {
               this.§=t§.rotation = Math.cos(_loc5_) * §1!$§.§'!n§;
               _loc7_ = new Point(-this.§=t§.pivotX,-this.§=t§.pivotY * 2);
               this.§=t§.x = x + _loc7_.x * Math.cos(this.§=t§.rotation) - _loc7_.y * Math.sin(this.§=t§.rotation);
               this.§=t§.y = y + _loc7_.x * Math.sin(this.§=t§.rotation) + _loc7_.y * Math.cos(this.§=t§.rotation);
               if((_loc8_ = getBody().GetLinearVelocity().y) > §1!$§.§%##§)
               {
                  _loc8_ = §1!$§.§%##§;
               }
               else if(_loc8_ < -§1!$§.§%##§)
               {
                  _loc8_ = -§1!$§.§%##§;
               }
               getBody().SetLinearVelocity(new b2Vec2(_loc6_ * §1!$§.§"_§,_loc8_));
            }
         }
         this.§+_§ += param1;
      }
      
      public function get §["Z§() : Boolean
      {
         return !getBody() && this.§=t§ == null;
      }
      
      public function get §;D§() : Boolean
      {
         return this.§-;§;
      }
   }
}
