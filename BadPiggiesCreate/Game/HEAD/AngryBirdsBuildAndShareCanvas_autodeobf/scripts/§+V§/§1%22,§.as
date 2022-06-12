package §+V§
{
   import §7t§.§-!7§;
   import §7t§.§<^§;
   import §@y§.§0"4§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §1",§ extends Sprite
   {
       
      
      private var §,E§:§<^§;
      
      private var §+a§:MovieClip;
      
      private var §"X§:MovieClip;
      
      private var §4!h§:Point;
      
      public function §1",§(param1:§<^§)
      {
         super();
         this.§,E§ = param1;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function get object() : §<^§
      {
         return this.§,E§;
      }
      
      public function set object(param1:§<^§) : void
      {
         this.§,E§ = param1;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!stage)
         {
            this.§4!h§ = null;
            return;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.§,E§.object is §0"4§)
         {
            this.§="'§();
         }
         else
         {
            this.§19§();
         }
         if(this.§4!h§)
         {
            x = this.§4!h§.x;
            y = this.§4!h§.y;
         }
         else
         {
            x = this.§,E§.x;
            y = this.§,E§.y;
         }
         this.§4!h§ = this.§,E§.position;
      }
      
      private function §="'§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:Class = null;
         if(this.§+a§ == null)
         {
            _loc1_ = §69§.§ 0§("Popup_glow");
            this.§+a§ = new _loc1_();
            this.§+a§.width = this.§,E§.width + 50;
            this.§+a§.height = this.§,E§.height + 50;
            _loc2_ = §69§.§ 0§("button_sparkle");
            this.§"X§ = new _loc2_();
            this.§"X§.width = this.§,E§.width + 20;
            this.§"X§.height = this.§,E§.height + 20;
         }
         this.§+a§.rotation += 0.8;
         addChild(this.§+a§);
         addChild(this.§"X§);
      }
      
      private function §19§() : void
      {
         var _loc1_:Bitmap = new Bitmap(this.§,E§.§'!#§());
         _loc1_.x = -_loc1_.width / 2;
         _loc1_.y = -_loc1_.height / 2;
         addChild(_loc1_);
         §-!7§.§[s§(_loc1_.bitmapData,§-!7§.§;#§.bitmapData);
      }
   }
}
