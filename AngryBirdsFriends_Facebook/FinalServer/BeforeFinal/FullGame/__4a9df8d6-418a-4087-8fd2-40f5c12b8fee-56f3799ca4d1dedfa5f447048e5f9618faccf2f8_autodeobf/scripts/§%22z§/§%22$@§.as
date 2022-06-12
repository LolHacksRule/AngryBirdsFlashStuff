package §"z§
{
   import §!"'§.§2"?§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"$@§ extends Sprite
   {
       
      
      private var §2#t§:MovieClip;
      
      public function §"$@§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §6$A§.§1!m§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §6$A§.§1!m§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§2#t§ = new _loc2_();
            this.§2#t§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§2#t§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §7n§.§-$<§.addEventListener(§2"?§.§?#Y§,this.onEnterFrame);
            addChild(this.§2#t§);
         }
      }
      
      private function onEnterFrame(param1:§2"?§) : void
      {
         if(this.§2#t§)
         {
            if(this.§2#t§.currentFrame >= this.§2#t§.totalFrames)
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
         if(this.contains(this.§2#t§))
         {
            removeChild(this.§2#t§);
         }
         §7n§.§-$<§.removeEventListener(§2"?§.§?#Y§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
