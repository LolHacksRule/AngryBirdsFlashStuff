package §`"]§
{
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §[#1§ extends § #2§
   {
       
      
      protected var §0"e§:Number;
      
      protected var §?!O§:Number;
      
      public function §[#1§(param1:String, param2:Number, param3:Number, param4:String)
      {
         this.§0"e§ = param2;
         this.§?!O§ = param3;
         super(param1,param4);
         if(§="f§.isLoaded)
         {
            this.§3"p§();
         }
         else
         {
            §="f§.addEventListener(Event.COMPLETE,this.§'"t§);
         }
      }
      
      private function §'"t§(param1:Event) : void
      {
         this.§3"p§();
      }
      
      protected function §3"p§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Number = this.§0"e§ / §="f§.bitmapWidth;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         if(_loc1_ * §="f§.bitmapHeight < this.§?!O§)
         {
            _loc1_ = this.§?!O§ / §="f§.bitmapHeight;
            _loc2_ = _loc1_ * §="f§.bitmapWidth - this.§0"e§;
         }
         else
         {
            _loc3_ = _loc1_ * §="f§.bitmapHeight - this.§?!O§;
         }
         _loc4_ = Math.round(_loc2_ * 0.5 / _loc1_);
         _loc5_ = Math.round(_loc3_ * 0.2 / _loc1_);
         §="f§.scaleX = _loc1_;
         §="f§.scaleY = _loc1_;
         §="f§.scrollRect = new Rectangle(_loc4_,_loc5_,this.§0"e§ / _loc1_,this.§?!O§ / _loc1_);
      }
      
      override public function dispose() : void
      {
         §="f§.removeEventListener(Event.COMPLETE,this.§'"t§);
         super.dispose();
      }
   }
}
