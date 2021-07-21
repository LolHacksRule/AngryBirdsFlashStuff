package §#R§
{
   import §'!A§.§-!2§;
   import §7r§.§,!<§;
   import §7r§.§3`§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §[@§ extends Sprite
   {
       
      
      private var §;6§:§,!<§;
      
      private var §`X§:MovieClip;
      
      private var §[N§:MovieClip;
      
      private var §6!K§:Point;
      
      public function §[@§(param1:§,!<§)
      {
         super();
         this.§;6§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §,!<§
      {
         return this.§;6§;
      }
      
      public function set object(param1:§,!<§) : void
      {
         this.§;6§ = param1;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!stage)
         {
            this.§6!K§ = null;
            return;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.§;6§.object is §-!2§)
         {
            this.§]?§();
         }
         else
         {
            this.§'Q§();
         }
         if(this.§6!K§)
         {
            x = this.§6!K§.x;
            y = this.§6!K§.y;
         }
         else
         {
            x = this.§;6§.x;
            y = this.§;6§.y;
         }
         this.§6!K§ = this.§;6§.position;
      }
      
      private function §]?§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§`X§ == null)
         {
            _loc1_ = §>!]§.§1!8§("Popup_glow");
            this.§`X§ = new _loc1_();
            this.§`X§.width = this.§;6§.width + 50;
            this.§`X§.height = this.§;6§.height + 50;
            _loc2_ = §>!]§.§1!8§("button_sparkle");
            this.§[N§ = new _loc2_();
            this.§[N§.width = this.§;6§.width + 20;
            this.§[N§.height = this.§;6§.height + 20;
         }
         this.§`X§.rotation += 0.8;
         addChild(this.§`X§);
         addChild(this.§[N§);
      }
      
      private function §'Q§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§;6§.§'!]§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §3`§.§ !`§(_loc1_.bitmapData,§3`§.§>K§.bitmapData);
      }
   }
}
