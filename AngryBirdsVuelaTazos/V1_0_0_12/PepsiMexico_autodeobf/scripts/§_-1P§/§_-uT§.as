package §_-1P§
{
   public class §_-uT§
   {
       
      
      private var §_-Nl§:Vector.<§_-XN§>;
      
      public function §_-uT§()
      {
         super();
         this.§_-Nl§ = new Vector.<§_-XN§>();
      }
      
      public function addFrame(param1:§_-XN§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-Nl§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-XN§
      {
         if(param1 >= this.§_-Nl§.length)
         {
            param1 = this.§_-Nl§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-Nl§.length)
         {
            return null;
         }
         return this.§_-Nl§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-Nl§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-uT§
      {
         return null;
      }
   }
}
