package §7!@§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §5"u§ extends EventDispatcher implements §,"R§
   {
      
      protected static const §2" §:Number = 500;
       
      
      protected var §[!5§:Vector.<MovieClip>;
      
      protected var § !,§:Vector.<MovieClip>;
      
      protected var §,!T§:Boolean = false;
      
      protected var §"!x§:Boolean = false;
      
      protected var §@"x§:Boolean = false;
      
      protected var §>!8§:§6"§;
      
      private var §#o§:Stage;
      
      public function §5"u§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§[!5§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§#o§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§#o§ = param1;
      }
      
      public function get isRunning() : Boolean
      {
         return this.§@"x§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§[!5§.length = 0;
         this.§ !,§.length = 0;
         this.§@"x§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§@"x§)
         {
            return;
         }
         if(param1 > §2" §)
         {
            param1 = §2" §;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§@"x§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§"!x§ = param1;
         this.§,!T§ = true;
      }
      
      public function start(param1:§6"§) : void
      {
         this.§@"x§ = true;
         this.§,!T§ = false;
         this.§>!8§ = param1;
         this.§ !,§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§[!5§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§[!5§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§^">§(param1,this.§>!8§.startLabel))
         {
            param1.gotoAndStop(this.§>!8§.startLabel);
            this.§ !,§.push(param1);
         }
         else if(this.§^">§(param1,this.§>!8§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§>!8§.defaultStartLabel);
            this.§ !,§.push(param1);
         }
      }
      
      protected function §<#,§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§>!8§.§>"$§) == 0)
            {
               return true;
            }
            if(param2 && (this.§>!8§.§!"X§ && param1.currentFrameLabel.indexOf(this.§>!8§.§!"X§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §^">§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§ !,§.length)
         {
            this.§ !,§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !,§.length)
         {
            this.§ !,§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
