package §_-3b§
{
   public class §_-5p§
   {
       
      
      private var §_-wr§:Vector.<§_-Lf§>;
      
      public function §_-5p§()
      {
         super();
         this.§_-wr§ = new Vector.<§_-Lf§>();
      }
      
      public function addFrame(param1:§_-Lf§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-wr§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-Lf§
      {
         if(param1 >= this.§_-wr§.length)
         {
            param1 = this.§_-wr§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-wr§.length)
         {
            return null;
         }
         return this.§_-wr§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-wr§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-5p§
      {
         return null;
      }
   }
}
