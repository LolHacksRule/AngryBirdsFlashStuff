package §_-am§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-oa§
   {
       
      
      public var mName:String;
      
      public var §_-te§:int;
      
      public var §_-eD§:Number = 1;
      
      private var §_-PT§:Vector.<§_-IP§>;
      
      public function §_-oa§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-te§ = param2;
         this.§_-eD§ = param3;
         this.§_-PT§ = new Vector.<§_-IP§>();
      }
      
      public function §_-W2§() : Boolean
      {
         return this.§_-PT§.length < this.§_-te§;
      }
      
      public function §_-aW§(param1:Sound, param2:int = 0, param3:Number = -1) : §_-IP§
      {
         if(param3 < 0)
         {
            param3 = this.§_-eD§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-IP§ = new §_-IP§(_loc5_,this.§_-nW§);
         this.§_-PT§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-nW§(param1:§_-IP§) : void
      {
         var _loc2_:Vector.<§_-IP§> = null;
         var _loc3_:§_-IP§ = null;
         if(this.§_-PT§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-PT§.splice(this.§_-PT§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-OB§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function get() : Boolean
      {
         return this.§_-PT§.length > 0;
      }
      
      public function §_-48§() : void
      {
         var _loc1_:§_-IP§ = null;
         while(this.§_-PT§.length > 0)
         {
            _loc1_ = this.§_-PT§[0];
            _loc1_.§_-rr§.stop();
            _loc1_.§_-dX§();
         }
      }
   }
}
