package §%!$§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8m§
   {
       
      
      public var mName:String;
      
      public var §;l§:int;
      
      public var §=!L§:Number = 1;
      
      private var §0s§:Vector.<§5v§>;
      
      private var §-C§:Number;
      
      public function §8m§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§;l§ = param2;
         this.§=!L§ = param3;
         this.§-C§ = this.§=!L§;
         this.§0s§ = new Vector.<§5v§>();
      }
      
      public function §04§() : Boolean
      {
         return this.§0s§.length < this.§;l§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §5v§
      {
         if(param3 < 0)
         {
            param3 = this.§-C§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§5v§ = new §5v§(_loc5_,this.§'!G§);
         if(this.§=!L§ == 0)
         {
            _loc6_.§#d§();
         }
         this.§0s§.push(_loc6_);
         return _loc6_;
      }
      
      private function §'!G§(param1:§5v§) : void
      {
         var _loc2_:Vector.<§5v§> = null;
         var _loc3_:§5v§ = null;
         if(this.§0s§.indexOf(param1) > -1)
         {
            _loc2_ = this.§0s§.splice(this.§0s§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§1W§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §9y§() : Boolean
      {
         return this.§0s§.length > 0;
      }
      
      public function §,w§() : void
      {
         var _loc1_:§5v§ = null;
         while(this.§0s§.length > 0)
         {
            _loc1_ = this.§0s§[0];
            _loc1_.stop();
            _loc1_.§?!!§();
         }
      }
      
      public function §0[§() : void
      {
         var _loc1_:§5v§ = null;
         this.§=!L§ = 0;
         for each(_loc1_ in this.§0s§)
         {
            _loc1_.§#d§();
         }
      }
      
      public function §0!>§() : void
      {
         var _loc1_:§5v§ = null;
         this.§=!L§ = this.§-C§;
         for each(_loc1_ in this.§0s§)
         {
            _loc1_.§ W§();
         }
      }
   }
}
