package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §@!8§ extends §9"k§
   {
      
      public static const §+"§:String = "SmallBlueBird";
       
      
      protected var § ##§:Vector.<§@!8§>;
      
      public function §@!8§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§ ##§ = new Vector.<§@!8§>();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         var _loc6_:Number = §3!t§().GetLinearVelocity().x;
         var _loc7_:Number = §3!t§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§@!8§;
         (_loc11_ = §@!8§(param1.addObject(§;B§.itemName,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§;=§.§""3§,true,false,false,scale))).§ &§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         this.§!1§(_loc11_ as §9"k§);
         _loc11_.isLeavingTrail = isLeavingTrail;
         _loc11_.§6!]§(this);
         this.§6!]§(_loc11_);
         (_loc11_ = §@!8§(param1.addObject(§;B§.itemName,_loc4_ + _loc10_,_loc5_ + _loc9_,0,§;=§.§""3§,true,false,false,scale))).§ &§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         this.§!1§(_loc11_ as §9"k§);
         _loc11_.isLeavingTrail = isLeavingTrail;
         _loc11_.§6!]§(this);
         this.§6!]§(_loc11_);
         return true;
      }
      
      protected function §!1§(param1:§9"k§) : void
      {
         if(!§ !d§)
         {
            return;
         }
         if(param1 && § !d§)
         {
            param1.glow(§ !d§.tintColor);
         }
      }
      
      public function §6!]§(param1:§@!8§) : void
      {
         this.§ ##§.push(param1);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         if(this.§ ##§.indexOf(param1) > -1)
         {
            return;
         }
         super.collidedWith(param1);
      }
      
      override protected function spawnParticlesOnSpecial(param1:§;$§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         param1.§;!0§(§ U§.§'"v§,§,!w§.§9F§,§ U§.§+!Q§,_loc3_,_loc4_,-1,"",§ U§.§9"W§);
         super.spawnParticlesOnSpecial(param1,param2);
      }
   }
}
