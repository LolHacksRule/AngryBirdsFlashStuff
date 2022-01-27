package §]B§
{
   import flash.display.MovieClip;
   
   public class BackGroundAnimator
   {
       
      
      private var §#%§:MovieClip;
      
      private var §17§:uint;
      
      private var §"X§:String;
      
      private var §-m§:Vector.<MovieClip>;
      
      private var §,!1§:Number = 41.666666666666664;
      
      private var §4c§:int = 0;
      
      private var §'U§:Boolean;
      
      private var §2!k§:Boolean;
      
      private var §!r§:uint;
      
      public function BackGroundAnimator(background:MovieClip, animPrefix:String, animationsCount:uint = 0, maxSimultanious:uint = 3)
      {
         super();
         this.§#%§ = background;
         this.§"X§ = animPrefix;
         this.§2!k§ = true;
         this.§17§ = animationsCount;
         this.§!r§ = maxSimultanious > this.§17§ ? uint(this.§17§) : uint(maxSimultanious);
         this.§-m§ = new Vector.<MovieClip>();
         this.§'U§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var mc:MovieClip = null;
         for(var i:int = 1; i <= this.§17§; i++)
         {
            mc = MovieClip(this.§#%§.getChildByName(this.§"X§ + i));
            mc.gotoAndStop(mc.totalFrames);
         }
      }
      
      public function start() : void
      {
         this.§'U§ = true;
      }
      
      public function stop() : void
      {
         this.§'U§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§#%§ = null;
         this.§-m§ = null;
      }
      
      public function run(deltaTime:Number) : int
      {
         var animation:MovieClip = null;
         if(this.§'U§)
         {
            if(this.§2!k§)
            {
               this.§4!a§();
            }
            this.§4c§ += deltaTime;
            if(this.§4c§ >= this.§,!1§)
            {
               for each(animation in this.§-m§)
               {
                  this.§0p§(animation);
               }
               this.§4c§ = 0;
               if(this.§-m§.length == 0)
               {
                  this.§2!k§ = true;
               }
            }
         }
         return deltaTime;
      }
      
      private function §4!a§() : void
      {
         var index:uint = 0;
         var mc:MovieClip = null;
         this.§-m§.length = 0;
         var count:uint = this.§"!L§(1,this.§!r§);
         for(var indexes:Array = []; this.§-m§.length < count; )
         {
            index = this.§"!L§(1,this.§17§);
            if(indexes.indexOf(index) == -1)
            {
               mc = MovieClip(this.§#%§.getChildByName(this.§"X§ + index));
               mc.gotoAndStop(1);
               this.§-m§.push(mc);
               indexes.push(index);
            }
         }
         this.§2!k§ = false;
      }
      
      private function §"!L§(start:Number, end:Number) : Number
      {
         return Math.floor(start + Math.random() * (end - start));
      }
      
      protected function §0p§(tmc:MovieClip) : void
      {
         var tFrame:int = tmc.currentFrame + 1;
         if(tFrame >= tmc.totalFrames)
         {
            tFrame = tmc.totalFrames;
            this.§<!@§(tmc);
         }
         tmc.gotoAndStop(tFrame);
      }
      
      protected function §<!@§(target:MovieClip) : void
      {
         if(this.§-m§.indexOf(target) != -1)
         {
            this.§-m§.splice(this.§-m§.indexOf(target),1);
         }
      }
   }
}
