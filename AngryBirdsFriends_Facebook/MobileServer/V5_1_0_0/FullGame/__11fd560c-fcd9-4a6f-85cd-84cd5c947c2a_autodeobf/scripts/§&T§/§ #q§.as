package §&T§
{
   import §3"I§.§?#N§;
   import §;#D§.§3#U§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § #q§ extends Sprite
   {
       
      
      private var §]"!§:MovieClip;
      
      public function § #q§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §!"f§.§##?§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §!"f§.§##?§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§]"!§ = new _loc2_();
            this.§]"!§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§]"!§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §3#U§.§9#^§.addEventListener(§?#N§.§1!I§,this.onEnterFrame);
            addChild(this.§]"!§);
         }
      }
      
      private function onEnterFrame(param1:§?#N§) : void
      {
         if(this.§]"!§)
         {
            if(this.§]"!§.currentFrame >= this.§]"!§.totalFrames)
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
         if(this.contains(this.§]"!§))
         {
            removeChild(this.§]"!§);
         }
         §3#U§.§9#^§.removeEventListener(§?#N§.§1!I§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
