package §0!2§
{
   import §#S§.§-$§;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   
   public class §2"0§
   {
       
      
      private var §0!Z§:Boolean;
      
      private var §8"H§:§-$§;
      
      private var §1e§:§'!=§;
      
      private var §use §:Sprite;
      
      private var §6r§:int;
      
      private var §=!t§:Number;
      
      private var §3"=§:Number;
      
      private var §+S§:Number;
      
      private var §;!Y§:Number;
      
      private var §1N§:Boolean;
      
      private var § 4§:Boolean;
      
      public function §2"0§(param1:String, param2:Sprite, param3:§5"L§, param4:Number, param5:Number, param6:Number, param7:Boolean = false)
      {
         super();
         this.§8"H§ = param3.animationManager.getAnimation(param1);
         this.§use § = param2;
         this.setPosition(param4,param5);
         this.§3"=§ = param6;
         this.§1N§ = param7;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§0!Z§)
         {
            this.§=!t§ += param1;
            if(this.§=!t§ > this.§3"=§)
            {
               this.§=!t§ = 0;
               ++this.§6r§;
               this.§use §.removeChild(this.§1e§);
               if(this.§1N§ && this.§6r§ == this.§8"H§.getFrameCount())
               {
                  this.§6r§ = 0;
               }
               if(this.§6r§ == this.§8"H§.getFrameCount())
               {
                  this.§0!Z§ = false;
               }
               else
               {
                  this.§1e§ = new §'!=§(this.§8"H§.getFrame(this.§6r§).texture);
                  this.§use §.addChild(this.§1e§);
                  this.§1e§.x = this.§+S§ - this.§1e§.width / 2;
                  this.§1e§.y = this.§;!Y§ - (!!this.§ 4§ ? this.§1e§.height / 2 : this.§1e§.height);
               }
            }
         }
         return this.§0!Z§;
      }
      
      public function reset() : void
      {
         this.§6r§ = 0;
         this.§=!t§ = 0;
         this.§0!Z§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§+S§ = param1;
         this.§;!Y§ = param2;
      }
      
      public function §[N§(param1:Boolean) : void
      {
         this.§ 4§ = param1;
      }
   }
}
