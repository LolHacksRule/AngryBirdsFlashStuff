package §`"2§
{
   public class §>",§
   {
       
      
      private var §7!w§:Vector.<§%3§>;
      
      public function §>",§()
      {
         super();
         this.§7!w§ = new Vector.<§%3§>();
      }
      
      public function addFrame(param1:§%3§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7!w§.push(param1);
      }
      
      public function getFrame(param1:int) : §%3§
      {
         if(param1 >= this.§7!w§.length)
         {
            param1 = this.§7!w§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7!w§.length)
         {
            return null;
         }
         return this.§7!w§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7!w§.length;
      }
      
      public function getSubAnimation(param1:String) : §>",§
      {
         return null;
      }
   }
}
