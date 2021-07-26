package §#?§
{
   public class §7!A§
   {
       
      
      private var §&z§:Vector.<§^@§>;
      
      public function §7!A§()
      {
         super();
         this.§&z§ = new Vector.<§^@§>();
      }
      
      public function addFrame(param1:§^@§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§&z§.push(param1);
      }
      
      public function getFrame(param1:int) : §^@§
      {
         if(param1 >= this.§&z§.length)
         {
            param1 = this.§&z§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§&z§.length)
         {
            return null;
         }
         return this.§&z§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§&z§.length;
      }
      
      public function getSubAnimation(param1:String) : §7!A§
      {
         return null;
      }
   }
}
