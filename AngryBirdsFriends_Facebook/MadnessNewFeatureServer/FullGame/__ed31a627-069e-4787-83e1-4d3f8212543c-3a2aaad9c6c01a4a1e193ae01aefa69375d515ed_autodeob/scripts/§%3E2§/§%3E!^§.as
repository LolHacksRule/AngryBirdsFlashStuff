package §>2§
{
   import §'G§.§;D§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   
   public class §>!^§
   {
       
      
      private var §8#%§:Boolean;
      
      private var §&#N§:§;D§;
      
      private var §^V§:DisplayObject;
      
      private var §0!^§:Sprite;
      
      private var §<!P§:int;
      
      private var §%"<§:Number;
      
      private var §4"W§:Number;
      
      private var §2"&§:Number;
      
      private var §[""§:Number;
      
      private var §;G§:Boolean;
      
      private var §1#-§:Boolean;
      
      private var §@"6§:Boolean;
      
      public function §>!^§(param1:String, param2:Sprite, param3:§!6§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§&#N§ = param3.animationManager.getAnimation(param1);
         this.§0!^§ = param2;
         this.setPosition(param4,param5);
         this.§4"W§ = param6;
         this.§@"6§ = this.§&#N§.animationLengthMilliSeconds > 0;
         this.§;G§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§8#%§)
         {
            this.§%"<§ += param1;
            if(this.§%"<§ > this.§4"W§ && !this.§@"6§)
            {
               this.§%"<§ = 0;
               ++this.§<!P§;
               this.§0!^§.removeChild(this.§^V§);
               if(this.§<!P§ == this.§&#N§.frameCount)
               {
                  if(this.§;G§)
                  {
                     this.§<!P§ = 0;
                  }
                  else
                  {
                     this.§8#%§ = false;
                  }
               }
            }
            else if(this.§@"6§ && this.§%"<§ > this.§&#N§.animationLengthMilliSeconds)
            {
               this.§0!^§.removeChild(this.§^V§);
               this.§%"<§ = 0;
               if(!this.§;G§)
               {
                  this.§8#%§ = false;
               }
            }
            if(this.§8#%§)
            {
               if(this.§@"6§)
               {
                  this.§^V§ = this.§&#N§.getFrameWithOffset(this.§%"<§,this.§^V§);
               }
               else
               {
                  this.§^V§ = this.§&#N§.getFrame(this.§<!P§,this.§^V§);
               }
               this.§0!^§.addChild(this.§^V§);
               this.§^V§.x = this.§2"&§;
               this.§^V§.y = this.§[""§ - (!!this.§1#-§ ? 0 : this.§^V§.height / 2);
            }
         }
         return this.§8#%§;
      }
      
      public function reset() : void
      {
         this.§<!P§ = 0;
         this.§%"<§ = 0;
         this.§8#%§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§2"&§ = param1;
         this.§[""§ = param2;
      }
      
      public function §="<§(param1:Boolean) : void
      {
         this.§1#-§ = param1;
      }
   }
}
