package §>!'§
{
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §?!-§.§'!V§;
   
   public class §,&§ extends §<!3§
   {
       
      
      private var §4!T§:int = 0;
      
      public function §,&§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§<!r§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§'J§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§0!E§.mW * §7E§.§8!'§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§0!E§.mH * §7E§.§8!'§) + Math.random() * -_loc8_ * 2;
            param1.§1&§(§!r§.§1T§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§!r§.§^!O§(§>p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<!r§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§7E§ = §'!V§.§1!2§;
         if(§!!>§ < §1!s§ || getBody() == null)
         {
            _loc1_.§,!H§(this);
            _loc1_.§7s§ = false;
            return;
         }
         var _loc2_:Number = x * §7E§.§8!'§;
         var _loc3_:Number = y * §7E§.§8!'§;
         var _loc4_:String = §!r§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§4!T§ == 1)
         {
            _loc4_ = §!r§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§4!T§ == 2)
         {
            _loc4_ = §!r§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§4!T§ = (this.§4!T§ + 1) % 3;
         _loc1_.particles.§1&§(_loc4_,§<!r§.§<[§,§!r§.§#!!§,_loc2_,_loc3_,-1,"",§!r§.§&!§);
      }
   }
}
