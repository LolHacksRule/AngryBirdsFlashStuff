package §8E§
{
   import §4!j§.§[!f§;
   import §=%§.§0!+§;
   import §=%§.§0L§;
   import com.rovio.assets.§=#§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §,!e§ extends Sprite
   {
       
      
      private var §4"3§:§0L§;
      
      private var §5!@§:MovieClip;
      
      private var §4n§:MovieClip;
      
      private var §[T§:Point;
      
      public function §,!e§(param1:§0L§)
      {
         super();
         this.§4"3§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §0L§
      {
         return this.§4"3§;
      }
      
      public function set object(param1:§0L§) : void
      {
         this.§4"3§ = param1;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!stage)
         {
            this.§[T§ = null;
            return;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.§4"3§.object is §[!f§)
         {
            this.§!j§();
         }
         else
         {
            this.§&1§();
         }
         if(this.§[T§)
         {
            x = this.§[T§.x;
            y = this.§[T§.y;
         }
         else
         {
            x = this.§4"3§.x;
            y = this.§4"3§.y;
         }
         this.§[T§ = this.§4"3§.position;
      }
      
      private function §!j§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§5!@§ == null)
         {
            _loc1_ = §=#§.§1v§("Popup_glow");
            this.§5!@§ = new _loc1_();
            this.§5!@§.width = this.§4"3§.width + 50;
            this.§5!@§.height = this.§4"3§.height + 50;
            _loc2_ = §=#§.§1v§("button_sparkle");
            this.§4n§ = new _loc2_();
            this.§4n§.width = this.§4"3§.width + 20;
            this.§4n§.height = this.§4"3§.height + 20;
         }
         this.§5!@§.rotation += 0.8;
         addChild(this.§5!@§);
         addChild(this.§4n§);
      }
      
      private function §&1§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§4"3§.§'!F§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §0!+§.§'G§(_loc1_.bitmapData,§0!+§.§`!Z§.bitmapData);
      }
   }
}
