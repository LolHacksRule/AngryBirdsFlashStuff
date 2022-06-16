package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §2G§.§ #$§;
   import §@!M§.§!"p§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class ToSPopup extends AbstractPopup
   {
      
      public static const ID:String = "ToSPopup";
       
      
      private var §9!q§:String;
      
      public function ToSPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupToS[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,#2§.mClip;
         _loc1_.btnAccept.addEventListener(MouseEvent.CLICK,this.§&#A§);
         _loc1_.btnToS.addEventListener(MouseEvent.CLICK,this.§1#;§);
      }
      
      public function injectData(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:MovieClip;
         (_loc6_ = §,#2§.mClip).txtTitle.text = param1;
         _loc6_.txtTitle.y += Math.round((_loc6_.txtTitle.height - _loc6_.txtTitle.textHeight) / 2);
         _loc6_.txtBody.text = param2;
         this.§9!q§ = param5;
         this.§0#'§(param3,"btnAccept");
         this.§0#'§(param4,"btnToS");
      }
      
      private function §&#A§(param1:MouseEvent) : void
      {
         § #$§.§-#m§();
         close();
      }
      
      private function §1#;§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(new URLRequest(this.§9!q§ + "&token=" + §,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken + "&appId=" + §,A§.§ !;§),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §0#'§(param1:String, param2:String) : void
      {
         this.§%!O§(§,#2§.mClip[param2].upState,param1);
         this.§%!O§(§,#2§.mClip[param2].overState,param1);
         this.§%!O§(§,#2§.mClip[param2].downState,param1);
      }
      
      private function §%!O§(param1:DisplayObjectContainer, param2:String) : void
      {
         var _loc3_:TextField = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = param1.getChildAt(_loc4_) as TextField;
               _loc3_.text = param2;
               _loc3_.y = -_loc3_.textHeight / 2 * _loc3_.scaleY;
               break;
            }
            _loc4_++;
         }
      }
   }
}
