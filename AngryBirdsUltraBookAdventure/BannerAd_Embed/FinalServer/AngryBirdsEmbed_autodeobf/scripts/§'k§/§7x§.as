package §'k§
{
   public class §7x§
   {
       
      
      private var §[!D§:Vector.<§2v§>;
      
      public function §7x§()
      {
         super();
         this.§[!D§ = new Vector.<§2v§>();
      }
      
      public function addFrame(param1:§2v§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§[!D§.push(param1);
      }
      
      public function getFrame(param1:int) : §2v§
      {
         if(param1 >= this.§[!D§.length)
         {
            param1 = this.§[!D§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§[!D§.length)
         {
            return null;
         }
         return this.§[!D§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§[!D§.length;
      }
      
      public function getSubAnimation(param1:String) : §7x§
      {
         return null;
      }
   }
}
