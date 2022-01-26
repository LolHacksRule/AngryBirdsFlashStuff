package §_-8§
{
   import §_-2z§.§_-rz§;
   import §_-5Y§.§_-Fy§;
   import §_-5a§.§_-Gn§;
   import §_-6n§.§_-5z§;
   import §_-9C§.§_-6O§;
   import §_-Eo§.Base64;
   import §_-Eo§.§_-Wt§;
   import §_-Fo§.§_-fT§;
   import §_-Jx§.§_-Ao§;
   import §_-M0§.§_-u4§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-eb§.§_-lk§;
   import §_-fI§.§_-BI§;
   import §_-hf§.§_-6o§;
   import §_-mc§.§_-9j§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class StatePlay extends §_-26§
   {
      
      public static const §_-7m§:String = "StatePlay";
      
      private static const §_-8l§:Number = -10 * 1000;
      
      private static const §_-oo§:Number = 15 * 1000;
       
      
      private var §_-4C§:Boolean = true;
      
      private var §_-el§:Boolean = false;
      
      private var §_-PD§:Number = -10000.0;
      
      private var §_-n6§:int = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelPlay[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §_-5z§.§_-i-§();
         §_-9j§.§_-Ej§(§_-9j§.§_-Ie§,§_-HB§.§_-Z-§);
         §_-5z§.§_-rp§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(true);
         this.§_-ow§();
         §_-Ih§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         this.§_-ro§();
         §_-lk§.§_-Rb§(§_-Ih§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-6z§();
         this.§_-ro§();
      }
      
      private function §_-6z§() : void
      {
         var _loc1_:int = 0;
         if(!this.§_-el§)
         {
            if(this.§_-PD§ > §_-oo§)
            {
               this.§_-el§ = true;
               _loc1_ = Math.round(1000 / this.§_-PD§ * this.§_-n6§);
               if(§_-BI§.§_-Hp§)
               {
                  §_-9j§.§_-Ej§(§_-9j§.§_-tj§,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §_-9j§.§_-Ej§(§_-9j§.§super§,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §_-St§(param1:Number) : void
      {
         this.§_-PD§ += param1;
         if(this.§_-PD§ > 0)
         {
            ++this.§_-n6§;
         }
      }
      
      private function §_-ro§() : void
      {
         this.§_-PD§ = §_-8l§;
         this.§_-n6§ = 0;
      }
      
      override public function run(param1:Number) : int
      {
         if(§_-lk§.§_-AN§)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-St§(param1);
         this.§_-ow§();
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override protected function levelCompleted() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §_-HB§.§_-Z-§;
         var _loc5_:Object = §_-Gn§.§_-0Y§(§_-HB§.§_-Z-§);
         var _loc6_:int = §_-UN§.getScore();
         var _loc7_:int = §_-HB§.§_-1m§(_loc4_,_loc6_);
         _loc5_.stars = _loc7_;
         _loc5_.score = _loc6_;
         §_-9j§.§_-Ej§(§_-9j§.§ each§,_loc4_,_loc6_);
         §_-Gn§.competition = 0;
         _loc5_.blocks = §_-Fy§.§_-O7§();
         _loc5_.gamePlay = §_-u4§.§_-40§.§_-y§().toString();
         _loc5_.security = this.§_-fr§(_loc4_,_loc5_);
         _loc5_.security2 = this.§_-Zv§(_loc4_,_loc5_);
         var _loc9_:Object = {
            "type":"updateLevelProfile",
            "competition":§_-Gn§.competition,
            "player":§_-Gn§.§_-B1§,
            "levelProfile":_loc5_
         };
         _loc3_.data = "json=" + Base64.encode(§_-rz§.encode(_loc9_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-t-§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
         _loc3_.url = §_-Tj§.§_-4w§;
         _loc2_.load(_loc3_);
      }
      
      public function §_-fr§(param1:String, param2:Object) : String
      {
         return §_-fT§.§_-Kw§([param1,param2.score,param2.stars,§_-Gn§.competition,§_-Gn§.§_-Yd§.§_-P0§,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      public function §_-Zv§(param1:String, param2:Object) : String
      {
         return §_-fT§.§_-Kw§([param1,§_-Gn§.§_-Yd§.§_-P0§,param2.blocks,"dZx4QZwrL1bcKaRXLSDaAwSlq5uE1krj"].join("|"));
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-6O§.§_-Mi§((param1.currentTarget as URLLoader).data);
         if(_loc2_)
         {
            if(_loc2_.competition)
            {
               if(§_-Gn§.competition != _loc2_.competition)
               {
                  §_-Gn§.competition = _loc2_.competition;
                  §_-Gn§.levelProfile = _loc2_.levelProfile;
               }
            }
         }
         if(_loc2_)
         {
            if(_loc2_.isHighScore)
            {
               §_-5D§.showNewHighscore();
            }
         }
      }
      
      private function §_-t-§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
      }
      
      override public function getVictoryState() : String
      {
         return §_-xH§.§_-7m§;
      }
      
      override public function getLoserState() : String
      {
         return §_-Cr§.§_-7m§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         if(param3 is §_-6o§)
         {
            if(param1 == §_-Ao§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §_-Wt§.§_-5t§();
            }
            else if(param1 == §_-Ao§.LISTENER_EVENT_MOUSE_UP)
            {
               §_-Wt§.§_-Wa§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §_-lk§.§_-Xu§();
               break;
            case "PAUSE":
               mNextState = §_-1V§.§_-7m§;
               break;
            case "RESTART_LEVEL":
               §_-OU§.§for §();
               mNextState = §_-OU§.§_-7m§;
         }
      }
      
      private function §_-ow§() : void
      {
         var _loc1_:int = §_-UN§.getScore();
         §_-Ih§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = §_-Tj§.§_-7q§.§_-nT§(§_-HB§.§_-Z-§);
         §_-Ih§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
   }
}
