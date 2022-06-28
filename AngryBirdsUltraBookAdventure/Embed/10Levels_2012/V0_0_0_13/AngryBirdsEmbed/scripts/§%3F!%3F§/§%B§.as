package §?!?§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%B§
   {
       
      
      public var mName:String;
      
      public var §=C§:int;
      
      public var §]4§:Number = 1;
      
      private var §>#§:Vector.<§]t§>;
      
      private var §6_§:Number;
      
      public function §%B§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§=C§ = param2;
         this.§]4§ = param3;
         this.§6_§ = this.§]4§;
         this.§>#§ = new Vector.<§]t§>();
      }
      
      public function §-r§() : Boolean
      {
         return this.§>#§.length < this.§=C§;
      }
      
      public function §<!,§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §]t§
      {
         if(param3 < 0)
         {
            param3 = this.§6_§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§]t§ = new §]t§(_loc6_,this.§9P§,param4);
         if(this.§]4§ == 0)
         {
            _loc7_.§var §();
         }
         this.§>#§.push(_loc7_);
         return _loc7_;
      }
      
      private function §9P§(param1:§]t§) : void
      {
         var _loc2_:Vector.<§]t§> = null;
         var _loc3_:§]t§ = null;
         if(this.§>#§.indexOf(param1) > -1)
         {
            _loc2_ = this.§>#§.splice(this.§>#§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §!q§() : Boolean
      {
         return this.§>#§.length > 0;
      }
      
      public function §#'§() : void
      {
         var _loc1_:§]t§ = null;
         while(this.§>#§.length > 0)
         {
            _loc1_ = this.§>#§[0];
            _loc1_.stop();
            _loc1_.§<e§();
         }
      }
      
      public function §9!C§() : void
      {
         var _loc1_:§]t§ = null;
         this.§]4§ = 0;
         for each(_loc1_ in this.§>#§)
         {
            _loc1_.§var §();
         }
      }
      
      public function §4>§() : void
      {
         var _loc1_:§]t§ = null;
         this.§]4§ = this.§6_§;
         for each(_loc1_ in this.§>#§)
         {
            _loc1_.§ 2§();
         }
      }
   }
}
