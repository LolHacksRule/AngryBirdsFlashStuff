package §=U§
{
   public class §;P§
   {
       
      
      private var §`G§:Vector.<§>?§>;
      
      public function §;P§()
      {
         super();
         this.§`G§ = new Vector.<§>?§>();
      }
      
      public function addFrame(param1:§>?§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§`G§.push(param1);
      }
      
      public function getFrame(param1:int) : §>?§
      {
         if(param1 >= this.§`G§.length)
         {
            param1 = this.§`G§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§`G§.length)
         {
            return null;
         }
         return this.§`G§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§`G§.length;
      }
      
      public function getSubAnimation(param1:String) : §;P§
      {
         return null;
      }
   }
}
