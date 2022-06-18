package §1!8§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §[l§
   {
       
      
      public var mName:String;
      
      public var §8!>§:int;
      
      public var §6'§:Number = 1;
      
      private var §8>§:Vector.<§]f§>;
      
      private var §]!3§:Number;
      
      public function §[l§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§8!>§ = param2;
         this.§6'§ = param3;
         this.§]!3§ = this.§6'§;
         this.§8>§ = new Vector.<§]f§>();
      }
      
      public function §8I§() : Boolean
      {
         return this.§8>§.length < this.§8!>§;
      }
      
      public function §>t§(param1:Sound, param2:int = 0, param3:Number = -1) : §]f§
      {
         if(param3 < 0)
         {
            param3 = this.§]!3§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§]f§ = new §]f§(_loc5_,this.§8!;§);
         if(this.§6'§ == 0)
         {
            _loc6_.§7#§();
         }
         this.§8>§.push(_loc6_);
         return _loc6_;
      }
      
      private function §8!;§(param1:§]f§) : void
      {
         var _loc2_:Vector.<§]f§> = null;
         var _loc3_:§]f§ = null;
         if(this.§8>§.indexOf(param1) > -1)
         {
            _loc2_ = this.§8>§.splice(this.§8>§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §4I§() : Boolean
      {
         return this.§8>§.length > 0;
      }
      
      public function §&;§() : void
      {
         var _loc1_:§]f§ = null;
         while(this.§8>§.length > 0)
         {
            _loc1_ = this.§8>§[0];
            _loc1_.stop();
            _loc1_.§4f§();
         }
      }
      
      public function §8P§() : void
      {
         var _loc1_:§]f§ = null;
         this.§6'§ = 0;
         for each(_loc1_ in this.§8>§)
         {
            _loc1_.§7#§();
         }
      }
      
      public function §,!!§() : void
      {
         var _loc1_:§]f§ = null;
         this.§6'§ = this.§]!3§;
         for each(_loc1_ in this.§8>§)
         {
            _loc1_.§'!0§();
         }
      }
   }
}
