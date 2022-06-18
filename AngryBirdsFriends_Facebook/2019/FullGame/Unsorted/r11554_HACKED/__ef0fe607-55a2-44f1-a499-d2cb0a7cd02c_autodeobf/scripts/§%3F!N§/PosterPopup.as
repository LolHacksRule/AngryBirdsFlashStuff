package §?!N§
{
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §5!$§.§>§;
   import §9#K§.§+!f§;
   import §;$5§.AbstractPopup;
   import §?x§.§6"#§;
   import com.rovio.assets.§2"O§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §;!G§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §-!j§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §2"O§.§`>§(param3);
         this.§-!j§ = new _loc4_();
         var _loc5_:XML = this.§-!j§.width > this.§-!j§.height ? §0"j§.§-i§.Views.Popup_Poster_Horizontal[0] : §0"j§.§-i§.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         (§8#Y§.getItemByName("PosterPlacement") as §>#8§).mClip.addChild(this.§-!j§);
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§7$5§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §7$5§() : void
      {
         close();
         this.§-!j§.scaleX = 1;
         this.§-!j§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§-!j§.width,this.§-!j§.height);
         _loc1_.draw(this.§-!j§,new Matrix(1,0,0,1,109,this.§-!j§.height >> 1));
         §+!f§.§7!W§(_loc1_,§6"#§.§%!d§,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,this.§0$%§,this.§7!7§);
      }
      
      private function §0$%§(param1:*) : void
      {
      }
      
      private function §7!7§() : void
      {
      }
   }
}
