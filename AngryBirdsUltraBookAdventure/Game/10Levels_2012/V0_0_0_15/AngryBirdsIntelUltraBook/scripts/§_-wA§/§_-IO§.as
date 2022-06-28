package §_-wA§
{
   import flash.display.MovieClip;
   
   public class §_-IO§
   {
       
      
      private var §_-54§:MovieClip;
      
      private var §_-q6§:uint;
      
      private var §_-08p§:String;
      
      private var §_-9q§:Vector.<MovieClip>;
      
      private var §_-0CO§:Number = 41.666666666666664;
      
      private var §_-cc§:int = 0;
      
      private var §_-00b§:Boolean;
      
      private var §_-tK§:Boolean;
      
      private var §_-040§:uint;
      
      public function §_-IO§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         super();
         this.§_-54§ = param1;
         this.§_-08p§ = param2;
         this.§_-tK§ = true;
         this.§_-q6§ = param3;
         this.§_-040§ = param4 > this.§_-q6§ ? uint(this.§_-q6§) : uint(param4);
         this.§_-9q§ = new Vector.<MovieClip>();
         this.§_-00b§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§_-q6§)
         {
            _loc2_ = MovieClip(this.§_-54§.getChildByName(this.§_-08p§ + _loc1_));
            _loc2_.gotoAndStop(_loc2_.totalFrames);
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         this.§_-00b§ = true;
      }
      
      public function stop() : void
      {
         this.§_-00b§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§_-54§ = null;
         this.§_-9q§ = null;
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         if(this.§_-00b§)
         {
            if(this.§_-tK§)
            {
               this.§_-Lt§();
            }
            this.§_-cc§ += param1;
            if(this.§_-cc§ >= this.§_-0CO§)
            {
               for each(_loc2_ in this.§_-9q§)
               {
                  this.§_-0Ez§(_loc2_);
               }
               this.§_-cc§ = 0;
               if(this.§_-9q§.length == 0)
               {
                  this.§_-tK§ = true;
               }
            }
         }
         return param1;
      }
      
      private function §_-Lt§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         this.§_-9q§.length = 0;
         var _loc1_:uint = this.§_-GB§(1,this.§_-040§);
         var _loc2_:Array = [];
         while(this.§_-9q§.length < _loc1_)
         {
            _loc3_ = this.§_-GB§(1,this.§_-q6§);
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               (_loc4_ = MovieClip(this.§_-54§.getChildByName(this.§_-08p§ + _loc3_))).gotoAndStop(1);
               this.§_-9q§.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         this.§_-tK§ = false;
      }
      
      private function §_-GB§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §_-0Ez§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
            this.§_-11§(param1);
         }
         param1.gotoAndStop(_loc2_);
      }
      
      protected function §_-11§(param1:MovieClip) : void
      {
         if(this.§_-9q§.indexOf(param1) != -1)
         {
            this.§_-9q§.splice(this.§_-9q§.indexOf(param1),1);
         }
      }
   }
}
