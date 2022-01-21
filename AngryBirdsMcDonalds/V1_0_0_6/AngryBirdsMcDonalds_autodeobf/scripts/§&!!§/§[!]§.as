package §&!!§
{
   public class §[!]§
   {
       
      
      private var §0=§:Vector.<§7N§>;
      
      public function §[!]§()
      {
         super();
         this.§0=§ = new Vector.<§7N§>();
      }
      
      public function addFrame(param1:§7N§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§0=§.push(param1);
      }
      
      public function getFrame(param1:int) : §7N§
      {
         if(param1 >= this.§0=§.length)
         {
            param1 = this.§0=§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§0=§.length)
         {
            return null;
         }
         return this.§0=§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§0=§.length;
      }
      
      public function getSubAnimation(param1:String) : §[!]§
      {
         return null;
      }
   }
}
