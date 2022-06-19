package §_-Xz§
{
   import §_-00f§.§_-8K§;
   import §_-00f§.§_-PY§;
   import §_-16§.§_-VR§;
   import §_-4I§.§_-Aw§;
   import §_-4I§.§_-v8§;
   import §_-5b§.§_-Mm§;
   import §_-EH§.§_-uz§;
   import §_-Q2§.§_-Zr§;
   import §_-TX§.§_-0X§;
   import §_-kI§.§_-Iv§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class StateCutScene extends §_-uz§
   {
      
      public static const §_-3o§:String = "StateCutScene";
      
      private static const §_-Vk§:Number = 2000;
       
      
      private var §_-Xd§:§_-PY§;
      
      private var §_-D6§:Boolean;
      
      private var §_-su§:§_-Aw§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_CutScene[0]);
      }
      
      protected function §_-v1§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§_-su§)
            {
               this.§_-su§.removeEventListener(Event.COMPLETE,this.§_-FP§);
               this.§_-su§.removeEventListener(Event.CANCEL,this.§_-0t§);
               this.§_-su§.addEventListener(Event.COMPLETE,this.§_-FP§);
               this.§_-su§.addEventListener(Event.CANCEL,this.§_-0t§);
               this.§_-su§.§_-9h§("cutscene_" + param1);
            }
            else
            {
               this.§_-Gi§();
            }
            return true;
         }
         return false;
      }
      
      private function §_-FP§(param1:Event) : void
      {
         if(this.§_-su§)
         {
            this.§_-su§.removeEventListener(Event.COMPLETE,this.§_-FP§);
            this.§_-su§.removeEventListener(Event.CANCEL,this.§_-0t§);
            this.§_-Gi§();
         }
      }
      
      private function §_-Gi§() : void
      {
         var _loc1_:String = this.§_-Oe§();
         var _loc2_:§_-v8§ = §_-v8§.§_-yU§;
         if(this.§_-su§)
         {
            _loc2_ = this.§_-su§.§_-91§;
         }
         this.§_-Xd§ = §_-8K§.§_-vG§(_loc1_,_loc2_);
         if(this.§_-Xd§)
         {
            §_-WX§.§_-ZR§.§_-y5§(_loc1_);
            §_-0X§.§_-O2§.§_-JY§(true);
            §_-0X§.§_-O2§.§_-Bk§(false);
            this.§_-Xd§.update(0);
            §_-0X§.§_-O2§.§_-0-q§.addChild(this.§_-Xd§.sprite);
         }
      }
      
      private function §_-0t§(param1:Event) : void
      {
         if(this.§_-su§)
         {
            this.§_-su§.removeEventListener(Event.COMPLETE,this.§_-FP§);
            this.§_-su§.removeEventListener(Event.CANCEL,this.§_-0t§);
            mNextState = §_-SA§.§_-3o§;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-su§)
         {
            this.§_-su§ = §_-0X§.§_-O2§.§_-Fb§;
         }
         §_-nq§.getItemByName("Button_Skip").setVisibility(false);
         §_-WX§.§_-9U§();
         this.§_-D6§ = false;
         var _loc1_:String = this.§_-Oe§();
         if(!this.§_-v1§(_loc1_))
         {
            mNextState = §_-SA§.§_-3o§;
         }
         else if(_loc1_ == "comp1_complete")
         {
            this.§_-Xd§.§_-zh§ = §_-PY§.§_-ql§;
         }
      }
      
      private function §_-Oe§() : String
      {
         var _loc1_:String = §_-Mm§.§_-e7§;
         var _loc2_:String = §_-Mm§.§_-tG§().§_-nT§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-Mm§.§_-6e§)
         {
            _loc1_ = §_-Mm§.§_-Kw§;
            _loc2_ = §_-Mm§.§_-tG§().§_-nT§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-Xd§)
         {
            §_-0X§.§_-O2§.§_-0-q§.removeChild(this.§_-Xd§.sprite);
            this.§_-Xd§.dispose();
            this.§_-Xd§ = null;
         }
         if(this.§_-su§)
         {
            this.§_-su§.removeEventListener(Event.COMPLETE,this.§_-FP§);
            this.§_-su§.removeEventListener(Event.CANCEL,this.§_-0t§);
         }
         §_-0X§.§_-O2§.§_-Bk§(true);
         §_-Mm§.§_-e7§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§_-D6§ = true;
               break;
            case "FULLSCREEN_BUTTON":
         }
      }
      
      override public function run(param1:Number) : int
      {
         §_-nq§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§_-D6§)
         {
            this.end();
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-Xd§.update(param1))
         {
            mNextState = §_-SA§.§_-3o§;
         }
         if(this.§_-Xd§ && !this.§_-Xd§.update(param1))
         {
            this.end();
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:uint = 0;
         if(this.§_-Xd§ && §_-Iv§.credits <= 0)
         {
            _loc1_ = setTimeout(§_-SW§.sCheetosPopups.showPopup,400,§_-Zr§.NO_CREDIT,"NO_CREDIT");
            mNextState = §_-0N§.§_-3o§;
         }
         else if(this.§_-Xd§ && this.§_-Xd§.§_-zh§ == §_-PY§.§_-is§)
         {
            mNextState = §_-0N§.§_-3o§;
         }
         else if(this.§_-Xd§ && this.§_-Xd§.§_-zh§ == §_-PY§.§_-ql§)
         {
            mNextState = §_-xD§.§_-3o§;
         }
         else
         {
            mNextState = §_-SA§.§_-3o§;
         }
      }
   }
}
