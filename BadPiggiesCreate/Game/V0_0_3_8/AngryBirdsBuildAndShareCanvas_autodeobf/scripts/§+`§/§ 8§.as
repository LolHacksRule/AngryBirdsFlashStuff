package §+`§
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import §true§.§,!6§;
   
   public class § 8§ extends Sprite
   {
       
      
      private var §3!=§:§#'§;
      
      public function § 8§(param1:§#'§)
      {
         super();
         this.§3!=§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Bitmap = null;
         if(!stage)
         {
            return;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         _loc2_ = new Bitmap(this.§3!=§.§?h§());
         _loc2_.x = -_loc2_.width / 2;
         _loc2_.y = -_loc2_.height / 2;
         addChild(_loc2_);
         §,!6§.§]]§(_loc2_.bitmapData,§,!6§.§'"0§.bitmapData);
         x = this.§3!=§.x;
         y = this.§3!=§.y;
      }
   }
}
