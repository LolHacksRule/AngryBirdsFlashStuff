package §_-5x§
{
   import §_-ZG§.§_-Ne§;
   import §_-p7§.§_-WY§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-op§
   {
       
      
      public var mName:String;
      
      public var §_-xb§:int;
      
      public var §_-cd§:Number = 1;
      
      private var §_-ro§:Vector.<§_-L0§>;
      
      public function §_-op§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-xb§ = param2;
         this.§_-cd§ = param3;
         this.§_-ro§ = new Vector.<§_-L0§>();
      }
      
      public function §_-uf§() : Boolean
      {
         return this.§_-ro§.length < this.§_-xb§;
      }
      
      public function §_-rD§(param1:String, param2:int = 0, param3:Number = -1) : §_-L0§
      {
         if(param3 < 0)
         {
            param3 = this.§_-cd§;
         }
         var _loc4_:Class;
         if(!(_loc4_ = §_-WY§.§_-fs§(param1,false) as Class))
         {
            §_-Ne§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
            return null;
         }
         var _loc5_:Sound = new _loc4_();
         var _loc6_:SoundTransform = new SoundTransform(param3);
         var _loc7_:SoundChannel = _loc5_.play(0,param2,_loc6_);
         var _loc8_:§_-L0§ = new §_-L0§(param1,_loc7_,_loc5_,this.§_-wu§);
         this.§_-ro§.push(_loc8_);
         return _loc8_;
      }
      
      private function §_-wu§(param1:§_-L0§) : void
      {
         var _loc2_:Vector.<§_-L0§> = null;
         var _loc3_:§_-L0§ = null;
         if(this.§_-ro§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-ro§.splice(this.§_-ro§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-Q7§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-q3§() : Boolean
      {
         return this.§_-ro§.length > 0;
      }
      
      public function §_-m-§() : void
      {
         var _loc1_:§_-L0§ = null;
         while(this.§_-ro§.length > 0)
         {
            _loc1_ = this.§_-ro§[0];
            _loc1_.§_-5q§.stop();
            _loc1_.§_-Ow§();
         }
      }
   }
}
