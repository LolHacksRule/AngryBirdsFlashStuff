package §_-E5§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-RY§
   {
       
      
      public var mName:String;
      
      public var §_-wC§:int;
      
      public var §_-Iq§:Number = 1;
      
      private var §_-DD§:Vector.<§_-DK§>;
      
      private var §_-kR§:Number;
      
      public function §_-RY§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-wC§ = param2;
         this.§_-Iq§ = param3;
         this.§_-kR§ = this.§_-Iq§;
         this.§_-DD§ = new Vector.<§_-DK§>();
      }
      
      public function §_-s9§() : Boolean
      {
         return this.§_-DD§.length < this.§_-wC§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §_-DK§
      {
         if(param3 < 0)
         {
            param3 = this.§_-kR§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-DK§ = new §_-DK§(_loc5_,this.§_-tw§);
         if(this.§_-Iq§ == 0)
         {
            _loc6_.§_-qc§();
         }
         this.§_-DD§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-tw§(param1:§_-DK§) : void
      {
         var _loc2_:Vector.<§_-DK§> = null;
         var _loc3_:§_-DK§ = null;
         if(this.§_-DD§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-DD§.splice(this.§_-DD§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-v§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-Ll§() : Boolean
      {
         return this.§_-DD§.length > 0;
      }
      
      public function §_-EQ§() : void
      {
         var _loc1_:§_-DK§ = null;
         while(this.§_-DD§.length > 0)
         {
            _loc1_ = this.§_-DD§[0];
            _loc1_.stop();
            _loc1_.§_-6c§();
         }
      }
      
      public function §_-pG§() : void
      {
         var _loc1_:§_-DK§ = null;
         this.§_-Iq§ = 0;
         for each(_loc1_ in this.§_-DD§)
         {
            _loc1_.§_-qc§();
         }
      }
      
      public function §_-AL§() : void
      {
         var _loc1_:§_-DK§ = null;
         this.§_-Iq§ = this.§_-kR§;
         for each(_loc1_ in this.§_-DD§)
         {
            _loc1_.§_-ij§();
         }
      }
   }
}
