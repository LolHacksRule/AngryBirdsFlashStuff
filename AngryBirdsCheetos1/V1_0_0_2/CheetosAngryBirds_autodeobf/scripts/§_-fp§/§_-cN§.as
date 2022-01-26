package §_-fp§
{
   import §_-D9§.§_-dH§;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-FY§;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-hD§;
   import §_-MP§.§_-BI§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-VH§.§_-X6§;
   
   public class §_-cN§ extends §_-hD§
   {
       
      
      public function §_-cN§(param1:§_-c3§, param2:§_-BI§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §_-yr§() : void
      {
         var _loc1_:§_-FY§ = §_-Ib§("BIRD_CHEETOS_BAG",mX,mY);
         §_-ZL§(§_-Ez§);
         this.§_-R6§(_loc1_);
         §_-X6§.playSound("Bird_Cheetos_Bag_Damage_1","ChannelBird");
         var _loc2_:§_-FY§ = §_-Mg§[§_-fy§];
         if(_loc2_)
         {
            _loc2_.setPosition(mX - _loc2_.radius - 0.2,this.mY + 3);
            _loc2_.§_-Wp§();
         }
      }
      
      public function §_-b§() : void
      {
         var _loc1_:§_-FY§ = null;
         if(§_-Mg§.length > 0)
         {
            for each(_loc1_ in §_-Mg§)
            {
               if(_loc1_.name == "BIRD_CHEETOS_BAG")
               {
                  this.§_-R6§(_loc1_);
                  §_-MS§(§_-Mg§.indexOf(_loc1_),false);
               }
            }
         }
      }
      
      public function §_-R6§(param1:§_-FY§) : void
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
            §_-GF§.particles.addParticle(§_-dH§.CHEETOS_EXPLOSION,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,param1.mX - 2.5,param1.mY - 2.8,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
   }
}
