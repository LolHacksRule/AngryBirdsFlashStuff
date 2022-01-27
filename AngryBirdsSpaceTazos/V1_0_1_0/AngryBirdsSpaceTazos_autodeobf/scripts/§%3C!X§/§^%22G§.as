package §<!X§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^"G§ extends EventDispatcher implements §09§
   {
      
      protected static const §!n§:Number = 500;
       
      
      protected var §&M§:Vector.<MovieClip>;
      
      protected var §'G§:Vector.<MovieClip>;
      
      protected var §!7§:Boolean = false;
      
      protected var §'g§:Boolean = false;
      
      protected var § else§:Boolean = false;
      
      protected var §0";§:§7C§;
      
      private var §#[§:Stage;
      
      public function §^"G§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§&M§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§#[§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§#[§ = param1;
      }
      
      public function get §=!"§() : Boolean
      {
         return this.§ else§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§&M§.length = 0;
         this.§'G§.length = 0;
         this.§ else§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§ else§)
         {
            return;
         }
         if(param1 > §!n§)
         {
            param1 = §!n§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§ else§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§'g§ = param1;
         this.§!7§ = true;
      }
      
      public function start(param1:§7C§, param2:Boolean = true) : void
      {
         this.§ else§ = true;
         this.§!7§ = false;
         this.§0";§ = param1;
         this.§'G§ = new Vector.<MovieClip>();
         var _loc3_:int = this.§&M§.length - 1;
         while(_loc3_ >= 0)
         {
            this.§7!V§(this.§&M§[_loc3_],param2);
            _loc3_--;
         }
      }
      
      protected function §7!V§(param1:MovieClip, param2:Boolean) : void
      {
         if(this.§&"B§(param1,this.§0";§.startLabel))
         {
            param1.gotoAndStop(this.§0";§.startLabel);
            this.§'G§.push(param1);
         }
         else if(this.§&"B§(param1,this.§0";§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§0";§.defaultStartLabel);
            this.§'G§.push(param1);
         }
         param1.visible = param2;
      }
      
      protected function §]"3§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§0";§.§%!D§) == 0)
            {
               return true;
            }
            if(param2 && (this.§0";§.§>!F§ && param1.currentFrameLabel.indexOf(this.§0";§.§>!F§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §&"B§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§'G§.length)
         {
            this.§'G§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§'G§.length)
         {
            this.§'G§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
