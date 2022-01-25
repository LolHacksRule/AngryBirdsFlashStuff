package §=L§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §6B§
   {
       
      
      public var mName:String;
      
      public var §7!E§:int;
      
      public var §`!I§:Number = 1;
      
      private var §1!K§:Vector.<§]!5§>;
      
      private var §,!4§:Number;
      
      public function §6B§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§7!E§ = param2;
         this.§`!I§ = param3;
         this.§,!4§ = this.§`!I§;
         this.§1!K§ = new Vector.<§]!5§>();
      }
      
      public function §`!`§() : Boolean
      {
         return this.§1!K§.length < this.§7!E§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §]!5§
      {
         if(param3 < 0)
         {
            param3 = this.§,!4§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§]!5§ = new §]!5§(_loc5_,this.§[[§);
         if(this.§`!I§ == 0)
         {
            _loc6_.§<!-§();
         }
         this.§1!K§.push(_loc6_);
         return _loc6_;
      }
      
      private function §[[§(param1:§]!5§) : void
      {
         var _loc2_:Vector.<§]!5§> = null;
         var _loc3_:§]!5§ = null;
         if(this.§1!K§.indexOf(param1) > -1)
         {
            _loc2_ = this.§1!K§.splice(this.§1!K§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§-K§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §7!U§() : Boolean
      {
         return this.§1!K§.length > 0;
      }
      
      public function §>!^§() : void
      {
         var _loc1_:§]!5§ = null;
         while(this.§1!K§.length > 0)
         {
            _loc1_ = this.§1!K§[0];
            _loc1_.stop();
            _loc1_.§,9§();
         }
      }
      
      public function §]3§() : void
      {
         var _loc1_:§]!5§ = null;
         this.§`!I§ = 0;
         for each(_loc1_ in this.§1!K§)
         {
            _loc1_.§<!-§();
         }
      }
      
      public function §,h§() : void
      {
         var _loc1_:§]!5§ = null;
         this.§`!I§ = this.§,!4§;
         for each(_loc1_ in this.§1!K§)
         {
            _loc1_.§2!U§();
         }
      }
   }
}
