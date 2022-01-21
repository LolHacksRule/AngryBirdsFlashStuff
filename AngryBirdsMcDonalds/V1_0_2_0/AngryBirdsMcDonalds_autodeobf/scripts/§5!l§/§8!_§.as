package §5!l§
{
   public class §8!_§
   {
       
      
      private var §`Q§:Vector.<§9Z§>;
      
      public function §8!_§()
      {
         super();
         this.§`Q§ = new Vector.<§9Z§>();
      }
      
      public function addFrame(param1:§9Z§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§`Q§.push(param1);
      }
      
      public function getFrame(param1:int) : §9Z§
      {
         if(param1 >= this.§`Q§.length)
         {
            param1 = this.§`Q§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§`Q§.length)
         {
            return null;
         }
         return this.§`Q§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§`Q§.length;
      }
      
      public function getSubAnimation(param1:String) : §8!_§
      {
         return null;
      }
   }
}
