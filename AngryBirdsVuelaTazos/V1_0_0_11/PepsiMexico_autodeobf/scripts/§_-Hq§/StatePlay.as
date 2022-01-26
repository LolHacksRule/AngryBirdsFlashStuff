package §_-Hq§
{
   import §_-20§.§_-dV§;
   import §_-4R§.§_-dZ§;
   import §_-5x§.§_-8p§;
   import §_-Ah§.§_-b§;
   import §_-IV§.§_-5e§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-r6§;
   import §_-Y-§.§_-A5§;
   import §_-ZG§.Base64;
   import §_-ZG§.§_-HK§;
   import §_-bA§.§_-U7§;
   import §_-d5§.§_-6Y§;
   import §_-lG§.§_-Z9§;
   import §_-xN§.§_-pB§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends § var§
   {
      
      public static const §_-dh§:String = "StatePlay";
      
      private static const §_-do§:Number = -10 * 1000;
      
      private static const §_-e6§:Number = 15 * 1000;
       
      
      private var §_-ls§:Boolean = true;
      
      private var §_-uT§:Boolean = false;
      
      private var §_-Cf§:Number = -10000.0;
      
      private var §_-QY§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-8p§.§_-m-§();
         §_-dZ§.§_-H3§(§_-dZ§.§_-DW§,§_-A5§.§_-KH§);
         §_-8p§.§_-rD§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         this.§_-FD§();
         §_-qE§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-VF§();
         §_-dV§.§_-rk§(§_-qE§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-3c§();
         this.§_-VF§();
      }
      
      private function §_-3c§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-uT§)
         {
            if(this.§_-Cf§ > §_-e6§)
            {
               this.§_-uT§ = true;
               _loc1_ = Math.round(1000 / this.§_-Cf§ * this.§_-QY§);
               if(§_-6Y§.§_-rs§)
               {
                  §_-dZ§.§_-H3§(§_-dZ§.§_-K3§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-dZ§.§_-H3§(§_-dZ§.§_-VW§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-0h§(param1:Number) : void
      {
         this.§_-Cf§ += param1;
         if(this.§_-Cf§ > 0)
         {
            ++this.§_-QY§;
         }
      }
      
      private function §_-VF§() : void
      {
         this.§_-Cf§ = §_-do§;
         this.§_-QY§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-dV§.§_-DU§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-0h§(param1);
         this.§_-FD§();
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-A5§.§_-KH§;
         var _loc5_:Object = §_-5e§.§_-m9§(§_-A5§.§_-KH§);
         var _loc6_:int = §_-5R§.getScore();
         var _loc7_:int = §_-A5§.§_-ww§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-dZ§.§_-H3§(§_-dZ§.§_-Ly§,_loc4_,_loc6_);
         §_-5e§.competition = 0;
         _loc5_.security = this.§_-ph§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-5e§.competition,
            "player":§_-5e§.§_-JC§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-3r§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
         _loc3_.url = §_-I8§.§_-vQ§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-ph§(param1:String, param2:Object) : String
      {
         return §_-Z9§.§_-Wt§([param1,param2.score,param2.stars,§_-5e§.competition,§_-5e§.§_-bb§.§_-sc§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-U7§.§_-qY§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-5e§.competition != _loc2_.competition)
               {
                  §_-5e§.competition = _loc2_.competition;
                  §_-5e§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-03§.showNewHighscore();
            }
         }
      }
      
      private function §_-3r§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         if(§_-b§.§_-cK§.mLevelObjects.mMightyEagleAdded)
         {
            return §_-Ck§.§_-dh§;
         }
         return §_-Ft§.§_-dh§;
      }
      
      override public function getLoserState() : String
      {
         return §_-MV§.§_-dh§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         if(param3 is §_-r6§)
         {
            if(param1 == §_-pB§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-HK§.§_-nW§();
            }
            else if(param1 == §_-pB§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-HK§.§_-uL§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-dV§.§_-Eh§();
               break;
            case "PAUSE":
               mNextState = §_-1F§.§_-dh§;
               break;
            case "RESTART_LEVEL":
               §_-mF§.§_-4C§();
               mNextState = §_-mF§.§_-dh§;
         }
      }
      
      private function §_-FD§() : void
      {
         var _loc1_:int = §_-5R§.getScore();
         §_-qE§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-I8§.§_-Gn§.§_-3u§(§_-A5§.§_-KH§);
         §_-qE§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
