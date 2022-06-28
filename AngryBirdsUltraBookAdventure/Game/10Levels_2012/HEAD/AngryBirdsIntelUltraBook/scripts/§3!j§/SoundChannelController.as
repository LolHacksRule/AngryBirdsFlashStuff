package §3!j§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var §9!9§:int;
      
      public var §1E§:Number = 1;
      
      private var §!!1§:Vector.<§%[§>;
      
      private var §'!!§:Number;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§9!9§ = param2;
         this.§1E§ = param3;
         this.§'!!§ = this.§1E§;
         this.§!!1§ = new Vector.<§%[§>();
      }
      
      public function §4=§() : Boolean
      {
         return this.§!!1§.length < this.§9!9§;
      }
      
      public function §`B§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §%[§
      {
         if(param3 < 0)
         {
            param3 = this.§'!!§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
         if(_loc6_ == null)
         {
            return null;
         }
         var _loc7_:§%[§ = new §%[§(_loc6_,this.§[L§,param4);
         if(this.§1E§ == 0)
         {
            _loc7_.§@!"§();
         }
         this.§!!1§.push(_loc7_);
         return _loc7_;
      }
      
      private function §[L§(param1:§%[§) : void
      {
         var _loc2_:Vector.<§%[§> = null;
         var _loc3_:§%[§ = null;
         if(this.§!!1§.indexOf(param1) > -1)
         {
            _loc2_ = this.§!!1§.splice(this.§!!1§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §9X§() : Boolean
      {
         return this.§!!1§.length > 0;
      }
      
      public function §=O§() : void
      {
         var _loc1_:§%[§ = null;
         while(this.§!!1§.length > 0)
         {
            _loc1_ = this.§!!1§[0];
            _loc1_.stop();
            _loc1_.§;Y§();
         }
      }
      
      public function §0!Q§() : void
      {
         var _loc1_:§%[§ = null;
         this.§1E§ = 0;
         for each(_loc1_ in this.§!!1§)
         {
            _loc1_.§@!"§();
         }
      }
      
      public function §[!%§() : void
      {
         var _loc1_:§%[§ = null;
         this.§1E§ = this.§'!!§;
         for each(_loc1_ in this.§!!1§)
         {
            _loc1_.§6!f§();
         }
      }
   }
}
