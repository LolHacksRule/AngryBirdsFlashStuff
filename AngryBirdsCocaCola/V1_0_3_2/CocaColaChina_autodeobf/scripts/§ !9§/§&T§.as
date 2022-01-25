package § !9§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&T§
   {
       
      
      public var mName:String;
      
      public var §7N§:int;
      
      public var §[C§:Number = 1;
      
      private var §=8§:Vector.<§&!F§>;
      
      private var §>2§:Number;
      
      public function §&T§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§7N§ = param2;
         this.§[C§ = param3;
         this.§>2§ = this.§[C§;
         this.§=8§ = new Vector.<§&!F§>();
      }
      
      public function §-!D§() : Boolean
      {
         return this.§=8§.length < this.§7N§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §&!F§
      {
         if(param3 < 0)
         {
            param3 = this.§>2§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§&!F§ = new §&!F§(_loc5_,this.§;!&§);
         if(this.§[C§ == 0)
         {
            _loc6_.§;!_§();
         }
         this.§=8§.push(_loc6_);
         return _loc6_;
      }
      
      private function §;!&§(param1:§&!F§) : void
      {
         var _loc2_:Vector.<§&!F§> = null;
         var _loc3_:§&!F§ = null;
         if(this.§=8§.indexOf(param1) > -1)
         {
            _loc2_ = this.§=8§.splice(this.§=8§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§^!O§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §?+§() : Boolean
      {
         return this.§=8§.length > 0;
      }
      
      public function §]P§() : void
      {
         var _loc1_:§&!F§ = null;
         while(this.§=8§.length > 0)
         {
            _loc1_ = this.§=8§[0];
            _loc1_.stop();
            _loc1_.§=!Q§();
         }
      }
      
      public function §,+§() : void
      {
         var _loc1_:§&!F§ = null;
         this.§[C§ = 0;
         for each(_loc1_ in this.§=8§)
         {
            _loc1_.§;!_§();
         }
      }
      
      public function §0!F§() : void
      {
         var _loc1_:§&!F§ = null;
         this.§[C§ = this.§>2§;
         for each(_loc1_ in this.§=8§)
         {
            _loc1_.§5l§();
         }
      }
   }
}
