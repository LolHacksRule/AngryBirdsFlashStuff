package §>#s§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §?"b§ extends EventDispatcher implements §4#s§
   {
      
      protected static const §3O§:Number = 500;
       
      
      protected var §%7§:Vector.<MovieClip>;
      
      protected var §1#r§:Vector.<MovieClip>;
      
      protected var §3#k§:Boolean = false;
      
      protected var §%!P§:Boolean = false;
      
      protected var §]"4§:Boolean = false;
      
      protected var §"@§:§@^§;
      
      private var §1!f§:Stage;
      
      public function §?"b§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§%7§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§1!f§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§1!f§ = param1;
      }
      
      public function get §'"-§() : Boolean
      {
         return this.§]"4§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§%7§.length = 0;
         this.§1#r§.length = 0;
         this.§]"4§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§]"4§)
         {
            return;
         }
         if(param1 > §3O§)
         {
            param1 = §3O§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§]"4§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§%!P§ = param1;
         this.§3#k§ = true;
      }
      
      public function start(param1:§@^§) : void
      {
         this.§]"4§ = true;
         this.§3#k§ = false;
         this.§"@§ = param1;
         this.§1#r§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§%7§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§%7§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§;$"§(param1,this.§"@§.startLabel))
         {
            param1.gotoAndStop(this.§"@§.startLabel);
            this.§1#r§.push(param1);
         }
         else if(this.§;$"§(param1,this.§"@§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§"@§.defaultStartLabel);
            this.§1#r§.push(param1);
         }
      }
      
      protected function §,"c§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§"@§.§'3§) == 0)
            {
               return true;
            }
            if(param2 && (this.§"@§.§%#f§ && param1.currentFrameLabel.indexOf(this.§"@§.§%#f§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §;$"§(param1:MovieClip, param2:String) : Boolean
      {
         if(param2 == "")
         {
            return false;
         }
         var _loc3_:Array = param1.currentLabels;
         var _loc5_:int = 0;
         var _loc6_:* = _loc3_;
         while(§§hasnext(_loc6_,_loc5_))
         {
            if((§§nextvalue(_loc5_,_loc6_)).name.indexOf(param2) == 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hide() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#r§.length)
         {
            this.§1#r§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#r§.length)
         {
            this.§1#r§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
