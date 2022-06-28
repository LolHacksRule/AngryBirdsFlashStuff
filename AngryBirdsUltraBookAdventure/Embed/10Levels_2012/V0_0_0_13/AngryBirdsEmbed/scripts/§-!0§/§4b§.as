package §-!0§
{
   public class §4b§
   {
       
      
      private var §]^§:Vector.<§9X§>;
      
      public function §4b§()
      {
         super();
         this.§]^§ = new Vector.<§9X§>();
      }
      
      public function addFrame(param1:§9X§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§]^§.push(param1);
      }
      
      public function getFrame(param1:int) : §9X§
      {
         if(param1 >= this.§]^§.length)
         {
            param1 = this.§]^§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§]^§.length)
         {
            return null;
         }
         return this.§]^§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§]^§.length;
      }
      
      public function getSubAnimation(param1:String) : §4b§
      {
         return null;
      }
   }
}
