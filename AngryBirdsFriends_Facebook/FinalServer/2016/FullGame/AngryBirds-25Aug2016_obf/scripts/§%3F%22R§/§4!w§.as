package §?"R§
{
   import §'U§.§]#[§;
   import §1"0§.PopupLayerEvent;
   import §<!'§.§ "6§;
   import §^!,§.§'!T§;
   import §^!,§.§]!$§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4!w§ extends §'!T§
   {
      
      public static const §?#'§:Number = 0.3;
       
      
      private var §6"h§:Sprite;
      
      public function §4!w§(param1:MovieClip, param2:§]#[§, param3:§ "6§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§9#o§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §9#o§() : void
      {
         this.§6"h§ = new Sprite();
         this.§6"h§.graphics.beginFill(0);
         this.§6"h§.graphics.drawRect(0,0,100,100);
         this.§6"h§.graphics.endFill();
         this.§6"h§.alpha = §?#'§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §]!$§
      {
         var _loc5_:§]!$§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§["`§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§1#'§);
         return _loc5_;
      }
      
      private function §["`§(param1:PopupLayerEvent) : void
      {
         this.§@S§();
      }
      
      private function §1#'§(param1:PopupLayerEvent) : void
      {
         this.§@S§();
      }
      
      private function §@S§() : void
      {
         var _loc2_:§]!$§ = null;
         var _loc1_:§]!$§ = null;
         for each(_loc2_ in §="J§)
         {
            if(!(!_loc2_ || !_loc2_.§5"'§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§6"h§.parent != §7!j§)
            {
               §7!j§.addChild(this.§6"h§);
            }
            §7!j§.setChildIndex(this.§6"h§,§7!j§.numChildren - 1);
            §7!j§.setChildIndex(_loc1_.container,§7!j§.numChildren - 1);
         }
         else if(this.§6"h§.parent == §7!j§)
         {
            §7!j§.removeChild(this.§6"h§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§6"h§.width = §1#u§;
         this.§6"h§.height = §1V§;
      }
   }
}
