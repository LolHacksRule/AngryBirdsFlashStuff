package §#!s§
{
   import §3!T§.§5"8§;
   import §?§.§>"$§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5z§ extends Sprite
   {
       
      
      private var §@!n§:MovieClip;
      
      public function §5z§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §@`§.§4!i§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §@`§.§4!i§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§@!n§ = new _loc2_();
            this.§@!n§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§@!n§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §>"$§.§<_§.addEventListener(§5"8§.§>#x§,this.onEnterFrame);
            addChild(this.§@!n§);
         }
      }
      
      private function onEnterFrame(param1:§5"8§) : void
      {
         if(this.§@!n§)
         {
            if(this.§@!n§.currentFrame >= this.§@!n§.totalFrames)
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
         if(this.contains(this.§@!n§))
         {
            removeChild(this.§@!n§);
         }
         §>"$§.§<_§.removeEventListener(§5"8§.§>#x§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
