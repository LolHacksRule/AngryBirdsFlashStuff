package § h§
{
   import § "v§.§4$4§;
   import §9!6§.AbstractPopup;
   import §>#Y§.§2"%§;
   import §[#A§.§&n§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class ToSPopup extends AbstractPopup
   {
      
      public static const ID:String = "ToSPopup";
       
      
      private var §,#F§:String;
      
      public function ToSPopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupToS[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §'o§.mClip;
         _loc1_.btnAccept.addEventListener(MouseEvent.CLICK,this.§^#R§);
         _loc1_.btnToS.addEventListener(MouseEvent.CLICK,this.§?$9§);
      }
      
      public function injectData(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:MovieClip;
         (_loc6_ = §'o§.mClip).txtTitle.text = param1;
         _loc6_.txtTitle.y += Math.round((_loc6_.txtTitle.height - _loc6_.txtTitle.textHeight) / 2);
         _loc6_.txtBody.text = param2;
         this.§,#F§ = param5;
         this.§2#j§(param3,"btnAccept");
         this.§2#j§(param4,"btnToS");
      }
      
      private function §^#R§(param1:MouseEvent) : void
      {
         §2"%§.§?D§();
         close();
      }
      
      private function §?$9§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(new URLRequest(this.§,#F§ + "&token=" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken + "&appId=" + §^"a§.§-!"§),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §2#j§(param1:String, param2:String) : void
      {
         this.§3$2§(§'o§.mClip[param2].upState,param1);
         this.§3$2§(§'o§.mClip[param2].overState,param1);
         this.§3$2§(§'o§.mClip[param2].downState,param1);
      }
      
      private function §3$2§(param1:DisplayObjectContainer, param2:String) : void
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
