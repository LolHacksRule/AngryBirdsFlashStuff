package §,#C§
{
   import §5"G§.§^"&§;
   import §=!2§.§%"T§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2!M§ extends Sprite
   {
       
      
      private var §,#5§:MovieClip;
      
      public function §2!M§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §2"O§.§`>§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §2"O§.§`>§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§,#5§ = new _loc2_();
            this.§,#5§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§,#5§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §%"T§.§>$<§.addEventListener(§^"&§.§>"q§,this.onEnterFrame);
            addChild(this.§,#5§);
         }
      }
      
      private function onEnterFrame(param1:§^"&§) : void
      {
         if(this.§,#5§)
         {
            if(this.§,#5§.currentFrame >= this.§,#5§.totalFrames)
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
         if(this.contains(this.§,#5§))
         {
            removeChild(this.§,#5§);
         }
         §%"T§.§>$<§.removeEventListener(§^"&§.§>"q§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
