package §`!H§
{
   public class §3!c§
   {
       
      
      private var §7g§:Vector.<§5f§>;
      
      public function §3!c§()
      {
         super();
         this.§7g§ = new Vector.<§5f§>();
      }
      
      public function addFrame(param1:§5f§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7g§.push(param1);
      }
      
      public function getFrame(param1:int) : §5f§
      {
         if(param1 >= this.§7g§.length)
         {
            param1 = this.§7g§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7g§.length)
         {
            return null;
         }
         return this.§7g§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7g§.length;
      }
      
      public function getSubAnimation(param1:String) : §3!c§
      {
         return null;
      }
   }
}
