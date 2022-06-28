package §2!<§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § 2§
   {
       
      
      public var mName:String;
      
      public var §%B§:int;
      
      public var §@G§:Number = 1;
      
      private var §=C§:Vector.<§4I§>;
      
      private var §1!@§:Number;
      
      public function § 2§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§%B§ = param2;
         this.§@G§ = param3;
         this.§1!@§ = this.§@G§;
         this.§=C§ = new Vector.<§4I§>();
      }
      
      public function §>#§() : Boolean
      {
         return this.§=C§.length < this.§%B§;
      }
      
      public function §#'§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §4I§
      {
         if(param3 < 0)
         {
            param3 = this.§1!@§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§4I§ = new §4I§(_loc6_,this.§-r§,param4);
         if(this.§@G§ == 0)
         {
            _loc7_.§<e§();
         }
         this.§=C§.push(_loc7_);
         return _loc7_;
      }
      
      private function §-r§(param1:§4I§) : void
      {
         var _loc2_:Vector.<§4I§> = null;
         var _loc3_:§4I§ = null;
         if(this.§=C§.indexOf(param1) > -1)
         {
            _loc2_ = this.§=C§.splice(this.§=C§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §!q§() : Boolean
      {
         return this.§=C§.length > 0;
      }
      
      public function §%!%§() : void
      {
         var _loc1_:§4I§ = null;
         while(this.§=C§.length > 0)
         {
            _loc1_ = this.§=C§[0];
            _loc1_.stop();
            _loc1_.§>^§();
         }
      }
      
      public function §9P§() : void
      {
         var _loc1_:§4I§ = null;
         this.§@G§ = 0;
         for each(_loc1_ in this.§=C§)
         {
            _loc1_.§<e§();
         }
      }
      
      public function §9!C§() : void
      {
         var _loc1_:§4I§ = null;
         this.§@G§ = this.§1!@§;
         for each(_loc1_ in this.§=C§)
         {
            _loc1_.§var §();
         }
      }
   }
}
