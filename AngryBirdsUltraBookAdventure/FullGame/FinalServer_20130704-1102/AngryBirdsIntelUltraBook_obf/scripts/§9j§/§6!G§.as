package §9j§
{
   import flash.display.MovieClip;
   
   public class §6!G§
   {
       
      
      private var §6M§:MovieClip;
      
      private var § 7§:uint;
      
      private var §?'§:String;
      
      private var §0!4§:Vector.<MovieClip>;
      
      private var §&!!§:Number = 41.666666666666664;
      
      private var §@!U§:int = 0;
      
      private var §"G§:Boolean;
      
      private var §@Y§:Boolean;
      
      private var §#!>§:uint;
      
      public function §6!G§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         super();
         this.§6M§ = param1;
         this.§?'§ = param2;
         this.§@Y§ = true;
         this.§ 7§ = param3;
         this.§#!>§ = param4 > this.§ 7§ ? uint(this.§ 7§) : uint(param4);
         this.§0!4§ = new Vector.<MovieClip>();
         this.§"G§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§ 7§)
         {
            _loc2_ = MovieClip(this.§6M§.getChildByName(this.§?'§ + _loc1_));
            _loc2_.gotoAndStop(_loc2_.totalFrames);
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         this.§"G§ = true;
      }
      
      public function stop() : void
      {
         this.§"G§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§6M§ = null;
         this.§0!4§ = null;
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         if(this.§"G§)
         {
            if(this.§@Y§)
            {
               this.§5X§();
            }
            this.§@!U§ += param1;
            if(this.§@!U§ >= this.§&!!§)
            {
               for each(_loc2_ in this.§0!4§)
               {
                  this.§3!F§(_loc2_);
               }
               this.§@!U§ = 0;
               if(this.§0!4§.length == 0)
               {
                  this.§@Y§ = true;
               }
            }
         }
         return param1;
      }
      
      private function §5X§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         this.§0!4§.length = 0;
         var _loc1_:uint = this.§6C§(1,this.§#!>§);
         var _loc2_:Array = [];
         while(this.§0!4§.length < _loc1_)
         {
            _loc3_ = this.§6C§(1,this.§ 7§);
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               (_loc4_ = MovieClip(this.§6M§.getChildByName(this.§?'§ + _loc3_))).gotoAndStop(1);
               this.§0!4§.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         this.§@Y§ = false;
      }
      
      private function §6C§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §3!F§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
            this.§3!H§(param1);
         }
         param1.gotoAndStop(_loc2_);
      }
      
      protected function §3!H§(param1:MovieClip) : void
      {
         if(this.§0!4§.indexOf(param1) != -1)
         {
            this.§0!4§.splice(this.§0!4§.indexOf(param1),1);
         }
      }
   }
}
