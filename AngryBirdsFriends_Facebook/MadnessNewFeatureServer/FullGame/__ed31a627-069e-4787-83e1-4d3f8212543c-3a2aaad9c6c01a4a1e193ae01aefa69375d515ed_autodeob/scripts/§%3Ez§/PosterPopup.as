package §>z§
{
   import §#,§.§'!`§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §0P§.§%"A§;
   import §1#v§.§4!b§;
   import §7R§.§ #`§;
   import com.rovio.assets.§6$A§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §^!v§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §,#Q§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §6$A§.§1!m§(param3);
         this.§,#Q§ = new _loc4_();
         var _loc5_:XML = this.§,#Q§.width > this.§,#Q§.height ? §?l§.§3m§.Views.Popup_Poster_Horizontal[0] : §?l§.§3m§.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         (§&!M§.getItemByName("PosterPlacement") as §'!`§).mClip.addChild(this.§,#Q§);
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§+!x§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §+!x§() : void
      {
         close();
         this.§,#Q§.scaleX = 1;
         this.§,#Q§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§,#Q§.width,this.§,#Q§.height);
         _loc1_.draw(this.§,#Q§,new Matrix(1,0,0,1,109,this.§,#Q§.height >> 1));
         §4!b§.§;$#§(_loc1_,§%"A§.§>!7§,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,this.§[]§,this.§^#<§);
      }
      
      private function §[]§(param1:*) : void
      {
      }
      
      private function §^#<§() : void
      {
      }
   }
}
