package §_-cb§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-Tl§
   {
       
      
      public var mName:String;
      
      public var §_-zs§:int;
      
      public var §_-0j§:Number = 1;
      
      private var §_-oM§:Vector.<§_-E1§>;
      
      private var §_-8S§:Number;
      
      public function §_-Tl§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-zs§ = param2;
         this.§_-0j§ = param3;
         this.§_-8S§ = this.§_-0j§;
         this.§_-oM§ = new Vector.<§_-E1§>();
      }
      
      public function §_-SH§() : Boolean
      {
         return this.§_-oM§.length < this.§_-zs§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §_-E1§
      {
         if(param3 < 0)
         {
            param3 = this.§_-8S§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-E1§ = new §_-E1§(_loc5_,this.§_-Ip§);
         if(this.§_-0j§ == 0)
         {
            _loc6_.§_-zZ§();
         }
         this.§_-oM§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-Ip§(param1:§_-E1§) : void
      {
         var _loc2_:Vector.<§_-E1§> = null;
         var _loc3_:§_-E1§ = null;
         if(this.§_-oM§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-oM§.splice(this.§_-oM§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-KX§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-5k§() : Boolean
      {
         return this.§_-oM§.length > 0;
      }
      
      public function §_-ws§() : void
      {
         var _loc1_:§_-E1§ = null;
         while(this.§_-oM§.length > 0)
         {
            _loc1_ = this.§_-oM§[0];
            _loc1_.stop();
            _loc1_.§_-8d§();
         }
      }
      
      public function §_-Zs§() : void
      {
         var _loc1_:§_-E1§ = null;
         this.§_-0j§ = 0;
         for each(_loc1_ in this.§_-oM§)
         {
            _loc1_.§_-zZ§();
         }
      }
      
      public function §_-NO§() : void
      {
         var _loc1_:§_-E1§ = null;
         this.§_-0j§ = this.§_-8S§;
         for each(_loc1_ in this.§_-oM§)
         {
            _loc1_.§_-X-§();
         }
      }
   }
}
