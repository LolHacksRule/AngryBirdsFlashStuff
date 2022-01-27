package §^S§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §=!s§ extends EventDispatcher implements §,W§
   {
      
      protected static const §%!r§:Number = 500;
       
      
      protected var §+!0§:Vector.<MovieClip>;
      
      protected var §=3§:Vector.<MovieClip>;
      
      protected var §#!Y§:Boolean = false;
      
      protected var §#S§:Boolean = false;
      
      protected var §5I§:Boolean = false;
      
      protected var §,!u§:§6u§;
      
      private var §6N§:Stage;
      
      public function §=!s§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§+!0§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§6N§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§6N§ = param1;
      }
      
      public function get §4!,§() : Boolean
      {
         return this.§5I§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§+!0§.length = 0;
         this.§=3§.length = 0;
         this.§5I§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§5I§)
         {
            return;
         }
         if(param1 > §%!r§)
         {
            param1 = §%!r§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§5I§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§#S§ = param1;
         this.§#!Y§ = true;
      }
      
      public function start(param1:§6u§) : void
      {
         this.§5I§ = true;
         this.§#!Y§ = false;
         this.§,!u§ = param1;
         this.§=3§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§+!0§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§+"§(this.§+!0§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §+"§(param1:MovieClip) : void
      {
         if(this.§7!;§(param1,this.§,!u§.startLabel))
         {
            param1.gotoAndStop(this.§,!u§.startLabel);
            this.§=3§.push(param1);
         }
         else if(this.§7!;§(param1,this.§,!u§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§,!u§.defaultStartLabel);
            this.§=3§.push(param1);
         }
      }
      
      protected function §;!x§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§,!u§.§@%§) == 0)
            {
               return true;
            }
            if(param2 && (this.§,!u§.§?s§ && param1.currentFrameLabel.indexOf(this.§,!u§.§?s§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §7!;§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§=3§.length)
         {
            this.§=3§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=3§.length)
         {
            this.§=3§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
