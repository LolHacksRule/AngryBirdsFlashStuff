package § !%§
{
   public class §>f§
   {
       
      
      private var §2_§:Vector.<§0!U§>;
      
      public function §>f§()
      {
         super();
         this.§2_§ = new Vector.<§0!U§>();
      }
      
      public function addFrame(param1:§0!U§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§2_§.push(param1);
      }
      
      public function getFrame(param1:int) : §0!U§
      {
         if(param1 >= this.§2_§.length)
         {
            param1 = this.§2_§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§2_§.length)
         {
            return null;
         }
         return this.§2_§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§2_§.length;
      }
      
      public function getSubAnimation(param1:String) : §>f§
      {
         return null;
      }
   }
}
