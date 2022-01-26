package §_-JB§
{
   import § get§.§_-pD§;
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-8c§;
   import §_-7§.§_-ph§;
   import §_-De§.§_-a2§;
   import §_-FQ§.§_-iw§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-PS§.§_-Xz§;
   import §_-S9§.§_-o2§;
   import §_-XI§.§_-mk§;
   import §_-a6§.§_-ds§;
   import §_-cu§.§_-UO§;
   import §_-ex§.Base64;
   import §_-ex§.§_-Mh§;
   import §_-wC§.§_-TY§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §import§
   {
      
      public static const §_-1h§:String = "StatePlay";
      
      private static const §_-IQ§:Number = -10 * 1000;
      
      private static const §_-9h§:Number = 15 * 1000;
       
      
      private var §_-h-§:Boolean = true;
      
      private var §_-e2§:Boolean = false;
      
      private var §_-17§:Number = -10000.0;
      
      private var §_-Mw§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-pD§.§_-6Y§();
         §_-mk§.§_-6h§(§_-mk§.§_-Ri§,§_-Xz§.§_-AP§);
         §_-pD§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         this.§_-fX§();
         §_-kl§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-WG§();
         §_-a2§.§_-Ga§(§_-kl§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-0v§();
         this.§_-WG§();
      }
      
      private function §_-0v§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-e2§)
         {
            if(this.§_-17§ > §_-9h§)
            {
               this.§_-e2§ = true;
               _loc1_ = Math.round(1000 / this.§_-17§ * this.§_-Mw§);
               if(§_-yh§.§_-Yt§)
               {
                  §_-mk§.§_-6h§(§_-mk§.§_-33§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-mk§.§_-6h§(§_-mk§.§_-QQ§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-lk§(param1:Number) : void
      {
         this.§_-17§ += param1;
         if(this.§_-17§ > 0)
         {
            ++this.§_-Mw§;
         }
      }
      
      private function §_-WG§() : void
      {
         this.§_-17§ = §_-IQ§;
         this.§_-Mw§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-a2§.§_-yI§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-lk§(param1);
         this.§_-fX§();
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-Xz§.§_-AP§;
         var _loc5_:Object = §_-ds§.§_-p0§(§_-Xz§.§_-AP§);
         var _loc6_:int = §_-q1§.getScore();
         var _loc7_:int = §_-Xz§.§_-Kz§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-mk§.§_-6h§(§_-mk§.§_-6u§,_loc4_,_loc6_);
         §_-ds§.competition = 0;
         _loc5_.blocks = §_-iw§.§_-VQ§();
         _loc5_.gamePlay = §_-ph§.§_-Tw§.§_-gh§().toString();
         _loc5_.security = this.§_-U7§(_loc4_,_loc5_);
         _loc5_.security2 = this.§_-hg§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-ds§.competition,
            "player":§_-ds§.§_-2B§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-vi§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
         _loc3_.url = §_-2U§.§_-i1§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-U7§(param1:String, param2:Object) : String
      {
         return §_-TY§.§_-MG§([param1,param2.score,param2.stars,§_-ds§.competition,§_-ds§.§_-qG§.§_-Xe§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      public function §_-hg§(param1:String, param2:Object) : String
      {
         return §_-TY§.§_-MG§([param1,§_-ds§.§_-qG§.§_-Xe§,param2.blocks,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-o2§.§_-Yz§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-ds§.competition != _loc2_.competition)
               {
                  §_-ds§.competition = _loc2_.competition;
                  §_-ds§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-dM§.showNewHighscore();
            }
         }
      }
      
      private function §_-vi§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         if(§_-ph§.§_-Tw§.mLevelObjects.mMightyEagleAdded)
         {
            return §_-LD§.§_-1h§;
         }
         return §_-Xx§.§_-1h§;
      }
      
      override public function getLoserState() : String
      {
         return §_-6F§.§_-1h§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         if(param3 is §_-8c§)
         {
            if(param1 == §_-ZG§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-Mh§.§_-Hu§();
            }
            else if(param1 == §_-ZG§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-Mh§.§_-XE§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-a2§.§_-YH§();
               break;
            case "PAUSE":
               mNextState = §_-sH§.§_-1h§;
               break;
            case "RESTART_LEVEL":
               §_-gc§.§_-hG§();
               mNextState = §_-gc§.§_-1h§;
         }
      }
      
      private function §_-fX§() : void
      {
         var _loc1_:int = §_-q1§.getScore();
         §_-kl§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-2U§.§_-T1§.§_-6X§(§_-Xz§.§_-AP§);
         §_-kl§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
