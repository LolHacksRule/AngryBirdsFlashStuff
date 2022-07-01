package §<!I§
{
   import §&!&§.§&"1§;
   import §<Z§.§7!!§;
   import flash.display.MovieClip;
   
   public class §,!g§ extends §>"-§
   {
       
      
      public var §]!r§:int;
      
      public var §[!O§:int;
      
      public var §4![§:int;
      
      public var §[g§:int;
      
      public var §2E§:Number;
      
      public var §!M§:Number;
      
      public var §1!Q§:Number;
      
      public var § L§:Number;
      
      public var §"^§:Number;
      
      public function §,!g§(param1:XML, param2:§>"-§, param3:§7!!§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §0_§ = true;
      }
      
      public function §]3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§4![§ = param6;
         this.§[g§ = param1 * this.§4![§;
         this.§"^§ = param7;
         this.§1!Q§ = param2;
         this.§ L§ = param3;
         this.§2E§ = param4;
         this.§!M§ = param5;
         if(false)
         {
            this.§[!O§ = Math.max(1,Math.ceil(§7!z§.length / this.§[g§));
         }
         else
         {
            this.§[!O§ = 1;
            if(§7!z§.length > this.§[g§)
            {
               this.§[!O§ += Math.ceil((§7!z§.length - this.§[g§) / (this.§4![§ * this.§"^§));
            }
         }
         this.§!!k§(0);
      }
      
      public function §!!k§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§[!O§)
         {
            param1 = this.§[!O§ - 1;
         }
         this.§]!r§ = param1;
         var _loc2_:int = this.§]!r§ * this.§"^§ * this.§4![§;
         var _loc3_:int = _loc2_ + this.§[g§;
         var _loc4_:int = 0;
         while(_loc4_ < §7!z§.length)
         {
            (§7!z§[_loc4_] as §&"1§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§1!Q§ - this.§]!r§ * this.§2E§;
         y = this.§ L§ - this.§]!r§ * this.§!M§;
      }
   }
}
