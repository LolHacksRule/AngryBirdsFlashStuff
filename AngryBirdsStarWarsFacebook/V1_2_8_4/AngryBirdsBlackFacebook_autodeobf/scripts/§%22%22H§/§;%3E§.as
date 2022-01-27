package §""H§
{
   import §'"I§.§1-§;
   import §'"I§.§;"F§;
   import §7"P§.§7"u§;
   import §`"1§.§02§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §;>§ extends §;"F§
   {
      
      public static const §!$§:Number = 1000 / 60;
      
      private static const §]"=§:int = 180;
      
      private static const §4";§:String = "skip";
      
      private static const §`"2§:String = "start_theme_music";
       
      
      protected var §9"l§:Number;
      
      protected var §5p§:int;
      
      protected var §#U§:int;
      
      protected var §+!K§:int;
      
      protected var §1"3§:String = "best";
      
      protected var §6!$§:Vector.<String>;
      
      protected var §5h§:int;
      
      protected var §=#0§:Boolean;
      
      protected var §'7§:int;
      
      public function §;>§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 16.666666666666668)
      {
         super(param1,param2);
         this.§#U§ = 0;
         this.§+!K§ = param1.length;
         this.§9"l§ = param3;
         this.§5p§ = 0;
         this.§=#0§ = false;
         this.§0"l§();
      }
      
      private function §0"l§() : void
      {
         var _loc2_:Array = null;
         var _loc3_:FrameLabel = null;
         var _loc1_:MovieClip = §1"q§[0];
         if(_loc1_ && _loc1_.name == "MovieClip_BackGround")
         {
            this.§6!$§ = new Vector.<String>(0);
            this.§5h§ = 0;
            _loc2_ = _loc1_.currentLabels;
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.name.indexOf(§4";§) == 0)
               {
                  this.§6!$§.push(_loc3_.name);
               }
            }
            stage.addEventListener(MouseEvent.CLICK,this.§>!4§);
         }
      }
      
      private function §>!4§(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         if(this.§5h§ >= this.§6!$§.length || param1.stageX > stage.stageWidth - §]"=§)
         {
            return;
         }
         var _loc2_:MovieClip = §"!s§[0];
         if(_loc2_)
         {
            _loc3_ = this.§8+§(_loc2_);
            _loc2_.gotoAndStop(_loc3_);
         }
      }
      
      protected function §8+§(param1:MovieClip) : int
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:int = param1.currentFrame;
         var _loc3_:int = this.§5h§;
         while(_loc3_ < this.§6!$§.length)
         {
            _loc4_ = this.§6!$§[_loc3_];
            if((_loc5_ = this.§5"$§(param1,_loc4_)) > _loc2_)
            {
               _loc2_ = _loc5_;
               break;
            }
            ++this.§5h§;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function §5"$§(param1:MovieClip, param2:String) : int
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
         var _loc2_:MovieClip = §"!s§[param1];
         if(§'Q§ && !§[!Q§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §="m§(_loc2_,§'Q§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §+?§.loop && !§'Q§)
            {
               _loc5_ = §+?§.defaultStartLabel != "" ? §+?§.defaultStartLabel : "";
               if((_loc6_ = §+?§.startLabel != "" ? §+?§.startLabel : _loc5_) != "")
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
               §"!s§.splice(param1,1);
               ++this.§#U§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
         if(!this.§=#0§)
         {
            this.§<!-§(_loc2_);
         }
      }
      
      private function §<!-§(param1:MovieClip) : void
      {
         var _loc2_:§02§ = null;
         if(param1.currentFrame >= this.§'7§ && param1.currentFrame < this.§'7§ + 5)
         {
            this.§=#0§ = true;
            _loc2_ = §throw§(§4"#§.singleton).§8"8§();
            _loc2_.§^!X§(§7"u§.§4!m§,false,true);
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = §"!s§.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§5p§ += param1;
         while(this.§5p§ >= this.§9"l§)
         {
            this.runAnimations();
            this.§5p§ -= this.§9"l§;
            if(this.§#U§ >= this.§+!K§)
            {
               if(stage && §+?§.stageQuality != "")
               {
                  stage.quality = this.§1"3§;
               }
               §+"4§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§1-§) : void
      {
         super.start(param1);
         this.§+!K§ = §"!s§.length;
         this.§#U§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§1"3§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
         this.§1!R§();
      }
      
      private function §1!R§() : void
      {
         var _loc1_:MovieClip = §"!s§[0];
         if(_loc1_)
         {
            this.§'7§ = this.§5"$§(_loc1_,§`"2§);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §1"q§.length)
         {
            §1"q§[_loc1_].visible = false;
            _loc1_++;
         }
         super.dispose();
      }
   }
}
