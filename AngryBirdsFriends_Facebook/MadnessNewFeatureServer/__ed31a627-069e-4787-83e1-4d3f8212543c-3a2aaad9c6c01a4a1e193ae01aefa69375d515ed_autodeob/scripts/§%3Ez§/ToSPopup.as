package §>z§
{
   import §!#C§.§&%§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §8#K§.§3Z§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class ToSPopup extends AbstractPopup
   {
      
      public static const ID:String = "ToSPopup";
       
      
      private var §0#z§:String;
      
      public function ToSPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupToS[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&!M§.mClip;
         _loc1_.btnAccept.addEventListener(MouseEvent.CLICK,this.§#k§);
         _loc1_.btnToS.addEventListener(MouseEvent.CLICK,this.§ ^§);
      }
      
      public function injectData(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:MovieClip;
         (_loc6_ = §&!M§.mClip).txtTitle.text = param1;
         _loc6_.txtTitle.y += Math.round((_loc6_.txtTitle.height - _loc6_.txtTitle.textHeight) / 2);
         _loc6_.txtBody.text = param2;
         this.§0#z§ = param5;
         this.§<#?§(param3,"btnAccept");
         this.§<#?§(param4,"btnToS");
      }
      
      private function §#k§(param1:MouseEvent) : void
      {
         §&%§.§7$"§();
         close();
      }
      
      private function § ^§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(new URLRequest(this.§0#z§ + "&token=" + § #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken + "&appId=" + § #v§.§>#r§),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §<#?§(param1:String, param2:String) : void
      {
         this.§"!K§(§&!M§.mClip[param2].upState,param1);
         this.§"!K§(§&!M§.mClip[param2].overState,param1);
         this.§"!K§(§&!M§.mClip[param2].downState,param1);
      }
      
      private function §"!K§(param1:DisplayObjectContainer, param2:String) : void
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
