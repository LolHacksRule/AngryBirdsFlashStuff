package §_-6n§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-i4§
   {
       
      
      public var mName:String;
      
      public var §_-Lc§:int;
      
      public var §_-HT§:Number = 1;
      
      private var §if §:Vector.<§_-fg§>;
      
      public function §_-i4§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-Lc§ = param2;
         this.§_-HT§ = param3;
         this.§if § = new Vector.<§_-fg§>();
      }
      
      public function §_-pw§() : Boolean
      {
         return this.§if §.length < this.§_-Lc§;
      }
      
      public function §_-rp§(param1:Sound, param2:int = 0, param3:Number = -1) : §_-fg§
      {
         if(param3 < 0)
         {
            param3 = this.§_-HT§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-fg§ = new §_-fg§(_loc5_,this.§_-o0§);
         this.§if §.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-o0§(param1:§_-fg§) : void
      {
         var _loc2_:Vector.<§_-fg§> = null;
         var _loc3_:§_-fg§ = null;
         if(this.§if §.indexOf(param1) > -1)
         {
            _loc2_ = this.§if §.splice(this.§if §.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-op§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-Os§() : Boolean
      {
         return this.§if §.length > 0;
      }
      
      public function §_-i-§() : void
      {
         var _loc1_:§_-fg§ = null;
         while(this.§if §.length > 0)
         {
            _loc1_ = this.§if §[0];
            _loc1_.§_-7F§.stop();
            _loc1_.§_-mS§();
         }
      }
   }
}
