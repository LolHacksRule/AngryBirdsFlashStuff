package §]!&§
{
   import §+!M§.§`q§;
   import §-!f§.§ else§;
   import flash.display.MovieClip;
   
   public class §9N§ extends §5!5§
   {
       
      
      public var §1b§:int;
      
      public var §0;§:int;
      
      public var §3u§:int;
      
      public var §3f§:int;
      
      public var §+#§:Number;
      
      public var §@<§:Number;
      
      public var §1q§:Number;
      
      public var §-!B§:Number;
      
      public var §2V§:Number;
      
      public function §9N§(param1:XML, param2:§5!5§, param3:§ else§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §!!R§ = true;
      }
      
      public function §^!f§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§3u§ = param6;
         this.§3f§ = param1 * this.§3u§;
         this.§2V§ = param7;
         this.§1q§ = param2;
         this.§-!B§ = param3;
         this.§+#§ = param4;
         this.§@<§ = param5;
         if(false)
         {
            this.§0;§ = Math.max(1,Math.ceil(§@!F§.length / this.§3f§));
         }
         else
         {
            this.§0;§ = 1;
            if(§@!F§.length > this.§3f§)
            {
               this.§0;§ += Math.ceil((§@!F§.length - this.§3f§) / (this.§3u§ * this.§2V§));
            }
         }
         this.§!0§(0);
      }
      
      public function §!0§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§0;§)
         {
            param1 = this.§0;§ - 1;
         }
         this.§1b§ = param1;
         var _loc2_:int = this.§1b§ * this.§2V§ * this.§3u§;
         var _loc3_:int = _loc2_ + this.§3f§;
         var _loc4_:int = 0;
         while(_loc4_ < §@!F§.length)
         {
            (§@!F§[_loc4_] as §`q§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§1q§ - this.§1b§ * this.§+#§;
         y = this.§-!B§ - this.§1b§ * this.§@<§;
      }
   }
}
