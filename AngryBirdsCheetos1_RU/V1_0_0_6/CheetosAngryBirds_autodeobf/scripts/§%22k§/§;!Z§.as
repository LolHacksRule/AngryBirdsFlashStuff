package §"k§
{
   public class §;!Z§
   {
       
      
      private var §=!W§:Vector.<§5!7§>;
      
      public function §;!Z§()
      {
         super();
         this.§=!W§ = new Vector.<§5!7§>();
      }
      
      public function addFrame(param1:§5!7§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§=!W§.push(param1);
      }
      
      public function getFrame(param1:int) : §5!7§
      {
         if(param1 >= this.§=!W§.length)
         {
            param1 = this.§=!W§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§=!W§.length)
         {
            return null;
         }
         return this.§=!W§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§=!W§.length;
      }
      
      public function getSubAnimation(param1:String) : §;!Z§
      {
         return null;
      }
   }
}
