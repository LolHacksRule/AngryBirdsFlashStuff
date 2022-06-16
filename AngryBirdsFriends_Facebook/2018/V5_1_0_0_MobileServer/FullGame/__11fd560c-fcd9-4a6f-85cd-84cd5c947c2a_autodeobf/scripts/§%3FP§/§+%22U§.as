package §?P§
{
   import §!$;§.PopupLayerEvent;
   import §1!=§.§4$"§;
   import §1!=§.§?#I§;
   import §5P§.§""C§;
   import §@l§.§6$9§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §+"U§ extends §4$"§
   {
      
      public static const §1",§:Number = 0.6;
       
      
      private var §#"V§:Sprite;
      
      public function §+"U§(param1:MovieClip, param2:§""C§, param3:§6$9§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§<!W§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §<!W§() : void
      {
         this.§#"V§ = new Sprite();
         this.§#"V§.graphics.beginFill(0);
         this.§#"V§.graphics.drawRect(0,0,100,100);
         this.§#"V§.graphics.endFill();
         this.§#"V§.alpha = §1",§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §?#I§
      {
         var _loc5_:§?#I§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§"!_§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§-#]§);
         return _loc5_;
      }
      
      private function §"!_§(param1:PopupLayerEvent) : void
      {
         this.§80§();
      }
      
      private function §-#]§(param1:PopupLayerEvent) : void
      {
         this.§80§();
      }
      
      private function §80§() : void
      {
         var _loc2_:§?#I§ = null;
         var _loc1_:§?#I§ = null;
         for each(_loc2_ in §%"J§)
         {
            if(!(!_loc2_ || !_loc2_.§#"q§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§#"V§.parent != §,#2§)
            {
               §,#2§.addChild(this.§#"V§);
            }
            §,#2§.setChildIndex(this.§#"V§,§,#2§.numChildren - 1);
            §,#2§.setChildIndex(_loc1_.container,§,#2§.numChildren - 1);
         }
         else if(this.§#"V§.parent == §,#2§)
         {
            §,#2§.removeChild(this.§#"V§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§#"V§.x = -(param1 >> 1);
         this.§#"V§.y = -(param2 >> 1);
         this.§#"V§.width = §!"T§ << 1;
         this.§#"V§.height = §0F§ << 1;
      }
   }
}
