package §@"D§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §2"7§ extends EventDispatcher implements §]"8§
   {
      
      protected static const §;"+§:Number = 500;
       
      
      protected var §9R§:Vector.<MovieClip>;
      
      protected var §6`§:Vector.<MovieClip>;
      
      protected var §-!$§:Boolean = false;
      
      protected var §'Q§:Boolean = false;
      
      protected var §&0§:Boolean = false;
      
      protected var §`!§:§#d§;
      
      private var §,""§:Stage;
      
      public function §2"7§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§9R§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§,""§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§,""§ = param1;
      }
      
      public function get §?"E§() : Boolean
      {
         return this.§&0§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§9R§.length = 0;
         this.§6`§.length = 0;
         this.§&0§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§&0§)
         {
            return;
         }
         if(param1 > §;"+§)
         {
            param1 = §;"+§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§&0§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§'Q§ = param1;
         this.§-!$§ = true;
      }
      
      public function start(param1:§#d§, param2:Boolean = true) : void
      {
         this.§&0§ = true;
         this.§-!$§ = false;
         this.§`!§ = param1;
         this.§6`§ = new Vector.<MovieClip>();
         var _loc3_:int = this.§9R§.length - 1;
         while(_loc3_ >= 0)
         {
            this.§&!P§(this.§9R§[_loc3_],param2);
            _loc3_--;
         }
      }
      
      protected function §&!P§(param1:MovieClip, param2:Boolean) : void
      {
         if(this.§#"5§(param1,this.§`!§.startLabel))
         {
            param1.gotoAndStop(this.§`!§.startLabel);
            this.§6`§.push(param1);
         }
         else if(this.§#"5§(param1,this.§`!§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§`!§.defaultStartLabel);
            this.§6`§.push(param1);
         }
         param1.visible = param2;
      }
      
      protected function §-!8§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§`!§.§@">§) == 0)
            {
               return true;
            }
            if(param2 && (this.§`!§.§7!f§ && param1.currentFrameLabel.indexOf(this.§`!§.§7!f§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §#"5§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§6`§.length)
         {
            this.§6`§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6`§.length)
         {
            this.§6`§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
