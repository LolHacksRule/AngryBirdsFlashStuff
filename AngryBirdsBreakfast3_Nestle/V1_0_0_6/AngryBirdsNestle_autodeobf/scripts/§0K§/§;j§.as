package §0K§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §;j§ extends EventDispatcher implements §7!J§
   {
      
      protected static const §3!y§:Number = 500;
       
      
      protected var §=1§:Vector.<MovieClip>;
      
      protected var §+!§:Vector.<MovieClip>;
      
      protected var §^7§:Boolean = false;
      
      protected var §>"&§:Boolean = false;
      
      protected var §9!-§:Boolean = false;
      
      protected var §!!A§:§&"§;
      
      private var §'!k§:Stage;
      
      public function §;j§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§=1§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§'!k§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§'!k§ = param1;
      }
      
      public function get §"Z§() : Boolean
      {
         return this.§9!-§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§=1§.length = 0;
         this.§+!§.length = 0;
         this.§9!-§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§9!-§)
         {
            return;
         }
         if(param1 > §3!y§)
         {
            param1 = §3!y§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§9!-§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§>"&§ = param1;
         this.§^7§ = true;
      }
      
      public function start(param1:§&"§) : void
      {
         this.§9!-§ = true;
         this.§^7§ = false;
         this.§!!A§ = param1;
         this.§+!§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§=1§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§4!c§(this.§=1§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §4!c§(param1:MovieClip) : void
      {
         if(this.§&"5§(param1,this.§!!A§.startLabel))
         {
            param1.gotoAndStop(this.§!!A§.startLabel);
            this.§+!§.push(param1);
         }
         else if(this.§&"5§(param1,this.§!!A§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§!!A§.defaultStartLabel);
            this.§+!§.push(param1);
         }
      }
      
      protected function §]!J§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§!!A§.§,!%§) == 0)
            {
               return true;
            }
            if(param2 && (this.§!!A§.§<b§ && param1.currentFrameLabel.indexOf(this.§!!A§.§<b§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §&"5§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§+!§.length)
         {
            this.§+!§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!§.length)
         {
            this.§+!§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
