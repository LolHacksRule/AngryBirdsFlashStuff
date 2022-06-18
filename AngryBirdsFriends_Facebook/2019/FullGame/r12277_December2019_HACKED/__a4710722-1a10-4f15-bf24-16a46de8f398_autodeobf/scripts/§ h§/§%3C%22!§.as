package § h§
{
   import § #_§.§?!>§;
   import §&1§.§4""§;
   import §5"l§.PopupLayerEvent;
   import §9!6§.§-§;
   import §9!6§.§`!C§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §<"!§ extends §-#6§
   {
      
      public static const §3#i§:Number = 0.6;
       
      
      private var §""L§:Sprite;
      
      public function §<"!§(param1:MovieClip, param2:§?!>§, param3:§4""§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§#j§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §#j§() : void
      {
         this.§""L§ = new Sprite();
         this.§""L§.graphics.beginFill(0);
         this.§""L§.graphics.drawRect(0,0,100,100);
         this.§""L§.graphics.endFill();
         this.§""L§.alpha = §3#i§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §`!C§
      {
         var _loc5_:§`!C§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§9"S§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§3$!§);
         return _loc5_;
      }
      
      private function §9"S§(param1:PopupLayerEvent) : void
      {
         this.§5x§();
      }
      
      private function §3$!§(param1:PopupLayerEvent) : void
      {
         this.§5x§();
      }
      
      private function §5x§() : void
      {
         var _loc2_:§`!C§ = null;
         var _loc1_:§`!C§ = null;
         for each(_loc2_ in §,"`§)
         {
            if(!(!_loc2_ || !_loc2_.§!=§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§""L§.parent != §'o§)
            {
               §'o§.addChild(this.§""L§);
            }
            §'o§.setChildIndex(this.§""L§,§'o§.numChildren - 1);
            §'o§.setChildIndex(_loc1_.container,§'o§.numChildren - 1);
         }
         else if(this.§""L§.parent == §'o§)
         {
            §'o§.removeChild(this.§""L§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§""L§.x = -(param1 >> 1);
         this.§""L§.y = -(param2 >> 1);
         this.§""L§.width = §;%§ << 1;
         this.§""L§.height = §]"D§ << 1;
      }
   }
}
