package §%"N§
{
   import §?#z§.§]$?§;
   import §`§.§?$B§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §%"C§ extends Sprite
   {
       
      
      private var §7#§:MovieClip;
      
      public function §%"C§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §[a§.§8#k§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §[a§.§8#k§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§7#§ = new _loc2_();
            this.§7#§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§7#§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §]$?§.§;u§.addEventListener(§?$B§.§^"%§,this.onEnterFrame);
            addChild(this.§7#§);
         }
      }
      
      private function onEnterFrame(param1:§?$B§) : void
      {
         if(this.§7#§)
         {
            if(this.§7#§.currentFrame >= this.§7#§.totalFrames)
            {
               this.dispose();
            }
         }
         else
         {
            this.dispose();
         }
      }
      
      private function dispose() : void
      {
         if(this.contains(this.§7#§))
         {
            removeChild(this.§7#§);
         }
         §]$?§.§;u§.removeEventListener(§?$B§.§^"%§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
