package § !%§
{
   import flash.utils.Dictionary;
   
   public class §29§ extends §>f§
   {
       
      
      private var §9!j§:Dictionary;
      
      private var §^e§:§>f§;
      
      public function §29§()
      {
         this.§9!j§ = new Dictionary();
         super();
      }
      
      public function §`!J§(param1:String, param2:§>f§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§^e§)
         {
            this.§^e§ = param2;
         }
         this.§9!j§[param1] = param2;
      }
      
      override public function addFrame(param1:§0!U§) : void
      {
         this.§^e§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §0!U§
      {
         return this.§^e§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§^e§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §>f§
      {
         if(this.§9!j§[param1])
         {
            return this.§9!j§[param1];
         }
         return this.§^e§;
      }
   }
}
