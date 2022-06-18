package §?!N§
{
   import §%#v§.§0"j§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import §]"'§.§1#"§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class ToSPopup extends AbstractPopup
   {
      
      public static const ID:String = "ToSPopup";
       
      
      private var §>$3§:String;
      
      public function ToSPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupToS[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §8#Y§.mClip;
         _loc1_.btnAccept.addEventListener(MouseEvent.CLICK,this.§--§);
         _loc1_.btnToS.addEventListener(MouseEvent.CLICK,this.§-E§);
      }
      
      public function injectData(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:MovieClip;
         (_loc6_ = §8#Y§.mClip).txtTitle.text = param1;
         _loc6_.txtTitle.y += Math.round((_loc6_.txtTitle.height - _loc6_.txtTitle.textHeight) / 2);
         _loc6_.txtBody.text = param2;
         this.§>$3§ = param5;
         this.§'S§(param3,"btnAccept");
         this.§'S§(param4,"btnToS");
      }
      
      private function §--§(param1:MouseEvent) : void
      {
         §1#"§.§+!L§();
         close();
      }
      
      private function §-E§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(new URLRequest(this.§>$3§ + "&token=" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken + "&appId=" + §'"a§.§;#M§),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §'S§(param1:String, param2:String) : void
      {
         this.§-!'§(§8#Y§.mClip[param2].upState,param1);
         this.§-!'§(§8#Y§.mClip[param2].overState,param1);
         this.§-!'§(§8#Y§.mClip[param2].downState,param1);
      }
      
      private function §-!'§(param1:DisplayObjectContainer, param2:String) : void
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
