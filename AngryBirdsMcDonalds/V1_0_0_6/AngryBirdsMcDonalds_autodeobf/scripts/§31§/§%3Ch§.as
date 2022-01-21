package §31§
{
   import §0;§.§3=§;
   import §6@§.§'!F§;
   import flash.display.MovieClip;
   
   public class §<h§ extends § !A§
   {
       
      
      public var §7D§:int;
      
      public var §^b§:int;
      
      public var §,A§:int;
      
      public var §>s§:int;
      
      public var §2!+§:Number;
      
      public var §4t§:Number;
      
      public var §`!^§:Number;
      
      public var §5!2§:Number;
      
      public var §5>§:Number;
      
      public function §<h§(param1:XML, param2:§ !A§, param3:§3=§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §;!#§ = true;
      }
      
      public function §9!f§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§,A§ = param6;
         this.§>s§ = param1 * this.§,A§;
         this.§5>§ = param7;
         this.§`!^§ = param2;
         this.§5!2§ = param3;
         this.§2!+§ = param4;
         this.§4t§ = param5;
         if(false)
         {
            this.§^b§ = Math.max(1,Math.ceil(§"!<§.length / this.§>s§));
         }
         else
         {
            this.§^b§ = 1;
            if(§"!<§.length > this.§>s§)
            {
               this.§^b§ += Math.ceil((§"!<§.length - this.§>s§) / (this.§,A§ * this.§5>§));
            }
         }
         this.§=0§(0);
      }
      
      public function §=0§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§^b§)
         {
            param1 = this.§^b§ - 1;
         }
         this.§7D§ = param1;
         var _loc2_:int = this.§7D§ * this.§5>§ * this.§,A§;
         var _loc3_:int = _loc2_ + this.§>s§;
         var _loc4_:int = 0;
         while(_loc4_ < §"!<§.length)
         {
            (§"!<§[_loc4_] as §'!F§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§`!^§ - this.§7D§ * this.§2!+§;
         y = this.§5!2§ - this.§7D§ * this.§4t§;
      }
   }
}
