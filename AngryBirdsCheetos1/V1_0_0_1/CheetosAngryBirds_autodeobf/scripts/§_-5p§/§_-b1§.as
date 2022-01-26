package §_-5p§
{
   public class §_-b1§
   {
       
      
      private var §_-Us§:Vector.<§_-4§>;
      
      public function §_-b1§()
      {
         super();
         this.§_-Us§ = new Vector.<§_-4§>();
      }
      
      public function addFrame(param1:§_-4§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-Us§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-4§
      {
         if(param1 >= this.§_-Us§.length)
         {
            param1 = this.§_-Us§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-Us§.length)
         {
            return null;
         }
         return this.§_-Us§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-Us§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-b1§
      {
         return null;
      }
   }
}
