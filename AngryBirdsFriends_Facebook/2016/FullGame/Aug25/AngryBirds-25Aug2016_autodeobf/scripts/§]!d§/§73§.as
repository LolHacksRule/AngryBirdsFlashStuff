package §]!d§
{
   import flash.display.MovieClip;
   
   public class §73§
   {
       
      
      private var §]#K§:Boolean = false;
      
      private var §8#a§:§&[§;
      
      private var mClip:MovieClip;
      
      public function §73§(param1:§&[§, param2:MovieClip)
      {
         super();
         this.§8#a§ = param1;
         this.mClip = param2;
         this.mClip.gotoAndStop(1);
      }
      
      function §!f§() : Boolean
      {
         return this.§]#K§;
      }
      
      function play() : void
      {
         this.§]#K§ = true;
         this.mClip.gotoAndPlay(1);
      }
      
      function update(param1:uint) : void
      {
         if(this.§]#K§)
         {
            if(this.mClip.currentFrame == this.mClip.totalFrames)
            {
               this.stop();
            }
         }
      }
      
      function stop() : void
      {
         this.mClip.gotoAndStop(1);
         this.§]#K§ = false;
         this.§8#a§.§+"G§(this);
      }
      
      function dispose() : void
      {
         this.mClip = null;
      }
   }
}
