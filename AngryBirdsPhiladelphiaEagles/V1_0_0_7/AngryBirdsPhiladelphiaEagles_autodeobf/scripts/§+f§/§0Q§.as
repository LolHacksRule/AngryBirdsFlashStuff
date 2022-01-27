package §+f§
{
   public class §0Q§
   {
       
      
      private var § e§:Vector.<§=3§>;
      
      public function §0Q§()
      {
         super();
         this.§ e§ = new Vector.<§=3§>();
      }
      
      public function addFrame(param1:§=3§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§ e§.push(param1);
      }
      
      public function getFrame(param1:int) : §=3§
      {
         if(param1 >= this.§ e§.length)
         {
            param1 = this.§ e§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§ e§.length)
         {
            return null;
         }
         return this.§ e§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§ e§.length;
      }
      
      public function getSubAnimation(param1:String) : §0Q§
      {
         return null;
      }
   }
}
