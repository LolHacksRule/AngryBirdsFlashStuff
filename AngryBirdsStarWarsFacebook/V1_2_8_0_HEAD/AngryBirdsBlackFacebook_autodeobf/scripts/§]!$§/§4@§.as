package §]!$§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §4@§ extends EventDispatcher implements §>!!§
   {
      
      protected static const §8!V§:Number = 500;
       
      
      protected var §#<§:Vector.<MovieClip>;
      
      protected var §[I§:Vector.<MovieClip>;
      
      protected var §5!z§:Boolean = false;
      
      protected var §7a§:Boolean = false;
      
      protected var §&#6§:Boolean = false;
      
      protected var §7#§:§6y§;
      
      private var § "u§:Stage;
      
      public function §4@§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§#<§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§ "u§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§ "u§ = param1;
      }
      
      public function get isRunning() : Boolean
      {
         return this.§&#6§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§#<§.length = 0;
         this.§[I§.length = 0;
         this.§&#6§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§&#6§)
         {
            return;
         }
         if(param1 > §8!V§)
         {
            param1 = §8!V§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§&#6§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§7a§ = param1;
         this.§5!z§ = true;
      }
      
      public function start(param1:§6y§) : void
      {
         this.§&#6§ = true;
         this.§5!z§ = false;
         this.§7#§ = param1;
         this.§[I§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§#<§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§#<§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§<1§(param1,this.§7#§.startLabel))
         {
            param1.gotoAndStop(this.§7#§.startLabel);
            this.§[I§.push(param1);
         }
         else if(this.§<1§(param1,this.§7#§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§7#§.defaultStartLabel);
            this.§[I§.push(param1);
         }
      }
      
      protected function §0#H§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§7#§.§%#N§) == 0)
            {
               return true;
            }
            if(param2 && (this.§7#§.§`"i§ && param1.currentFrameLabel.indexOf(this.§7#§.§`"i§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §<1§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§[I§.length)
         {
            this.§[I§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[I§.length)
         {
            this.§[I§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
