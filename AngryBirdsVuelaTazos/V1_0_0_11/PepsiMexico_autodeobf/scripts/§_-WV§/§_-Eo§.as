package §_-WV§
{
   import §_-0e§.§_-3D§;
   import §_-0e§.§_-fO§;
   import §_-0e§.§_-i8§;
   
   public class §_-Eo§ extends §_-fO§
   {
       
      
      private var §_-XX§:Number;
      
      private var §_-FP§:Number;
      
      public function §_-Eo§(param1:§_-i8§, param2:Number, param3:Number)
      {
         super(param1,0);
         §_-hZ§ = param3 - param2;
         this.§_-XX§ = param2;
         this.§_-FP§ = param3;
      }
      
      override protected function newInstance() : §_-3D§
      {
         return new §_-Eo§(§_-rL§.clone() as §_-i8§,this.§_-XX§,this.§_-FP§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(param1 < §_-hZ§)
            {
               §_-rL§.update(param1 + this.§_-XX§);
            }
            else
            {
               §_-rL§.update(this.§_-FP§);
            }
         }
         else
         {
            §_-rL§.update(this.§_-XX§);
         }
      }
      
      public function get §_-Zt§() : Number
      {
         return this.§_-XX§;
      }
      
      public function get end() : Number
      {
         return this.§_-FP§;
      }
   }
}
