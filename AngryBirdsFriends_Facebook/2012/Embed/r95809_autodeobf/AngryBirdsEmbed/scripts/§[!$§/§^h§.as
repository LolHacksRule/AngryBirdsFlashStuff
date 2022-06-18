package §[!$§
{
   import flash.utils.Dictionary;
   
   public class §^h§ extends §2!%§
   {
       
      
      private var §5Z§:Dictionary;
      
      private var §=!-§:§2!%§;
      
      public function §^h§()
      {
         this.§5Z§ = new Dictionary();
         super();
      }
      
      public function §3!!§(param1:String, param2:§2!%§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§=!-§)
         {
            this.§=!-§ = param2;
         }
         this.§5Z§[param1] = param2;
      }
      
      override public function addFrame(param1:§89§) : void
      {
         this.§=!-§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §89§
      {
         return this.§=!-§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§=!-§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §2!%§
      {
         if(this.§5Z§[param1])
         {
            return this.§5Z§[param1];
         }
         return this.§=!-§;
      }
   }
}
