package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hs§.each;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-IZ§.§_-t5§;
   import §_-RG§.Base64;
   import §_-RG§.§_-TC§;
   import §_-Su§.§_-8v§;
   import §_-Xr§.§_-cF§;
   import §_-Ys§.§_-o-§;
   import §_-am§.§_-XJ§;
   import §_-of§.§_-Yk§;
   import §_-rR§.§_-7q§;
   import §_-uG§.§_-vK§;
   import §_-v3§.§_-G3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §_-nN§
   {
      
      public static const §_-Mi§:String = "StatePlay";
      
      private static const §_-8r§:Number = -10 * 1000;
      
      private static const §_-wm§:Number = 15 * 1000;
       
      
      private var §_-Z-§:Boolean = true;
      
      private var §_-ko§:Boolean = false;
      
      private var §_-V8§:Number = -10000.0;
      
      private var §_-n8§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-XJ§.§_-48§();
         §_-cF§.§_-Wt§(§_-cF§.§_-D0§,§_-8v§.§_-rq§);
         §_-XJ§.§_-aW§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         this.§_-Zp§();
         §_-Bv§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-bQ§();
         §_-t5§.§_-3o§(§_-Bv§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-JN§();
         this.§_-bQ§();
      }
      
      private function §_-JN§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-ko§)
         {
            if(this.§_-V8§ > §_-wm§)
            {
               this.§_-ko§ = true;
               _loc1_ = Math.round(1000 / this.§_-V8§ * this.§_-n8§);
               if(§_-G3§.§_-ou§)
               {
                  §_-cF§.§_-Wt§(§_-cF§.§_-5P§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-cF§.§_-Wt§(§_-cF§.§_-nx§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-GI§(param1:Number) : void
      {
         this.§_-V8§ += param1;
         if(this.§_-V8§ > 0)
         {
            ++this.§_-n8§;
         }
      }
      
      private function §_-bQ§() : void
      {
         this.§_-V8§ = §_-8r§;
         this.§_-n8§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-t5§.§_-p5§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-GI§(param1);
         this.§_-Zp§();
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-8v§.§_-rq§;
         var _loc5_:Object = §_-7q§.§_-4v§(§_-8v§.§_-rq§);
         var _loc6_:int = §_-8a§.getScore();
         var _loc7_:int = §_-8v§.§_-nk§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-cF§.§_-Wt§(§_-cF§.§_-ZF§,_loc4_,_loc6_);
         §_-7q§.competition = 0;
         _loc5_.security = this.§_-qZ§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-7q§.competition,
            "player":§_-7q§.§_-Eg§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§true§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
         _loc3_.url = §_-0Y§.§_-YA§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-qZ§(param1:String, param2:Object) : String
      {
         return each.§_-hU§([param1,param2.score,param2.stars,§_-7q§.competition,§_-7q§.§_-ek§.§_-iI§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-vK§.§_-Jv§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-7q§.competition != _loc2_.competition)
               {
                  §_-7q§.competition = _loc2_.competition;
                  §_-7q§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-1B§.showNewHighscore();
            }
         }
      }
      
      private function §true§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         if(§_-3C§.§_-bz§.mLevelObjects.mMightyEagleAdded)
         {
            return §_-B0§.§_-Mi§;
         }
         return §_-35§.§_-Mi§;
      }
      
      override public function getLoserState() : String
      {
         return §_-Tq§.§_-Mi§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         if(param3 is §_-Yk§)
         {
            if(param1 == §_-o-§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-TC§.§_-km§();
            }
            else if(param1 == §_-o-§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-TC§.§_-cj§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-t5§.§_-c6§();
               break;
            case "PAUSE":
               mNextState = §_-2u§.§_-Mi§;
               break;
            case "RESTART_LEVEL":
               §_-0v§.§_-R3§();
               mNextState = §_-0v§.§_-Mi§;
         }
      }
      
      private function §_-Zp§() : void
      {
         var _loc1_:int = §_-8a§.getScore();
         §_-Bv§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-0Y§.§_-rb§.§_-YB§(§_-8v§.§_-rq§);
         §_-Bv§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
