package §]!]§
{
   import §%%§.§3!T§;
   import §%%§.§<!z§;
   import §&!&§.§&"1§;
   import com.rovio.assets.§8!q§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §`!#§ extends Sprite
   {
       
      
      private var §6f§:§<!z§;
      
      private var §'5§:MovieClip;
      
      private var §9!M§:MovieClip;
      
      public function §`!#§(param1:§<!z§)
      {
         super();
         this.§6f§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §<!z§
      {
         return this.§6f§;
      }
      
      public function set object(param1:§<!z§) : void
      {
         this.§6f§ = param1;
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
         if(this.§6f§.object is §&"1§)
         {
            this.§6!,§();
         }
         else
         {
            this.§;!P§();
         }
         x = this.§6f§.x;
         y = this.§6f§.y;
      }
      
      private function §6!,§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§'5§ == null)
         {
            _loc1_ = §8!q§.§2^§("Popup_glow");
            this.§'5§ = new _loc1_();
            this.§'5§.width = this.§6f§.width + 50;
            this.§'5§.height = this.§6f§.height + 50;
            _loc2_ = §8!q§.§2^§("button_sparkle");
            this.§9!M§ = new _loc2_();
            this.§9!M§.width = this.§6f§.width + 20;
            this.§9!M§.height = this.§6f§.height + 20;
         }
         this.§'5§.rotation += 0.8;
         addChild(this.§'5§);
         addChild(this.§9!M§);
      }
      
      private function §;!P§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§6f§.§0!E§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §3!T§.§&v§(_loc1_.bitmapData,§3!T§.§2K§.bitmapData);
      }
   }
}
