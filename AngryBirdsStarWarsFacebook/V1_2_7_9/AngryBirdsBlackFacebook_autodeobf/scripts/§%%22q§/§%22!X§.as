package §%"q§
{
   import §,"v§.§@§;
   import §`"8§.§-!w§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §"!X§
   {
      
      public static const §"#%§:String = "plus";
      
      public static const §=#'§:String = "minus";
       
      
      protected var §2B§:int;
      
      protected var §##§:TextField;
      
      protected var §in §:MovieClip;
      
      protected var §]S§:§-!w§;
      
      public function §"!X§(param1:MovieClip, param2:§-!w§)
      {
         super();
         this.§]S§ = param2;
         this.§##§ = param1.starCoinBalance;
         this.§in § = param1.coinIcon;
         this.§in §.mouseChildren = false;
         this.§in §.mouseEnabled = false;
         this.§2B§ = -1;
      }
      
      public function update() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:int = this.§]S§.§;L§.starCoins;
         if(this.§2B§ != _loc1_ && this.§2B§ != -1)
         {
            _loc2_ = Math.abs(this.§2B§ - _loc1_);
            _loc3_ = _loc1_ < this.§2B§ ? false : true;
            _loc4_ = (!!_loc3_ ? "+" : "-") + _loc2_.toString();
            _loc5_ = !!_loc3_ ? §"#%§ : §=#'§;
            TextField(this.§in §.changeInfo.titleClip.title).text = _loc4_;
            this.§in §.gotoAndPlay(_loc5_);
            if(_loc3_)
            {
               §@§.§=Y§("coins_added_1");
            }
         }
         this.§##§.text = _loc1_.toString();
         this.§2B§ = _loc1_;
      }
   }
}
