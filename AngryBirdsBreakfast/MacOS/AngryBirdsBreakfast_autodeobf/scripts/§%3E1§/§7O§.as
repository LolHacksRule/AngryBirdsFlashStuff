package §>1§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7O§ extends EventDispatcher implements §;=§
   {
      
      protected static const §&b§:Number = 500;
       
      
      protected var §2Y§:Vector.<MovieClip>;
      
      protected var §?!a§:Vector.<MovieClip>;
      
      protected var §^!4§:Boolean = false;
      
      protected var §-!"§:Boolean = false;
      
      protected var §!D§:Boolean = false;
      
      protected var §=d§:§2B§;
      
      private var §7Y§:Stage;
      
      public function §7O§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§2Y§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§7Y§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§7Y§ = param1;
      }
      
      public function get §`!m§() : Boolean
      {
         return this.§!D§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§2Y§.length = 0;
         this.§?!a§.length = 0;
         this.§!D§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§!D§)
         {
            return;
         }
         if(param1 > §&b§)
         {
            param1 = §&b§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§!D§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§-!"§ = param1;
         this.§^!4§ = true;
      }
      
      public function start(param1:§2B§) : void
      {
         this.§!D§ = true;
         this.§^!4§ = false;
         this.§=d§ = param1;
         this.§?!a§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§2Y§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§!A§(this.§2Y§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §!A§(param1:MovieClip) : void
      {
         if(this.§'!-§(param1,this.§=d§.startLabel))
         {
            param1.gotoAndStop(this.§=d§.startLabel);
            this.§?!a§.push(param1);
         }
         else if(this.§'!-§(param1,this.§=d§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§=d§.defaultStartLabel);
            this.§?!a§.push(param1);
         }
      }
      
      protected function §5t§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§=d§.§'!J§) == 0)
            {
               return true;
            }
            if(param2 && (this.§=d§.§1!p§ && param1.currentFrameLabel.indexOf(this.§=d§.§1!p§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §'!-§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§?!a§.length)
         {
            this.§?!a§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!a§.length)
         {
            this.§?!a§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
