package §`n§
{
   public class §-!D§
   {
       
      
      private var §0v§:Vector.<§6o§>;
      
      public function §-!D§()
      {
         super();
         this.§0v§ = new Vector.<§6o§>();
      }
      
      public function addFrame(param1:§6o§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§0v§.push(param1);
      }
      
      public function getFrame(param1:int) : §6o§
      {
         if(param1 >= this.§0v§.length)
         {
            param1 = this.§0v§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§0v§.length)
         {
            return null;
         }
         return this.§0v§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§0v§.length;
      }
      
      public function getSubAnimation(param1:String) : §-!D§
      {
         return null;
      }
   }
}
