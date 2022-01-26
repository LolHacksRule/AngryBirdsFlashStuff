package §2!Q§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §0!H§
   {
       
      
      public var mName:String;
      
      public var §"Z§:int;
      
      public var §2p§:Number = 1;
      
      private var §#!;§:Vector.<§@!-§>;
      
      private var §6!'§:Number;
      
      public function §0!H§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§"Z§ = param2;
         this.§2p§ = param3;
         this.§6!'§ = this.§2p§;
         this.§#!;§ = new Vector.<§@!-§>();
      }
      
      public function §!E§() : Boolean
      {
         return this.§#!;§.length < this.§"Z§;
      }
      
      public function §"]§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §@!-§
      {
         if(param3 < 0)
         {
            param3 = this.§6!'§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§@!-§ = new §@!-§(_loc6_,this.§ O§,param4);
         if(this.§2p§ == 0)
         {
            _loc7_.§2!7§();
         }
         this.§#!;§.push(_loc7_);
         return _loc7_;
      }
      
      private function § O§(param1:§@!-§) : void
      {
         var _loc2_:Vector.<§@!-§> = null;
         var _loc3_:§@!-§ = null;
         if(this.§#!;§.indexOf(param1) > -1)
         {
            _loc2_ = this.§#!;§.splice(this.§#!;§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§`X§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §;!V§() : Boolean
      {
         return this.§#!;§.length > 0;
      }
      
      public function §9!;§() : void
      {
         var _loc1_:§@!-§ = null;
         while(this.§#!;§.length > 0)
         {
            _loc1_ = this.§#!;§[0];
            _loc1_.stop();
            _loc1_.§`!G§();
         }
      }
      
      public function § z§() : void
      {
         var _loc1_:§@!-§ = null;
         this.§2p§ = 0;
         for each(_loc1_ in this.§#!;§)
         {
            _loc1_.§2!7§();
         }
      }
      
      public function §"!B§() : void
      {
         var _loc1_:§@!-§ = null;
         this.§2p§ = this.§6!'§;
         for each(_loc1_ in this.§#!;§)
         {
            _loc1_.§?!S§();
         }
      }
   }
}
