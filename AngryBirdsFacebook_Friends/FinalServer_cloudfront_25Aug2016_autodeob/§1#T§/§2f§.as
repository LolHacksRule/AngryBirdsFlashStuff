package §1#T§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §2f§ extends EventDispatcher implements § #@§
   {
      
      protected static const §+#l§:Number = 500;
       
      
      protected var §;$9§:Vector.<MovieClip>;
      
      protected var §2#g§:Vector.<MovieClip>;
      
      protected var §[2§:Boolean = false;
      
      protected var §2_§:Boolean = false;
      
      protected var §?#H§:Boolean = false;
      
      protected var §<"s§:§ #<§;
      
      private var §>A§:Stage;
      
      public function §2f§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§;$9§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§>A§;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§>A§ = param1;
      }
      
      public function get §!f§() : Boolean
      {
         return this.§?#H§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§;$9§.length = 0;
         this.§2#g§.length = 0;
         this.§?#H§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§?#H§)
         {
            return;
         }
         if(param1 > §+#l§)
         {
            param1 = §+#l§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§?#H§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§2_§ = param1;
         this.§[2§ = true;
      }
      
      public function start(param1:§ #<§) : void
      {
         this.§?#H§ = true;
         this.§[2§ = false;
         this.§<"s§ = param1;
         this.§2#g§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§;$9§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§ #O§(this.§;$9§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function § #O§(param1:MovieClip) : void
      {
         if(this.§["[§(param1,this.§<"s§.startLabel))
         {
            param1.gotoAndStop(this.§<"s§.startLabel);
            this.§2#g§.push(param1);
         }
         else if(this.§["[§(param1,this.§<"s§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§<"s§.defaultStartLabel);
            this.§2#g§.push(param1);
         }
      }
      
      protected function §7$ §(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§<"s§.§!#F§) == 0)
            {
               return true;
            }
            if(param2 && (this.§<"s§.§]!y§ && param1.currentFrameLabel.indexOf(this.§<"s§.§]!y§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §["[§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§2#g§.length)
         {
            this.§2#g§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2#g§.length)
         {
            this.§2#g§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
