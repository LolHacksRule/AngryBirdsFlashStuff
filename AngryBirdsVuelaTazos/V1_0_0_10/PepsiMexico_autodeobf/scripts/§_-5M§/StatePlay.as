package §_-5M§
{
   import §_-2t§.§_-S-§;
   import §_-3P§.§_-dN§;
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-Fy§;
   import §_-HJ§.§_-cL§;
   import §_-Hn§.§_-gJ§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-hE§.§_-Rv§;
   import §_-oZ§.§_-JH§;
   import §_-ot§.Base64;
   import §_-ot§.§_-UQ§;
   import §_-r5§.§_-mU§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §_-Bl§
   {
      
      public static const §_-7J§:String = "StatePlay";
      
      private static const §_-Vk§:Number = -10 * 1000;
      
      private static const §_-LG§:Number = 15 * 1000;
       
      
      private var §_-uA§:Boolean = true;
      
      private var §_-rC§:Boolean = false;
      
      private var §_-0L§:Number = -10000.0;
      
      private var §_-Oq§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-JH§.§_-YQ§();
         §_-cL§.§_-JT§(§_-cL§.§_-Bd§,§_-dN§.§_-fy§);
         §_-JH§.§_-A3§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         this.§_-Dv§();
         §_-wB§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-UF§();
         §_-Rv§.§_-0K§(§_-wB§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-wJ§();
         this.§_-UF§();
      }
      
      private function §_-wJ§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-rC§)
         {
            if(this.§_-0L§ > §_-LG§)
            {
               this.§_-rC§ = true;
               _loc1_ = Math.round(1000 / this.§_-0L§ * this.§_-Oq§);
               if(§_-H4§.§_-OR§)
               {
                  §_-cL§.§_-JT§(§_-cL§.§_-Wu§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-cL§.§_-JT§(§_-cL§.§_-5d§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-cI§(param1:Number) : void
      {
         this.§_-0L§ += param1;
         if(this.§_-0L§ > 0)
         {
            ++this.§_-Oq§;
         }
      }
      
      private function §_-UF§() : void
      {
         this.§_-0L§ = §_-Vk§;
         this.§_-Oq§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-Rv§.§_-eu§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-cI§(param1);
         this.§_-Dv§();
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-dN§.§_-fy§;
         var _loc5_:Object = §_-gJ§.§_-Tc§(§_-dN§.§_-fy§);
         var _loc6_:int = §_-QO§.getScore();
         var _loc7_:int = §_-dN§.§_-fB§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-cL§.§_-JT§(§_-cL§.§_-7y§,_loc4_,_loc6_);
         §_-gJ§.competition = 0;
         _loc5_.security = this.§_-5g§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-gJ§.competition,
            "player":§_-gJ§.§_-Fb§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qk§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
         _loc3_.url = §_-5e§.§_-QQ§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-5g§(param1:String, param2:Object) : String
      {
         return §_-mU§.§_-CK§([param1,param2.score,param2.stars,§_-gJ§.competition,§_-gJ§.§_-RR§.§_-UJ§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-S-§.§_-d1§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-gJ§.competition != _loc2_.competition)
               {
                  §_-gJ§.competition = _loc2_.competition;
                  §_-gJ§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-6B§.showNewHighscore();
            }
         }
      }
      
      private function §_-qk§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         if(§_-2N§.§_-iP§.mLevelObjects.mMightyEagleAdded)
         {
            return §_-u0§.§_-7J§;
         }
         return §_-mr§.§_-7J§;
      }
      
      override public function getLoserState() : String
      {
         return §_-TK§.§_-7J§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         if(param3 is §_-Fy§)
         {
            if(param1 == §_-Jb§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-UQ§.§_-qw§();
            }
            else if(param1 == §_-Jb§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-UQ§.§_-nd§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-Rv§.§_-DT§();
               break;
            case "PAUSE":
               mNextState = §_-0j§.§_-7J§;
               break;
            case "RESTART_LEVEL":
               §_-G§.§_-pN§();
               mNextState = §_-G§.§_-7J§;
         }
      }
      
      private function §_-Dv§() : void
      {
         var _loc1_:int = §_-QO§.getScore();
         §_-wB§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-5e§.§_-Yn§.§_-wC§(§_-dN§.§_-fy§);
         §_-wB§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
