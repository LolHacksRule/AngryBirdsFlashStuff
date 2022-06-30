package §=!<§
{
   public class §!x§
   {
       
      
      private var §8J§:Vector.<§8!!§>;
      
      public function §!x§()
      {
         super();
         this.§8J§ = new Vector.<§8!!§>();
      }
      
      public function addFrame(param1:§8!!§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§8J§.push(param1);
      }
      
      public function getFrame(param1:int) : §8!!§
      {
         if(param1 >= this.§8J§.length)
         {
            param1 = this.§8J§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§8J§.length)
         {
            return null;
         }
         return this.§8J§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§8J§.length;
      }
      
      public function getSubAnimation(param1:String) : §!x§
      {
         return null;
      }
   }
}
