package §@!§
{
   public class §8!W§
   {
       
      
      private var §7!2§:Vector.<§ !N§>;
      
      public function §8!W§()
      {
         super();
         this.§7!2§ = new Vector.<§ !N§>();
      }
      
      public function addFrame(param1:§ !N§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§7!2§.push(param1);
      }
      
      public function getFrame(param1:int) : § !N§
      {
         if(param1 >= this.§7!2§.length)
         {
            param1 = this.§7!2§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7!2§.length)
         {
            return null;
         }
         return this.§7!2§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§7!2§.length;
      }
      
      public function getSubAnimation(param1:String) : §8!W§
      {
         return null;
      }
   }
}
