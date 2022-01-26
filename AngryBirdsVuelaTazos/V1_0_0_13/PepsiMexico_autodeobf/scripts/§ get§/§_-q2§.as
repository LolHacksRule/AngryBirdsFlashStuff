package § get§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-q2§
   {
       
      
      public var mName:String;
      
      public var §_-Ir§:int;
      
      public var §_-sx§:Number = 1;
      
      private var §_-E1§:Vector.<§_-of§>;
      
      public function §_-q2§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-Ir§ = param2;
         this.§_-sx§ = param3;
         this.§_-E1§ = new Vector.<§_-of§>();
      }
      
      public function §_-AI§() : Boolean
      {
         return this.§_-E1§.length < this.§_-Ir§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §_-of§
      {
         if(param3 < 0)
         {
            param3 = this.§_-sx§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§_-of§ = new §_-of§(_loc5_,this.§_-X5§);
         this.§_-E1§.push(_loc6_);
         return _loc6_;
      }
      
      private function §_-X5§(param1:§_-of§) : void
      {
         var _loc2_:Vector.<§_-of§> = null;
         var _loc3_:§_-of§ = null;
         if(this.§_-E1§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-E1§.splice(this.§_-E1§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-qx§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-54§() : Boolean
      {
         return this.§_-E1§.length > 0;
      }
      
      public function §_-6Y§() : void
      {
         var _loc1_:§_-of§ = null;
         while(this.§_-E1§.length > 0)
         {
            _loc1_ = this.§_-E1§[0];
            _loc1_.§_-fN§.stop();
            _loc1_.§_-pG§();
         }
      }
   }
}
