package §_-KS§
{
   public class §_-3l§
   {
       
      
      private var §_-1O§:Vector.<§_-Wt§>;
      
      public function §_-3l§()
      {
         super();
         this.§_-1O§ = new Vector.<§_-Wt§>();
      }
      
      public function addFrame(param1:§_-Wt§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-1O§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-Wt§
      {
         if(param1 >= this.§_-1O§.length)
         {
            param1 = this.§_-1O§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-1O§.length)
         {
            return null;
         }
         return this.§_-1O§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-1O§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-3l§
      {
         return null;
      }
   }
}
