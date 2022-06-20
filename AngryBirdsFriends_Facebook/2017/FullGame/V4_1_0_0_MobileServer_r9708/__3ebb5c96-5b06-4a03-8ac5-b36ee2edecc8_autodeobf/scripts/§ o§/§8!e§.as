package § o§
{
   import §&$!§.§+#!§;
   import §4$<§.PopupLayerEvent;
   import §<"P§.§[#$§;
   import §<#m§.§+$4§;
   import §<#m§.§8!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8!e§ extends §8!j§
   {
      
      public static const §+!y§:Number = 0.6;
       
      
      private var §""9§:Sprite;
      
      public function §8!e§(param1:MovieClip, param2:§+#!§, param3:§[#$§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         this.§5!`§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      private function §5!`§() : void
      {
         this.§""9§ = new Sprite();
         this.§""9§.graphics.beginFill(0);
         this.§""9§.graphics.drawRect(0,0,100,100);
         this.§""9§.graphics.endFill();
         this.§""9§.alpha = §+!y§;
      }
      
      override public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §+$4§
      {
         var _loc5_:§+$4§;
         (_loc5_ = super.addLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.§@!K§);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.§7!V§);
         return _loc5_;
      }
      
      private function §@!K§(param1:PopupLayerEvent) : void
      {
         this.§^!@§();
      }
      
      private function §7!V§(param1:PopupLayerEvent) : void
      {
         this.§^!@§();
      }
      
      private function §^!@§() : void
      {
         var _loc2_:§+$4§ = null;
         var _loc1_:§+$4§ = null;
         for each(_loc2_ in § #r§)
         {
            if(!(!_loc2_ || !_loc2_.§`$§()))
            {
               if(_loc1_ == null || _loc1_.index < _loc2_.index)
               {
                  _loc1_ = _loc2_;
               }
            }
         }
         if(_loc1_)
         {
            if(this.§""9§.parent != §1"6§)
            {
               §1"6§.addChild(this.§""9§);
            }
            §1"6§.setChildIndex(this.§""9§,§1"6§.numChildren - 1);
            §1"6§.setChildIndex(_loc1_.container,§1"6§.numChildren - 1);
         }
         else if(this.§""9§.parent == §1"6§)
         {
            §1"6§.removeChild(this.§""9§);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         super.setViewSize(param1,param2);
         this.§""9§.x = -(param1 >> 1);
         this.§""9§.y = -(param2 >> 1);
         this.§""9§.width = §0?§ << 1;
         this.§""9§.height = §,#k§ << 1;
      }
   }
}
