package §,"T§
{
   import §="2§.§@!a§;
   import §[#+§.§<k§;
   import §]!$§.§4@§;
   import §]!$§.§6y§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §55§ extends §4@§
   {
      
      public static const §#5§:Number = 1000 / 60;
      
      private static const §"#+§:int = 180;
      
      private static const § 6§:String = "skip";
      
      private static const §9!2§:String = "start_theme_music";
       
      
      protected var §'!A§:Number;
      
      protected var §8I§:int;
      
      protected var §^Z§:int;
      
      protected var §6#Z§:int;
      
      protected var §;#'§:String = "best";
      
      protected var §%!O§:Vector.<String>;
      
      protected var §^!x§:int;
      
      protected var §#B§:Boolean;
      
      protected var §3!!§:int;
      
      public function §55§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 16.666666666666668)
      {
         super(param1,param2);
         this.§^Z§ = 0;
         this.§6#Z§ = param1.length;
         this.§'!A§ = param3;
         this.§8I§ = 0;
         this.§#B§ = false;
         this.§2"<§();
      }
      
      private function §2"<§() : void
      {
         var _loc2_:Array = null;
         var _loc3_:FrameLabel = null;
         var _loc1_:MovieClip = §#<§[0];
         if(_loc1_ && _loc1_.name == "MovieClip_BackGround")
         {
            this.§%!O§ = new Vector.<String>(0);
            this.§^!x§ = 0;
            _loc2_ = _loc1_.currentLabels;
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.name.indexOf(§ 6§) == 0)
               {
                  this.§%!O§.push(_loc3_.name);
               }
            }
            stage.addEventListener(MouseEvent.CLICK,this.§2! §);
         }
      }
      
      private function §2! §(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         if(this.§^!x§ >= this.§%!O§.length || param1.stageX > stage.stageWidth - §"#+§)
         {
            return;
         }
         var _loc2_:MovieClip = §[I§[0];
         if(_loc2_)
         {
            _loc3_ = this.§4b§(_loc2_);
            _loc2_.gotoAndStop(_loc3_);
         }
      }
      
      protected function §4b§(param1:MovieClip) : int
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:int = param1.currentFrame;
         var _loc3_:int = this.§^!x§;
         while(_loc3_ < this.§%!O§.length)
         {
            _loc4_ = this.§%!O§[_loc3_];
            if((_loc5_ = this.§-#F§(param1,_loc4_)) > _loc2_)
            {
               _loc2_ = _loc5_;
               break;
            }
            ++this.§^!x§;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function §-#F§(param1:MovieClip, param2:String) : int
      {
         var _loc4_:FrameLabel = null;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               return _loc4_.frame;
            }
         }
         return -1;
      }
      
      protected function runAnimation(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §[I§[param1];
         if(§5!z§ && !§7a§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §0#H§(_loc2_,§5!z§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §7#§.loop && !§5!z§)
            {
               _loc5_ = §7#§.defaultStartLabel != "" ? §7#§.defaultStartLabel : "";
               if((_loc6_ = §7#§.startLabel != "" ? §7#§.startLabel : _loc5_) != "")
               {
                  _loc2_.gotoAndStop(_loc6_);
               }
               else
               {
                  _loc2_.gotoAndStop(1);
               }
            }
            else
            {
               §[I§.splice(param1,1);
               ++this.§^Z§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
         if(!this.§#B§)
         {
            this.§-!<§(_loc2_);
         }
      }
      
      private function §-!<§(param1:MovieClip) : void
      {
         var _loc2_:§@!a§ = null;
         if(param1.currentFrame >= this.§3!!§ && param1.currentFrame < this.§3!!§ + 5)
         {
            this.§#B§ = true;
            _loc2_ = §@!m§(§4#;§.singleton).final();
            _loc2_.§,y§(§<k§.§5"<§,false,true);
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §[I§.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§8I§ += param1;
         while(this.§8I§ >= this.§'!A§)
         {
            this.runAnimations();
            this.§8I§ -= this.§'!A§;
            if(this.§^Z§ >= this.§6#Z§)
            {
               if(stage && §7#§.stageQuality != "")
               {
                  stage.quality = this.§;#'§;
               }
               §&#6§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§6y§) : void
      {
         super.start(param1);
         this.§6#Z§ = §[I§.length;
         this.§^Z§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§;#'§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
         this.§#"4§();
      }
      
      private function §#"4§() : void
      {
         var _loc1_:MovieClip = §[I§[0];
         if(_loc1_)
         {
            this.§3!!§ = this.§-#F§(_loc1_,§9!2§);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §#<§.length)
         {
            §#<§[_loc1_].visible = false;
            _loc1_++;
         }
         super.dispose();
      }
   }
}
