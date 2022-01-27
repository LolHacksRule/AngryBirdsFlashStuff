package § !N§
{
   import flash.utils.Dictionary;
   
   public class §!!1§ extends §=_§
   {
       
      
      private var §'!J§:Dictionary;
      
      private var §'k§:§=_§;
      
      public function §!!1§()
      {
         this.§'!J§ = new Dictionary();
         super();
      }
      
      public function §2E§(param1:String, param2:§=_§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'k§)
         {
            this.§'k§ = param2;
         }
         this.§'!J§[param1] = param2;
      }
      
      override public function addFrame(param1:§6!§) : void
      {
         this.§'k§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §6!§
      {
         return this.§'k§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§'k§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §=_§
      {
         if(this.§'!J§[param1])
         {
            return this.§'!J§[param1];
         }
         return this.§'k§;
      }
   }
}
