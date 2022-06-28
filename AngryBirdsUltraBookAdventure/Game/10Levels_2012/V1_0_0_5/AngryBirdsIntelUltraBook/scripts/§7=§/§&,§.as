package §7=§
{
   import flash.display.MovieClip;
   
   public class §&,§
   {
       
      
      private var §>b§:MovieClip;
      
      private var §+;§:uint;
      
      private var §`@§:String;
      
      private var §@!p§:Vector.<MovieClip>;
      
      private var §@!I§:Number = 41.666666666666664;
      
      private var §,<§:int = 0;
      
      private var §"!q§:Boolean;
      
      private var §,!r§:Boolean;
      
      private var §@!M§:uint;
      
      public function §&,§(param1:MovieClip, param2:String, param3:uint = 0, param4:uint = 3)
      {
         super();
         this.§>b§ = param1;
         this.§`@§ = param2;
         this.§,!r§ = true;
         this.§+;§ = param3;
         this.§@!M§ = param4 > this.§+;§ ? uint(this.§+;§) : uint(param4);
         this.§@!p§ = new Vector.<MovieClip>();
         this.§"!q§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§+;§)
         {
            _loc2_ = MovieClip(this.§>b§.getChildByName(this.§`@§ + _loc1_));
            _loc2_.gotoAndStop(_loc2_.totalFrames);
            _loc1_++;
         }
      }
      
      public function start() : void
      {
         this.§"!q§ = true;
      }
      
      public function stop() : void
      {
         this.§"!q§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§>b§ = null;
         this.§@!p§ = null;
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         if(this.§"!q§)
         {
            if(this.§,!r§)
            {
               this.§%k§();
            }
            this.§,<§ += param1;
            if(this.§,<§ >= this.§@!I§)
            {
               for each(_loc2_ in this.§@!p§)
               {
                  this.§?!@§(_loc2_);
               }
               this.§,<§ = 0;
               if(this.§@!p§.length == 0)
               {
                  this.§,!r§ = true;
               }
            }
         }
         return param1;
      }
      
      private function §%k§() : void
      {
         var _loc3_:uint = 0;
         var _loc4_:MovieClip = null;
         this.§@!p§.length = 0;
         var _loc1_:uint = this.§'C§(1,this.§@!M§);
         var _loc2_:Array = [];
         while(this.§@!p§.length < _loc1_)
         {
            _loc3_ = this.§'C§(1,this.§+;§);
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               (_loc4_ = MovieClip(this.§>b§.getChildByName(this.§`@§ + _loc3_))).gotoAndStop(1);
               this.§@!p§.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         this.§,!r§ = false;
      }
      
      private function §'C§(param1:Number, param2:Number) : Number
      {
         return Math.floor(param1 + Math.random() * (param2 - param1));
      }
      
      protected function §?!@§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
            this.§'!8§(param1);
         }
         param1.gotoAndStop(_loc2_);
      }
      
      protected function §'!8§(param1:MovieClip) : void
      {
         if(this.§@!p§.indexOf(param1) != -1)
         {
            this.§@!p§.splice(this.§@!p§.indexOf(param1),1);
         }
      }
   }
}
