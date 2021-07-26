package §#g§
{
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   
   public class §!#o§
   {
       
      
      private var §^"+§:Boolean;
      
      private var §#"T§:§7b§;
      
      private var §;#C§:DisplayObject;
      
      private var §&!R§:Sprite;
      
      private var §#K§:int;
      
      private var §3%§:Number;
      
      private var §#"2§:Number;
      
      private var §^$=§:Number;
      
      private var §%!=§:Number;
      
      private var §1#N§:Boolean;
      
      private var §5!Z§:Boolean;
      
      private var §%^§:Boolean;
      
      public function §!#o§(param1:String, param2:Sprite, param3:§8#3§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§#"T§ = param3.animationManager.getAnimation(param1);
         this.§&!R§ = param2;
         this.setPosition(param4,param5);
         this.§#"2§ = param6;
         this.§%^§ = this.§#"T§.animationLengthMilliSeconds > 0;
         this.§1#N§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§^"+§)
         {
            this.§3%§ += param1;
            if(this.§3%§ > this.§#"2§ && !this.§%^§)
            {
               this.§3%§ = 0;
               ++this.§#K§;
               this.§&!R§.removeChild(this.§;#C§);
               if(this.§#K§ == this.§#"T§.frameCount)
               {
                  if(this.§1#N§)
                  {
                     this.§#K§ = 0;
                  }
                  else
                  {
                     this.§^"+§ = false;
                  }
               }
            }
            else if(this.§%^§ && this.§3%§ > this.§#"T§.animationLengthMilliSeconds)
            {
               this.§&!R§.removeChild(this.§;#C§);
               this.§3%§ = 0;
               if(!this.§1#N§)
               {
                  this.§^"+§ = false;
               }
            }
            if(this.§^"+§)
            {
               if(this.§%^§)
               {
                  this.§;#C§ = this.§#"T§.getFrameWithOffset(this.§3%§,this.§;#C§);
               }
               else
               {
                  this.§;#C§ = this.§#"T§.getFrame(this.§#K§,this.§;#C§);
               }
               this.§&!R§.addChild(this.§;#C§);
               this.§;#C§.x = this.§^$=§;
               this.§;#C§.y = this.§%!=§ - (!!this.§5!Z§ ? 0 : this.§;#C§.height / 2);
            }
         }
         return this.§^"+§;
      }
      
      public function reset() : void
      {
         this.§#K§ = 0;
         this.§3%§ = 0;
         this.§^"+§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§^$=§ = param1;
         this.§%!=§ = param2;
      }
      
      public function §2i§(param1:Boolean) : void
      {
         this.§5!Z§ = param1;
      }
   }
}
