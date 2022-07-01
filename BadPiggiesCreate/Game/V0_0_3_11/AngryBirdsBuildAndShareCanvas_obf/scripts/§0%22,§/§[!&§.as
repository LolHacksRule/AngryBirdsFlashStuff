package §0",§
{
   import §+!d§.§8!=§;
   import §@!P§.§!"+§;
   import §@!P§.§,"5§;
   import com.rovio.assets.§]!S§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[!&§ extends Sprite
   {
       
      
      private var §&!$§:§,"5§;
      
      private var §<" §:MovieClip;
      
      private var §=!=§:MovieClip;
      
      public function §[!&§(param1:§,"5§)
      {
         super();
         this.§&!$§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §,"5§
      {
         return this.§&!$§;
      }
      
      public function set object(param1:§,"5§) : void
      {
         this.§&!$§ = param1;
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
         if(this.§&!$§.object is §8!=§)
         {
            this.§'"7§();
         }
         else
         {
            this.§?w§();
         }
         x = this.§&!$§.x;
         y = this.§&!$§.y;
      }
      
      private function §'"7§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§<" § == null)
         {
            _loc1_ = §]!S§.§?! §("Popup_glow");
            this.§<" § = new _loc1_();
            this.§<" §.width = this.§&!$§.width + 50;
            this.§<" §.height = this.§&!$§.height + 50;
            _loc2_ = §]!S§.§?! §("button_sparkle");
            this.§=!=§ = new _loc2_();
            this.§=!=§.width = this.§&!$§.width + 20;
            this.§=!=§.height = this.§&!$§.height + 20;
         }
         this.§<" §.rotation += 0.8;
         addChild(this.§<" §);
         addChild(this.§=!=§);
      }
      
      private function §?w§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§&!$§.§-!=§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §!"+§.§6!P§(_loc1_.bitmapData,§!"+§.§4!J§.bitmapData);
      }
   }
}
