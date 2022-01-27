package §>"v§
{
   import §,"v§.§7T§;
   import §0" §.§5N§;
   import §7!@§.§5"u§;
   import §7!@§.§6"§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §@!@§ extends §5"u§
   {
      
      public static const §3"?§:Number = 1000 / 60;
      
      private static const §+!w§:int = 180;
      
      private static const §<L§:String = "skip";
      
      private static const §8!d§:String = "start_theme_music";
       
      
      protected var §9i§:Number;
      
      protected var §["C§:int;
      
      protected var §`]§:int;
      
      protected var §?!$§:int;
      
      protected var §-!,§:String = "best";
      
      protected var §`"X§:Vector.<String>;
      
      protected var §]!$§:int;
      
      protected var §;!x§:Boolean;
      
      protected var §1"1§:int;
      
      public function §@!@§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 16.666666666666668)
      {
         super(param1,param2);
         this.§`]§ = 0;
         this.§?!$§ = param1.length;
         this.§9i§ = param3;
         this.§["C§ = 0;
         this.§;!x§ = false;
         this.§?>§();
      }
      
      private function §?>§() : void
      {
         var _loc2_:Array = null;
         var _loc3_:FrameLabel = null;
         var _loc1_:MovieClip = §[!5§[0];
         if(_loc1_ && _loc1_.name == "MovieClip_BackGround")
         {
            this.§`"X§ = new Vector.<String>(0);
            this.§]!$§ = 0;
            _loc2_ = _loc1_.currentLabels;
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.name.indexOf(§<L§) == 0)
               {
                  this.§`"X§.push(_loc3_.name);
               }
            }
            stage.addEventListener(MouseEvent.CLICK,this.§,!3§);
         }
      }
      
      private function §,!3§(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         if(this.§]!$§ >= this.§`"X§.length || param1.stageX > stage.stageWidth - §+!w§)
         {
            return;
         }
         var _loc2_:MovieClip = § !,§[0];
         if(_loc2_)
         {
            _loc3_ = this.§3!B§(_loc2_);
            _loc2_.gotoAndStop(_loc3_);
         }
      }
      
      protected function §3!B§(param1:MovieClip) : int
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:int = param1.currentFrame;
         var _loc3_:int = this.§]!$§;
         while(_loc3_ < this.§`"X§.length)
         {
            _loc4_ = this.§`"X§[_loc3_];
            if((_loc5_ = this.§<!-§(param1,_loc4_)) > _loc2_)
            {
               _loc2_ = _loc5_;
               break;
            }
            ++this.§]!$§;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function §<!-§(param1:MovieClip, param2:String) : int
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
         var _loc2_:MovieClip = § !,§[param1];
         if(§,!T§ && !§"!x§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §<#,§(_loc2_,§,!T§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §>!8§.loop && !§,!T§)
            {
               _loc5_ = §>!8§.defaultStartLabel != "" ? §>!8§.defaultStartLabel : "";
               if((_loc6_ = §>!8§.startLabel != "" ? §>!8§.startLabel : _loc5_) != "")
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
               § !,§.splice(param1,1);
               ++this.§`]§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
         if(!this.§;!x§)
         {
            this.§^@§(_loc2_);
         }
      }
      
      private function §^@§(param1:MovieClip) : void
      {
         var _loc2_:§7T§ = null;
         if(param1.currentFrame >= this.§1"1§ && param1.currentFrame < this.§1"1§ + 5)
         {
            this.§;!x§ = true;
            _loc2_ = §&"1§(§;"@§.singleton).§5"W§();
            _loc2_.§="D§(§5N§.§,"Y§,false,true);
         }
      }
      
      protected function runAnimations() : void
      {
         var _loc1_:int = § !,§.length - 1;
         while(_loc1_ >= 0)
         {
            this.runAnimation(_loc1_);
            _loc1_--;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§["C§ += param1;
         while(this.§["C§ >= this.§9i§)
         {
            this.runAnimations();
            this.§["C§ -= this.§9i§;
            if(this.§`]§ >= this.§?!$§)
            {
               if(stage && §>!8§.stageQuality != "")
               {
                  stage.quality = this.§-!,§;
               }
               §@"x§ = false;
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      override public function start(param1:§6"§) : void
      {
         super.start(param1);
         this.§?!$§ = § !,§.length;
         this.§`]§ = 0;
         if(stage && param1.stageQuality != "")
         {
            this.§-!,§ = stage.quality;
            stage.quality = param1.stageQuality;
         }
         this.§<"j§();
      }
      
      private function §<"j§() : void
      {
         var _loc1_:MovieClip = § !,§[0];
         if(_loc1_)
         {
            this.§1"1§ = this.§<!-§(_loc1_,§8!d§);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §[!5§.length)
         {
            §[!5§[_loc1_].visible = false;
            _loc1_++;
         }
         super.dispose();
      }
   }
}
