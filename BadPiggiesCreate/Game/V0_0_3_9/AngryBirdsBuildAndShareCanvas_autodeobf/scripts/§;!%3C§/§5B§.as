package §;!<§
{
   import flash.utils.Dictionary;
   
   public class §5B§ extends §9B§
   {
       
      
      private var §=f§:Dictionary;
      
      private var §'!M§:§9B§;
      
      public function §5B§()
      {
         this.§=f§ = new Dictionary();
         super();
      }
      
      public function §6W§(param1:String, param2:§9B§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'!M§)
         {
            this.§'!M§ = param2;
         }
         this.§=f§[param1] = param2;
      }
      
      override public function addFrame(param1:§<!D§) : void
      {
         this.§'!M§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §<!D§
      {
         return this.§'!M§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§'!M§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §9B§
      {
         if(this.§=f§[param1])
         {
            return this.§=f§[param1];
         }
         return this.§'!M§;
      }
   }
}
