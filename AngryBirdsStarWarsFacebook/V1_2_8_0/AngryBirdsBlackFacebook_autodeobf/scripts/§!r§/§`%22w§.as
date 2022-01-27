package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §use§.Sprite;
   
   public class §`"w§ extends §2!a§
   {
      
      public static const §5!L§:String = "SmallBlueBird";
       
      
      protected var §4!r§:Vector.<§`"w§>;
      
      public function §`"w§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§4!r§ = new Vector.<§`"w§>();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         var _loc4_:Number = §3"s§().GetPosition().x;
         var _loc5_:Number = §3"s§().GetPosition().y;
         var _loc6_:Number = §3"s§().GetLinearVelocity().x;
         var _loc7_:Number = §3"s§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§`"w§;
         (_loc11_ = §`"w§(param1.addObject(§+!j§.itemName,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§9"f§.§["_§,true,false,false,scale))).§]"i§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         this.§>G§(_loc11_ as §2!a§);
         _loc11_.isLeavingTrail = isLeavingTrail;
         _loc11_.§2"S§(this);
         this.§2"S§(_loc11_);
         (_loc11_ = §`"w§(param1.addObject(§+!j§.itemName,_loc4_ + _loc10_,_loc5_ + _loc9_,0,§9"f§.§["_§,true,false,false,scale))).§]"i§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         this.§>G§(_loc11_ as §2!a§);
         _loc11_.isLeavingTrail = isLeavingTrail;
         _loc11_.§2"S§(this);
         this.§2"S§(_loc11_);
         return true;
      }
      
      protected function §>G§(param1:§2!a§) : void
      {
         if(!§"!;§)
         {
            return;
         }
         if(param1 && §"!;§)
         {
            param1.glow(§"!;§.tintColor);
         }
      }
      
      public function §2"S§(param1:§`"w§) : void
      {
         this.§4!r§.push(param1);
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         if(this.§4!r§.indexOf(param1) > -1)
         {
            return;
         }
         super.collidedWith(param1);
      }
      
      override protected function spawnParticlesOnSpecial(param1:§'=§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = §3"s§().GetPosition().x;
         var _loc4_:Number = §3"s§().GetPosition().y;
         param1.§>#1§(§?"E§.§4z§,§^#'§.§set §,§?"E§.§["4§,_loc3_,_loc4_,-1,"",§?"E§.§0!P§);
         super.spawnParticlesOnSpecial(param1,param2);
      }
   }
}
