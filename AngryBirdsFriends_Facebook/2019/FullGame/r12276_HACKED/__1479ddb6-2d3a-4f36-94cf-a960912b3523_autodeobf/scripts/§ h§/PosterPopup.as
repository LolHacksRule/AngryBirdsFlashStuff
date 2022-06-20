package § h§
{
   import §#"3§.§[!#§;
   import §-"S§.§>#G§;
   import §2$;§.§=!Z§;
   import §9!6§.AbstractPopup;
   import §9#n§.§#!b§;
   import §<8§.§8!g§;
   import §[#A§.§&n§;
   import com.rovio.assets.§=@§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const §7$%§:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var §^!w§:MovieClip;
      
      public function PosterPopup(param1:int, param2:int, param3:String)
      {
         var _loc4_:Class = §=@§.§9!x§(param3);
         this.§^!w§ = new _loc4_();
         var _loc5_:XML = this.§^!w§.width > this.§^!w§.height ? §&n§.§7a§.Views.Popup_Poster_Horizontal[0] : §&n§.§7a§.Views.Popup_Poster[0];
         super(param1,param2,_loc5_,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         (§'o§.getItemByName("PosterPlacement") as §=!Z§).mClip.addChild(this.§^!w§);
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "SHARE_PRESSED":
               this.§]"0§();
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §]"0§() : void
      {
         close();
         this.§^!w§.scaleX = 1;
         this.§^!w§.scaleY = 1;
         var _loc1_:BitmapData = new BitmapData(this.§^!w§.width,this.§^!w§.height);
         _loc1_.draw(this.§^!w§,new Matrix(1,0,0,1,109,this.§^!w§.height >> 1));
         §[!#§.§7# §(_loc1_,§#!b§.§?L§,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,this.§?@§,this.§@#Z§);
      }
      
      private function §?@§(param1:*) : void
      {
      }
      
      private function §@#Z§() : void
      {
      }
   }
}
