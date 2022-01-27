package §0I§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §'X§ extends EventDispatcher implements §6A§
   {
      
      protected static const §0@§:Number = 500;
       
      
      protected var §4P§:Vector.<MovieClip>;
      
      protected var §,!?§:Vector.<MovieClip>;
      
      protected var §8k§:Boolean = false;
      
      protected var §1c§:Boolean = false;
      
      protected var §;!f§:Boolean = false;
      
      protected var §`!j§:§<i§;
      
      private var §,"<§:Stage;
      
      public function §'X§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§4P§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§,"<§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§,"<§ = param1;
      }
      
      public function get §6!3§() : Boolean
      {
         return this.§;!f§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§4P§.length = 0;
         this.§,!?§.length = 0;
         this.§;!f§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§;!f§)
         {
            return;
         }
         if(param1 > §0@§)
         {
            param1 = §0@§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§;!f§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§1c§ = param1;
         this.§8k§ = true;
      }
      
      public function start(param1:§<i§) : void
      {
         this.§;!f§ = true;
         this.§8k§ = false;
         this.§`!j§ = param1;
         this.§,!?§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§4P§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§," §(this.§4P§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function §," §(param1:MovieClip) : void
      {
         if(this.§4!B§(param1,this.§`!j§.startLabel))
         {
            param1.gotoAndStop(this.§`!j§.startLabel);
            this.§,!?§.push(param1);
         }
         else if(this.§4!B§(param1,this.§`!j§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§`!j§.defaultStartLabel);
            this.§,!?§.push(param1);
         }
      }
      
      protected function §;!H§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§`!j§.§0!f§) == 0)
            {
               return true;
            }
            if(param2 && (this.§`!j§.§@!K§ && param1.currentFrameLabel.indexOf(this.§`!j§.§@!K§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §4!B§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§,!?§.length)
         {
            this.§,!?§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!?§.length)
         {
            this.§,!?§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
