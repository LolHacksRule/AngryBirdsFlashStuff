package §!r§
{
   import §use§.§,!u§;
   
   public class §]#6§
   {
       
      
      protected var §#"U§:§0N§;
      
      protected var §4"X§:§,!u§;
      
      protected var §'V§:Number;
      
      public function §]#6§(param1:§0N§, param2:§,!u§, param3:Number)
      {
         super();
         this.§#"U§ = param1;
         this.§4"X§ = param2;
         this.§'V§ = param3;
         if(this.§#"U§ && this.§#"U§.§?!A§)
         {
            this.§#"U§.§?!A§.§<m§(param2,false);
         }
      }
      
      public function get §-"G§() : §0N§
      {
         return this.§#"U§;
      }
      
      public function dispose() : void
      {
         if(this.§#"U§ && this.§#"U§.§?!A§ && this.§4"X§)
         {
            this.§#"U§.§?!A§.§9!V§(this.§4"X§);
            this.§#"U§ = null;
         }
         if(this.§4"X§)
         {
            this.§4"X§.dispose();
            this.§4"X§ = null;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§'V§ == -1)
         {
            return true;
         }
         this.§'V§ -= param1;
         if(this.§'V§ < 0)
         {
            return false;
         }
         this.§4"X§.alpha = Math.max(0,Math.min(1,this.§'V§ / 300));
         return true;
      }
      
      public function §,@§(param1:Number) : void
      {
         this.§'V§ = param1;
      }
   }
}
