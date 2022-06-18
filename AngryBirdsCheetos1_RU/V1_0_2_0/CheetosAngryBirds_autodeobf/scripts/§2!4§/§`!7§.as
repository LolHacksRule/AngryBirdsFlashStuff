package §2!4§
{
   public class §`!7§
   {
       
      
      private var §[!V§:Vector.<§>5§>;
      
      public function §`!7§()
      {
         super();
         this.§[!V§ = new Vector.<§>5§>();
      }
      
      public function addFrame(param1:§>5§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§[!V§.push(param1);
      }
      
      public function getFrame(param1:int) : §>5§
      {
         if(param1 >= this.§[!V§.length)
         {
            param1 = this.§[!V§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§[!V§.length)
         {
            return null;
         }
         return this.§[!V§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§[!V§.length;
      }
      
      public function getSubAnimation(param1:String) : §`!7§
      {
         return null;
      }
   }
}
