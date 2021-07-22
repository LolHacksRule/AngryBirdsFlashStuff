package §#S§
{
   public class §-$§
   {
       
      
      private var §7!V§:Vector.<§6!r§>;
      
      public function §-$§()
      {
         super();
         this.§7!V§ = new Vector.<§6!r§>();
      }
      
      public function addFrame(param1:§6!r§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7!V§.push(param1);
      }
      
      public function getFrame(param1:int) : §6!r§
      {
         if(param1 >= this.§7!V§.length)
         {
            param1 = this.§7!V§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7!V§.length)
         {
            return null;
         }
         return this.§7!V§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7!V§.length;
      }
      
      public function getSubAnimation(param1:String) : §-$§
      {
         return null;
      }
   }
}
