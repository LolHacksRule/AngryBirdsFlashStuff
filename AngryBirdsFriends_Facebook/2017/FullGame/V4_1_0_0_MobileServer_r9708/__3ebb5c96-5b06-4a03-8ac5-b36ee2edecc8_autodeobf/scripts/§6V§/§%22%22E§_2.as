package §6V§
{
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §""E§
   {
       
      
      private var §,!T§:MovieClip;
      
      private var §4!B§:Number;
      
      private var §,"R§:Number;
      
      private var §+_§:Number = 0;
      
      private var §'"w§:int;
      
      private var §?M§:Number;
      
      private var §9"+§:Number;
      
      public function §""E§(param1:MovieClip, param2:Number)
      {
         super();
         this.§,!T§ = param1;
         this.§4!B§ = param2;
         this.§,"R§ = getTimer();
         this.§'"w§ = param1.totalFrames;
         this.§?M§ = Math.ceil(1 / param2 * 1000);
         this.§9"+§ = this.§?M§ * this.§'"w§;
         this.update(0);
      }
      
      public function update(param1:Number) : void
      {
         this.§+_§ += param1;
         while(this.§+_§ > this.§9"+§)
         {
            this.§+_§ -= this.§9"+§;
         }
         var _loc2_:int = this.§+_§ / this.§?M§;
         this.§,!T§.gotoAndStop(_loc2_ + 1);
      }
   }
}
