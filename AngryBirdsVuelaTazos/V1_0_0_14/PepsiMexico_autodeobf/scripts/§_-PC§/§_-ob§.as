package §_-PC§
{
   public class §_-ob§
   {
       
      
      private var §_-I2§:Vector.<§_-qH§>;
      
      public function §_-ob§()
      {
         super();
         this.§_-I2§ = new Vector.<§_-qH§>();
      }
      
      public function addFrame(param1:§_-qH§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-I2§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-qH§
      {
         if(param1 >= this.§_-I2§.length)
         {
            param1 = this.§_-I2§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-I2§.length)
         {
            return null;
         }
         return this.§_-I2§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-I2§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-ob§
      {
         return null;
      }
   }
}
