package §_-4g§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-BY§
   {
       
      
      public var mName:String;
      
      public var §_-6O§:int;
      
      public var §_-PN§:Number = 1;
      
      private var §_-Jm§:Vector.<§_-9c§>;
      
      private var §_-011§:Number;
      
      public function §_-BY§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-6O§ = param2;
         this.§_-PN§ = param3;
         this.§_-011§ = this.§_-PN§;
         this.§_-Jm§ = new Vector.<§_-9c§>();
      }
      
      public function §_-0Dk§() : Boolean
      {
         return this.§_-Jm§.length < this.§_-6O§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §_-9c§
      {
         if(param3 < 0)
         {
            param3 = this.§_-011§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§_-9c§ = new §_-9c§(_loc6_,this.§_-02E§,param4);
         if(this.§_-PN§ == 0)
         {
            _loc7_.§_-d7§();
         }
         this.§_-Jm§.push(_loc7_);
         return _loc7_;
      }
      
      private function §_-02E§(param1:§_-9c§) : void
      {
         var _loc2_:Vector.<§_-9c§> = null;
         var _loc3_:§_-9c§ = null;
         if(this.§_-Jm§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-Jm§.splice(this.§_-Jm§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-3t§() : Boolean
      {
         return this.§_-Jm§.length > 0;
      }
      
      public function §_-j4§() : void
      {
         var _loc1_:§_-9c§ = null;
         while(this.§_-Jm§.length > 0)
         {
            _loc1_ = this.§_-Jm§[0];
            _loc1_.stop();
            _loc1_.§_-T5§();
         }
      }
      
      public function §_-0-c§() : void
      {
         var _loc1_:§_-9c§ = null;
         this.§_-PN§ = 0;
         for each(_loc1_ in this.§_-Jm§)
         {
            _loc1_.§_-d7§();
         }
      }
      
      public function §_-8T§() : void
      {
         var _loc1_:§_-9c§ = null;
         this.§_-PN§ = this.§_-011§;
         for each(_loc1_ in this.§_-Jm§)
         {
            _loc1_.§_-XX§();
         }
      }
   }
}
