package §-!0§
{
   import flash.utils.Dictionary;
   
   public class §'x§ extends §4b§
   {
       
      
      private var §8a§:Dictionary;
      
      private var §4;§:§4b§;
      
      public function §'x§()
      {
         this.§8a§ = new Dictionary();
         super();
      }
      
      public function §'$§(param1:String, param2:§4b§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§4;§)
         {
            this.§4;§ = param2;
         }
         this.§8a§[param1] = param2;
      }
      
      override public function addFrame(param1:§9X§) : void
      {
         this.§4;§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §9X§
      {
         return this.§4;§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§4;§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4b§
      {
         if(this.§8a§[param1])
         {
            return this.§8a§[param1];
         }
         return this.§4;§;
      }
   }
}
