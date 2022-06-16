package §<h§
{
   import § %§.§0"8§;
   import §3#T§.§@"!§;
   import flash.display.MovieClip;
   
   public class §3!6§ extends §[#K§
   {
       
      
      public var §"#+§:int;
      
      public var §'"8§:int;
      
      public var §8$+§:int;
      
      public var §4$>§:int;
      
      public var §1f§:Number;
      
      public var §^!Q§:Number;
      
      public var §5!+§:Number;
      
      public var §'#G§:Number;
      
      public var §1!%§:Number;
      
      public function §3!6§(param1:XML, param2:§[#K§, param3:§0"8§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §+S§ = true;
      }
      
      public function §3!K§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§8$+§ = param6;
         this.§4$>§ = param1 * this.§8$+§;
         this.§1!%§ = param7;
         this.§5!+§ = param2;
         this.§'#G§ = param3;
         this.§1f§ = param4;
         this.§^!Q§ = param5;
         if(false)
         {
            this.§'"8§ = Math.max(1,Math.ceil(§6$!§.length / this.§4$>§));
         }
         else
         {
            this.§'"8§ = 1;
            if(§6$!§.length > this.§4$>§)
            {
               this.§'"8§ += Math.ceil((§6$!§.length - this.§4$>§) / (this.§8$+§ * this.§1!%§));
            }
         }
         this.§3#k§(0);
      }
      
      public function §3#k§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§'"8§)
         {
            param1 = this.§'"8§ - 1;
         }
         this.§"#+§ = param1;
         var _loc2_:int = this.§"#+§ * this.§1!%§ * this.§8$+§;
         var _loc3_:int = _loc2_ + this.§4$>§;
         var _loc4_:int = 0;
         while(_loc4_ < §6$!§.length)
         {
            (§6$!§[_loc4_] as §@"!§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§5!+§ - this.§"#+§ * this.§1f§;
         y = this.§'#G§ - this.§"#+§ * this.§^!Q§;
      }
   }
}
