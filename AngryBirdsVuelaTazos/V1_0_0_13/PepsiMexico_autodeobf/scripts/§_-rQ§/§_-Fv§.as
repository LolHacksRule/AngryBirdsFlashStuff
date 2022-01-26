package §_-rQ§
{
   public class §_-Fv§
   {
       
      
      private var §_-JD§:Vector.<§_-MV§>;
      
      public function §_-Fv§()
      {
         super();
         this.§_-JD§ = new Vector.<§_-MV§>();
      }
      
      public function addFrame(param1:§_-MV§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-JD§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-MV§
      {
         if(param1 >= this.§_-JD§.length)
         {
            param1 = this.§_-JD§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-JD§.length)
         {
            return null;
         }
         return this.§_-JD§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-JD§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-Fv§
      {
         return null;
      }
   }
}
