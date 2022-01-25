package §8r§
{
   import flash.utils.Dictionary;
   
   public class §4i§ extends §^!a§
   {
       
      
      private var §5Z§:Dictionary;
      
      private var §>8§:§^!a§;
      
      public function §4i§()
      {
         this.§5Z§ = new Dictionary();
         super();
      }
      
      public function §-!C§(param1:String, param2:§^!a§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§>8§)
         {
            this.§>8§ = param2;
         }
         this.§5Z§[param1] = param2;
      }
      
      override public function addFrame(param1:§-!$§) : void
      {
         this.§>8§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §-!$§
      {
         return this.§>8§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§>8§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §^!a§
      {
         if(this.§5Z§[param1])
         {
            return this.§5Z§[param1];
         }
         return this.§>8§;
      }
   }
}
