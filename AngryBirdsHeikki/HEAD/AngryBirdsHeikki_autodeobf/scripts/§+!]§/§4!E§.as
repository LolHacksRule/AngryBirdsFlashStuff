package §+!]§
{
   import flash.utils.Dictionary;
   
   public class §4!E§ extends §6H§
   {
       
      
      private var §2g§:Dictionary;
      
      private var §-!g§:§6H§;
      
      public function §4!E§()
      {
         this.§2g§ = new Dictionary();
         super();
      }
      
      public function §"f§(param1:String, param2:§6H§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§-!g§)
         {
            this.§-!g§ = param2;
         }
         this.§2g§[param1] = param2;
      }
      
      override public function addFrame(param1:§+!=§) : void
      {
         this.§-!g§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §+!=§
      {
         return this.§-!g§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-!g§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §6H§
      {
         if(this.§2g§[param1])
         {
            return this.§2g§[param1];
         }
         return this.§-!g§;
      }
   }
}
