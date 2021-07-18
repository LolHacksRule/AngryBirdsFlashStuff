package §52§
{
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §@"§.§`"W§;
   
   public class §&#^§
   {
       
      
      private var §6"v§:Boolean;
      
      private var §"!c§:§`"W§;
      
      private var §-$2§:DisplayObject;
      
      private var §9"a§:Sprite;
      
      private var §-!f§:int;
      
      private var §?"i§:Number;
      
      private var §%Y§:Number;
      
      private var §+o§:Number;
      
      private var §3#h§:Number;
      
      private var §]!x§:Boolean;
      
      private var §!$4§:Boolean;
      
      private var §8#p§:Boolean;
      
      public function §&#^§(param1:String, param2:Sprite, param3:§#!,§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§"!c§ = param3.animationManager.getAnimation(param1);
         this.§9"a§ = param2;
         this.setPosition(param4,param5);
         this.§%Y§ = param6;
         this.§8#p§ = this.§"!c§.animationLengthMilliSeconds > 0;
         this.§]!x§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§6"v§)
         {
            this.§?"i§ += param1;
            if(this.§?"i§ > this.§%Y§ && !this.§8#p§)
            {
               this.§?"i§ = 0;
               ++this.§-!f§;
               this.§9"a§.removeChild(this.§-$2§);
               if(this.§-!f§ == this.§"!c§.frameCount)
               {
                  if(this.§]!x§)
                  {
                     this.§-!f§ = 0;
                  }
                  else
                  {
                     this.§6"v§ = false;
                  }
               }
            }
            else if(this.§8#p§ && this.§?"i§ > this.§"!c§.animationLengthMilliSeconds)
            {
               this.§9"a§.removeChild(this.§-$2§);
               this.§?"i§ = 0;
               if(!this.§]!x§)
               {
                  this.§6"v§ = false;
               }
            }
            if(this.§6"v§)
            {
               if(this.§8#p§)
               {
                  this.§-$2§ = this.§"!c§.getFrameWithOffset(this.§?"i§,this.§-$2§);
               }
               else
               {
                  this.§-$2§ = this.§"!c§.getFrame(this.§-!f§,this.§-$2§);
               }
               this.§9"a§.addChild(this.§-$2§);
               this.§-$2§.x = this.§+o§;
               this.§-$2§.y = this.§3#h§ - (!!this.§!$4§ ? 0 : this.§-$2§.height / 2);
            }
         }
         return this.§6"v§;
      }
      
      public function reset() : void
      {
         this.§-!f§ = 0;
         this.§?"i§ = 0;
         this.§6"v§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§+o§ = param1;
         this.§3#h§ = param2;
      }
      
      public function §-"n§(param1:Boolean) : void
      {
         this.§!$4§ = param1;
      }
   }
}
