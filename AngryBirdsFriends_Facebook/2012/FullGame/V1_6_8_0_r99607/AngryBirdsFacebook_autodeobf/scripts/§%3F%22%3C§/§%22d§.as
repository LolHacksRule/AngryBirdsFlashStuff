package §?"<§
{
   public class §"d§
   {
       
      
      private var §?!$§:Vector.<§?n§>;
      
      public function §"d§()
      {
         super();
         this.§?!$§ = new Vector.<§?n§>();
      }
      
      public function addFrame(param1:§?n§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§?!$§.push(param1);
      }
      
      public function getFrame(param1:int) : §?n§
      {
         if(param1 >= this.§?!$§.length)
         {
            param1 = this.§?!$§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§?!$§.length)
         {
            return null;
         }
         return this.§?!$§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§?!$§.length;
      }
      
      public function getSubAnimation(param1:String) : §"d§
      {
         return null;
      }
   }
}
