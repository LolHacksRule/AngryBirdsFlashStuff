package §`!H§
{
   import flash.utils.Dictionary;
   
   public class §6Z§ extends §3!c§
   {
       
      
      private var §4V§:Dictionary;
      
      private var §1!=§:§3!c§;
      
      public function §6Z§()
      {
         this.§4V§ = new Dictionary();
         super();
      }
      
      public function §]G§(param1:String, param2:§3!c§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§1!=§)
         {
            this.§1!=§ = param2;
         }
         this.§4V§[param1] = param2;
      }
      
      override public function addFrame(param1:§5f§) : void
      {
         this.§1!=§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §5f§
      {
         return this.§1!=§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§1!=§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §3!c§
      {
         if(this.§4V§[param1])
         {
            return this.§4V§[param1];
         }
         return this.§1!=§;
      }
   }
}
