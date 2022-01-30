package §!",§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §2B§ extends EventDispatcher implements §,i§
   {
      
      protected static const §8!0§:Number = 500;
       
      
      protected var §6b§:Vector.<MovieClip>;
      
      protected var §!5§:Vector.<MovieClip>;
      
      protected var §;!^§:Boolean = false;
      
      protected var §]!Y§:Boolean = false;
      
      protected var §"j§:Boolean = false;
      
      protected var §'!g§:§7!+§;
      
      private var §9!I§:Stage;
      
      public function §2B§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§6b§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§9!I§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§9!I§ = param1;
      }
      
      public function get §@"0§() : Boolean
      {
         return this.§"j§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§6b§.length = 0;
         this.§!5§.length = 0;
         this.§"j§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§"j§)
         {
            return;
         }
         if(param1 > §8!0§)
         {
            param1 = §8!0§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§"j§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§]!Y§ = param1;
         this.§;!^§ = true;
      }
      
      public function start(param1:§7!+§) : void
      {
         this.§"j§ = true;
         this.§;!^§ = false;
         this.§'!g§ = param1;
         this.§!5§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§6b§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§,!R§(this.§6b§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §,!R§(param1:MovieClip) : void
      {
         if(this.§5"0§(param1,this.§'!g§.startLabel))
         {
            param1.gotoAndStop(this.§'!g§.startLabel);
            this.§!5§.push(param1);
         }
         else if(this.§5"0§(param1,this.§'!g§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§'!g§.defaultStartLabel);
            this.§!5§.push(param1);
         }
      }
      
      protected function §&_§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§'!g§.§=>§) == 0)
            {
               return true;
            }
            if(param2 && (this.§'!g§.§#5§ && param1.currentFrameLabel.indexOf(this.§'!g§.§#5§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §5"0§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§!5§.length)
         {
            this.§!5§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!5§.length)
         {
            this.§!5§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
