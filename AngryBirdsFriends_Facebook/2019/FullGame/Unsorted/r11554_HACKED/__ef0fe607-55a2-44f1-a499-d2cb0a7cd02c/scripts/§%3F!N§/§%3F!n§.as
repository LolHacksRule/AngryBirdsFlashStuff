package §?!N§
{
   import §3"G§.§16§;
   import §8#?§.§?#;§;
   import §;$5§.§3!U§;
   import §;$5§.§6"8§;
   import §;w§.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?!n§ extends §6"8§
   {
      
      public static const §<i§:Number = 0.6;
       
      
      private var §>"W§:Sprite;
      
      public function §?!n§(param1:MovieClip, param2:§16§, param3:§?#;§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§]"^§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §]"^§() : void
      {
         this.§>"W§ = new Sprite();
         this.§>"W§.graphics.beginFill(0);
         this.§>"W§.graphics.drawRect(0,0,100,100);
         this.§>"W§.graphics.endFill();
         this.§>"W§.alpha = §<i§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §3!U§
      {
         var _loc5_:§3!U§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§;!P§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§![§);
         return _loc5_;
      }
      
      private function §;!P§(param1:PopupLayerEvent) : void
      {
         this.§9!;§();
      }
      
      private function §![§(param1:PopupLayerEvent) : void
      {
         this.§9!;§();
      }
      
      private function §9!;§() : void
      {
         var _loc2_:§3!U§ = null;
         var _loc1_:§3!U§ = null;
         for each(_loc2_ in §2#F§)
         {
            if(!(!_loc2_ || !_loc2_.§`'§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§>"W§.parent != §8#Y§)
            {
               §8#Y§.addChild(this.§>"W§);
            }
            §8#Y§.setChildIndex(this.§>"W§,§8#Y§.numChildren - 1);
            §8#Y§.setChildIndex(_loc1_.container,§8#Y§.numChildren - 1);
         }
         else if(this.§>"W§.parent == §8#Y§)
         {
            §8#Y§.removeChild(this.§>"W§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§>"W§.x = -(param1 >> 1);
         this.§>"W§.y = -(param2 >> 1);
         this.§>"W§.width = §="G§ << 1;
         this.§>"W§.height = §7!@§ << 1;
      }
   }
}
