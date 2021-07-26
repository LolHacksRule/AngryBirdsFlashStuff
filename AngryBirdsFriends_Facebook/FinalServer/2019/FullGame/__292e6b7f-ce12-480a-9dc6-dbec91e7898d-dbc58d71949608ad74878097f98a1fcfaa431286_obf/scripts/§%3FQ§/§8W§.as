package §?Q§
{
   import § $0§.§%!z§;
   import § $0§.§<4§;
   import §##y§.§#$"§;
   import §+`§.§%"q§;
   import §;#>§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8W§ extends §<4§
   {
      
      public static const §^"I§:Number = 0.6;
       
      
      private var §7##§:Sprite;
      
      public function §8W§(param1:MovieClip, param2:§%"q§, param3:§#$"§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§^s§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §^s§() : void
      {
         this.§7##§ = new Sprite();
         this.§7##§.graphics.beginFill(0);
         this.§7##§.graphics.drawRect(0,0,100,100);
         this.§7##§.graphics.endFill();
         this.§7##§.alpha = §^"I§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §%!z§
      {
         var _loc5_:§%!z§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§^#E§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§+$"§);
         return _loc5_;
      }
      
      private function §^#E§(param1:PopupLayerEvent) : void
      {
         this.§3#M§();
      }
      
      private function §+$"§(param1:PopupLayerEvent) : void
      {
         this.§3#M§();
      }
      
      private function §3#M§() : void
      {
         var _loc2_:§%!z§ = null;
         var _loc1_:§%!z§ = null;
         for each(_loc2_ in §%g§)
         {
            if(!(!_loc2_ || !_loc2_.§[#a§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§7##§.parent != §;#'§)
            {
               §;#'§.addChild(this.§7##§);
            }
            §;#'§.setChildIndex(this.§7##§,§;#'§.numChildren - 1);
            §;#'§.setChildIndex(_loc1_.container,§;#'§.numChildren - 1);
         }
         else if(this.§7##§.parent == §;#'§)
         {
            §;#'§.removeChild(this.§7##§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§7##§.x = -(param1 >> 1);
         this.§7##§.y = -(param2 >> 1);
         this.§7##§.width = §6$'§ << 1;
         this.§7##§.height = §?"4§ << 1;
      }
   }
}
