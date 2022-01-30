package §]'§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §<!-§ extends EventDispatcher implements §?!?§
   {
      
      protected static const §<!g§:Number = 500;
       
      
      protected var §#!g§:Vector.<MovieClip>;
      
      protected var §[!u§:Vector.<MovieClip>;
      
      protected var §9!#§:Boolean = false;
      
      protected var §3!N§:Boolean = false;
      
      protected var §<n§:Boolean = false;
      
      protected var §+M§:§'"+§;
      
      private var §`!c§:Stage;
      
      public function §<!-§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§#!g§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§`!c§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§`!c§ = param1;
      }
      
      public function get §>+§() : Boolean
      {
         return this.§<n§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§#!g§.length = 0;
         this.§[!u§.length = 0;
         this.§<n§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§<n§)
         {
            return;
         }
         if(param1 > §<!g§)
         {
            param1 = §<!g§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§<n§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§3!N§ = param1;
         this.§9!#§ = true;
      }
      
      public function start(param1:§'"+§) : void
      {
         this.§<n§ = true;
         this.§9!#§ = false;
         this.§+M§ = param1;
         this.§[!u§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§#!g§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§@j§(this.§#!g§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §@j§(param1:MovieClip) : void
      {
         if(this.§[R§(param1,this.§+M§.startLabel))
         {
            param1.gotoAndStop(this.§+M§.startLabel);
            this.§[!u§.push(param1);
         }
         else if(this.§[R§(param1,this.§+M§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§+M§.defaultStartLabel);
            this.§[!u§.push(param1);
         }
      }
      
      protected function §3%§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§+M§.§%§) == 0)
            {
               return true;
            }
            if(param2 && (this.§+M§.§9!M§ && param1.currentFrameLabel.indexOf(this.§+M§.§9!M§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §[R§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§[!u§.length)
         {
            this.§[!u§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!u§.length)
         {
            this.§[!u§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
