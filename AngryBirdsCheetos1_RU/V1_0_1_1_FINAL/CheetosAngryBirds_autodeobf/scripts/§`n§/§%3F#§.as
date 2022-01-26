package §`n§
{
   import flash.utils.Dictionary;
   
   public class §?#§ extends §-!D§
   {
       
      
      private var §[!'§:Dictionary;
      
      private var §>"§:§-!D§;
      
      public function §?#§()
      {
         this.§[!'§ = new Dictionary();
         super();
      }
      
      public function §7!L§(param1:String, param2:§-!D§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§>"§)
         {
            this.§>"§ = param2;
         }
         this.§[!'§[param1] = param2;
      }
      
      override public function addFrame(param1:§6o§) : void
      {
         this.§>"§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §6o§
      {
         return this.§>"§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§>"§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §-!D§
      {
         if(this.§[!'§[param1])
         {
            return this.§[!'§[param1];
         }
         return this.§>"§;
      }
   }
}
