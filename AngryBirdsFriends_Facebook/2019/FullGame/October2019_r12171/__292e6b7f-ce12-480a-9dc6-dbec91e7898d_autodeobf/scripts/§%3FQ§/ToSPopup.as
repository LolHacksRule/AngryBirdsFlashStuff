package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §,#,§.§%"#§;
   import §3"V§.§ b§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class ToSPopup extends AbstractPopup
   {
      
      public static const ID:String = "ToSPopup";
       
      
      private var §7"3§:String;
      
      public function ToSPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupToS[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;#'§.mClip;
         _loc1_.btnAccept.addEventListener(MouseEvent.CLICK,this.§!#u§);
         _loc1_.btnToS.addEventListener(MouseEvent.CLICK,this.§0#S§);
      }
      
      public function injectData(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:MovieClip;
         (_loc6_ = §;#'§.mClip).txtTitle.text = param1;
         _loc6_.txtTitle.y += Math.round((_loc6_.txtTitle.height - _loc6_.txtTitle.textHeight) / 2);
         _loc6_.txtBody.text = param2;
         this.§7"3§ = param5;
         this.§'""§(param3,"btnAccept");
         this.§'""§(param4,"btnToS");
      }
      
      private function §!#u§(param1:MouseEvent) : void
      {
         §%"#§.§%!y§();
         close();
      }
      
      private function §0#S§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(new URLRequest(this.§7"3§ + "&token=" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken + "&appId=" + §@z§.§0"W§),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §'""§(param1:String, param2:String) : void
      {
         this.§=4§(§;#'§.mClip[param2].upState,param1);
         this.§=4§(§;#'§.mClip[param2].overState,param1);
         this.§=4§(§;#'§.mClip[param2].downState,param1);
      }
      
      private function §=4§(param1:DisplayObjectContainer, param2:String) : void
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
