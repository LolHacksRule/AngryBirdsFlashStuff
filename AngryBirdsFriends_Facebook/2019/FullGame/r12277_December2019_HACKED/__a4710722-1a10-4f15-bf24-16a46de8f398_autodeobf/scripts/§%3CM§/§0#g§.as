package §<M§
{
   import §+!n§.§+!p§;
   import §=X§.§`#x§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0#g§ extends Sprite
   {
       
      
      private var §^n§:MovieClip;
      
      public function §0#g§(param1:int)
      {
         var _loc2_:Class = null;
         var _loc3_:String = null;
         super();
         if(param1 > 0)
         {
            _loc2_ = §=@§.§9!x§("CoinsGained");
         }
         else if(param1 < 0)
         {
            _loc2_ = §=@§.§9!x§("CoinsLost");
         }
         if(_loc2_)
         {
            this.§^n§ = new _loc2_();
            this.§^n§.gotoAndPlay(1);
            _loc3_ = param1 < 0 ? "-" : "+";
            this.§^n§.coinTextfield.moneyAmount.text = _loc3_ + Math.abs(param1);
            §+!p§.§;"-§.addEventListener(§`#x§.§2"F§,this.onEnterFrame);
            addChild(this.§^n§);
         }
      }
      
      private function onEnterFrame(param1:§`#x§) : void
      {
         if(this.§^n§)
         {
            if(this.§^n§.currentFrame >= this.§^n§.totalFrames)
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
         if(this.contains(this.§^n§))
         {
            removeChild(this.§^n§);
         }
         §+!p§.§;"-§.removeEventListener(§`#x§.§2"F§,this.onEnterFrame);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
