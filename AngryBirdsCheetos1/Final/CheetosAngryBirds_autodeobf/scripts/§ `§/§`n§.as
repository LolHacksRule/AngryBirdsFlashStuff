package § `§
{
   import flash.utils.Dictionary;
   
   public class §`n§ extends §^1§
   {
       
      
      private var §2!L§:Dictionary;
      
      private var §2T§:§^1§;
      
      public function §`n§()
      {
         this.§2!L§ = new Dictionary();
         super();
      }
      
      public function §3j§(param1:String, param2:§^1§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§2T§)
         {
            this.§2T§ = param2;
         }
         this.§2!L§[param1] = param2;
      }
      
      override public function addFrame(param1:§6!=§) : void
      {
         this.§2T§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §6!=§
      {
         return this.§2T§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§2T§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §^1§
      {
         if(this.§2!L§[param1])
         {
            return this.§2!L§[param1];
         }
         return this.§2T§;
      }
   }
}
