package § !D§
{
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §^"[§.§4!8§;
   
   public class §@#]§
   {
       
      
      private var §!;§:Boolean;
      
      private var §"m§:§4!8§;
      
      private var §3#z§:DisplayObject;
      
      private var §6#O§:Sprite;
      
      private var §["K§:int;
      
      private var §'v§:Number;
      
      private var §1!Z§:Number;
      
      private var §8"v§:Number;
      
      private var §@!p§:Number;
      
      private var §>!M§:Boolean;
      
      private var §2"w§:Boolean;
      
      private var §?N§:Boolean;
      
      public function §@#]§(param1:String, param2:Sprite, param3:§'"u§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§"m§ = param3.animationManager.getAnimation(param1);
         this.§6#O§ = param2;
         this.setPosition(param4,param5);
         this.§1!Z§ = param6;
         this.§?N§ = this.§"m§.animationLengthMilliSeconds > 0;
         this.§>!M§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§!;§)
         {
            this.§'v§ += param1;
            if(this.§'v§ > this.§1!Z§ && !this.§?N§)
            {
               this.§'v§ = 0;
               ++this.§["K§;
               this.§6#O§.removeChild(this.§3#z§);
               if(this.§["K§ == this.§"m§.frameCount)
               {
                  if(this.§>!M§)
                  {
                     this.§["K§ = 0;
                  }
                  else
                  {
                     this.§!;§ = false;
                  }
               }
            }
            else if(this.§?N§ && this.§'v§ > this.§"m§.animationLengthMilliSeconds)
            {
               this.§6#O§.removeChild(this.§3#z§);
               this.§'v§ = 0;
               if(!this.§>!M§)
               {
                  this.§!;§ = false;
               }
            }
            if(this.§!;§)
            {
               if(this.§?N§)
               {
                  this.§3#z§ = this.§"m§.getFrameWithOffset(this.§'v§,this.§3#z§);
               }
               else
               {
                  this.§3#z§ = this.§"m§.getFrame(this.§["K§,this.§3#z§);
               }
               this.§6#O§.addChild(this.§3#z§);
               this.§3#z§.x = this.§8"v§;
               this.§3#z§.y = this.§@!p§ - (!!this.§2"w§ ? 0 : this.§3#z§.height / 2);
            }
         }
         return this.§!;§;
      }
      
      public function reset() : void
      {
         this.§["K§ = 0;
         this.§'v§ = 0;
         this.§!;§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§8"v§ = param1;
         this.§@!p§ = param2;
      }
      
      public function §"#=§(param1:Boolean) : void
      {
         this.§2"w§ = param1;
      }
   }
}
