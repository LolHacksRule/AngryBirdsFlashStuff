package §4W§
{
   import flash.utils.Dictionary;
   
   public class §5!6§ extends §2f§
   {
       
      
      private var §2p§:Dictionary;
      
      private var §@!X§:§2f§;
      
      public function §5!6§()
      {
         this.§2p§ = new Dictionary();
         super();
      }
      
      public function §"=§(param1:String, param2:§2f§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§@!X§)
         {
            this.§@!X§ = param2;
         }
         this.§2p§[param1] = param2;
      }
      
      override public function addFrame(param1:§>c§) : void
      {
         this.§@!X§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §>c§
      {
         return this.§@!X§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§@!X§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §2f§
      {
         if(this.§2p§[param1])
         {
            return this.§2p§[param1];
         }
         return this.§@!X§;
      }
   }
}
