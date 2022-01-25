package
{
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §+$§.§5"§;
   import §+$§.§[!a§;
   import §-!F§.§2[§;
   import §0i§.§@^§;
   import §37§.§!!c§;
   import §37§.§&!;§;
   import §37§.§8!`§;
   import §6x§.§9E§;
   import §6x§.ColorFadeLayerEvent;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import flash.text.TextField;
   
   public class §2'§ extends § =§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §+0§:Class;
      
      protected var §0!P§:§9E§ = null;
      
      public function §2'§(param1:Boolean, param2:String)
      {
         this.§+0§ = §=#§;
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
         this.§%!b§();
         sHighscoreSidebar.§ w§(§@^§.§'K§(this.§+0§),mUIView.container,null,null);
         sHighscoreSidebar.container.x = §9!_§.§;!+§;
         mUIView.container.addComponent(sHighscoreSidebar.container);
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§9!_§.§+!W§());
         var _loc1_:Boolean = this.showCreditsButton();
         sHighscoreSidebar.enableCreditsButton(_loc1_);
         sHighscoreSidebar.enableHelpButton(!_loc1_);
         mUIView.getItemByName("Button_Credits").setVisibility(_loc1_);
         mUIView.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         mUIView.getItemByName("Button_Login").setVisibility(!§9!_§.§1!?§.§`2§);
         mUIView.getItemByName("Button_Logout").setVisibility(§9!_§.§1!?§.§`2§);
         (mUIView.getItemByName("Button_Logout").mClip.text as TextField).mouseEnabled = false;
         §`q§.§9$§.updateTextFields(mUIView,"HighscoreSidebar");
         this.setInitialState();
         sHighscoreSidebar.§6,§();
      }
      
      protected function §%!b§() : void
      {
         var _loc1_:§5"§ = null;
         if(this.§0!P§)
         {
            this.§0!P§.§'x§(1);
            if(this.§0!P§.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.§0!P§);
               mUIView.container.mClip.addChild(this.§0!P§);
            }
            else
            {
               mUIView.container.mClip.addChild(this.§0!P§);
            }
            _loc1_ = mUIView.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               mUIView.container.setObjectToFront(_loc1_);
            }
            this.§0!P§.§7!&§(0,0.2);
            this.§0!P§.addEventListener(ColorFadeLayerEvent.§]!j§,this.§,!N§);
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
      
      private function §,!N§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§0!P§ && mUIView.container.mClip.contains(this.§0!P§))
         {
            mUIView.container.mClip.removeChild(this.§0!P§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§0!P§ && mUIView.container.mClip.contains(this.§0!P§))
         {
            mUIView.container.mClip.removeChild(this.§0!P§);
         }
         if(this.§0!P§)
         {
            this.§0!P§.removeEventListener(ColorFadeLayerEvent.§]!j§,this.§,!N§);
         }
         mUIView.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         if(!sHighscoreSidebar.§,-§ || (param2 == "MUTE" || param2 == "ENGLISH" || param2 == "CHINESE"))
         {
            switch(param2)
            {
               case "MUTE":
                  §9!_§.§?T§(!§9!_§.§+!W§());
                  mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§9!_§.§+!W§());
                  if(§9!_§.§+!W§())
                  {
                     if(§9!_§.§@r§.§2!"§() == StatePlay.§[!1§)
                     {
                        §7;§.§1h§.background.§4!c§();
                     }
                     else if(§9!_§.§@r§.§2!"§() == §6!F§.§[!1§)
                     {
                        §9!_§.§>!X§();
                     }
                  }
                  break;
               case "LOGOUT":
                  §&!;§.§6+§(mUIView);
                  break;
               case "LOGIN":
                  this.loginButtonClicked();
                  break;
               case "CREDITS":
                  §7;§.§-!3§();
                  §7;§.§1h§.§4!@§(false);
                  §7;§.§1h§.§^p§(false);
                  §"e§.§[r§ = §6!F§.§[!1§;
                  §9!_§.§9§ = this.mName;
                  §2[§.§'!T§(§2[§.§`t§(HighscoreSidebar.§0!D§));
                  mNextState = §"e§.§[!1§;
                  break;
               case "TUTORIAL":
                  if(!§8!`§.§7!5§)
                  {
                     §8!`§.§]!L§();
                     §!!c§.§?C§(mUIView,"ALL",true);
                     §8!`§.§<Z§(mUIView);
                  }
                  break;
               case "ENGLISH":
                  §`q§.§9$§.§>w§("en");
                  this.updateTextFields();
                  sHighscoreSidebar.§6,§();
                  §&!;§.updateTextFields();
                  break;
               case "CHINESE":
                  §`q§.§9$§.§>w§("zh");
                  this.updateTextFields();
                  sHighscoreSidebar.§6,§();
                  §&!;§.updateTextFields();
            }
         }
      }
      
      protected function loginButtonClicked() : void
      {
         § try§.§>!^§ = true;
         mNextState = § try§.§[!1§;
      }
      
      protected function updateTextFields() : void
      {
         §`q§.§9$§.updateTextFields(mUIView,"HighscoreSidebar");
      }
   }
}
