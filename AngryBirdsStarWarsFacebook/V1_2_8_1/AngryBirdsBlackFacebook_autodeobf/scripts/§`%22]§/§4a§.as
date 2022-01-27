package §`"]§
{
   import §!"-§.§]"_§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §4a§
   {
      
      private static const §^1§:Number = 0.3;
       
      
      private var mAsset:MovieClip;
      
      private var §!#7§:Vector.<MovieClip>;
      
      private var §2!v§:Number = 0;
      
      private var §%!1§:§%b§;
      
      private var §<"]§:Number;
      
      private var §[4§:Number;
      
      public function §4a§(param1:MovieClip)
      {
         var _loc3_:MovieClip = null;
         this.§!#7§ = new Vector.<MovieClip>();
         super();
         this.mAsset = param1;
         this.mAsset.mouseChildren = false;
         this.§<"]§ = this.mAsset.scaleX;
         this.§[4§ = this.mAsset.scaleY;
         var _loc2_:int = 1;
         while(_loc2_ < 100)
         {
            _loc3_ = this.mAsset["layer" + _loc2_];
            if(!_loc3_)
            {
               break;
            }
            this.§!#7§.push(_loc3_);
            _loc2_++;
         }
         this.hoverScale = 0;
         this.mAsset.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.mAsset.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onOver(param1:MouseEvent) : void
      {
         if(this.§%!1§)
         {
            this.§%!1§.stop();
         }
         this.§%!1§ = §5!%§.§!6§.§4!M§(this,{"hoverScale":1},null,§^1§,§]"_§.easeOut);
         this.§%!1§.play();
      }
      
      protected function onOut(param1:MouseEvent) : void
      {
         this.§'!c§(NaN);
      }
      
      public function §'!c§(param1:Number = 1) : void
      {
         if(this.§%!1§)
         {
            this.§%!1§.stop();
         }
         if(!isNaN(param1))
         {
            this.hoverScale = param1;
         }
         this.§%!1§ = §5!%§.§!6§.§4!M§(this,{"hoverScale":0},null,§^1§,§]"_§.easeOut);
         this.§%!1§.play();
      }
      
      public function get hoverScale() : Number
      {
         return this.§2!v§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§2!v§ = param1;
         for each(_loc2_ in this.§!#7§)
         {
            _loc2_.scaleX = _loc2_.scaleY = this.§2!v§;
            _loc2_.visible = this.§2!v§ >= 0.1;
         }
         _loc3_ = 1 + this.§2!v§ * 0.15;
         this.mAsset.scaleX = this.§<"]§ * _loc3_;
         this.mAsset.scaleY = this.§[4§ * _loc3_;
      }
   }
}
