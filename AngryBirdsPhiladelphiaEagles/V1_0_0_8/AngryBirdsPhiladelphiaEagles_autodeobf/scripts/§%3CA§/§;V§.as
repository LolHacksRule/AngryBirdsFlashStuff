package §<A§
{
   public class §;V§
   {
       
      
      private var §@A§:Vector.<§8<§>;
      
      public function §;V§()
      {
         super();
         this.§@A§ = new Vector.<§8<§>();
      }
      
      public function addFrame(param1:§8<§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§@A§.push(param1);
      }
      
      public function getFrame(param1:int) : §8<§
      {
         if(param1 >= this.§@A§.length)
         {
            param1 = this.§@A§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§@A§.length)
         {
            return null;
         }
         return this.§@A§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§@A§.length;
      }
      
      public function getSubAnimation(param1:String) : §;V§
      {
         return null;
      }
   }
}
