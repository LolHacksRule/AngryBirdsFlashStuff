package §1n§
{
   public class §?!C§
   {
       
      
      private var §1Y§:Vector.<§1D§>;
      
      public function §?!C§()
      {
         super();
         this.§1Y§ = new Vector.<§1D§>();
      }
      
      public function addFrame(param1:§1D§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§1Y§.push(param1);
      }
      
      public function getFrame(param1:int) : §1D§
      {
         if(param1 >= this.§1Y§.length)
         {
            param1 = this.§1Y§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§1Y§.length)
         {
            return null;
         }
         return this.§1Y§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§1Y§.length;
      }
      
      public function getSubAnimation(param1:String) : §?!C§
      {
         return null;
      }
   }
}
