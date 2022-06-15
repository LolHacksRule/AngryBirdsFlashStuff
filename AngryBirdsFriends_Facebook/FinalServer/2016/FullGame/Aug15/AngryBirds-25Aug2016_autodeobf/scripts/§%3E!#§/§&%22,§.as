package §>!#§
{
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §&",§
   {
       
      
      private var §>F§:MovieClip;
      
      private var §,3§:Number;
      
      private var §@!m§:Number;
      
      private var §'# §:Number = 0;
      
      private var §<"L§:int;
      
      private var §+!6§:Number;
      
      private var §+#1§:Number;
      
      public function §&",§(param1:MovieClip, param2:Number)
      {
         super();
         this.§>F§ = param1;
         this.§,3§ = param2;
         this.§@!m§ = getTimer();
         this.§<"L§ = param1.totalFrames;
         this.§+!6§ = Math.ceil(1 / param2 * 1000);
         this.§+#1§ = this.§+!6§ * this.§<"L§;
         this.update(0);
      }
      
      public function update(param1:Number) : void
      {
         this.§'# § += param1;
         while(this.§'# § > this.§+#1§)
         {
            this.§'# § -= this.§+#1§;
         }
         var _loc2_:int = this.§'# § / this.§+!6§;
         this.§>F§.gotoAndStop(_loc2_ + 1);
      }
   }
}
