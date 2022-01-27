package §@!]§
{
   import §#Q§.§8Y§;
   import §1Q§.§6'§;
   import flash.display.MovieClip;
   
   public class §>&§ extends §'!9§
   {
       
      
      public var §&;§:int;
      
      public var §3J§:int;
      
      public var §30§:int;
      
      public var §;j§:int;
      
      public var §;6§:Number;
      
      public var §<!Y§:Number;
      
      public var §7!b§:Number;
      
      public var §+F§:Number;
      
      public var §"a§:Number;
      
      public function §>&§(param1:XML, param2:§'!9§, param3:§8Y§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §6!A§ = true;
      }
      
      public function §^`§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§30§ = param6;
         this.§;j§ = param1 * this.§30§;
         this.§"a§ = param7;
         this.§7!b§ = param2;
         this.§+F§ = param3;
         this.§;6§ = param4;
         this.§<!Y§ = param5;
         if(false)
         {
            this.§3J§ = Math.max(1,Math.ceil(§'t§.length / this.§;j§));
         }
         else
         {
            this.§3J§ = 1;
            if(§'t§.length > this.§;j§)
            {
               this.§3J§ += Math.ceil((§'t§.length - this.§;j§) / (this.§30§ * this.§"a§));
            }
         }
         this.§if§(0);
      }
      
      public function §if§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3J§)
         {
            param1 = this.§3J§ - 1;
         }
         this.§&;§ = param1;
         var _loc2_:int = this.§&;§ * this.§"a§ * this.§30§;
         var _loc3_:int = _loc2_ + this.§;j§;
         var _loc4_:int = 0;
         while(_loc4_ < §'t§.length)
         {
            (§'t§[_loc4_] as §6'§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§7!b§ - this.§&;§ * this.§;6§;
         y = this.§+F§ - this.§&;§ * this.§<!Y§;
      }
   }
}
