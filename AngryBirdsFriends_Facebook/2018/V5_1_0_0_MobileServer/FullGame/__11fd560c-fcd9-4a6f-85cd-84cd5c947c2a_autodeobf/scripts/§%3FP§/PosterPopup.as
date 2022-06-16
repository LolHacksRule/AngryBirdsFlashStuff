package §?P§
{
   import § %§.§1Q§;
   import §-!S§.§##>§;
   import §-"3§.§[">§;
   import §1!=§.AbstractPopup;
   import §3#T§.§'§;
   import §<h§.§@N§;
   import §]!6§.§^##§;
   import com.rovio.assets.§!"f§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §1!u§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §["g§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §!"f§.§##?§(param3);
         this.§["g§ = new _loc4_();
         var _loc5_:XML = this.§["g§.width > this.§["g§.height ? §1Q§.§5T§.Views.Popup_Poster_Horizontal[0] : §1Q§.§5T§.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         (§,#2§.getItemByName("PosterPlacement") as §@N§).mClip.addChild(this.§["g§);
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§@[§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §@[§() : void
      {
         close();
         this.§["g§.scaleX = 1;
         this.§["g§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§["g§.width,this.§["g§.height);
         _loc1_.draw(this.§["g§,new Matrix(1,0,0,1,109,this.§["g§.height >> 1));
         §^##§.§6![§(_loc1_,§[">§.§`f§,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,this.§@#i§,this.§!#M§);
      }
      
      private function §@#i§(param1:*) : void
      {
      }
      
      private function §!#M§() : void
      {
      }
   }
}
