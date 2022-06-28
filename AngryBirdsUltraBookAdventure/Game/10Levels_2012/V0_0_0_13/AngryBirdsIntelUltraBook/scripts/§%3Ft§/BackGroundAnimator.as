package §?t§
{
   import flash.display.MovieClip;
   
   public class BackGroundAnimator
   {
       
      
      private var §!p§:MovieClip;
      
      private var §;=§:uint;
      
      private var §^!0§:String;
      
      private var §=!Z§:Vector.<MovieClip>;
      
      private var §&!S§:Number = 41.666666666666664;
      
      private var §6!2§:int = 0;
      
      private var §5m§:Boolean;
      
      private var §'!V§:Boolean;
      
      private var §3!W§:uint;
      
      public function BackGroundAnimator(background:MovieClip, animPrefix:String, animationsCount:uint = 0, maxSimultanious:uint = 3)
      {
         super();
         this.§!p§ = background;
         this.§^!0§ = animPrefix;
         this.§'!V§ = true;
         this.§;=§ = animationsCount;
         this.§3!W§ = maxSimultanious > this.§;=§ ? uint(this.§;=§) : uint(maxSimultanious);
         this.§=!Z§ = new Vector.<MovieClip>();
         this.§5m§ = false;
         this.reset();
      }
      
      private function reset() : void
      {
         var mc:MovieClip = null;
         for(var i:int = 1; i <= this.§;=§; i++)
         {
            mc = MovieClip(this.§!p§.getChildByName(this.§^!0§ + i));
            mc.gotoAndStop(mc.totalFrames);
         }
      }
      
      public function start() : void
      {
         this.§5m§ = true;
      }
      
      public function stop() : void
      {
         this.§5m§ = false;
         this.reset();
      }
      
      public function dispose() : void
      {
         this.§!p§ = null;
         this.§=!Z§ = null;
      }
      
      public function run(deltaTime:Number) : int
      {
         var animation:MovieClip = null;
         if(this.§5m§)
         {
            if(this.§'!V§)
            {
               this.§=D§();
            }
            this.§6!2§ += deltaTime;
            if(this.§6!2§ >= this.§&!S§)
            {
               for each(animation in this.§=!Z§)
               {
                  this.§,!3§(animation);
               }
               this.§6!2§ = 0;
               if(this.§=!Z§.length == 0)
               {
                  this.§'!V§ = true;
               }
            }
         }
         return deltaTime;
      }
      
      private function §=D§() : void
      {
         var index:uint = 0;
         var mc:MovieClip = null;
         this.§=!Z§.length = 0;
         var count:uint = this.§`!C§(1,this.§3!W§);
         for(var indexes:Array = []; this.§=!Z§.length < count; )
         {
            index = this.§`!C§(1,this.§;=§);
            if(indexes.indexOf(index) == -1)
            {
               mc = MovieClip(this.§!p§.getChildByName(this.§^!0§ + index));
               mc.gotoAndStop(1);
               this.§=!Z§.push(mc);
               indexes.push(index);
            }
         }
         this.§'!V§ = false;
      }
      
      private function §`!C§(start:Number, end:Number) : Number
      {
         return Math.floor(start + Math.random() * (end - start));
      }
      
      protected function §,!3§(tmc:MovieClip) : void
      {
         var tFrame:int = tmc.currentFrame + 1;
         if(tFrame >= tmc.totalFrames)
         {
            tFrame = tmc.totalFrames;
            this.§9!]§(tmc);
         }
         tmc.gotoAndStop(tFrame);
      }
      
      protected function §9!]§(target:MovieClip) : void
      {
         if(this.§=!Z§.indexOf(target) != -1)
         {
            this.§=!Z§.splice(this.§=!Z§.indexOf(target),1);
         }
      }
   }
}
