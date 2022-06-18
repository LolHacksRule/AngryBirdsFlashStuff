package §?w§
{
   import §%!$§.§=m§;
   import §'!"§.§ -§;
   import §9N§.§8'§;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §<!+§.§with§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class §null§ extends §;c§
   {
       
      
      public function §null§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §`K§() : void
      {
         var _loc1_:§8'§ = §^c§("BIRD_CHEETOS_BAG",mX,mY);
         §&O§(§?!S§);
         this.§,!2§(_loc1_);
         §=m§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         var _loc2_:§8'§ = §`4§[§'!E§];
         if(_loc2_)
         {
            _loc2_.setPosition(mX - _loc2_.radius - 0.2,this.mY + 3);
            _loc2_.§7c§();
         }
      }
      
      public function §9!N§() : void
      {
         var _loc1_:§8'§ = null;
         if(§`4§.length > 0)
         {
            for each(_loc1_ in §`4§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§,!2§(_loc1_);
                  §#@§(§`4§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §,!2§(param1:§8'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = 1;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = 20 * Math.cos(_loc6_) * Math.random();
            _loc8_ = -20 * Math.sin(_loc6_) * Math.random();
            §8@§.particles.addParticle(§ -§.CHEETOS_EXPLOSION,§,v§.§-!;§,§-&§.§ ,§,param1.mX - 2.5,param1.mY - 2.8,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
   }
}
