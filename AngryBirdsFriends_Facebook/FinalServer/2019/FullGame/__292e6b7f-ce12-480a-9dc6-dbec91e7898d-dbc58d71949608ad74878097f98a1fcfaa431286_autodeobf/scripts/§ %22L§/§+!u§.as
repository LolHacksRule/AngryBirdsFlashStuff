package § "L§
{
   import §";§.§%"X§;
   import §^"3§.§^"C§;
   import flash.display.MovieClip;
   
   public class §+!u§ extends §23§
   {
       
      
      public var §1#!§:int;
      
      public var §0#W§:int;
      
      public var §]"&§:int;
      
      public var §@x§:int;
      
      public var §1#j§:Number;
      
      public var §0#v§:Number;
      
      public var §5#`§:Number;
      
      public var §8"R§:Number;
      
      public var §!W§:Number;
      
      public function §+!u§(param1:XML, param2:§23§, param3:§%"X§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §+Y§ = true;
      }
      
      public function §`y§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§]"&§ = param6;
         this.§@x§ = param1 * this.§]"&§;
         this.§!W§ = param7;
         this.§5#`§ = param2;
         this.§8"R§ = param3;
         this.§1#j§ = param4;
         this.§0#v§ = param5;
         if(false)
         {
            this.§0#W§ = Math.max(1,Math.ceil(§2p§.length / this.§@x§));
         }
         else
         {
            this.§0#W§ = 1;
            if(§2p§.length > this.§@x§)
            {
               this.§0#W§ += Math.ceil((§2p§.length - this.§@x§) / (this.§]"&§ * this.§!W§));
            }
         }
         this.§7"E§(0);
      }
      
      public function §7"E§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§0#W§)
         {
            param1 = this.§0#W§ - 1;
         }
         this.§1#!§ = param1;
         var _loc2_:int = this.§1#!§ * this.§!W§ * this.§]"&§;
         var _loc3_:int = _loc2_ + this.§@x§;
         var _loc4_:int = 0;
         while(_loc4_ < §2p§.length)
         {
            (§2p§[_loc4_] as §^"C§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§5#`§ - this.§1#!§ * this.§1#j§;
         y = this.§8"R§ - this.§1#!§ * this.§0#v§;
      }
   }
}
