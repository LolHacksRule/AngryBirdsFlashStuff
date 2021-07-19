package §_-Ra§
{
   public class §_-RO§
   {
       
      
      private var §_-TW§:Vector.<§_-Vr§>;
      
      public function §_-RO§()
      {
         super();
         this.§_-TW§ = new Vector.<§_-Vr§>();
      }
      
      public function addFrame(param1:§_-Vr§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§_-TW§.push(param1);
      }
      
      public function getFrame(param1:int) : §_-Vr§
      {
         if(param1 >= this.§_-TW§.length)
         {
            param1 = this.§_-TW§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§_-TW§.length)
         {
            return null;
         }
         return this.§_-TW§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§_-TW§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-RO§
      {
         return null;
      }
   }
}
