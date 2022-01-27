package §7""§
{
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §'"y§ extends §4!z§
   {
       
      
      protected var §^"t§:Number;
      
      protected var §`!y§:Number;
      
      public function §'"y§(param1:String, param2:Number, param3:Number, param4:String)
      {
         this.§^"t§ = param2;
         this.§`!y§ = param3;
         super(param1,param4);
         if(§#X§.isLoaded)
         {
            this.§7!E§();
         }
         else
         {
            §#X§.addEventListener(Event.COMPLETE,this.§ 6§);
         }
      }
      
      private function § 6§(param1:Event) : void
      {
         this.§7!E§();
      }
      
      protected function §7!E§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Number = this.§^"t§ / §#X§.bitmapWidth;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         if(_loc1_ * §#X§.bitmapHeight < this.§`!y§)
         {
            _loc1_ = this.§`!y§ / §#X§.bitmapHeight;
            _loc2_ = _loc1_ * §#X§.bitmapWidth - this.§^"t§;
         }
         else
         {
            _loc3_ = _loc1_ * §#X§.bitmapHeight - this.§`!y§;
         }
         _loc4_ = Math.round(_loc2_ * 0.5 / _loc1_);
         _loc5_ = Math.round(_loc3_ * 0.2 / _loc1_);
         §#X§.scaleX = _loc1_;
         §#X§.scaleY = _loc1_;
         §#X§.scrollRect = new Rectangle(_loc4_,_loc5_,this.§^"t§ / _loc1_,this.§`!y§ / _loc1_);
      }
      
      override public function dispose() : void
      {
         §#X§.removeEventListener(Event.COMPLETE,this.§ 6§);
         super.dispose();
      }
   }
}
