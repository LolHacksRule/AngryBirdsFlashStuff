package §_-fg§
{
   import §_-5p§.§_-Kf§;
   import §_-5p§.§set §;
   import §_-9J§.§_-xD§;
   import §_-CR§.§_-SU§;
   import §_-CR§.§_-nU§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-bw§.§_-zb§;
   import §_-gC§.§_-XR§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-zM§.§_-1v§;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class StateCutScene extends §_-eK§
   {
      
      public static const §_-bg§:String = "StateCutScene";
      
      private static const §_-bE§:Number = 2000;
       
      
      private var §_-5D§:§_-SU§;
      
      private var §_-ni§:Boolean;
      
      private var §_-jR§:§set §;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_CutScene[0]);
      }
      
      protected function §_-r7§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§_-jR§)
            {
               this.§_-jR§.removeEventListener(Event.COMPLETE,this.§_-8o§);
               this.§_-jR§.removeEventListener(Event.CANCEL,this.§_-eY§);
               this.§_-jR§.addEventListener(Event.COMPLETE,this.§_-8o§);
               this.§_-jR§.addEventListener(Event.CANCEL,this.§_-eY§);
               this.§_-jR§.§_-tf§("cutscene_" + param1);
            }
            else
            {
               this.§_-qP§();
            }
            return true;
         }
         return false;
      }
      
      private function §_-8o§(param1:Event) : void
      {
         if(this.§_-jR§)
         {
            this.§_-jR§.removeEventListener(Event.COMPLETE,this.§_-8o§);
            this.§_-jR§.removeEventListener(Event.CANCEL,this.§_-eY§);
            this.§_-qP§();
         }
      }
      
      private function §_-qP§() : void
      {
         var _loc1_:String = this.§_-PB§();
         var _loc2_:§_-Kf§ = §_-Kf§.§var §;
         if(this.§_-jR§)
         {
            _loc2_ = this.§_-jR§.§_-aJ§;
         }
         this.§_-5D§ = §_-nU§.§_-64§(_loc1_,_loc2_);
         if(this.§_-5D§)
         {
            §_-Vc§.§_-3K§.§_-wK§(_loc1_);
            §_-XR§.§_-Xv§.§_-1m§(true);
            §_-XR§.§_-Xv§.§_-P0§(false);
            this.§_-5D§.update(0);
            §_-XR§.§_-Xv§.§_-lY§.addChild(this.§_-5D§.sprite);
         }
      }
      
      private function §_-eY§(param1:Event) : void
      {
         if(this.§_-jR§)
         {
            this.§_-jR§.removeEventListener(Event.COMPLETE,this.§_-8o§);
            this.§_-jR§.removeEventListener(Event.CANCEL,this.§_-eY§);
            mNextState = §_-V0§.§_-bg§;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-jR§)
         {
            this.§_-jR§ = §_-XR§.§_-Xv§.§_-Mw§;
         }
         §_-Lb§.getItemByName("Button_Skip").setVisibility(false);
         §_-Vc§.§_-gi§();
         this.§_-ni§ = false;
         var _loc1_:String = this.§_-PB§();
         if(!this.§_-r7§(_loc1_))
         {
            mNextState = §_-V0§.§_-bg§;
         }
         else if(_loc1_ == "comp1_complete")
         {
            this.§_-5D§.§_-10§ = §_-SU§.§_-eT§;
         }
      }
      
      private function §_-PB§() : String
      {
         var _loc1_:String = §_-Sa§.§_-UY§;
         var _loc2_:String = §_-Sa§.§_-hC§().§_-6f§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-Sa§.§_-DG§)
         {
            _loc1_ = §_-Sa§.§_-LZ§;
            _loc2_ = §_-Sa§.§_-hC§().§_-6f§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-5D§)
         {
            §_-XR§.§_-Xv§.§_-lY§.removeChild(this.§_-5D§.sprite);
            this.§_-5D§.dispose();
            this.§_-5D§ = null;
         }
         if(this.§_-jR§)
         {
            this.§_-jR§.removeEventListener(Event.COMPLETE,this.§_-8o§);
            this.§_-jR§.removeEventListener(Event.CANCEL,this.§_-eY§);
         }
         §_-XR§.§_-Xv§.§_-P0§(true);
         §_-Sa§.§_-UY§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§_-ni§ = true;
               break;
            case "FULLSCREEN_BUTTON":
         }
      }
      
      override public function run(param1:Number) : int
      {
         §_-Lb§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§_-ni§)
         {
            this.end();
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-5D§.update(param1))
         {
            mNextState = §_-V0§.§_-bg§;
         }
         if(this.§_-5D§ && !this.§_-5D§.update(param1))
         {
            this.end();
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:uint = 0;
         if(this.§_-5D§ && §_-zb§.credits <= 0)
         {
            _loc1_ = setTimeout(§_-cN§.sCheetosPopups.showPopup,400,§_-1v§.NO_CREDIT,"NO_CREDIT");
            mNextState = §_-Pw§.§_-bg§;
         }
         else if(this.§_-5D§ && this.§_-5D§.§_-10§ == §_-SU§.§_-yT§)
         {
            mNextState = §_-Pw§.§_-bg§;
         }
         else if(this.§_-5D§ && this.§_-5D§.§_-10§ == §_-SU§.§_-eT§)
         {
            mNextState = §_-Tx§.§_-bg§;
         }
         else
         {
            mNextState = §_-V0§.§_-bg§;
         }
      }
   }
}
