package §_-my§
{
   public class §_-uG§
   {
       
      
      private var §_-il§:Vector.<§_-GX§>;
      
      public function §_-uG§()
      {
         super();
         this.§_-il§ = new Vector.<§_-GX§>();
      }
      
      public function addFrame(param1:§_-GX§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-il§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-GX§
      {
         if(param1 >= this.§_-il§.length)
         {
            param1 = this.§_-il§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-il§.length)
         {
            return null;
         }
         return this.§_-il§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-il§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-uG§
      {
         return null;
      }
   }
}
