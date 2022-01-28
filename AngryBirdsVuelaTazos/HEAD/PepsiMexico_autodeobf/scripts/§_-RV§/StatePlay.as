package §_-RV§
{
   import § do§.§_-WQ§;
   import §_-2F§.§_-B4§;
   import §_-4K§.§_-Av§;
   import §_-7V§.§_-Gs§;
   import §_-7x§.§_-4O§;
   import §_-Di§.§_-3w§;
   import §_-Ku§.§_-Ha§;
   import §_-Ll§.§_-FU§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-aV§.§_-DM§;
   import §_-ax§.§_-gB§;
   import §_-gM§.Base64;
   import §_-gM§.§_-oq§;
   import §_-jO§.§_-z5§;
   import §_-pm§.§_-gb§;
   import §_-s-§.§_-hQ§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §_-0j§
   {
      
      public static const §_-8r§:String = "StatePlay";
      
      private static const §_-QO§:Number = -10 * 1000;
      
      private static const §_-UR§:Number = 15 * 1000;
       
      
      private var §_-EX§:Boolean = true;
      
      private var §_-25§:Boolean = false;
      
      private var §_-oQ§:Number = -10000.0;
      
      private var §_-5E§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-Av§.§_-c0§();
         §_-B4§.§_-du§(§_-B4§.§_-u0§,§_-4O§.§_-FH§);
         §_-Av§.§_-so§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(true);
         this.§_-vf§();
         §_-MF§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-wC§();
         §_-WQ§.§_-6P§(§_-MF§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-9i§();
         this.§_-wC§();
      }
      
      private function §_-9i§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-25§)
         {
            if(this.§_-oQ§ > §_-UR§)
            {
               this.§_-25§ = true;
               _loc1_ = Math.round(1000 / this.§_-oQ§ * this.§_-5E§);
               if(§_-Ha§.§_-0E§)
               {
                  §_-B4§.§_-du§(§_-B4§.§_-og§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-B4§.§_-du§(§_-B4§.§_-Yf§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-Bc§(param1:Number) : void
      {
         this.§_-oQ§ += param1;
         if(this.§_-oQ§ > 0)
         {
            ++this.§_-5E§;
         }
      }
      
      private function §_-wC§() : void
      {
         this.§_-oQ§ = §_-QO§;
         this.§_-5E§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-WQ§.§_-LM§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-Bc§(param1);
         this.§_-vf§();
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-4O§.§_-FH§;
         var _loc5_:Object = §_-z5§.§_-Eh§(§_-4O§.§_-FH§);
         var _loc6_:int = §_-4r§.getScore();
         var _loc7_:int = §_-4O§.§_-4w§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-B4§.§_-du§(§_-B4§.§_-JW§,_loc4_,_loc6_);
         _loc5_.blocks = §_-3w§.§_-x9§();
         _loc5_.gamePlay = §_-gb§.§_-ls§.§_-Bg§().toString();
         _loc5_.security = this.§_-o6§(_loc4_,_loc5_);
         _loc5_.security2 = this.§_-4X§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-z5§.competition,
            "player":§_-z5§.§_-gt§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(§_-hQ§.encode(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ON§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
         _loc3_.url = §_-q0§.§_-Fa§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-o6§(param1:String, param2:Object) : String
      {
         return §_-gB§.§_-k0§([param1,param2.score,param2.stars,§_-z5§.competition,§_-z5§.§_-z2§.§_-U§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      public function §_-4X§(param1:String, param2:Object) : String
      {
         return §_-gB§.§_-k0§([param1,§_-z5§.§_-z2§.§_-U§,param2.blocks,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-DM§.§_-KR§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-z5§.competition != _loc2_.competition)
               {
                  §_-z5§.competition = _loc2_.competition;
                  §_-z5§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-e0§.showNewHighscore();
            }
         }
      }
      
      private function §_-ON§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function get(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         return §_-8Y§.§_-8r§;
      }
      
      override public function getLoserState() : String
      {
         return §_-jc§.§_-8r§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         if(param3 is §_-FU§)
         {
            if(param1 == §_-Gs§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-oq§.§_-E-§();
            }
            else if(param1 == §_-Gs§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-oq§.§_-4m§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-WQ§.§_-77§();
               break;
            case "PAUSE":
               mNextState = §_-yZ§.§_-8r§;
               break;
            case "RESTART_LEVEL":
               §_-Py§.§_-vF§();
               mNextState = §_-Py§.§_-8r§;
         }
      }
      
      private function §_-vf§() : void
      {
         var _loc1_:int = §_-4r§.getScore();
         §_-MF§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-q0§.§_-AI§.§_-GE§(§_-4O§.§_-FH§);
         §_-MF§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
