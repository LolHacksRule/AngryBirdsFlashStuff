package § o§
{
   import §%#A§.§'=§;
   import §5"?§.§4"-§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<"p§.§%"J§;
   import §<#m§.AbstractPopup;
   import §^"U§.§`#n§;
   import com.rovio.assets.§+$#§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §%!2§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §<#C§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §+$#§.§["`§(param3);
         this.§<#C§ = new _loc4_();
         var _loc5_:XML = this.§<#C§.width > this.§<#C§.height ? §=>§.§%" §.Views.Popup_Poster_Horizontal[0] : §=>§.§%" §.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         (§1"6§.getItemByName("PosterPlacement") as §'=§).mClip.addChild(this.§<#C§);
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§9"Y§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §9"Y§() : void
      {
         close();
         this.§<#C§.scaleX = 1;
         this.§<#C§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§<#C§.width,this.§<#C§.height);
         _loc1_.draw(this.§<#C§,new Matrix(1,0,0,1,109,this.§<#C§.height >> 1));
         §%"J§.§9"t§(_loc1_,§`#n§.§&X§,(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,this.§6"K§,this.§!!@§);
      }
      
      private function §6"K§(param1:*) : void
      {
      }
      
      private function §!!@§() : void
      {
      }
   }
}
