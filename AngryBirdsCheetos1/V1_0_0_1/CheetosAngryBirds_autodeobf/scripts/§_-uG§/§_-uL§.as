package §_-uG§
{
   import §_-2r§.§_-9j§;
   import §_-2r§.§_-Qo§;
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-T8§.§_-GI§;
   import §_-aX§.§_-te§;
   import §_-cb§.§_-0B§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   
   public class §_-uL§ extends §_-Qo§
   {
       
      
      public function §_-uL§(param1:§_-sn§, param2:§_-GI§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §_-cy§() : void
      {
         var _loc1_:§_-9j§ = §_-C0§("BIRD_CHEETOS_BAG",mX,mY);
         §_-Xi§(§_-oS§);
         this.§_-Mm§(_loc1_);
         §_-0B§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         var _loc2_:§_-9j§ = §_-a6§[§_-I1§];
         if(_loc2_)
         {
            _loc2_.setPosition(mX - _loc2_.radius - 0.2,this.mY + 3);
            _loc2_.§_-4k§();
         }
      }
      
      public function §_-Pf§() : void
      {
         var _loc1_:§_-9j§ = null;
         if(§_-a6§.length > 0)
         {
            for each(_loc1_ in §_-a6§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§_-Mm§(_loc1_);
                  §_-PC§(§_-a6§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §_-Mm§(param1:§_-9j§) : void
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
            §_-5F§.particles.addParticle(§_-te§.CHEETOS_EXPLOSION,§_-5J§.§_-2S§,§_-yB§.§_-7K§,param1.mX - 2.5,param1.mY - 2.8,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
   }
}
