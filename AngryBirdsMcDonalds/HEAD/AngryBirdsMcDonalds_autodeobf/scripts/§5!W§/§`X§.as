package §5!W§
{
   import §#!1§.§!!X§;
   import §'+§.§<@§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §-a§.§5C§;
   import §-a§.ColorFadeLayerEvent;
   import §2!G§.§!!5§;
   import §2!G§.§-!3§;
   import §2!G§.§[!M§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §@-§.§-m§;
   import §@-§.§[y§;
   import flash.text.TextField;
   
   public class §`X§ extends § for§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §[d§:Class;
      
      protected var §#5§:§5C§ = null;
      
      public function §`X§(param1:Boolean, param2:String)
      {
         this.§[d§ = §1!G§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sHighscoreSidebar == null)
         {
            sHighscoreSidebar = new HighscoreSidebar();
         }
         this.§ 7§();
         sHighscoreSidebar.§"!§(§<@§.§,'§(this.§[d§),mUIView.container,null,null);
         sHighscoreSidebar.container.x = §3![§.§^e§;
         mUIView.container.addComponent(sHighscoreSidebar.container);
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§3![§.§-Z§());
         var _loc1_:Boolean = this.showCreditsButton();
         sHighscoreSidebar.enableCreditsButton(_loc1_);
         sHighscoreSidebar.enableHelpButton(!_loc1_);
         mUIView.getItemByName("Button_Credits").setVisibility(_loc1_);
         mUIView.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         mUIView.getItemByName("Button_Login").setVisibility(!§3![§.§5!6§.§%!%§);
         mUIView.getItemByName("Button_Logout").setVisibility(§3![§.§5!6§.§%!%§);
         (mUIView.getItemByName("Button_Logout").mClip.text as TextField).mouseEnabled = false;
         §!!X§.§5!!§.updateTextFields(mUIView,"HighscoreSidebar");
         this.setInitialState();
         sHighscoreSidebar.§+!a§();
      }
      
      protected function § 7§() : void
      {
         var _loc1_:§-m§ = null;
         if(this.§#5§)
         {
            this.§#5§.§7!,§(1);
            if(this.§#5§.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.§#5§);
               mUIView.container.mClip.addChild(this.§#5§);
            }
            else
            {
               mUIView.container.mClip.addChild(this.§#5§);
            }
            _loc1_ = mUIView.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               mUIView.container.setObjectToFront(_loc1_);
            }
            this.§#5§.§ q§(0,0.2);
            this.§#5§.addEventListener(ColorFadeLayerEvent.§=%§,this.§^!4§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         sHighscoreSidebar.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §^!4§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§#5§ && mUIView.container.mClip.contains(this.§#5§))
         {
            mUIView.container.mClip.removeChild(this.§#5§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§#5§ && mUIView.container.mClip.contains(this.§#5§))
         {
            mUIView.container.mClip.removeChild(this.§#5§);
         }
         if(this.§#5§)
         {
            this.§#5§.removeEventListener(ColorFadeLayerEvent.§=%§,this.§^!4§);
         }
         mUIView.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         if(!sHighscoreSidebar.§ !d§ || (param2 == "MUTE" || param2 == "ENGLISH" || param2 == "CHINESE"))
         {
            switch(param2)
            {
               case "MUTE":
                  §3![§.§?!&§(!§3![§.§-Z§());
                  mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§3![§.§-Z§());
                  if(§3![§.§-Z§())
                  {
                     if(§3![§.§+w§.§5n§() == StatePlay.§>d§)
                     {
                        §2M§.§1?§.background.§@!]§();
                     }
                     else if(§3![§.§+w§.§5n§() == §!E§.§>d§)
                     {
                        §3![§.§'S§();
                     }
                  }
                  break;
               case "LOGOUT":
                  §-!3§.§&!b§(mUIView);
                  break;
               case "LOGIN":
                  this.loginButtonClicked();
                  break;
               case "CREDITS":
                  §2M§.§[,§();
                  §2M§.§1?§.§9!=§(false);
                  §2M§.§1?§.§4<§(false);
                  §[Z§.§&l§ = §!E§.§>d§;
                  §3![§.§0#§ = this.mName;
                  §;_§.§;!M§(§;_§.§6D§(HighscoreSidebar.§7[§));
                  mNextState = §[Z§.§>d§;
                  break;
               case "TUTORIAL":
                  if(!§[!M§.§8!o§)
                  {
                     §[!M§.§`p§();
                     §!!5§.§^=§(mUIView,"ALL",true);
                     §[!M§.§!!g§(mUIView);
                  }
                  break;
               case "ENGLISH":
                  §!!X§.§5!!§.§[R§("en");
                  this.updateTextFields();
                  sHighscoreSidebar.§+!a§();
                  §-!3§.updateTextFields();
                  break;
               case "CHINESE":
                  §!!X§.§5!!§.§[R§("zh");
                  this.updateTextFields();
                  sHighscoreSidebar.§+!a§();
                  §-!3§.updateTextFields();
            }
         }
      }
      
      protected function loginButtonClicked() : void
      {
         §,!B§.§0!B§ = true;
         mNextState = §,!B§.§>d§;
      }
      
      protected function updateTextFields() : void
      {
         §!!X§.§5!!§.updateTextFields(mUIView,"HighscoreSidebar");
      }
   }
}
