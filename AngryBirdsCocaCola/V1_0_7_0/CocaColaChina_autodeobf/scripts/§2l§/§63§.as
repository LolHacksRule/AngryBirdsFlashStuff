package §2l§
{
   public class §63§
   {
       
      
      private var §7!b§:Vector.<§4!Q§>;
      
      public function §63§()
      {
         super();
         this.§7!b§ = new Vector.<§4!Q§>();
      }
      
      public function addFrame(param1:§4!Q§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7!b§.push(param1);
      }
      
      public function getFrame(param1:int) : §4!Q§
      {
         if(param1 >= this.§7!b§.length)
         {
            param1 = this.§7!b§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7!b§.length)
         {
            return null;
         }
         return this.§7!b§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7!b§.length;
      }
      
      public function getSubAnimation(param1:String) : §63§
      {
         return null;
      }
   }
}
