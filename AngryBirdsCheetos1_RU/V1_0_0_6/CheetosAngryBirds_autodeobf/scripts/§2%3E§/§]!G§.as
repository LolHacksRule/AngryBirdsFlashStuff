package §2>§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]!G§
   {
       
      
      public var mName:String;
      
      public var §>!$§:int;
      
      public var §4!=§:Number = 1;
      
      private var §'!B§:Vector.<§4d§>;
      
      private var §]'§:Number;
      
      public function §]!G§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§>!$§ = param2;
         this.§4!=§ = param3;
         this.§]'§ = this.§4!=§;
         this.§'!B§ = new Vector.<§4d§>();
      }
      
      public function §0#§() : Boolean
      {
         return this.§'!B§.length < this.§>!$§;
      }
      
      public function §0!O§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4d§
      {
         if(param4 < 0)
         {
            param4 = this.§]'§;
         }
         var _loc6_:SoundTransform = new SoundTransform(param4);
         var _loc7_:SoundChannel;
         if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
         {
            return null;
         }
         var _loc8_:§4d§;
         (_loc8_ = new §4d§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§ !'§);
         if(this.§4!=§ == 0)
         {
            _loc8_.§ N§();
         }
         this.§'!B§.push(_loc8_);
         return _loc8_;
      }
      
      private function § !'§(param1:Event) : void
      {
         var _loc3_:Vector.<§4d§> = null;
         var _loc4_:§4d§ = null;
         var _loc2_:§4d§ = §4d§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§ !'§);
         if(this.§'!B§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§'!B§.splice(this.§'!B§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§>!?§();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §'!S§() : Boolean
      {
         return this.§'!B§.length > 0;
      }
      
      public function §>a§() : void
      {
         var _loc1_:§4d§ = null;
         while(this.§'!B§.length > 0)
         {
            _loc1_ = this.§'!B§[0];
            _loc1_.stop();
            _loc1_.§'&§();
         }
      }
      
      public function §+2§() : void
      {
         var _loc1_:§4d§ = null;
         this.§4!=§ = 0;
         for each(_loc1_ in this.§'!B§)
         {
            _loc1_.§ N§();
         }
      }
      
      public function §4a§() : void
      {
         var _loc1_:§4d§ = null;
         this.§4!=§ = this.§]'§;
         for each(_loc1_ in this.§'!B§)
         {
            _loc1_.§6f§();
         }
      }
      
      public function §;R§(param1:String) : §4d§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!B§.length)
         {
            if(§4d§(this.§'!B§[_loc2_]).id == param1)
            {
               return §4d§(this.§'!B§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
