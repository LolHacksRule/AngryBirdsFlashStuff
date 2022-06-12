package §!o§
{
   import §1!N§.§!!`§;
   import §1!N§.§#!g§;
   import §^x§.§3!r§;
   import com.rovio.assets.§!"'§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §8=§ extends Sprite
   {
       
      
      private var §1!]§:§!!`§;
      
      private var §;s§:MovieClip;
      
      private var §;,§:MovieClip;
      
      private var §[Q§:Point;
      
      public function §8=§(param1:§!!`§)
      {
         super();
         this.§1!]§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §!!`§
      {
         return this.§1!]§;
      }
      
      public function set object(param1:§!!`§) : void
      {
         this.§1!]§ = param1;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!stage)
         {
            this.§[Q§ = null;
            return;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.§1!]§.object is §3!r§)
         {
            this.§`!%§();
         }
         else
         {
            this.§6!f§();
         }
         if(this.§[Q§)
         {
            x = this.§[Q§.x;
            y = this.§[Q§.y;
         }
         else
         {
            x = this.§1!]§.x;
            y = this.§1!]§.y;
         }
         this.§[Q§ = this.§1!]§.position;
      }
      
      private function §`!%§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§;s§ == null)
         {
            _loc1_ = §!"'§.§%!Q§("Popup_glow");
            this.§;s§ = new _loc1_();
            this.§;s§.width = this.§1!]§.width + 50;
            this.§;s§.height = this.§1!]§.height + 50;
            _loc2_ = §!"'§.§%!Q§("button_sparkle");
            this.§;,§ = new _loc2_();
            this.§;,§.width = this.§1!]§.width + 20;
            this.§;,§.height = this.§1!]§.height + 20;
         }
         this.§;s§.rotation += 0.8;
         addChild(this.§;s§);
         addChild(this.§;,§);
      }
      
      private function §6!f§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§1!]§.§]!Z§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §#!g§.§with§(_loc1_.bitmapData,§#!g§.§+!D§.bitmapData);
      }
   }
}
