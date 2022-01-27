package §'"I§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §;"F§ extends EventDispatcher implements §9"t§
   {
      
      protected static const §7h§:Number = 500;
       
      
      protected var §1"q§:Vector.<MovieClip>;
      
      protected var §"!s§:Vector.<MovieClip>;
      
      protected var §'Q§:Boolean = false;
      
      protected var §[!Q§:Boolean = false;
      
      protected var §+"4§:Boolean = false;
      
      protected var §+?§:§1-§;
      
      private var §`6§:Stage;
      
      public function §;"F§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§1"q§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§`6§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§`6§ = param1;
      }
      
      public function get isRunning() : Boolean
      {
         return this.§+"4§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§1"q§.length = 0;
         this.§"!s§.length = 0;
         this.§+"4§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§+"4§)
         {
            return;
         }
         if(param1 > §7h§)
         {
            param1 = §7h§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§+"4§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§[!Q§ = param1;
         this.§'Q§ = true;
      }
      
      public function start(param1:§1-§) : void
      {
         this.§+"4§ = true;
         this.§'Q§ = false;
         this.§+?§ = param1;
         this.§"!s§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§1"q§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§1"q§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§2!,§(param1,this.§+?§.startLabel))
         {
            param1.gotoAndStop(this.§+?§.startLabel);
            this.§"!s§.push(param1);
         }
         else if(this.§2!,§(param1,this.§+?§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§+?§.defaultStartLabel);
            this.§"!s§.push(param1);
         }
      }
      
      protected function §="m§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§+?§.§ try§) == 0)
            {
               return true;
            }
            if(param2 && (this.§+?§.§@"D§ && param1.currentFrameLabel.indexOf(this.§+?§.§@"D§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §2!,§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc4_:FrameLabel = null;
         if(param2 == "")
         {
            return false;
         }
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hide() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!s§.length)
         {
            this.§"!s§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!s§.length)
         {
            this.§"!s§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
