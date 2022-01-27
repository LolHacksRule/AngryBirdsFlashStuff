package §6a§
{
   import §0!Q§.UIComponentRovio;
   import §=!5§.§`X§;
   import flash.display.MovieClip;
   
   public class UIRepeaterTabRovio extends UIContainerRovio
   {
       
      
      public var §]Y§:int;
      
      public var §"=§:int;
      
      public var §,C§:int;
      
      public var §@!]§:int;
      
      public var §6d§:Number;
      
      public var §@p§:Number;
      
      public var §"c§:Number;
      
      public var §05§:Number;
      
      public var §9Y§:Number;
      
      public function UIRepeaterTabRovio(param1:XML, param2:UIContainerRovio, param3:§`X§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §`!X§ = true;
      }
      
      public function §-W§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§,C§ = param6;
         this.§@!]§ = param1 * this.§,C§;
         this.§9Y§ = param7;
         this.§"c§ = param2;
         this.§05§ = param3;
         this.§6d§ = param4;
         this.§@p§ = param5;
         if(false)
         {
            this.§"=§ = Math.max(1,Math.ceil(§]6§.length / this.§@!]§));
         }
         else
         {
            this.§"=§ = 1;
            if(§]6§.length > this.§@!]§)
            {
               this.§"=§ += Math.ceil((§]6§.length - this.§@!]§) / (this.§,C§ * this.§9Y§));
            }
         }
         this.§0!K§(0);
      }
      
      public function §0!K§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§"=§)
         {
            param1 = this.§"=§ - 1;
         }
         this.§]Y§ = param1;
         var _loc2_:int = this.§]Y§ * this.§9Y§ * this.§,C§;
         var _loc3_:int = _loc2_ + this.§@!]§;
         var _loc4_:int = 0;
         while(_loc4_ < §]6§.length)
         {
            (§]6§[_loc4_] as UIComponentRovio).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§"c§ - this.§]Y§ * this.§6d§;
         y = this.§05§ - this.§]Y§ * this.§@p§;
      }
   }
}
