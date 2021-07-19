package §@3§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §+z§ extends EventDispatcher implements §7g§
   {
      
      protected static const §]?§:Number = 500;
       
      
      protected var §[-§:Vector.<MovieClip>;
      
      protected var §;>§:Vector.<MovieClip>;
      
      protected var §]R§:Boolean = false;
      
      protected var §#5§:Boolean = false;
      
      protected var §3T§:Boolean = false;
      
      protected var §,8§:§]K§;
      
      private var §<!s§:Stage;
      
      public function §+z§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§[-§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§<!s§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§<!s§ = param1;
      }
      
      public function get §&J§() : Boolean
      {
         return this.§3T§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§[-§.length = 0;
         this.§;>§.length = 0;
         this.§3T§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§3T§)
         {
            return;
         }
         if(param1 > §]?§)
         {
            param1 = §]?§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§3T§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§#5§ = param1;
         this.§]R§ = true;
      }
      
      public function start(param1:§]K§) : void
      {
         this.§3T§ = true;
         this.§]R§ = false;
         this.§,8§ = param1;
         this.§;>§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§[-§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§1!v§(this.§[-§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §1!v§(param1:MovieClip) : void
      {
         if(this.§73§(param1,this.§,8§.startLabel))
         {
            param1.gotoAndStop(this.§,8§.startLabel);
            this.§;>§.push(param1);
         }
         else if(this.§73§(param1,this.§,8§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§,8§.defaultStartLabel);
            this.§;>§.push(param1);
         }
      }
      
      protected function §&3§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§,8§.§7!r§) == 0)
            {
               return true;
            }
            if(param2 && (this.§,8§.§1Q§ && param1.currentFrameLabel.indexOf(this.§,8§.§1Q§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §73§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§;>§.length)
         {
            this.§;>§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;>§.length)
         {
            this.§;>§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
