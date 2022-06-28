package §8!;§
{
   import flash.display.MovieClip;
   
   public class §4I§
   {
       
      
      private var §2P§:MovieClip;
      
      private var §%!j§:uint;
      
      private var §[!z§:String;
      
      private var §'D§:Vector.<MovieClip>;
      
      private var §?!j§:Number = 41.666666666666664;
      
      private var §8"§:int = 0;
      
      private var §6o§:Boolean;
      
      private var §0!a§:Boolean;
      
      private var §`!7§:uint;
      
      public function §4I§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         super();
         this.§2P§ = param1;
         this.§[!z§ = param2;
         this.§0!a§ = true;
         this.§%!j§ = param3;
         this.§`!7§ = param4 > this.§%!j§ ? uint(this.§%!j§) : uint(param4);
         this.§'D§ = new Vector.<MovieClip>();
         this.§6o§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§%!j§)
         {
            _loc2_ = MovieClip(this.§2P§.getChildByName(this.§[!z§ + _loc1_));
            _loc2_.gotoAndStop(_loc2_.totalFrames);
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         this.§6o§ = true;
      }
      
      public function stop() : void
      {
         this.§6o§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§2P§ = null;
         this.§'D§ = null;
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         if(this.§6o§)
         {
            if(this.§0!a§)
            {
               this.§,!B§();
            }
            this.§8"§ += param1;
            if(this.§8"§ >= this.§?!j§)
            {
               for each(_loc2_ in this.§'D§)
               {
                  this.§2!#§(_loc2_);
               }
               this.§8"§ = 0;
               if(this.§'D§.length == 0)
               {
                  this.§0!a§ = true;
               }
            }
         }
         return param1;
      }
      
      private function §,!B§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         this.§'D§.length = 0;
         var _loc1_:uint = this.§0T§(1,this.§`!7§);
         var _loc2_:Array = [];
         while(this.§'D§.length < _loc1_)
         {
            _loc3_ = this.§0T§(1,this.§%!j§);
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               (_loc4_ = MovieClip(this.§2P§.getChildByName(this.§[!z§ + _loc3_))).gotoAndStop(1);
               this.§'D§.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         this.§0!a§ = false;
      }
      
      private function §0T§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §2!#§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
            this.§+<§(param1);
         }
         param1.gotoAndStop(_loc2_);
      }
      
      protected function §+<§(param1:MovieClip) : void
      {
         if(this.§'D§.indexOf(param1) != -1)
         {
            this.§'D§.splice(this.§'D§.indexOf(param1),1);
         }
      }
   }
}
