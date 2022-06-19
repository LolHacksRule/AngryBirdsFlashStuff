package §,j§
{
   import §0F§.§'j§;
   import §1§.§;d§;
   import flash.display.MovieClip;
   
   public class §4d§ extends §1-§
   {
       
      
      public var §[H§:int;
      
      public var §3b§:int;
      
      public var §9&§:int;
      
      public var §`+§:int;
      
      public var §>!"§:Number;
      
      public var §@>§:Number;
      
      public var §3L§:Number;
      
      public var §2G§:Number;
      
      public var § M§:Number;
      
      public function §4d§(param1:XML, param2:§1-§, param3:§'j§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §4!Q§ = true;
      }
      
      public function §#!0§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§9&§ = param6;
         this.§`+§ = param1 * this.§9&§;
         this.§ M§ = param7;
         this.§3L§ = param2;
         this.§2G§ = param3;
         this.§>!"§ = param4;
         this.§@>§ = param5;
         if(false)
         {
            this.§3b§ = Math.max(1,Math.ceil(§%o§.length / this.§`+§));
         }
         else
         {
            this.§3b§ = 1;
            if(§%o§.length > this.§`+§)
            {
               this.§3b§ += Math.ceil((§%o§.length - this.§`+§) / (this.§9&§ * this.§ M§));
            }
         }
         this.§&i§(0);
      }
      
      public function §&i§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3b§)
         {
            param1 = this.§3b§ - 1;
         }
         this.§[H§ = param1;
         var _loc2_:int = this.§[H§ * this.§ M§ * this.§9&§;
         var _loc3_:int = _loc2_ + this.§`+§;
         var _loc4_:int = 0;
         while(_loc4_ < §%o§.length)
         {
            (§%o§[_loc4_] as §;d§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§3L§ - this.§[H§ * this.§>!"§;
         y = this.§2G§ - this.§[H§ * this.§@>§;
      }
   }
}
