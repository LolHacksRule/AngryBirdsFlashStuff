package §1#=§
{
   import § o§.§%"!§;
   import § o§.BirdBotTutorialPopup;
   import §1#W§.§!#&§;
   import §<#m§.§^#o§;
   import com.rovio.assets.§+$#§;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §8#O§
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var §'$6§:SimpleButton;
      
      public function §8#O§()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.§'$6§ = new §+$#§.§["`§("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.§'$6§);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.§+"u§,false,0,true);
      }
      
      private function §+"u§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(§%"!§.NORMAL,§^#o§.DEFAULT));
      }
      
      public function get §5"m§() : SimpleButton
      {
         return this.§'$6§;
      }
   }
}
