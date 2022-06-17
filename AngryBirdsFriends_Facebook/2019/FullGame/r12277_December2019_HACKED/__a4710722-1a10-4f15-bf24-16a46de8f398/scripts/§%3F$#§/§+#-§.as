package §?$#§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §9#M§.§,`§;
   
   public class §+#-§
   {
       
      
      private var §9"P§:Boolean;
      
      private var §&"J§:§,`§;
      
      private var §""9§:DisplayObject;
      
      private var §!#^§:Sprite;
      
      private var §8!#§:int;
      
      private var §7$;§:Number;
      
      private var §+#9§:Number;
      
      private var §6"C§:Number;
      
      private var §=!M§:Number;
      
      private var §^#W§:Boolean;
      
      private var §7$C§:Boolean;
      
      private var §7!]§:Boolean;
      
      public function §+#-§(param1:String, param2:Sprite, param3:§<d§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§&"J§ = param3.animationManager.getAnimation(param1);
         this.§!#^§ = param2;
         this.setPosition(param4,param5);
         this.§+#9§ = param6;
         this.§7!]§ = this.§&"J§.animationLengthMilliSeconds > 0;
         this.§^#W§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§9"P§)
         {
            this.§7$;§ += param1;
            if(this.§7$;§ > this.§+#9§ && !this.§7!]§)
            {
               this.§7$;§ = 0;
               ++this.§8!#§;
               this.§!#^§.removeChild(this.§""9§);
               if(this.§8!#§ == this.§&"J§.frameCount)
               {
                  if(this.§^#W§)
                  {
                     this.§8!#§ = 0;
                  }
                  else
                  {
                     this.§9"P§ = false;
                  }
               }
            }
            else if(this.§7!]§ && this.§7$;§ > this.§&"J§.animationLengthMilliSeconds)
            {
               this.§!#^§.removeChild(this.§""9§);
               this.§7$;§ = 0;
               if(!this.§^#W§)
               {
                  this.§9"P§ = false;
               }
            }
            if(this.§9"P§)
            {
               if(this.§7!]§)
               {
                  this.§""9§ = this.§&"J§.getFrameWithOffset(this.§7$;§,this.§""9§);
               }
               else
               {
                  this.§""9§ = this.§&"J§.getFrame(this.§8!#§,this.§""9§);
               }
               this.§!#^§.addChild(this.§""9§);
               this.§""9§.x = this.§6"C§;
               this.§""9§.y = this.§=!M§ - (!!this.§7$C§ ? 0 : this.§""9§.height / 2);
            }
         }
         return this.§9"P§;
      }
      
      public function reset() : void
      {
         this.§8!#§ = 0;
         this.§7$;§ = 0;
         this.§9"P§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§6"C§ = param1;
         this.§=!M§ = param2;
      }
      
      public function §&#6§(param1:Boolean) : void
      {
         this.§7$C§ = param1;
      }
   }
}
