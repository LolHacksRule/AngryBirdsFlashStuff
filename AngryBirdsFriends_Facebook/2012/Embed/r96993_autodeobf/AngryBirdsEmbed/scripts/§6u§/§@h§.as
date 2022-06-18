package §6u§
{
   public class §@h§
   {
       
      
      private var §7S§:Vector.<§!B§>;
      
      public function §@h§()
      {
         super();
         this.§7S§ = new Vector.<§!B§>();
      }
      
      public function addFrame(param1:§!B§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7S§.push(param1);
      }
      
      public function getFrame(param1:int) : §!B§
      {
         if(param1 >= this.§7S§.length)
         {
            param1 = this.§7S§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7S§.length)
         {
            return null;
         }
         return this.§7S§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7S§.length;
      }
      
      public function getSubAnimation(param1:String) : §@h§
      {
         return null;
      }
   }
}
