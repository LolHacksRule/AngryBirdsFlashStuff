package §2!6§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § W§
   {
       
      
      public var mName:String;
      
      public var §8m§:int;
      
      public var §;Y§:Number = 1;
      
      private var §;l§:Vector.<§break§>;
      
      private var §"!W§:Number;
      
      public function § W§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§8m§ = param2;
         this.§;Y§ = param3;
         this.§"!W§ = this.§;Y§;
         this.§;l§ = new Vector.<§break§>();
      }
      
      public function §0s§() : Boolean
      {
         return this.§;l§.length < this.§8m§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §break§
      {
         if(param3 < 0)
         {
            param3 = this.§"!W§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§break§ = new §break§(_loc5_,this.§04§);
         if(this.§;Y§ == 0)
         {
            _loc6_.§1W§();
         }
         this.§;l§.push(_loc6_);
         return _loc6_;
      }
      
      private function §04§(param1:§break§) : void
      {
         var _loc2_:Vector.<§break§> = null;
         var _loc3_:§break§ = null;
         if(this.§;l§.indexOf(param1) > -1)
         {
            _loc2_ = this.§;l§.splice(this.§;l§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§?!!§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §?!5§() : Boolean
      {
         return this.§;l§.length > 0;
      }
      
      public function §=!J§() : void
      {
         var _loc1_:§break§ = null;
         while(this.§;l§.length > 0)
         {
            _loc1_ = this.§;l§[0];
            _loc1_.stop();
            _loc1_.§-!5§();
         }
      }
      
      public function §'!G§() : void
      {
         var _loc1_:§break§ = null;
         this.§;Y§ = 0;
         for each(_loc1_ in this.§;l§)
         {
            _loc1_.§1W§();
         }
      }
      
      public function §0[§() : void
      {
         var _loc1_:§break§ = null;
         this.§;Y§ = this.§"!W§;
         for each(_loc1_ in this.§;l§)
         {
            _loc1_.§#d§();
         }
      }
   }
}
