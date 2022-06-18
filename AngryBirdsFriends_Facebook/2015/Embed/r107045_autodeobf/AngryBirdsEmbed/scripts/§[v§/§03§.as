package §[v§
{
   public class §03§
   {
       
      
      private var §'C§:Vector.<§'P§>;
      
      public function §03§()
      {
         super();
         this.§'C§ = new Vector.<§'P§>();
      }
      
      public function addFrame(param1:§'P§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§'C§.push(param1);
      }
      
      public function getFrame(param1:int) : §'P§
      {
         if(param1 >= this.§'C§.length)
         {
            param1 = this.§'C§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§'C§.length)
         {
            return null;
         }
         return this.§'C§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§'C§.length;
      }
      
      public function getSubAnimation(param1:String) : §03§
      {
         return null;
      }
   }
}
