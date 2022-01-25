package §48§
{
   public class §8!'§
   {
       
      
      private var §@v§:Vector.<§6!Z§>;
      
      public function §8!'§()
      {
         super();
         this.§@v§ = new Vector.<§6!Z§>();
      }
      
      public function addFrame(param1:§6!Z§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§@v§.push(param1);
      }
      
      public function getFrame(param1:int) : §6!Z§
      {
         if(param1 >= this.§@v§.length)
         {
            param1 = this.§@v§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§@v§.length)
         {
            return null;
         }
         return this.§@v§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§@v§.length;
      }
      
      public function getSubAnimation(param1:String) : §8!'§
      {
         return null;
      }
   }
}
