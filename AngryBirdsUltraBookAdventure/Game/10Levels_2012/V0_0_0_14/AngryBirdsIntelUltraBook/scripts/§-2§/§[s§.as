package §-2§
{
   import flash.display.MovieClip;
   
   public class §[s§
   {
       
      
      private var §8!3§:MovieClip;
      
      private var §2x§:uint;
      
      private var §7!M§:String;
      
      private var §8d§:Vector.<MovieClip>;
      
      private var §]U§:Number = 41.666666666666664;
      
      private var §2!e§:int = 0;
      
      private var § !G§:Boolean;
      
      private var §7!o§:Boolean;
      
      private var §%!H§:uint;
      
      public function §[s§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         super();
         this.§8!3§ = param1;
         this.§7!M§ = param2;
         this.§7!o§ = true;
         this.§2x§ = param3;
         this.§%!H§ = param4 > this.§2x§ ? uint(this.§2x§) : uint(param4);
         this.§8d§ = new Vector.<MovieClip>();
         this.§ !G§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§2x§)
         {
            _loc2_ = MovieClip(this.§8!3§.getChildByName(this.§7!M§ + _loc1_));
            _loc2_.gotoAndStop(_loc2_.totalFrames);
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         this.§ !G§ = true;
      }
      
      public function stop() : void
      {
         this.§ !G§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§8!3§ = null;
         this.§8d§ = null;
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         if(this.§ !G§)
         {
            if(this.§7!o§)
            {
               this.§+8§();
            }
            this.§2!e§ += param1;
            if(this.§2!e§ >= this.§]U§)
            {
               for each(_loc2_ in this.§8d§)
               {
                  this.§=!S§(_loc2_);
               }
               this.§2!e§ = 0;
               if(this.§8d§.length == 0)
               {
                  this.§7!o§ = true;
               }
            }
         }
         return param1;
      }
      
      private function §+8§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         this.§8d§.length = 0;
         var _loc1_:uint = this.§8!n§(1,this.§%!H§);
         var _loc2_:Array = [];
         while(this.§8d§.length < _loc1_)
         {
            _loc3_ = this.§8!n§(1,this.§2x§);
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               (_loc4_ = MovieClip(this.§8!3§.getChildByName(this.§7!M§ + _loc3_))).gotoAndStop(1);
               this.§8d§.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         this.§7!o§ = false;
      }
      
      private function §8!n§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §=!S§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
            this.§=!e§(param1);
         }
         param1.gotoAndStop(_loc2_);
      }
      
      protected function §=!e§(param1:MovieClip) : void
      {
         if(this.§8d§.indexOf(param1) != -1)
         {
            this.§8d§.splice(this.§8d§.indexOf(param1),1);
         }
      }
   }
}
