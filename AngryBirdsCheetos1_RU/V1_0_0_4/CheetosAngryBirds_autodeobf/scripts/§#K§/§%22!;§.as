package §#K§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §"!;§
   {
       
      
      public var mName:String;
      
      public var §#!1§:int;
      
      public var §4T§:Number = 1;
      
      private var §@B§:Vector.<§ K§>;
      
      private var §<Y§:Number;
      
      public function §"!;§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§#!1§ = param2;
         this.§4T§ = param3;
         this.§<Y§ = this.§4T§;
         this.§@B§ = new Vector.<§ K§>();
      }
      
      public function §1!-§() : Boolean
      {
         return this.§@B§.length < this.§#!1§;
      }
      
      public function §7!=§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : § K§
      {
         if(param4 < 0)
         {
            param4 = this.§<Y§;
         }
         var _loc6_:SoundTransform = new SoundTransform(param4);
         var _loc7_:SoundChannel;
         if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
         {
            return null;
         }
         var _loc8_:§ K§;
         (_loc8_ = new § K§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§"&§);
         if(this.§4T§ == 0)
         {
            _loc8_.§5!G§();
         }
         this.§@B§.push(_loc8_);
         return _loc8_;
      }
      
      private function §"&§(param1:Event) : void
      {
         var _loc3_:Vector.<§ K§> = null;
         var _loc4_:§ K§ = null;
         var _loc2_:§ K§ = § K§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§"&§);
         if(this.§@B§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§@B§.splice(this.§@B§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§+y§();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §6F§() : Boolean
      {
         return this.§@B§.length > 0;
      }
      
      public function §`8§() : void
      {
         var _loc1_:§ K§ = null;
         while(this.§@B§.length > 0)
         {
            _loc1_ = this.§@B§[0];
            _loc1_.stop();
            _loc1_.§!!W§();
         }
      }
      
      public function §=!I§() : void
      {
         var _loc1_:§ K§ = null;
         this.§4T§ = 0;
         for each(_loc1_ in this.§@B§)
         {
            _loc1_.§5!G§();
         }
      }
      
      public function §#!T§() : void
      {
         var _loc1_:§ K§ = null;
         this.§4T§ = this.§<Y§;
         for each(_loc1_ in this.§@B§)
         {
            _loc1_.§]!B§();
         }
      }
      
      public function §@F§(param1:String) : § K§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@B§.length)
         {
            if(§ K§(this.§@B§[_loc2_]).id == param1)
            {
               return § K§(this.§@B§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
