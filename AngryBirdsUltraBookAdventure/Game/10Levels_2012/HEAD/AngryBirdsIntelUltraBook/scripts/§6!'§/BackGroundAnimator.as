package §6!'§
{
   import flash.display.MovieClip;
   
   public class BackGroundAnimator
   {
       
      
      private var §@_§:MovieClip;
      
      private var §`!a§:uint;
      
      private var §%F§:String;
      
      private var §4!§:Vector.<MovieClip>;
      
      private var §^-§:Number = 41.666666666666664;
      
      private var §,T§:int = 0;
      
      private var §5!c§:Boolean;
      
      private var §-q§:Boolean;
      
      private var §8i§:uint;
      
      public function BackGroundAnimator(background:MovieClip, animPrefix:String, animationsCount:uint = 0, maxSimultanious:uint = 3)
      {
         super();
         this.§@_§ = background;
         this.§%F§ = animPrefix;
         this.§-q§ = true;
         this.§`!a§ = animationsCount;
         this.§8i§ = maxSimultanious > this.§`!a§ ? uint(this.§`!a§) : uint(maxSimultanious);
         this.§4!§ = new Vector.<MovieClip>();
         this.§5!c§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var mc:MovieClip = null;
         for(var i:int = 1; i <= this.§`!a§; i++)
         {
            mc = MovieClip(this.§@_§.getChildByName(this.§%F§ + i));
            mc.gotoAndStop(mc.totalFrames);
         }
      }
      
      public function start() : void
      {
         this.§5!c§ = true;
      }
      
      public function stop() : void
      {
         this.§5!c§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§@_§ = null;
         this.§4!§ = null;
      }
      
      public function run(deltaTime:Number) : int
      {
         var animation:MovieClip = null;
         if(this.§5!c§)
         {
            if(this.§-q§)
            {
               this.§&!Q§();
            }
            this.§,T§ += deltaTime;
            if(this.§,T§ >= this.§^-§)
            {
               for each(animation in this.§4!§)
               {
                  this.§=z§(animation);
               }
               this.§,T§ = 0;
               if(this.§4!§.length == 0)
               {
                  this.§-q§ = true;
               }
            }
         }
         return deltaTime;
      }
      
      private function §&!Q§() : void
      {
         var index:uint = 0;
         var mc:MovieClip = null;
         this.§4!§.length = 0;
         var count:uint = this.§&!6§(1,this.§8i§);
         for(var indexes:Array = []; this.§4!§.length < count; )
         {
            index = this.§&!6§(1,this.§`!a§);
            if(indexes.indexOf(index) == -1)
            {
               mc = MovieClip(this.§@_§.getChildByName(this.§%F§ + index));
               mc.gotoAndStop(1);
               this.§4!§.push(mc);
               indexes.push(index);
            }
         }
         this.§-q§ = false;
      }
      
      private function §&!6§(start:Number, end:Number) : Number
      {
         return Math.floor(start + Math.random() * (end - start));
      }
      
      protected function §=z§(tmc:MovieClip) : void
      {
         var tFrame:int = tmc.currentFrame + 1;
         if(tFrame >= tmc.totalFrames)
         {
            tFrame = tmc.totalFrames;
            this.§01§(tmc);
         }
         tmc.gotoAndStop(tFrame);
      }
      
      protected function §01§(target:MovieClip) : void
      {
         if(this.§4!§.indexOf(target) != -1)
         {
            this.§4!§.splice(this.§4!§.indexOf(target),1);
         }
      }
   }
}
