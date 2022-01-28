package §_-4K§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-N9§
   {
       
      
      public var mName:String;
      
      public var §_-Ii§:int;
      
      public var §_-Zs§:Number = 1;
      
      private var §_-wU§:Vector.<§_-Ga§>;
      
      private var §_-gc§:Number;
      
      public function §_-N9§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-Ii§ = param2;
         this.§_-Zs§ = param3;
         this.§_-gc§ = this.§_-Zs§;
         this.§_-wU§ = new Vector.<§_-Ga§>();
      }
      
      public function §_-eI§() : Boolean
      {
         return this.§_-wU§.length < this.§_-Ii§;
      }
      
      public function §_-so§(param1:Sound, param2:int = 0, param3:Number = -1) : §_-Ga§
      {
         if(param3 < 0)
         {
            param3 = this.§_-gc§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-Ga§ = new §_-Ga§(_loc5_,this.§_-nY§);
         if(this.§_-Zs§ == 0)
         {
            _loc6_.§_-28§();
         }
         this.§_-wU§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-nY§(param1:§_-Ga§) : void
      {
         var _loc2_:Vector.<§_-Ga§> = null;
         var _loc3_:§_-Ga§ = null;
         if(this.§_-wU§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-wU§.splice(this.§_-wU§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-7r§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-jk§() : Boolean
      {
         return this.§_-wU§.length > 0;
      }
      
      public function §_-c0§() : void
      {
         var _loc1_:§_-Ga§ = null;
         while(this.§_-wU§.length > 0)
         {
            _loc1_ = this.§_-wU§[0];
            _loc1_.stop();
            _loc1_.§_-vI§();
         }
      }
      
      public function §_-FE§() : void
      {
         var _loc1_:§_-Ga§ = null;
         this.§_-Zs§ = 0;
         for each(_loc1_ in this.§_-wU§)
         {
            _loc1_.§_-28§();
         }
      }
      
      public function §_-3T§() : void
      {
         var _loc1_:§_-Ga§ = null;
         this.§_-Zs§ = this.§_-gc§;
         for each(_loc1_ in this.§_-wU§)
         {
            _loc1_.§_-0h§();
         }
      }
   }
}
