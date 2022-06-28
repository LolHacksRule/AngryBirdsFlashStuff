package §_-8d§
{
   public class §_-J§
   {
       
      
      private var §_-95§:Vector.<§_-vz§>;
      
      public function §_-J§()
      {
         super();
         this.§_-95§ = new Vector.<§_-vz§>();
      }
      
      public function addFrame(param1:§_-vz§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-95§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-vz§
      {
         if(param1 >= this.§_-95§.length)
         {
            param1 = this.§_-95§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-95§.length)
         {
            return null;
         }
         return this.§_-95§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-95§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-J§
      {
         return null;
      }
   }
}
