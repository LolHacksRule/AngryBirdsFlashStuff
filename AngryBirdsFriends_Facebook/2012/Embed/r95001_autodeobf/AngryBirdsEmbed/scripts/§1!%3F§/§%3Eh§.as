package §1!?§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §>h§
   {
       
      
      public var mName:String;
      
      public var §]<§:int;
      
      public var §?e§:Number = 1;
      
      private var §-!6§:Vector.<§[! §>;
      
      private var §@_§:Number;
      
      public function §>h§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§]<§ = param2;
         this.§?e§ = param3;
         this.§@_§ = this.§?e§;
         this.§-!6§ = new Vector.<§[! §>();
      }
      
      public function §=!7§() : Boolean
      {
         return this.§-!6§.length < this.§]<§;
      }
      
      public function §4!5§(param1:Sound, param2:int = 0, param3:Number = -1) : §[! §
      {
         if(param3 < 0)
         {
            param3 = this.§@_§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§[! § = new §[! §(_loc5_,this.§^#§);
         if(this.§?e§ == 0)
         {
            _loc6_.§&q§();
         }
         this.§-!6§.push(_loc6_);
         return _loc6_;
      }
      
      private function §^#§(param1:§[! §) : void
      {
         var _loc2_:Vector.<§[! §> = null;
         var _loc3_:§[! § = null;
         if(this.§-!6§.indexOf(param1) > -1)
         {
            _loc2_ = this.§-!6§.splice(this.§-!6§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §,N§() : Boolean
      {
         return this.§-!6§.length > 0;
      }
      
      public function §@l§() : void
      {
         var _loc1_:§[! § = null;
         while(this.§-!6§.length > 0)
         {
            _loc1_ = this.§-!6§[0];
            _loc1_.stop();
            _loc1_.§"q§();
         }
      }
      
      public function §6c§() : void
      {
         var _loc1_:§[! § = null;
         this.§?e§ = 0;
         for each(_loc1_ in this.§-!6§)
         {
            _loc1_.§&q§();
         }
      }
      
      public function §3!$§() : void
      {
         var _loc1_:§[! § = null;
         this.§?e§ = this.§@_§;
         for each(_loc1_ in this.§-!6§)
         {
            _loc1_.§?E§();
         }
      }
   }
}
