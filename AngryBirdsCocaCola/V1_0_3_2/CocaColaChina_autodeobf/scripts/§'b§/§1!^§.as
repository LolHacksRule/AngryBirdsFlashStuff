package §'b§
{
   import §6l§.§-a§;
   import §>!8§.§4!0§;
   import flash.display.MovieClip;
   
   public class §1!^§ extends §'^§
   {
       
      
      public var §=I§:int;
      
      public var §6!8§:int;
      
      public var §"!"§:int;
      
      public var §[-§:int;
      
      public var §>!?§:Number;
      
      public var §3`§:Number;
      
      public var §6D§:Number;
      
      public var §#!H§:Number;
      
      public var §3m§:Number;
      
      public function §1!^§(param1:XML, param2:§'^§, param3:§4!0§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §!t§ = true;
      }
      
      public function §;g§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§"!"§ = param6;
         this.§[-§ = param1 * this.§"!"§;
         this.§3m§ = param7;
         this.§6D§ = param2;
         this.§#!H§ = param3;
         this.§>!?§ = param4;
         this.§3`§ = param5;
         if(false)
         {
            this.§6!8§ = Math.max(1,Math.ceil(§ C§.length / this.§[-§));
         }
         else
         {
            this.§6!8§ = 1;
            if(§ C§.length > this.§[-§)
            {
               this.§6!8§ += Math.ceil((§ C§.length - this.§[-§) / (this.§"!"§ * this.§3m§));
            }
         }
         this.§&v§(0);
      }
      
      public function §&v§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§6!8§)
         {
            param1 = this.§6!8§ - 1;
         }
         this.§=I§ = param1;
         var _loc2_:int = this.§=I§ * this.§3m§ * this.§"!"§;
         var _loc3_:int = _loc2_ + this.§[-§;
         var _loc4_:int = 0;
         while(_loc4_ < § C§.length)
         {
            (§ C§[_loc4_] as §-a§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§6D§ - this.§=I§ * this.§>!?§;
         y = this.§#!H§ - this.§=I§ * this.§3`§;
      }
   }
}
