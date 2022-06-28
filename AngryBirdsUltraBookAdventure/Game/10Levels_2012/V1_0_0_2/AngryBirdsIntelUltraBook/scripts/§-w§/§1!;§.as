package §-w§
{
   public class §1!;§
   {
       
      
      private var §[!4§:Vector.<§+W§>;
      
      public function §1!;§()
      {
         super();
         this.§[!4§ = new Vector.<§+W§>();
      }
      
      public function addFrame(param1:§+W§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§[!4§.push(param1);
      }
      
      public function getFrame(param1:int) : §+W§
      {
         if(param1 >= this.§[!4§.length)
         {
            param1 = this.§[!4§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§[!4§.length)
         {
            return null;
         }
         return this.§[!4§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§[!4§.length;
      }
      
      public function getSubAnimation(param1:String) : §1!;§
      {
         return null;
      }
   }
}
