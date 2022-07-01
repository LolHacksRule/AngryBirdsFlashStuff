package §,a§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §-L§ extends EventDispatcher implements §!^§
   {
      
      protected static const §'!r§:Number = 500;
       
      
      protected var §'!h§:Vector.<MovieClip>;
      
      protected var §!"'§:Vector.<MovieClip>;
      
      protected var §>!E§:Boolean = false;
      
      protected var §-!4§:Boolean = false;
      
      protected var §%!e§:Boolean = false;
      
      protected var §5#§:§[!d§;
      
      private var §=>§:Stage;
      
      public function §-L§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§'!h§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§=>§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§=>§ = param1;
      }
      
      public function get §51§() : Boolean
      {
         return this.§%!e§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§'!h§.length = 0;
         this.§!"'§.length = 0;
         this.§%!e§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§%!e§)
         {
            return;
         }
         if(param1 > §'!r§)
         {
            param1 = §'!r§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§%!e§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§-!4§ = param1;
         this.§>!E§ = true;
      }
      
      public function start(param1:§[!d§) : void
      {
         this.§%!e§ = true;
         this.§>!E§ = false;
         this.§5#§ = param1;
         this.§!"'§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§'!h§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§4!!§(this.§'!h§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §4!!§(param1:MovieClip) : void
      {
         if(this.§;0§(param1,this.§5#§.startLabel))
         {
            param1.gotoAndStop(this.§5#§.startLabel);
            this.§!"'§.push(param1);
         }
         else if(this.§;0§(param1,this.§5#§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§5#§.defaultStartLabel);
            this.§!"'§.push(param1);
         }
      }
      
      protected function §="'§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§5#§.§1q§) == 0)
            {
               return true;
            }
            if(param2 && (this.§5#§.§?3§ && param1.currentFrameLabel.indexOf(this.§5#§.§?3§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §;0§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§!"'§.length)
         {
            this.§!"'§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!"'§.length)
         {
            this.§!"'§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
