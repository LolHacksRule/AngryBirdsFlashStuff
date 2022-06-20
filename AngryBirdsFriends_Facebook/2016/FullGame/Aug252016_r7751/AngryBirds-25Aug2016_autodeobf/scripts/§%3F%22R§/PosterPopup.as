package §?"R§
{
   import §!x§.§6#L§;
   import §'!U§.§0!?§;
   import §4q§.§!#Q§;
   import §6"r§.§="T§;
   import §<!O§.§@#`§;
   import §@"D§.§`"T§;
   import §^!,§.AbstractPopup;
   import com.rovio.assets.§@`§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §4#;§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §&#`§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §@`§.§4!i§(param3);
         this.§&#`§ = new _loc4_();
         var _loc5_:XML = this.§&#`§.width > this.§&#`§.height ? §@#`§.§#!c§.Views.Popup_Poster_Horizontal[0] : §@#`§.§#!c§.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         (§7!j§.getItemByName("PosterPlacement") as §="T§).mClip.addChild(this.§&#`§);
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§,"B§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §,"B§() : void
      {
         close();
         this.§&#`§.scaleX = 1;
         this.§&#`§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§&#`§.width,this.§&#`§.height);
         _loc1_.draw(this.§&#`§,new Matrix(1,0,0,1,109,this.§&#`§.height >> 1));
         §6#L§.§]!R§(_loc1_,§`"T§.§9z§,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,this.§"#i§,this.§var§);
      }
      
      private function §"#i§(param1:*) : void
      {
      }
      
      private function §var§() : void
      {
      }
   }
}
