package §5!c§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-!t§
   {
       
      
      public var mName:String;
      
      public var §-!R§:int;
      
      public var §7m§:Number = 1;
      
      private var §^a§:Vector.<§try§>;
      
      private var §'!@§:Number;
      
      public function §-!t§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§-!R§ = param2;
         this.§7m§ = param3;
         this.§'!@§ = this.§7m§;
         this.§^a§ = new Vector.<§try§>();
      }
      
      public function § !"§() : Boolean
      {
         return this.§^a§.length < this.§-!R§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §try§
      {
         if(param4 < 0)
         {
            param4 = this.§'!@§;
         }
         var _loc6_:SoundTransform = new SoundTransform(param4);
         var _loc7_:SoundChannel;
         if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
         {
            return null;
         }
         var _loc8_:§try§;
         (_loc8_ = new §try§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§6!e§);
         if(this.§7m§ == 0)
         {
            _loc8_.§`d§();
         }
         this.§^a§.push(_loc8_);
         return _loc8_;
      }
      
      private function §6!e§(param1:Event) : void
      {
         var _loc3_:Vector.<§try§> = null;
         var _loc4_:§try§ = null;
         var _loc2_:§try§ = §try§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§6!e§);
         if(this.§^a§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§^a§.splice(this.§^a§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §;,§() : Boolean
      {
         return this.§^a§.length > 0;
      }
      
      public function §0D§() : void
      {
         var _loc1_:§try§ = null;
         while(this.§^a§.length > 0)
         {
            _loc1_ = this.§^a§[0];
            _loc1_.stop();
            _loc1_.§#!e§();
         }
      }
      
      public function §]T§() : void
      {
         var _loc1_:§try§ = null;
         this.§7m§ = 0;
         for each(_loc1_ in this.§^a§)
         {
            _loc1_.§`d§();
         }
      }
      
      public function §"!G§() : void
      {
         var _loc1_:§try§ = null;
         this.§7m§ = this.§'!@§;
         for each(_loc1_ in this.§^a§)
         {
            _loc1_.§5!'§();
         }
      }
      
      public function §!!e§(param1:String) : §try§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^a§.length)
         {
            if(§try§(this.§^a§[_loc2_]).id == param1)
            {
               return §try§(this.§^a§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
