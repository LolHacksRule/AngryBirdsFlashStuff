package §##x§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §2E§ extends EventDispatcher implements §7!W§
   {
      
      protected static const §]!b§:Number = 500;
       
      
      protected var §"$§:Vector.<MovieClip>;
      
      protected var §="f§:Vector.<MovieClip>;
      
      protected var §2$3§:Boolean = false;
      
      protected var §^"§:Boolean = false;
      
      protected var §?G§:Boolean = false;
      
      protected var §5o§:§7$<§;
      
      private var §6$ §:Stage;
      
      public function §2E§(param1:Vector.<MovieClip>, param2:Stage)
      {
         super();
         this.§"$§ = param1;
         this.stage = param2;
      }
      
      public function get stage() : Stage
      {
         return this.§6$ §;
      }
      
      public function set stage(param1:Stage) : void
      {
         this.§6$ § = param1;
      }
      
      public function get §62§() : Boolean
      {
         return this.§?G§;
      }
      
      public function dispose() : void
      {
         this.stop(false);
         this.§"$§.length = 0;
         this.§="f§.length = 0;
         this.§?G§ = false;
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         if(!this.§?G§)
         {
            return;
         }
         if(param1 > §]!b§)
         {
            param1 = §]!b§;
         }
         this.update(param1);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         if(!this.§?G§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         this.§^"§ = param1;
         this.§2$3§ = true;
      }
      
      public function start(param1:§7$<§) : void
      {
         this.§?G§ = true;
         this.§2$3§ = false;
         this.§5o§ = param1;
         this.§="f§ = new Vector.<MovieClip>();
         var _loc2_:int = this.§"$§.length - 1;
         while(_loc2_ >= 0)
         {
            this.startAnimation(this.§"$§[_loc2_]);
            _loc2_--;
         }
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         if(this.§^5§(param1,this.§5o§.startLabel))
         {
            param1.gotoAndStop(this.§5o§.startLabel);
            this.§="f§.push(param1);
         }
         else if(this.§^5§(param1,this.§5o§.defaultStartLabel))
         {
            param1.gotoAndStop(this.§5o§.defaultStartLabel);
            this.§="f§.push(param1);
         }
      }
      
      protected function §]" §(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         if(param1.currentFrame >= param1.totalFrames)
         {
            return true;
         }
         if(param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel.indexOf(this.§5o§.§0#-§) == 0)
            {
               return true;
            }
            if(param2 && (this.§5o§.§&$D§ && param1.currentFrameLabel.indexOf(this.§5o§.§&$D§) == 0))
            {
               return true;
            }
         }
         return false;
      }
      
      protected function §^5§(param1:MovieClip, param2:String) : Boolean
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
         while(_loc1_ < this.§="f§.length)
         {
            this.§="f§[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§="f§.length)
         {
            this.§="f§[_loc1_].visible = true;
            _loc1_++;
         }
      }
   }
}
