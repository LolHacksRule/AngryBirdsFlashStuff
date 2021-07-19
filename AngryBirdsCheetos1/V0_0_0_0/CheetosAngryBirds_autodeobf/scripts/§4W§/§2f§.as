package §4W§
{
   public class §2f§
   {
       
      
      private var §&!$§:Vector.<§>c§>;
      
      public function §2f§()
      {
         super();
         this.§&!$§ = new Vector.<§>c§>();
      }
      
      public function addFrame(param1:§>c§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§&!$§.push(param1);
      }
      
      public function getFrame(param1:int) : §>c§
      {
         if(param1 >= this.§&!$§.length)
         {
            param1 = this.§&!$§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§&!$§.length)
         {
            return null;
         }
         return this.§&!$§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§&!$§.length;
      }
      
      public function getSubAnimation(param1:String) : §2f§
      {
         return null;
      }
   }
}
