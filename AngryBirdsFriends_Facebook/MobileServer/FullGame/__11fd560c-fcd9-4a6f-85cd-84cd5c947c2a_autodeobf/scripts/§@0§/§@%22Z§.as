package §@0§
{
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §@"Z§
   {
       
      
      private var §+#E§:Boolean;
      
      private var §&n§:§0$2§;
      
      private var §]!=§:DisplayObject;
      
      private var §!8§:Sprite;
      
      private var §]"-§:int;
      
      private var §each §:Number;
      
      private var §6$<§:Number;
      
      private var §0!I§:Number;
      
      private var §1!!§:Number;
      
      private var §+#?§:Boolean;
      
      private var §3"9§:Boolean;
      
      private var §3#h§:Boolean;
      
      public function §@"Z§(param1:String, param2:Sprite, param3:§%!q§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§&n§ = param3.animationManager.getAnimation(param1);
         this.§!8§ = param2;
         this.setPosition(param4,param5);
         this.§6$<§ = param6;
         this.§3#h§ = this.§&n§.animationLengthMilliSeconds > 0;
         this.§+#?§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§+#E§)
         {
            this.§each § += param1;
            if(this.§each § > this.§6$<§ && !this.§3#h§)
            {
               this.§each § = 0;
               ++this.§]"-§;
               this.§!8§.removeChild(this.§]!=§);
               if(this.§]"-§ == this.§&n§.frameCount)
               {
                  if(this.§+#?§)
                  {
                     this.§]"-§ = 0;
                  }
                  else
                  {
                     this.§+#E§ = false;
                  }
               }
            }
            else if(this.§3#h§ && this.§each § > this.§&n§.animationLengthMilliSeconds)
            {
               this.§!8§.removeChild(this.§]!=§);
               this.§each § = 0;
               if(!this.§+#?§)
               {
                  this.§+#E§ = false;
               }
            }
            if(this.§+#E§)
            {
               if(this.§3#h§)
               {
                  this.§]!=§ = this.§&n§.getFrameWithOffset(this.§each §,this.§]!=§);
               }
               else
               {
                  this.§]!=§ = this.§&n§.getFrame(this.§]"-§,this.§]!=§);
               }
               this.§!8§.addChild(this.§]!=§);
               this.§]!=§.x = this.§0!I§;
               this.§]!=§.y = this.§1!!§ - (!!this.§3"9§ ? 0 : this.§]!=§.height / 2);
            }
         }
         return this.§+#E§;
      }
      
      public function reset() : void
      {
         this.§]"-§ = 0;
         this.§each § = 0;
         this.§+#E§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§0!I§ = param1;
         this.§1!!§ = param2;
      }
      
      public function §`#s§(param1:Boolean) : void
      {
         this.§3"9§ = param1;
      }
   }
}
