package §#;§
{
   import §;!5§.§=y§;
   
   public class §<!E§
   {
       
      
      public var §0!1§:Number = 0;
      
      public var §do§:Number = 0;
      
      public var §@f§:Number;
      
      public var §#4§:Number;
      
      public function §<!E§(param1:Number, param2:Number)
      {
         this.§@f§ = §<!+§.§ !8§;
         this.§#4§ = §<!+§.§>@§;
         super();
         this.§@f§ = param1;
         this.§#4§ = param2;
         this.§0!1§ = 0;
         this.§do§ = 0;
      }
      
      public function §`!0§(param1:§=y§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§0!1§ < §<!+§.§>!<§)
         {
            this.§0!1§ += param2;
            this.§do§ += this.§@f§;
            _loc3_ = param2 / §<!+§.§]s§ * this.§#4§ * Math.sin(Math.PI / 4 + this.§do§ * 2 * Math.PI);
            _loc4_ = param2 / §<!+§.§]s§ * this.§#4§ * Math.sin(this.§do§ * 2.1 * Math.PI);
            this.§#4§ -= param2 * §<!+§.§>@§ / §<!+§.§>!<§;
            this.§@f§ -= param2 * §<!+§.§ !8§ / §<!+§.§>!<§;
            param1.§8,§(_loc3_,_loc4_);
            param1.§"!,§();
            return true;
         }
         return false;
      }
   }
}
