package §7P§
{
   import §!!U§.§#"t§;
   
   public class §9c§
   {
       
      
      protected var §1;§:§&#=§;
      
      protected var §<n§:§#"t§;
      
      protected var § !b§:Number;
      
      public function §9c§(param1:§&#=§, param2:§#"t§, param3:Number)
      {
         super();
         this.§1;§ = param1;
         this.§<n§ = param2;
         this.§ !b§ = param3;
         if(this.§1;§ && this.§1;§.§4d§)
         {
            this.§1;§.§4d§.§5<§(param2,false);
         }
      }
      
      public function get §[!@§() : §&#=§
      {
         return this.§1;§;
      }
      
      public function dispose() : void
      {
         if(this.§1;§ && this.§1;§.§4d§ && this.§<n§)
         {
            this.§1;§.§4d§.§8#%§(this.§<n§);
            this.§1;§ = null;
         }
         if(this.§<n§)
         {
            this.§<n§.dispose();
            this.§<n§ = null;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§ !b§ == -1)
         {
            return true;
         }
         this.§ !b§ -= param1;
         if(this.§ !b§ < 0)
         {
            return false;
         }
         this.§<n§.alpha = Math.max(0,Math.min(1,this.§ !b§ / 300));
         return true;
      }
      
      public function §1#T§(param1:Number) : void
      {
         this.§ !b§ = param1;
      }
   }
}
