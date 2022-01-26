package §_-oE§
{
   import §_-sN§.§_-b8§;
   import §_-sN§.§_-qR§;
   import §_-sN§.§_-x5§;
   
   public class §_-7k§ extends §_-qR§
   {
       
      
      private var §_-89§:Number;
      
      private var §_-EX§:Number;
      
      public function §_-7k§(param1:§_-x5§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-sA§ = param3 - param2;
         this.§_-89§ = param2;
         this.§_-EX§ = param3;
      }
      
      override protected function newInstance() : §_-b8§
      {
         return new §_-7k§(§_-0w§.clone() as §_-x5§,this.§_-89§,this.§_-EX§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §_-sA§)
            {
               §_-0w§.update(param1 + this.§_-89§);
            }
            else
            {
               §_-0w§.update(this.§_-EX§);
            }
         }
         else
         {
            §_-0w§.update(this.§_-89§);
         }
      }
      
      public function get §_-vv§() : Number
      {
         return this.§_-89§;
      }
      
      public function get end() : Number
      {
         return this.§_-EX§;
      }
   }
}
