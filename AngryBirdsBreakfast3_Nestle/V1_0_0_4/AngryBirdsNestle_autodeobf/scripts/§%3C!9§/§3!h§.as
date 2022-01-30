package §<!9§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §3!h§ extends EventDispatcher implements §0R§
   {
      
      protected static const §5X§:Number = 500;
       
      
      protected var §%""§:Vector.<MovieClip>;
      
      protected var §-!;§:Vector.<MovieClip>;
      
      protected var §1!G§:Boolean = false;
      
      protected var §]U§:Boolean = false;
      
      protected var §'!z§:Boolean = false;
      
      protected var §]C§:§^!o§;
      
      private var §`!"§:Stage;
      
      public function §3!h§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§%""§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§`!"§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§`!"§ = param1;
      }
      
      public function get §6E§() : Boolean
      {
         return this.§'!z§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§%""§.length = 0;
         this.§-!;§.length = 0;
         this.§'!z§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§'!z§)
         {
            return;
         }
         if(param1 > §5X§)
         {
            param1 = §5X§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§'!z§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§]U§ = param1;
         this.§1!G§ = true;
      }
      
      public function start(param1:§^!o§) : void
      {
         this.§'!z§ = true;
         this.§1!G§ = false;
         this.§]C§ = param1;
         this.§-!;§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§%""§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§&8§(this.§%""§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §&8§(param1:MovieClip) : void
      {
         if(this.§+!U§(param1,this.§]C§.startLabel))
         {
            param1.gotoAndStop(this.§]C§.startLabel);
            this.§-!;§.push(param1);
         }
         else if(this.§+!U§(param1,this.§]C§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§]C§.defaultStartLabel);
            this.§-!;§.push(param1);
         }
      }
      
      protected function §%!§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§]C§.§[;§) == 0)
            {
               return true;
            }
            if(param2 && (this.§]C§.§'e§ && param1.currentFrameLabel.indexOf(this.§]C§.§'e§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §+!U§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§-!;§.length)
         {
            this.§-!;§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§-!;§.length)
         {
            this.§-!;§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
