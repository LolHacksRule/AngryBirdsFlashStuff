package §5!G§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § !J§
   {
       
      
      public var mName:String;
      
      public var §5!,§:int;
      
      public var §>!K§:Number = 1;
      
      private var §#! §:Vector.<§-!;§>;
      
      private var §9F§:Number;
      
      public function § !J§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§5!,§ = param2;
         this.§>!K§ = param3;
         this.§9F§ = this.§>!K§;
         this.§#! § = new Vector.<§-!;§>();
      }
      
      public function §`N§() : Boolean
      {
         return this.§#! §.length < this.§5!,§;
      }
      
      public function §>%§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §-!;§
      {
         if(param4 < 0)
         {
            param4 = this.§9F§;
         }
         var _loc6_:SoundTransform = new SoundTransform(param4);
         var _loc7_:SoundChannel;
         if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
         {
            return null;
         }
         var _loc8_:§-!;§;
         (_loc8_ = new §-!;§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§8m§);
         if(this.§>!K§ == 0)
         {
            _loc8_.§;2§();
         }
         this.§#! §.push(_loc8_);
         return _loc8_;
      }
      
      private function §8m§(param1:Event) : void
      {
         var _loc3_:Vector.<§-!;§> = null;
         var _loc4_:§-!;§ = null;
         var _loc2_:§-!;§ = §-!;§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§8m§);
         if(this.§#! §.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§#! §.splice(this.§#! §.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§>!P§();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §]!_§() : Boolean
      {
         return this.§#! §.length > 0;
      }
      
      public function §55§() : void
      {
         var _loc1_:§-!;§ = null;
         while(this.§#! §.length > 0)
         {
            _loc1_ = this.§#! §[0];
            _loc1_.stop();
            _loc1_.§"!0§();
         }
      }
      
      public function §9!>§() : void
      {
         var _loc1_:§-!;§ = null;
         this.§>!K§ = 0;
         for each(_loc1_ in this.§#! §)
         {
            _loc1_.§;2§();
         }
      }
      
      public function §&!§() : void
      {
         var _loc1_:§-!;§ = null;
         this.§>!K§ = this.§9F§;
         for each(_loc1_ in this.§#! §)
         {
            _loc1_.§=!;§();
         }
      }
      
      public function §]!^§(param1:String) : §-!;§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#! §.length)
         {
            if(§-!;§(this.§#! §[_loc2_]).id == param1)
            {
               return §-!;§(this.§#! §[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
