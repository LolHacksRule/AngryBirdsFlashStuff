package §1"a§
{
   import §,"N§.§@#B§;
   import §="2§.§?!r§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §4!a§
   {
      
      public static const §"#F§:String = "plus";
      
      public static const §]"c§:String = "minus";
       
      
      protected var §8!,§:int;
      
      protected var § "<§:TextField;
      
      protected var §>""§:MovieClip;
      
      protected var §4#J§:§@#B§;
      
      public function §4!a§(param1:MovieClip, param2:§@#B§)
      {
         super();
         this.§4#J§ = param2;
         this.§ "<§ = param1.starCoinBalance;
         this.§>""§ = param1.coinIcon;
         this.§>""§.mouseChildren = false;
         this.§>""§.mouseEnabled = false;
         this.§8!,§ = -1;
      }
      
      public function update() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:int = this.§4#J§.§`!W§.starCoins;
         if(this.§8!,§ != _loc1_ && this.§8!,§ != -1)
         {
            _loc2_ = Math.abs(this.§8!,§ - _loc1_);
            _loc3_ = _loc1_ < this.§8!,§ ? false : true;
            _loc4_ = (!!_loc3_ ? "+" : "-") + _loc2_.toString();
            _loc5_ = !!_loc3_ ? §"#F§ : §]"c§;
            TextField(this.§>""§.changeInfo.titleClip.title).text = _loc4_;
            this.§>""§.gotoAndPlay(_loc5_);
            if(_loc3_)
            {
               §?!r§.§"#_§("coins_added_1");
            }
         }
         this.§ "<§.text = _loc1_.toString();
         this.§8!,§ = _loc1_;
      }
   }
}
