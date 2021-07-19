package §77§
{
   import §5X§.§8n§;
   import §^=§.§1"F§;
   import flash.display.MovieClip;
   
   public class §1!_§ extends § ",§
   {
       
      
      public var §@!-§:int;
      
      public var §&!2§:int;
      
      public var §#"§:int;
      
      public var §,%§:int;
      
      public var §+s§:Number;
      
      public var §[!B§:Number;
      
      public var §-!n§:Number;
      
      public var §&>§:Number;
      
      public var §@!D§:Number;
      
      public function §1!_§(param1:XML, param2:§ ",§, param3:§1"F§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §[b§ = true;
      }
      
      public function §2"3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§#"§ = param6;
         this.§,%§ = param1 * this.§#"§;
         this.§@!D§ = param7;
         this.§-!n§ = param2;
         this.§&>§ = param3;
         this.§+s§ = param4;
         this.§[!B§ = param5;
         if(false)
         {
            this.§&!2§ = Math.max(1,Math.ceil(§1"0§.length / this.§,%§));
         }
         else
         {
            this.§&!2§ = 1;
            if(§1"0§.length > this.§,%§)
            {
               this.§&!2§ += Math.ceil((§1"0§.length - this.§,%§) / (this.§#"§ * this.§@!D§));
            }
         }
         this.§&!F§(0);
      }
      
      public function §&!F§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§&!2§)
         {
            param1 = this.§&!2§ - 1;
         }
         this.§@!-§ = param1;
         var _loc2_:int = this.§@!-§ * this.§@!D§ * this.§#"§;
         var _loc3_:int = _loc2_ + this.§,%§;
         var _loc4_:int = 0;
         while(_loc4_ < §1"0§.length)
         {
            (§1"0§[_loc4_] as §8n§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§-!n§ - this.§@!-§ * this.§+s§;
         y = this.§&>§ - this.§@!-§ * this.§[!B§;
      }
   }
}
