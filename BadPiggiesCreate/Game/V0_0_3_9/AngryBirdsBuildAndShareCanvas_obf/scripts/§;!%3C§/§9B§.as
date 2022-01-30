package §;!<§
{
   public class §9B§
   {
       
      
      private var §`!x§:Vector.<§<!D§>;
      
      public function §9B§()
      {
         super();
         this.§`!x§ = new Vector.<§<!D§>();
      }
      
      public function addFrame(param1:§<!D§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§`!x§.push(param1);
      }
      
      public function getFrame(param1:int) : §<!D§
      {
         if(param1 >= this.§`!x§.length)
         {
            param1 = this.§`!x§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§`!x§.length)
         {
            return null;
         }
         return this.§`!x§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§`!x§.length;
      }
      
      public function getSubAnimation(param1:String) : §9B§
      {
         return null;
      }
   }
}
