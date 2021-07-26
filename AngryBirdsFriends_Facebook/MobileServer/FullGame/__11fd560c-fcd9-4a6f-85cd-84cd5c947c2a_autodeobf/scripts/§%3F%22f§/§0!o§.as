package §?"f§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0!o§ extends EventDispatcher implements §0!+§
   {
      
      protected static const §]#G§:Number = 500;
       
      
      protected var §6#l§:Vector.<MovieClip>;
      
      protected var §!"P§:Vector.<MovieClip>;
      
      protected var §&1§:Boolean = false;
      
      protected var §`5§:Boolean = false;
      
      protected var §-#?§:Boolean = false;
      
      protected var §?!'§:§!Y§;
      
      private var §!#^§:Stage;
      
      public function §0!o§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§6#l§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§!#^§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§!#^§ = param1;
      }
      
      public function get §=#0§() : Boolean
      {
         return this.§-#?§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§6#l§.length = 0;
         this.§!"P§.length = 0;
         this.§-#?§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§-#?§)
         {
            return;
         }
         if(param1 > §]#G§)
         {
            param1 = §]#G§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§-#?§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§`5§ = param1;
         this.§&1§ = true;
      }
      
      public function start(param1:§!Y§) : void
      {
         this.§-#?§ = true;
         this.§&1§ = false;
         this.§?!'§ = param1;
         this.§!"P§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§6#l§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§6#l§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§ !'§(param1,this.§?!'§.startLabel))
         {
            param1.gotoAndStop(this.§?!'§.startLabel);
            this.§!"P§.push(param1);
         }
         else if(this.§ !'§(param1,this.§?!'§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§?!'§.defaultStartLabel);
            this.§!"P§.push(param1);
         }
      }
      
      protected function §%A§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§?!'§.§9_§) == 0)
            {
               return true;
            }
            if(param2 && (this.§?!'§.§8v§ && param1.currentFrameLabel.indexOf(this.§?!'§.§8v§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function § !'§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§!"P§.length)
         {
            this.§!"P§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!"P§.length)
         {
            this.§!"P§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
