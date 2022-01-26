package §_-Xf§
{
   import §_-hn§.§_-DZ§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-u9§;
   
   public class §_-Kd§ extends §_-u9§
   {
       
      
      private var §_-8K§:Number;
      
      private var §_-NU§:Number;
      
      public function §_-Kd§(param1:§_-pg§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-tU§ = param3 - param2;
         this.§_-8K§ = param2;
         this.§_-NU§ = param3;
      }
      
      override protected function newInstance() : §_-DZ§
      {
         return new §_-Kd§(§_-eH§.clone() as §_-pg§,this.§_-8K§,this.§_-NU§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §_-tU§)
            {
               §_-eH§.update(param1 + this.§_-8K§);
            }
            else
            {
               §_-eH§.update(this.§_-NU§);
            }
         }
         else
         {
            §_-eH§.update(this.§_-8K§);
         }
      }
      
      public function get §_-FF§() : Number
      {
         return this.§_-8K§;
      }
      
      public function get end() : Number
      {
         return this.§_-NU§;
      }
   }
}
