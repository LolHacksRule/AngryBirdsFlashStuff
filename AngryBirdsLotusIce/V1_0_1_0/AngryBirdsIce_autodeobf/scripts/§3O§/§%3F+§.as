package §3O§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §?+§
   {
       
      
      public var mName:String;
      
      public var §&3§:int;
      
      public var §^^§:Number = 1;
      
      private var §,!=§:Vector.<§%!D§>;
      
      private var §2!"§:Number;
      
      public function §?+§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§&3§ = param2;
         this.§^^§ = param3;
         this.§2!"§ = this.§^^§;
         this.§,!=§ = new Vector.<§%!D§>();
      }
      
      public function §2V§() : Boolean
      {
         return this.§,!=§.length < this.§&3§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §%!D§
      {
         if(param3 < 0)
         {
            param3 = this.§2!"§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§%!D§ = new §%!D§(_loc5_,this.§2H§);
         if(this.§^^§ == 0)
         {
            _loc6_.§[=§();
         }
         this.§,!=§.push(_loc6_);
         return _loc6_;
      }
      
      private function §2H§(param1:§%!D§) : void
      {
         var _loc2_:Vector.<§%!D§> = null;
         var _loc3_:§%!D§ = null;
         if(this.§,!=§.indexOf(param1) > -1)
         {
            _loc2_ = this.§,!=§.splice(this.§,!=§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §%!'§() : Boolean
      {
         return this.§,!=§.length > 0;
      }
      
      public function §&t§() : void
      {
         var _loc1_:§%!D§ = null;
         while(this.§,!=§.length > 0)
         {
            _loc1_ = this.§,!=§[0];
            _loc1_.stop();
            _loc1_.§=!0§();
         }
      }
      
      public function §%K§() : void
      {
         var _loc1_:§%!D§ = null;
         this.§^^§ = 0;
         for each(_loc1_ in this.§,!=§)
         {
            _loc1_.§[=§();
         }
      }
      
      public function §<m§() : void
      {
         var _loc1_:§%!D§ = null;
         this.§^^§ = this.§2!"§;
         for each(_loc1_ in this.§,!=§)
         {
            _loc1_.§=D§();
         }
      }
   }
}
