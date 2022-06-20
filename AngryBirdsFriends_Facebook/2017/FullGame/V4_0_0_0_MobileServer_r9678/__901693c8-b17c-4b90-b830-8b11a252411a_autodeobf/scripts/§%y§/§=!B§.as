package §%y§
{
   import §6"r§.§!#A§;
   import §<o§.§7"P§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §=!B§ extends Sprite
   {
       
      
      private var §"9§:MovieClip;
      
      public function §=!B§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §+$#§.§["`§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §+$#§.§["`§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§"9§ = new _loc2_();
            this.§"9§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§"9§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §!#A§.§>q§.addEventListener(§7"P§.§,"!§,this.onEnterFrame);
            addChild(this.§"9§);
         }
      }
      
      private function onEnterFrame(param1:§7"P§) : void
      {
         if(this.§"9§)
         {
            if(this.§"9§.currentFrame >= this.§"9§.totalFrames)
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
         if(this.contains(this.§"9§))
         {
            removeChild(this.§"9§);
         }
         §!#A§.§>q§.removeEventListener(§7"P§.§,"!§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
