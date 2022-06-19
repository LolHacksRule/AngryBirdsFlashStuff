package §_-VH§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-Km§
   {
       
      
      public var mName:String;
      
      public var §_-0h§:int;
      
      public var §_-Ld§:Number = 1;
      
      private var §_-em§:Vector.<§_-2K§>;
      
      private var §_-mM§:Number;
      
      public function §_-Km§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-0h§ = param2;
         this.§_-Ld§ = param3;
         this.§_-mM§ = this.§_-Ld§;
         this.§_-em§ = new Vector.<§_-2K§>();
      }
      
      public function §_-Wb§() : Boolean
      {
         return this.§_-em§.length < this.§_-0h§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §_-2K§
      {
         if(param3 < 0)
         {
            param3 = this.§_-mM§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-2K§ = new §_-2K§(_loc5_,this.§_-Y5§);
         if(this.§_-Ld§ == 0)
         {
            _loc6_.§_-yV§();
         }
         this.§_-em§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-Y5§(param1:§_-2K§) : void
      {
         var _loc2_:Vector.<§_-2K§> = null;
         var _loc3_:§_-2K§ = null;
         if(this.§_-em§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-em§.splice(this.§_-em§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-Md§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-96§() : Boolean
      {
         return this.§_-em§.length > 0;
      }
      
      public function §_-bm§() : void
      {
         var _loc1_:§_-2K§ = null;
         while(this.§_-em§.length > 0)
         {
            _loc1_ = this.§_-em§[0];
            _loc1_.stop();
            _loc1_.§_-pZ§();
         }
      }
      
      public function §_-pT§() : void
      {
         var _loc1_:§_-2K§ = null;
         this.§_-Ld§ = 0;
         for each(_loc1_ in this.§_-em§)
         {
            _loc1_.§_-yV§();
         }
      }
      
      public function §_-fu§() : void
      {
         var _loc1_:§_-2K§ = null;
         this.§_-Ld§ = this.§_-mM§;
         for each(_loc1_ in this.§_-em§)
         {
            _loc1_.§_-PD§();
         }
      }
   }
}
