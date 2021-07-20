package §#,§
{
   import §%!-§.§5!z§;
   import §,!Q§.§8#=§;
   import flash.display.MovieClip;
   
   public class §;#8§ extends §]$+§
   {
       
      
      public var §9N§:int;
      
      public var §1$9§:int;
      
      public var §`#k§:int;
      
      public var §[!2§:int;
      
      public var §@$ §:Number;
      
      public var §'#R§:Number;
      
      public var §^#F§:Number;
      
      public var §[#<§:Number;
      
      public var §]#B§:Number;
      
      public function §;#8§(param1:XML, param2:§]$+§, param3:§5!z§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §4$-§ = true;
      }
      
      public function §-"?§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§`#k§ = param6;
         this.§[!2§ = param1 * this.§`#k§;
         this.§]#B§ = param7;
         this.§^#F§ = param2;
         this.§[#<§ = param3;
         this.§@$ § = param4;
         this.§'#R§ = param5;
         if(false)
         {
            this.§1$9§ = Math.max(1,Math.ceil(§!$"§.length / this.§[!2§));
         }
         else
         {
            this.§1$9§ = 1;
            if(§!$"§.length > this.§[!2§)
            {
               this.§1$9§ += Math.ceil((§!$"§.length - this.§[!2§) / (this.§`#k§ * this.§]#B§));
            }
         }
         this.§-#t§(0);
      }
      
      public function §-#t§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§1$9§)
         {
            param1 = this.§1$9§ - 1;
         }
         this.§9N§ = param1;
         var _loc2_:int = this.§9N§ * this.§]#B§ * this.§`#k§;
         var _loc3_:int = _loc2_ + this.§[!2§;
         var _loc4_:int = 0;
         while(_loc4_ < §!$"§.length)
         {
            (§!$"§[_loc4_] as §8#=§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§^#F§ - this.§9N§ * this.§@$ §;
         y = this.§[#<§ - this.§9N§ * this.§'#R§;
      }
   }
}
