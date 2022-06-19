package §_-Aq§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-ZK§;
   import §_-0-K§.§_-xV§;
   import §_-5b§.§_-Vj§;
   import §_-CA§.§_-hU§;
   import §_-E5§.§_-Wo§;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §case §.Sprite;
   
   public class §_-oL§ extends §_-xV§
   {
       
      
      public function §_-oL§(param1:§_-FL§, param2:§_-Vj§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §_-XT§() : void
      {
         var _loc1_:§_-ZK§ = §_-5q§("BIRD_CHEETOS_BAG",mX,mY);
         §_-TL§(§_-BM§);
         this.§_-Bh§(_loc1_);
         §_-Wo§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         var _loc2_:§_-ZK§ = §_-00M§[§_-Uj§];
         if(_loc2_)
         {
            _loc2_.setPosition(mX - _loc2_.radius - 0.2,this.mY + 3);
            _loc2_.§_-A2§();
         }
      }
      
      public function §_-FM§() : void
      {
         var _loc1_:§_-ZK§ = null;
         if(§_-00M§.length > 0)
         {
            for each(_loc1_ in §_-00M§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§_-Bh§(_loc1_);
                  §_-fV§(§_-00M§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §_-Bh§(param1:§_-ZK§) : void
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
            §_-mC§.particles.addParticle(§_-hU§.CHEETOS_EXPLOSION,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,param1.mX - 2.5,param1.mY - 2.8,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
   }
}
