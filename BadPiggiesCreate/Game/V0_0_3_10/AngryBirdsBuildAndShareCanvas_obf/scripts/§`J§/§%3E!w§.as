package §`J§
{
   import §<8§.§'X§;
   import §?^§.§,!X§;
   import §?^§.§;"6§;
   import com.rovio.assets.§5!+§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §>!w§ extends Sprite
   {
       
      
      private var §+!P§:§;"6§;
      
      private var §3!;§:MovieClip;
      
      private var §1"-§:MovieClip;
      
      public function §>!w§(param1:§;"6§)
      {
         super();
         this.§+!P§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §;"6§
      {
         return this.§+!P§;
      }
      
      public function set object(param1:§;"6§) : void
      {
         this.§+!P§ = param1;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!stage)
         {
            return;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.§+!P§.object is §'X§)
         {
            this.§-!h§();
         }
         else
         {
            this.§1!C§();
         }
         x = this.§+!P§.x;
         y = this.§+!P§.y;
      }
      
      private function §-!h§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§3!;§ == null)
         {
            _loc1_ = §5!+§.§,]§("Popup_glow");
            this.§3!;§ = new _loc1_();
            this.§3!;§.width = this.§+!P§.width + 50;
            this.§3!;§.height = this.§+!P§.height + 50;
            _loc2_ = §5!+§.§,]§("button_sparkle");
            this.§1"-§ = new _loc2_();
            this.§1"-§.width = this.§+!P§.width + 20;
            this.§1"-§.height = this.§+!P§.height + 20;
         }
         this.§3!;§.rotation += 0.8;
         addChild(this.§3!;§);
         addChild(this.§1"-§);
      }
      
      private function §1!C§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§+!P§.§]!-§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §,!X§.§%!C§(_loc1_.bitmapData,§,!X§.§';§.bitmapData);
      }
   }
}
