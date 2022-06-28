package §1!T§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,k§
   {
       
      
      public var mName:String;
      
      public var §=!v§:int;
      
      public var §&K§:Number = 1;
      
      private var §#1§:Vector.<§&!v§>;
      
      private var §^j§:Number;
      
      public function §,k§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§=!v§ = param2;
         this.§&K§ = param3;
         this.§^j§ = this.§&K§;
         this.§#1§ = new Vector.<§&!v§>();
      }
      
      public function §]!W§() : Boolean
      {
         return this.§#1§.length < this.§=!v§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §&!v§
      {
         if(param3 < 0)
         {
            param3 = this.§^j§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§&!v§ = new §&!v§(_loc6_,this.§,0§,param4);
         if(this.§&K§ == 0)
         {
            _loc7_.§0$§();
         }
         this.§#1§.push(_loc7_);
         return _loc7_;
      }
      
      private function §,0§(param1:§&!v§) : void
      {
         var _loc2_:Vector.<§&!v§> = null;
         var _loc3_:§&!v§ = null;
         if(this.§#1§.indexOf(param1) > -1)
         {
            _loc2_ = this.§#1§.splice(this.§#1§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §<!P§() : Boolean
      {
         return this.§#1§.length > 0;
      }
      
      public function §[!W§() : void
      {
         var _loc1_:§&!v§ = null;
         while(this.§#1§.length > 0)
         {
            _loc1_ = this.§#1§[0];
            _loc1_.stop();
            _loc1_.§0!P§();
         }
      }
      
      public function §`!@§() : void
      {
         var _loc1_:§&!v§ = null;
         this.§&K§ = 0;
         for each(_loc1_ in this.§#1§)
         {
            _loc1_.§0$§();
         }
      }
      
      public function §]!Y§() : void
      {
         var _loc1_:§&!v§ = null;
         this.§&K§ = this.§^j§;
         for each(_loc1_ in this.§#1§)
         {
            _loc1_.§%!v§();
         }
      }
   }
}
