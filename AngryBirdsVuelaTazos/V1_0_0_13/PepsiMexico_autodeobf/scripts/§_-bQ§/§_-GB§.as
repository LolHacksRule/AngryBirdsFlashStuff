package §_-bQ§
{
   import §_-My§.§_-J9§;
   import §_-My§.§_-Ry§;
   import §_-My§.§_-hK§;
   
   public class §_-GB§ extends §_-J9§
   {
       
      
      private var §_-qe§:Number;
      
      private var §_-oK§:Number;
      
      public function §_-GB§(param1:§_-hK§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-Hr§ = param3 - param2;
         this.§_-qe§ = param2;
         this.§_-oK§ = param3;
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-GB§(§_-gi§.clone() as §_-hK§,this.§_-qe§,this.§_-oK§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §_-Hr§)
            {
               §_-gi§.update(param1 + this.§_-qe§);
            }
            else
            {
               §_-gi§.update(this.§_-oK§);
            }
         }
         else
         {
            §_-gi§.update(this.§_-qe§);
         }
      }
      
      public function get §_-uH§() : Number
      {
         return this.§_-qe§;
      }
      
      public function get end() : Number
      {
         return this.§_-oK§;
      }
   }
}
