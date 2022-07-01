package §#A§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §8!F§ extends EventDispatcher implements §&%§
   {
      
      protected static const §]g§:Number = 500;
       
      
      protected var §?e§:Vector.<MovieClip>;
      
      protected var §1"4§:Vector.<MovieClip>;
      
      protected var §`!y§:Boolean = false;
      
      protected var §]!6§:Boolean = false;
      
      protected var §7b§:Boolean = false;
      
      protected var §;!n§:§,!;§;
      
      private var §;s§:Stage;
      
      public function §8!F§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§?e§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§;s§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§;s§ = param1;
      }
      
      public function get §;!t§() : Boolean
      {
         return this.§7b§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§?e§.length = 0;
         this.§1"4§.length = 0;
         this.§7b§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§7b§)
         {
            return;
         }
         if(param1 > §]g§)
         {
            param1 = §]g§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§7b§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§]!6§ = param1;
         this.§`!y§ = true;
      }
      
      public function start(param1:§,!;§) : void
      {
         this.§7b§ = true;
         this.§`!y§ = false;
         this.§;!n§ = param1;
         this.§1"4§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§?e§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§@F§(this.§?e§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §@F§(param1:MovieClip) : void
      {
         if(this.§+@§(param1,this.§;!n§.startLabel))
         {
            param1.gotoAndStop(this.§;!n§.startLabel);
            this.§1"4§.push(param1);
         }
         else if(this.§+@§(param1,this.§;!n§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§;!n§.defaultStartLabel);
            this.§1"4§.push(param1);
         }
      }
      
      protected function §@3§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§;!n§.§#!c§) == 0)
            {
               return true;
            }
            if(param2 && (this.§;!n§.§3!;§ && param1.currentFrameLabel.indexOf(this.§;!n§.§3!;§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §+@§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§1"4§.length)
         {
            this.§1"4§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1"4§.length)
         {
            this.§1"4§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
