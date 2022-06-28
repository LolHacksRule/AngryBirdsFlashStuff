package §`M§
{
   import §1n§.§ C§;
   import §=R§.§&W§;
   import flash.display.MovieClip;
   
   public class §"W§ extends §9!#§
   {
       
      
      public var §7O§:int;
      
      public var §<!Y§:int;
      
      public var §8f§:int;
      
      public var §2!q§:int;
      
      public var §0d§:Number;
      
      public var §;V§:Number;
      
      public var §,&§:Number;
      
      public var §[§:Number;
      
      public var §>! §:Number;
      
      public function §"W§(param1:XML, param2:§9!#§, param3:§ C§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §-z§ = true;
      }
      
      public function §'"§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§8f§ = param6;
         this.§2!q§ = param1 * this.§8f§;
         this.§>! § = param7;
         this.§,&§ = param2;
         this.§[§ = param3;
         this.§0d§ = param4;
         this.§;V§ = param5;
         if(false)
         {
            this.§<!Y§ = Math.max(1,Math.ceil(§0!i§.length / this.§2!q§));
         }
         else
         {
            this.§<!Y§ = 1;
            if(§0!i§.length > this.§2!q§)
            {
               this.§<!Y§ += Math.ceil((§0!i§.length - this.§2!q§) / (this.§8f§ * this.§>! §));
            }
         }
         this.§=!_§(0);
      }
      
      public function §=!_§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§<!Y§)
         {
            param1 = this.§<!Y§ - 1;
         }
         this.§7O§ = param1;
         var _loc2_:int = this.§7O§ * this.§>! § * this.§8f§;
         var _loc3_:int = _loc2_ + this.§2!q§;
         var _loc4_:int = 0;
         while(_loc4_ < §0!i§.length)
         {
            (§0!i§[_loc4_] as §&W§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§,&§ - this.§7O§ * this.§0d§;
         y = this.§[§ - this.§7O§ * this.§;V§;
      }
   }
}
