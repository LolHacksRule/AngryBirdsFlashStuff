package §?"Q§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §74§ extends EventDispatcher implements §5"@§
   {
      
      protected static const §-"'§:Number = 500;
       
      
      protected var §7#c§:Vector.<MovieClip>;
      
      protected var §1p§:Vector.<MovieClip>;
      
      protected var §[3§:Boolean = false;
      
      protected var §6!u§:Boolean = false;
      
      protected var §2!h§:Boolean = false;
      
      protected var §%#V§:§2!Z§;
      
      private var §3"K§:Stage;
      
      public function §74§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§7#c§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§3"K§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§3"K§ = param1;
      }
      
      public function get §!!A§() : Boolean
      {
         return this.§2!h§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§7#c§.length = 0;
         this.§1p§.length = 0;
         this.§2!h§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§2!h§)
         {
            return;
         }
         if(param1 > §-"'§)
         {
            param1 = §-"'§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§2!h§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§6!u§ = param1;
         this.§[3§ = true;
      }
      
      public function start(param1:§2!Z§) : void
      {
         this.§2!h§ = true;
         this.§[3§ = false;
         this.§%#V§ = param1;
         this.§1p§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§7#c§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§7#c§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§=h§(param1,this.§%#V§.startLabel))
         {
            param1.gotoAndStop(this.§%#V§.startLabel);
            this.§1p§.push(param1);
         }
         else if(this.§=h§(param1,this.§%#V§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§%#V§.defaultStartLabel);
            this.§1p§.push(param1);
         }
      }
      
      protected function §2"3§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§%#V§.§5";§) == 0)
            {
               return true;
            }
            if(param2 && (this.§%#V§.§1$"§ && param1.currentFrameLabel.indexOf(this.§%#V§.§1$"§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §=h§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§1p§.length)
         {
            this.§1p§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1p§.length)
         {
            this.§1p§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
