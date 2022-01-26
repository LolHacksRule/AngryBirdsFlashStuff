package §&!W§
{
   public class §+=§
   {
       
      
      private var §2f§:Vector.<§&!$§>;
      
      public function §+=§()
      {
         super();
         this.§2f§ = new Vector.<§&!$§>();
      }
      
      public function addFrame(param1:§&!$§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§2f§.push(param1);
      }
      
      public function getFrame(param1:int) : §&!$§
      {
         if(param1 >= this.§2f§.length)
         {
            param1 = this.§2f§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§2f§.length)
         {
            return null;
         }
         return this.§2f§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§2f§.length;
      }
      
      public function getSubAnimation(param1:String) : §+=§
      {
         return null;
      }
   }
}
