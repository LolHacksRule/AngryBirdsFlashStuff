package §+!C§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §7!j§.§8#B§;
   
   public class § "#§
   {
       
      
      private var §5!&§:Boolean;
      
      private var § @§:§8#B§;
      
      private var §""@§:DisplayObject;
      
      private var §9X§:Sprite;
      
      private var §,#d§:int;
      
      private var §`#^§:Number;
      
      private var §+!,§:Number;
      
      private var § 9§:Number;
      
      private var §1#F§:Number;
      
      private var §2#y§:Boolean;
      
      private var §#!I§:Boolean;
      
      private var §[x§:Boolean;
      
      public function § "#§(param1:String, param2:Sprite, param3:§!!S§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§ @§ = param3.animationManager.getAnimation(param1);
         this.§9X§ = param2;
         this.setPosition(param4,param5);
         this.§+!,§ = param6;
         this.§[x§ = this.§ @§.animationLengthMilliSeconds > 0;
         this.§2#y§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§5!&§)
         {
            this.§`#^§ += param1;
            if(this.§`#^§ > this.§+!,§ && !this.§[x§)
            {
               this.§`#^§ = 0;
               ++this.§,#d§;
               this.§9X§.removeChild(this.§""@§);
               if(this.§,#d§ == this.§ @§.frameCount)
               {
                  if(this.§2#y§)
                  {
                     this.§,#d§ = 0;
                  }
                  else
                  {
                     this.§5!&§ = false;
                  }
               }
            }
            else if(this.§[x§ && this.§`#^§ > this.§ @§.animationLengthMilliSeconds)
            {
               this.§9X§.removeChild(this.§""@§);
               this.§`#^§ = 0;
               if(!this.§2#y§)
               {
                  this.§5!&§ = false;
               }
            }
            if(this.§5!&§)
            {
               if(this.§[x§)
               {
                  this.§""@§ = this.§ @§.getFrameWithOffset(this.§`#^§,this.§""@§);
               }
               else
               {
                  this.§""@§ = this.§ @§.getFrame(this.§,#d§,this.§""@§);
               }
               this.§9X§.addChild(this.§""@§);
               this.§""@§.x = this.§ 9§;
               this.§""@§.y = this.§1#F§ - (!!this.§#!I§ ? 0 : this.§""@§.height / 2);
            }
         }
         return this.§5!&§;
      }
      
      public function reset() : void
      {
         this.§,#d§ = 0;
         this.§`#^§ = 0;
         this.§5!&§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§ 9§ = param1;
         this.§1#F§ = param2;
      }
      
      public function §,z§(param1:Boolean) : void
      {
         this.§#!I§ = param1;
      }
   }
}
