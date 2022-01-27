package §+!c§
{
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §?@§ extends §5"$§
   {
       
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      public function §?@§(param1:String, param2:Number, param3:Number, param4:String)
      {
         this.§6"?§ = param2;
         this.§[!4§ = param3;
         super(param1,param4);
         if(§<!x§.isLoaded)
         {
            this.§?![§();
         }
         else
         {
            §<!x§.addEventListener(Event.COMPLETE,this.§[!^§);
         }
      }
      
      private function §[!^§(param1:Event) : void
      {
         this.§?![§();
      }
      
      protected function §?![§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Number = this.§6"?§ / §<!x§.bitmapWidth;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         if(_loc1_ * §<!x§.bitmapHeight < this.§[!4§)
         {
            _loc1_ = this.§[!4§ / §<!x§.bitmapHeight;
            _loc2_ = _loc1_ * §<!x§.bitmapWidth - this.§6"?§;
         }
         else
         {
            _loc3_ = _loc1_ * §<!x§.bitmapHeight - this.§[!4§;
         }
         _loc4_ = Math.round(_loc2_ * 0.5 / _loc1_);
         _loc5_ = Math.round(_loc3_ * 0.2 / _loc1_);
         §<!x§.scaleX = _loc1_;
         §<!x§.scaleY = _loc1_;
         §<!x§.scrollRect = new Rectangle(_loc4_,_loc5_,this.§6"?§ / _loc1_,this.§[!4§ / _loc1_);
      }
      
      override public function dispose() : void
      {
         §<!x§.removeEventListener(Event.COMPLETE,this.§[!^§);
         super.dispose();
      }
   }
}
