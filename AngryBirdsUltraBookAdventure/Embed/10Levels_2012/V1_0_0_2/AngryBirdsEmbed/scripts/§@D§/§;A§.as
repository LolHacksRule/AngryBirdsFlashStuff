package §@D§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;A§
   {
       
      
      public var mName:String;
      
      public var §[$§:int;
      
      public var each:Number = 1;
      
      private var §>'§:Vector.<§`!%§>;
      
      private var §,i§:Number;
      
      public function §;A§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§[$§ = param2;
         this.each = param3;
         this.§,i§ = this.each;
         this.§>'§ = new Vector.<§`!%§>();
      }
      
      public function §>Q§() : Boolean
      {
         return this.§>'§.length < this.§[$§;
      }
      
      public function § ;§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §`!%§
      {
         if(param3 < 0)
         {
            param3 = this.§,i§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§`!%§ = new §`!%§(_loc6_,this.§!>§,param4);
         if(this.each == 0)
         {
            _loc7_.§2I§();
         }
         this.§>'§.push(_loc7_);
         return _loc7_;
      }
      
      private function §!>§(param1:§`!%§) : void
      {
         var _loc2_:Vector.<§`!%§> = null;
         var _loc3_:§`!%§ = null;
         if(this.§>'§.indexOf(param1) > -1)
         {
            _loc2_ = this.§>'§.splice(this.§>'§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §^[§() : Boolean
      {
         return this.§>'§.length > 0;
      }
      
      public function §%,§() : void
      {
         var _loc1_:§`!%§ = null;
         while(this.§>'§.length > 0)
         {
            _loc1_ = this.§>'§[0];
            _loc1_.stop();
            _loc1_.§0+§();
         }
      }
      
      public function §99§() : void
      {
         var _loc1_:§`!%§ = null;
         this.each = 0;
         for each(_loc1_ in this.§>'§)
         {
            _loc1_.§2I§();
         }
      }
      
      public function §^$§() : void
      {
         var _loc1_:§`!%§ = null;
         this.each = this.§,i§;
         for each(_loc1_ in this.§>'§)
         {
            _loc1_.§5!,§();
         }
      }
   }
}
