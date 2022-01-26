package §2K§
{
   import §6!K§.§7!!§;
   import §>!D§.§;,§;
   import flash.display.MovieClip;
   
   public class §8!c§ extends §,!@§
   {
       
      
      public var §`^§:int;
      
      public var §;3§:int;
      
      public var §[!9§:int;
      
      public var §#w§:int;
      
      public var §9q§:Number;
      
      public var §'!D§:Number;
      
      public var §<&§:Number;
      
      public var §3!?§:Number;
      
      public var §^!W§:Number;
      
      public function §8!c§(param1:XML, param2:§,!@§, param3:§;,§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §,!O§ = true;
      }
      
      public function §-!H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§[!9§ = param6;
         this.§#w§ = param1 * this.§[!9§;
         this.§^!W§ = param7;
         this.§<&§ = param2;
         this.§3!?§ = param3;
         this.§9q§ = param4;
         this.§'!D§ = param5;
         if(false)
         {
            this.§;3§ = Math.max(1,Math.ceil(§<G§.length / this.§#w§));
         }
         else
         {
            this.§;3§ = 1;
            if(§<G§.length > this.§#w§)
            {
               this.§;3§ += Math.ceil((§<G§.length - this.§#w§) / (this.§[!9§ * this.§^!W§));
            }
         }
         this.§2!9§(0);
      }
      
      public function §2!9§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§;3§)
         {
            param1 = this.§;3§ - 1;
         }
         this.§`^§ = param1;
         var _loc2_:int = this.§`^§ * this.§^!W§ * this.§[!9§;
         var _loc3_:int = _loc2_ + this.§#w§;
         var _loc4_:int = 0;
         while(_loc4_ < §<G§.length)
         {
            (§<G§[_loc4_] as §7!!§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§<&§ - this.§`^§ * this.§9q§;
         y = this.§3!?§ - this.§`^§ * this.§'!D§;
      }
   }
}
