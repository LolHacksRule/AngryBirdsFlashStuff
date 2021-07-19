package §1n§
{
   import flash.utils.Dictionary;
   
   public class §<!=§ extends §?!C§
   {
       
      
      private var §6G§:Dictionary;
      
      private var §8y§:§?!C§;
      
      public function §<!=§()
      {
         this.§6G§ = new Dictionary();
         super();
      }
      
      public function §#!%§(param1:String, param2:§?!C§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§8y§)
         {
            this.§8y§ = param2;
         }
         this.§6G§[param1] = param2;
      }
      
      override public function addFrame(param1:§1D§) : void
      {
         this.§8y§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §1D§
      {
         return this.§8y§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8y§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §?!C§
      {
         if(this.§6G§[param1])
         {
            return this.§6G§[param1];
         }
         return this.§8y§;
      }
   }
}
