package §=!G§
{
   import §9"U§.§7"1§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §4!<§
   {
      
      public static const §7"5§:String = "plus";
      
      public static const §@#3§:String = "minus";
       
      
      protected var §#7§:int;
      
      protected var §9!h§:TextField;
      
      protected var §'!l§:MovieClip;
      
      protected var §?!$§:§7"1§;
      
      public function §4!<§(param1:MovieClip, param2:§7"1§)
      {
         super();
         this.§?!$§ = param2;
         this.§9!h§ = param1.starCoinBalance;
         this.§'!l§ = param1.coinIcon;
         this.§'!l§.mouseChildren = false;
         this.§'!l§.mouseEnabled = false;
         this.§#7§ = -1;
      }
      
      public function update() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:int = this.§?!$§.§&!w§.starCoins;
         if(this.§#7§ != _loc1_ && this.§#7§ != -1)
         {
            _loc2_ = Math.abs(this.§#7§ - _loc1_);
            _loc3_ = _loc1_ < this.§#7§ ? false : true;
            _loc4_ = (!!_loc3_ ? "+" : "-") + _loc2_.toString();
            _loc5_ = !!_loc3_ ? §7"5§ : §@#3§;
            TextField(this.§'!l§.changeInfo.titleClip.title).text = _loc4_;
            this.§'!l§.gotoAndPlay(_loc5_);
            if(_loc3_)
            {
               §=Q§.§`!A§("coins_added_1");
            }
         }
         this.§9!h§.text = _loc1_.toString();
         this.§#7§ = _loc1_;
      }
   }
}
