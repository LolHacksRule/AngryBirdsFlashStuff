package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9"-§
   {
      
      private static const §"E§:Number = 0.3;
       
      
      private var mAsset:MovieClip;
      
      private var §!#T§:Vector.<MovieClip>;
      
      private var §6"5§:Number = 0;
      
      private var §%#V§:§[#R§;
      
      private var §0#$§:Number;
      
      private var §=9§:Number;
      
      public function §9"-§(param1:MovieClip)
      {
         var _loc3_:MovieClip = null;
         this.§!#T§ = new Vector.<MovieClip>();
         super();
         this.mAsset = param1;
         this.mAsset.mouseChildren = false;
         this.§0#$§ = this.mAsset.scaleX;
         this.§=9§ = this.mAsset.scaleY;
         var _loc2_:int = 1;
         while(_loc2_ < 100)
         {
            _loc3_ = this.mAsset["layer" + _loc2_];
            if(!_loc3_)
            {
               break;
            }
            this.§!#T§.push(_loc3_);
            _loc2_++;
         }
         this.hoverScale = 0;
         this.mAsset.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.mAsset.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onOver(param1:MouseEvent) : void
      {
         if(this.§%#V§)
         {
            this.§%#V§.stop();
         }
         this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1},null,§"E§,§9!Z§.easeOut);
         this.§%#V§.play();
      }
      
      protected function onOut(param1:MouseEvent) : void
      {
         this.§2!t§(NaN);
      }
      
      public function §2!t§(param1:Number = 1) : void
      {
         if(this.§%#V§)
         {
            this.§%#V§.stop();
         }
         if(!isNaN(param1))
         {
            this.hoverScale = param1;
         }
         this.§%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":0},null,§"E§,§9!Z§.easeOut);
         this.§%#V§.play();
      }
      
      public function get hoverScale() : Number
      {
         return this.§6"5§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§6"5§ = param1;
         for each(_loc2_ in this.§!#T§)
         {
            _loc2_.scaleX = _loc2_.scaleY = this.§6"5§;
            _loc2_.visible = this.§6"5§ >= 0.1;
         }
         _loc3_ = 1 + this.§6"5§ * 0.15;
         this.mAsset.scaleX = this.§0#$§ * _loc3_;
         this.mAsset.scaleY = this.§=9§ * _loc3_;
      }
   }
}
