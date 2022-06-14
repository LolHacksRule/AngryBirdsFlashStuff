package §4!e§
{
   import §#^§.§7!A§;
   import §2!i§.§7'§;
   import flash.display.MovieClip;
   
   public class §=" § extends §08§
   {
       
      
      public var §`&§:int;
      
      public var §`!7§:int;
      
      public var §'^§:int;
      
      public var §;!<§:int;
      
      public var §<",§:Number;
      
      public var §^^§:Number;
      
      public var §9!?§:Number;
      
      public var §&!X§:Number;
      
      public var §;!U§:Number;
      
      public function §=" §(param1:XML, param2:§08§, param3:§7!A§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §]+§ = true;
      }
      
      public function §4!v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§'^§ = param6;
         this.§;!<§ = param1 * this.§'^§;
         this.§;!U§ = param7;
         this.§9!?§ = param2;
         this.§&!X§ = param3;
         this.§<",§ = param4;
         this.§^^§ = param5;
         if(false)
         {
            this.§`!7§ = Math.max(1,Math.ceil(§&!Z§.length / this.§;!<§));
         }
         else
         {
            this.§`!7§ = 1;
            if(§&!Z§.length > this.§;!<§)
            {
               this.§`!7§ += Math.ceil((§&!Z§.length - this.§;!<§) / (this.§'^§ * this.§;!U§));
            }
         }
         this.§0A§(0);
      }
      
      public function §0A§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§`!7§)
         {
            param1 = this.§`!7§ - 1;
         }
         this.§`&§ = param1;
         var _loc2_:int = this.§`&§ * this.§;!U§ * this.§'^§;
         var _loc3_:int = _loc2_ + this.§;!<§;
         var _loc4_:int = 0;
         while(_loc4_ < §&!Z§.length)
         {
            (§&!Z§[_loc4_] as §7'§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§9!?§ - this.§`&§ * this.§<",§;
         y = this.§&!X§ - this.§`&§ * this.§^^§;
      }
   }
}
