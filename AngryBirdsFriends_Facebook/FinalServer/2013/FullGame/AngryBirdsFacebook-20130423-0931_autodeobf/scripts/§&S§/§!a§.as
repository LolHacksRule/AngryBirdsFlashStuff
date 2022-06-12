package §&S§
{
   import §9@§.§3,§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §!a§ extends Sprite
   {
       
      
      private var § !,§:MovieClip;
      
      public function §!a§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §?q§.§ q§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §?q§.§ q§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§ !,§ = new _loc2_();
            this.§ !,§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§ !,§.coinTextfield.moneyAmount.text = _loc3_ + §3,§.§3!Y§(Math.abs(param1));
            AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            addChild(this.§ !,§);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§ !,§)
         {
            if(this.§ !,§.currentFrame >= this.§ !,§.totalFrames)
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
         if(this.contains(this.§ !,§))
         {
            removeChild(this.§ !,§);
         }
         AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
