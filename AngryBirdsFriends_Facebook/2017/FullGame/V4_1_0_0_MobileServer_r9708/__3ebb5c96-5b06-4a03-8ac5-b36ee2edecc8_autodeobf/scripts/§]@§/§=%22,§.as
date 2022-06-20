package §]@§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §=",§ extends EventDispatcher implements §6Z§
   {
      
      protected static const §^#4§:Number = 500;
       
      
      protected var §,#f§:Vector.<MovieClip>;
      
      protected var §-"q§:Vector.<MovieClip>;
      
      protected var §%#i§:Boolean = false;
      
      protected var §8!P§:Boolean = false;
      
      protected var §[6§:Boolean = false;
      
      protected var §,!j§:§8"A§;
      
      private var §^!8§:Stage;
      
      public function §=",§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§,#f§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§^!8§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§^!8§ = param1;
      }
      
      public function get §'!D§() : Boolean
      {
         return this.§[6§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§,#f§.length = 0;
         this.§-"q§.length = 0;
         this.§[6§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§[6§)
         {
            return;
         }
         if(param1 > §^#4§)
         {
            param1 = §^#4§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§[6§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§8!P§ = param1;
         this.§%#i§ = true;
      }
      
      public function start(param1:§8"A§) : void
      {
         this.§[6§ = true;
         this.§%#i§ = false;
         this.§,!j§ = param1;
         this.§-"q§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§,#f§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§,#f§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§&?§(param1,this.§,!j§.startLabel))
         {
            param1.gotoAndStop(this.§,!j§.startLabel);
            this.§-"q§.push(param1);
         }
         else if(this.§&?§(param1,this.§,!j§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§,!j§.defaultStartLabel);
            this.§-"q§.push(param1);
         }
      }
      
      protected function §1#m§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§,!j§.§16§) == 0)
            {
               return true;
            }
            if(param2 && (this.§,!j§.§2#s§ && param1.currentFrameLabel.indexOf(this.§,!j§.§2#s§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §&?§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§-"q§.length)
         {
            this.§-"q§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§-"q§.length)
         {
            this.§-"q§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
