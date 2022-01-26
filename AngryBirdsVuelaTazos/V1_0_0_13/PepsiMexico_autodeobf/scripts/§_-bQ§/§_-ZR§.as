package §_-bQ§
{
   import §_-My§.§_-J9§;
   import §_-My§.§_-Ry§;
   import §_-My§.§_-hK§;
   
   public class §_-ZR§ extends §_-J9§
   {
       
      
      private var §_-Tz§:Number;
      
      public function §_-ZR§(param1:§_-hK§, param2:Number)
      {
         super(param1,0);
         §_-Hr§ = param1.duration * param2;
         this.§_-Tz§ = param2;
      }
      
      public function get scale() : Number
      {
         return this.§_-Tz§;
      }
      
      override protected function newInstance() : §_-Ry§
      {
         return new §_-ZR§(§_-gi§.clone() as §_-hK§,this.§_-Tz§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         §_-gi§.update(param1 / this.scale);
      }
   }
}
