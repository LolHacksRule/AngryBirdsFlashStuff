package §8!8§
{
   import §+?§.§,!N§;
   import §@R§.§']§;
   import flash.display.MovieClip;
   
   public class §<u§ extends §4!C§
   {
       
      
      public var §7!3§:int;
      
      public var §?!V§:int;
      
      public var § V§:int;
      
      public var §?9§:int;
      
      public var §@!J§:Number;
      
      public var §,!,§:Number;
      
      public var §`!6§:Number;
      
      public var §,!"§:Number;
      
      public var §^!V§:Number;
      
      public function §<u§(param1:XML, param2:§4!C§, param3:§,!N§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §@!8§ = true;
      }
      
      public function §8!N§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§ V§ = param6;
         this.§?9§ = param1 * this.§ V§;
         this.§^!V§ = param7;
         this.§`!6§ = param2;
         this.§,!"§ = param3;
         this.§@!J§ = param4;
         this.§,!,§ = param5;
         if(false)
         {
            this.§?!V§ = Math.max(1,Math.ceil(§@k§.length / this.§?9§));
         }
         else
         {
            this.§?!V§ = 1;
            if(§@k§.length > this.§?9§)
            {
               this.§?!V§ += Math.ceil((§@k§.length - this.§?9§) / (this.§ V§ * this.§^!V§));
            }
         }
         this.§2!N§(0);
      }
      
      public function §2!N§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§?!V§)
         {
            param1 = this.§?!V§ - 1;
         }
         this.§7!3§ = param1;
         var _loc2_:int = this.§7!3§ * this.§^!V§ * this.§ V§;
         var _loc3_:int = _loc2_ + this.§?9§;
         var _loc4_:int = 0;
         while(_loc4_ < §@k§.length)
         {
            (§@k§[_loc4_] as §']§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§`!6§ - this.§7!3§ * this.§@!J§;
         y = this.§,!"§ - this.§7!3§ * this.§,!,§;
      }
   }
}
