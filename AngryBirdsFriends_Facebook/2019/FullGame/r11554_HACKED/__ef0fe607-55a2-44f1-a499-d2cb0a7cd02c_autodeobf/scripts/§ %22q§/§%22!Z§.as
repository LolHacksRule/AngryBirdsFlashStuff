package § "q§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §"!Z§ extends EventDispatcher implements §5!?§
   {
      
      protected static const §="O§:Number = 500;
       
      
      protected var §+"k§:Vector.<MovieClip>;
      
      protected var §7;§:Vector.<MovieClip>;
      
      protected var §[$;§:Boolean = false;
      
      protected var §'#s§:Boolean = false;
      
      protected var §6"Q§:Boolean = false;
      
      protected var §`!%§:§@!'§;
      
      private var § #z§:Stage;
      
      public function §"!Z§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§+"k§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§ #z§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§ #z§ = param1;
      }
      
      public function get §="+§() : Boolean
      {
         return this.§6"Q§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§+"k§.length = 0;
         this.§7;§.length = 0;
         this.§6"Q§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§6"Q§)
         {
            return;
         }
         if(param1 > §="O§)
         {
            param1 = §="O§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§6"Q§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§'#s§ = param1;
         this.§[$;§ = true;
      }
      
      public function start(param1:§@!'§) : void
      {
         this.§6"Q§ = true;
         this.§[$;§ = false;
         this.§`!%§ = param1;
         this.§7;§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§+"k§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§+"k§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§@#O§(param1,this.§`!%§.startLabel))
         {
            param1.gotoAndStop(this.§`!%§.startLabel);
            this.§7;§.push(param1);
         }
         else if(this.§@#O§(param1,this.§`!%§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§`!%§.defaultStartLabel);
            this.§7;§.push(param1);
         }
      }
      
      protected function §2!5§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§`!%§.§[#_§) == 0)
            {
               return true;
            }
            if(param2 && (this.§`!%§.§`$A§ && param1.currentFrameLabel.indexOf(this.§`!%§.§`$A§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §@#O§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§7;§.length)
         {
            this.§7;§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§7;§.length)
         {
            this.§7;§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
