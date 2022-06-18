package §=0§
{
   import flash.utils.Dictionary;
   
   public class §0B§ extends §@_§
   {
       
      
      private var §29§:Dictionary;
      
      private var §3<§:§@_§;
      
      public function §0B§()
      {
         this.§29§ = new Dictionary();
         super();
      }
      
      public function §=! §(param1:String, param2:§@_§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§3<§)
         {
            this.§3<§ = param2;
         }
         this.§29§[param1] = param2;
      }
      
      override public function addFrame(param1:§^L§) : void
      {
         this.§3<§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §^L§
      {
         return this.§3<§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§3<§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §@_§
      {
         if(this.§29§[param1])
         {
            return this.§29§[param1];
         }
         return this.§3<§;
      }
   }
}
