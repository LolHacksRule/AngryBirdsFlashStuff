package §>z§
{
   import § !j§.§4#c§;
   import §&m§.§#U§;
   import §'M§.PopupLayerEvent;
   import §0!s§.§@2§;
   import §0!s§.§]!%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'$@§ extends §]!%§
   {
      
      public static const §'!O§:Number = 0.6;
       
      
      private var §<s§:Sprite;
      
      public function §'$@§(param1:MovieClip, param2:§4#c§, param3:§#U§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§!!L§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §!!L§() : void
      {
         this.§<s§ = new Sprite();
         this.§<s§.graphics.beginFill(0);
         this.§<s§.graphics.drawRect(0,0,100,100);
         this.§<s§.graphics.endFill();
         this.§<s§.alpha = §'!O§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §@2§
      {
         var _loc5_:§@2§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§=#G§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§>!i§);
         return _loc5_;
      }
      
      private function §=#G§(param1:PopupLayerEvent) : void
      {
         this.§3!n§();
      }
      
      private function §>!i§(param1:PopupLayerEvent) : void
      {
         this.§3!n§();
      }
      
      private function §3!n§() : void
      {
         var _loc2_:§@2§ = null;
         var _loc1_:§@2§ = null;
         for each(_loc2_ in §<!u§)
         {
            if(!(!_loc2_ || !_loc2_.§?"N§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§<s§.parent != §&!M§)
            {
               §&!M§.addChild(this.§<s§);
            }
            §&!M§.setChildIndex(this.§<s§,§&!M§.numChildren - 1);
            §&!M§.setChildIndex(_loc1_.container,§&!M§.numChildren - 1);
         }
         else if(this.§<s§.parent == §&!M§)
         {
            §&!M§.removeChild(this.§<s§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§<s§.x = -(param1 >> 1);
         this.§<s§.y = -(param2 >> 1);
         this.§<s§.width = §[z§ << 1;
         this.§<s§.height = §`#9§ << 1;
      }
   }
}
