package §#!&§
{
   import §7!X§.§7g§;
   import flash.display.MovieClip;
   import §var§.§;!&§;
   
   public class §9,§ extends §59§
   {
       
      
      public var §^Q§:int;
      
      public var §]!3§:int;
      
      public var §8s§:int;
      
      public var § D§:int;
      
      public var §?#§:Number;
      
      public var §>p§:Number;
      
      public var § '§:Number;
      
      public var §'O§:Number;
      
      public var §#5§:Number;
      
      public function §9,§(param1:XML, param2:§59§, param3:§7g§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §6!T§ = true;
      }
      
      public function §&u§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§8s§ = param6;
         this.§ D§ = param1 * this.§8s§;
         this.§#5§ = param7;
         this.§ '§ = param2;
         this.§'O§ = param3;
         this.§?#§ = param4;
         this.§>p§ = param5;
         if(false)
         {
            this.§]!3§ = Math.max(1,Math.ceil(§0l§.length / this.§ D§));
         }
         else
         {
            this.§]!3§ = 1;
            if(§0l§.length > this.§ D§)
            {
               this.§]!3§ += Math.ceil((§0l§.length - this.§ D§) / (this.§8s§ * this.§#5§));
            }
         }
         this.§>n§(0);
      }
      
      public function §>n§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§]!3§)
         {
            param1 = this.§]!3§ - 1;
         }
         this.§^Q§ = param1;
         var _loc2_:int = this.§^Q§ * this.§#5§ * this.§8s§;
         var _loc3_:int = _loc2_ + this.§ D§;
         var _loc4_:int = 0;
         while(_loc4_ < §0l§.length)
         {
            (§0l§[_loc4_] as §;!&§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§ '§ - this.§^Q§ * this.§?#§;
         y = this.§'O§ - this.§^Q§ * this.§>p§;
      }
   }
}
