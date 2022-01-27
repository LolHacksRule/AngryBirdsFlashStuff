package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"§;
   import §^>§.b2Vec2;
   
   public class §<"D§ extends § !v§
   {
      
      public static const §^!3§:String = "SmallBlueBird";
       
      
      protected var §=F§:Vector.<§<"D§>;
      
      public function §<"D§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§=F§ = new Vector.<§<"D§>();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §?"Z§().GetPosition().x;
         var _loc5_:Number = §?"Z§().GetPosition().y;
         var _loc6_:Number = §?"Z§().GetLinearVelocity().x;
         var _loc7_:Number = §?"Z§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§<"D§;
         (_loc11_ = §<"D§(param1.addObject(§-!f§.itemName,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§super§.§4"D§,true,false,false,scale))).§?""§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         this.§-"k§(_loc11_ as § !v§);
         _loc11_.isLeavingTrail = isLeavingTrail;
         _loc11_.§%"Q§(this);
         this.§%"Q§(_loc11_);
         (_loc11_ = §<"D§(param1.addObject(§-!f§.itemName,_loc4_ + _loc10_,_loc5_ + _loc9_,0,§super§.§4"D§,true,false,false,scale))).§?""§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         this.§-"k§(_loc11_ as § !v§);
         _loc11_.isLeavingTrail = isLeavingTrail;
         _loc11_.§%"Q§(this);
         this.§%"Q§(_loc11_);
         return true;
      }
      
      protected function §-"k§(param1:§ !v§) : void
      {
         if(!§3!m§)
         {
            return;
         }
         if(param1 && §3!m§)
         {
            param1.glow(§3!m§.tintColor);
         }
      }
      
      public function §%"Q§(param1:§<"D§) : void
      {
         this.§=F§.push(param1);
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         if(this.§=F§.indexOf(param1) > -1)
         {
            return;
         }
         super.collidedWith(param1);
      }
      
      override protected function spawnParticlesOnSpecial(param1:§""M§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = §?"Z§().GetPosition().x;
         var _loc4_:Number = §?"Z§().GetPosition().y;
         param1.§[#$§(§;6§.§+0§,§#"m§.§["A§,§;6§.§3!1§,_loc3_,_loc4_,-1,"",§;6§.§+![§);
         super.spawnParticlesOnSpecial(param1,param2);
      }
   }
}
