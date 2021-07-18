package §_-rQ§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-gG§
   {
       
      
      public var mName:String;
      
      public var §_-Za§:int;
      
      public var §_-Dv§:Number = 1;
      
      private var §_-2f§:Vector.<§_-iG§>;
      
      public function §_-gG§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-Za§ = param2;
         this.§_-Dv§ = param3;
         this.§_-2f§ = new Vector.<§_-iG§>();
      }
      
      public function §_-kB§() : Boolean
      {
         return this.§_-2f§.length < this.§_-Za§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §_-iG§
      {
         if(param3 < 0)
         {
            param3 = this.§_-Dv§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-iG§ = new §_-iG§(_loc5_,this.§_-Wu§);
         this.§_-2f§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-Wu§(param1:§_-iG§) : void
      {
         var _loc2_:Vector.<§_-iG§> = null;
         var _loc3_:§_-iG§ = null;
         if(this.§_-2f§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-2f§.splice(this.§_-2f§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-g0§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-Z§() : Boolean
      {
         return this.§_-2f§.length > 0;
      }
      
      public function §_-yO§() : void
      {
         var _loc1_:§_-iG§ = null;
         while(this.§_-2f§.length > 0)
         {
            _loc1_ = this.§_-2f§[0];
            _loc1_.§_-D8§.stop();
            _loc1_.§_-py§();
         }
      }
   }
}
