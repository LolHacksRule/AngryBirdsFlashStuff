package §!i§
{
   import §+w§.§,!@§;
   import §4!t§.§?i§;
   import flash.display.MovieClip;
   
   public class §]!p§ extends §1s§
   {
       
      
      public var §,Y§:int;
      
      public var §'n§:int;
      
      public var §+j§:int;
      
      public var §<R§:int;
      
      public var §+!8§:Number;
      
      public var §+!e§:Number;
      
      public var §#4§:Number;
      
      public var §9!3§:Number;
      
      public var §,N§:Number;
      
      public function §]!p§(param1:XML, param2:§1s§, param3:§,!@§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §1"A§ = true;
      }
      
      public function §[b§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§+j§ = param6;
         this.§<R§ = param1 * this.§+j§;
         this.§,N§ = param7;
         this.§#4§ = param2;
         this.§9!3§ = param3;
         this.§+!8§ = param4;
         this.§+!e§ = param5;
         if(false)
         {
            this.§'n§ = Math.max(1,Math.ceil(§="§.length / this.§<R§));
         }
         else
         {
            this.§'n§ = 1;
            if(§="§.length > this.§<R§)
            {
               this.§'n§ += Math.ceil((§="§.length - this.§<R§) / (this.§+j§ * this.§,N§));
            }
         }
         this.§'h§(0);
      }
      
      public function §'h§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§'n§)
         {
            param1 = this.§'n§ - 1;
         }
         this.§,Y§ = param1;
         var _loc2_:int = this.§,Y§ * this.§,N§ * this.§+j§;
         var _loc3_:int = _loc2_ + this.§<R§;
         var _loc4_:int = 0;
         while(_loc4_ < §="§.length)
         {
            (§="§[_loc4_] as §?i§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§#4§ - this.§,Y§ * this.§+!8§;
         y = this.§9!3§ - this.§,Y§ * this.§+!e§;
      }
   }
}
