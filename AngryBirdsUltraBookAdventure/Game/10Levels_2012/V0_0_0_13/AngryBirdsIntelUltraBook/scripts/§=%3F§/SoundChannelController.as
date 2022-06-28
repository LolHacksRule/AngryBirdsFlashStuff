package §=?§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var §'!T§:int;
      
      public var §,#§:Number = 1;
      
      private var §^I§:Vector.<§7[§>;
      
      private var §0[§:Number;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§'!T§ = param2;
         this.§,#§ = param3;
         this.§0[§ = this.§,#§;
         this.§^I§ = new Vector.<§7[§>();
      }
      
      public function §'!a§() : Boolean
      {
         return this.§^I§.length < this.§'!T§;
      }
      
      public function §9!X§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §7[§
      {
         if(param3 < 0)
         {
            param3 = this.§0[§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
         if(_loc6_ == null)
         {
            return null;
         }
         var _loc7_:§7[§ = new §7[§(_loc6_,this.§9!B§,param4);
         if(this.§,#§ == 0)
         {
            _loc7_.§<!`§();
         }
         this.§^I§.push(_loc7_);
         return _loc7_;
      }
      
      private function §9!B§(param1:§7[§) : void
      {
         var _loc2_:Vector.<§7[§> = null;
         var _loc3_:§7[§ = null;
         if(this.§^I§.indexOf(param1) > -1)
         {
            _loc2_ = this.§^I§.splice(this.§^I§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function § O§() : Boolean
      {
         return this.§^I§.length > 0;
      }
      
      public function §;!8§() : void
      {
         var _loc1_:§7[§ = null;
         while(this.§^I§.length > 0)
         {
            _loc1_ = this.§^I§[0];
            _loc1_.stop();
            _loc1_.§case §();
         }
      }
      
      public function §#!6§() : void
      {
         var _loc1_:§7[§ = null;
         this.§,#§ = 0;
         for each(_loc1_ in this.§^I§)
         {
            _loc1_.§<!`§();
         }
      }
      
      public function §`!=§() : void
      {
         var _loc1_:§7[§ = null;
         this.§,#§ = this.§0[§;
         for each(_loc1_ in this.§^I§)
         {
            _loc1_.§0z§();
         }
      }
   }
}
