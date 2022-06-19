package §?w§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §#K§.§?I§;
   import §2!6§.§%!$§;
   import §?'§.§'L§;
   import §?'§.§9N§;
   import §?'§.§[!N§;
   import §package§.§"!0§;
   
   public class §null§ extends §'L§
   {
       
      
      public function §null§(param1:§9N§, param2:§?I§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §`K§() : void
      {
         var _loc1_:§[!N§ = §<!G§("BIRD_CHEETOS_BAG",mX,mY);
         §<!§(§0'§);
         this.§,!2§(_loc1_);
         §%!$§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         var _loc2_:§[!N§ = § !J§[§`4§];
         if(_loc2_)
         {
            _loc2_.setPosition(mX - _loc2_.radius - 0.2,this.mY + 3);
            _loc2_.§[6§();
         }
      }
      
      public function §9!N§() : void
      {
         var _loc1_:§[!N§ = null;
         if(§ !J§.length > 0)
         {
            for each(_loc1_ in § !J§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§,!2§(_loc1_);
                  §<R§(§ !J§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §,!2§(param1:§[!N§) : void
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
            §;c§.particles.addParticle(§"!0§.CHEETOS_EXPLOSION,§7!W§.§'>§,§?f§.§"z§,param1.mX - 2.5,param1.mY - 2.8,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
   }
}
