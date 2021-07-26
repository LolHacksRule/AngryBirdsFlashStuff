package §?Q§
{
   import § "L§.§"!A§;
   import § $0§.AbstractPopup;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §6"p§.§3$,§;
   import §;!L§.§#$'§;
   import §^"3§.§`$4§;
   import com.rovio.assets.§[a§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §<#B§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §2#q§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §[a§.§8#k§(param3);
         this.§2#q§ = new _loc4_();
         var _loc5_:XML = this.§2#q§.width > this.§2#q§.height ? §false§.§4#;§.Views.Popup_Poster_Horizontal[0] : §false§.§4#;§.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         (§;#'§.getItemByName("PosterPlacement") as §"!A§).mClip.addChild(this.§2#q§);
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§+"J§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §+"J§() : void
      {
         close();
         this.§2#q§.scaleX = 1;
         this.§2#q§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§2#q§.width,this.§2#q§.height);
         _loc1_.draw(this.§2#q§,new Matrix(1,0,0,1,109,this.§2#q§.height >> 1));
         §3$,§.§4"X§(_loc1_,§#$'§.§8!-§,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,this.§6q§,this.§[!H§);
      }
      
      private function §6q§(param1:*) : void
      {
      }
      
      private function §[!H§() : void
      {
      }
   }
}
