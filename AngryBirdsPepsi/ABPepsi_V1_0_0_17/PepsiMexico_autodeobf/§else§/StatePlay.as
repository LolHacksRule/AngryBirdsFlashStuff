package §else§
{
   import §_-6r§.§_-7P§;
   import §_-F1§.§_-qp§;
   import §_-IV§.§_-qW§;
   import §_-OJ§.§_-vI§;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-W0§.§_-MC§;
   import §_-ZA§.§_-tg§;
   import §_-dA§.§_-FO§;
   import §_-e3§.Base64;
   import §_-e3§.§_-9Y§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-rQ§.§_-Ou§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-Rv§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §_-6y§
   {
      
      public static const §_-Az§:String = "StatePlay";
      
      private static const §_-Bg§:Number = -10 * 1000;
      
      private static const §_-rL§:Number = 15 * 1000;
       
      
      private var §_-1s§:Boolean = true;
      
      private var §_-2I§:Boolean = false;
      
      private var §_-iu§:Number = -10000.0;
      
      private var §_-Dx§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-Ou§.§_-yO§();
         §_-qW§.§_-6h§(§_-qW§.§_-2Y§,§_-Sf§.§_-vj§);
         §_-Ou§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(true);
         this.§_-jg§();
         §_-NY§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-tk§();
         §_-FO§.§_-I8§(§_-NY§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-CW§();
         this.§_-tk§();
      }
      
      private function §_-CW§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-2I§)
         {
            if(this.§_-iu§ > §_-rL§)
            {
               this.§_-2I§ = true;
               _loc1_ = Math.round(1000 / this.§_-iu§ * this.§_-Dx§);
               if(§_-Vu§.§_-wB§)
               {
                  §_-qW§.§_-6h§(§_-qW§.§_-X§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-qW§.§_-6h§(§_-qW§.§_-Qz§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-Pn§(param1:Number) : void
      {
         this.§_-iu§ += param1;
         if(this.§_-iu§ > 0)
         {
            ++this.§_-Dx§;
         }
      }
      
      private function §_-tk§() : void
      {
         this.§_-iu§ = §_-Bg§;
         this.§_-Dx§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-FO§.§_-GJ§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-Pn§(param1);
         this.§_-jg§();
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-Sf§.§_-vj§;
         var _loc5_:Object = §_-MC§.§_-yg§(§_-Sf§.§_-vj§);
         var _loc6_:int = §_-uZ§.getScore();
         var _loc7_:int = §_-Sf§.§_-mF§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-qW§.§_-6h§(§_-qW§.§_-5S§,_loc4_,_loc6_);
         _loc5_.blocks = §_-vI§.§_-iC§();
         _loc5_.gamePlay = §_-MB§.§_-A7§.§_-tt§().toString();
         _loc5_.security = this.§_-L3§(_loc4_,_loc5_);
         _loc5_.security2 = this.§_-6S§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-MC§.competition,
            "player":§_-MC§.§_-7w§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(§_-AD§.encode(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
         _loc3_.url = §_-Qu§.§_-BK§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-L3§(param1:String, param2:Object) : String
      {
         return §_-tg§.§_-bG§([param1,param2.score,param2.stars,§_-MC§.competition,§_-MC§.§_-9H§.§_-Yv§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      public function §_-6S§(param1:String, param2:Object) : String
      {
         return §_-tg§.§_-bG§([param1,§_-MC§.§_-9H§.§_-Yv§,param2.blocks,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-MC§.competition != _loc2_.competition)
               {
                  §_-MC§.competition = _loc2_.competition;
                  §_-MC§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-1S§.showNewHighscore();
            }
         }
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         return §_-Rk§.§_-Az§;
      }
      
      override public function getLoserState() : String
      {
         return §_-nZ§.§_-Az§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         if(param3 is §_-qp§)
         {
            if(param1 == §_-7P§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-9Y§.§_-gZ§();
            }
            else if(param1 == §_-7P§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-9Y§.§_-TK§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-FO§.§_-OC§();
               break;
            case "PAUSE":
               mNextState = §_-xb§.§_-Az§;
               break;
            case "RESTART_LEVEL":
               §_-Jw§.§_-h5§();
               mNextState = §_-Jw§.§_-Az§;
         }
      }
      
      private function §_-jg§() : void
      {
         var _loc1_:int = §_-uZ§.getScore();
         §_-NY§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-Qu§.§_-di§.§_-xN§(§_-Sf§.§_-vj§);
         §_-NY§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
