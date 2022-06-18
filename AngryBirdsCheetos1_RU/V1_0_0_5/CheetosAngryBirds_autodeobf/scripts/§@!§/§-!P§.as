package §@!§
{
   import flash.utils.Dictionary;
   
   public class §-!P§ extends §8!W§
   {
       
      
      private var §2!+§:Dictionary;
      
      private var §5[§:§8!W§;
      
      public function §-!P§()
      {
         this.§2!+§ = new Dictionary();
         super();
      }
      
      public function §switch§(param1:String, param2:§8!W§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§5[§)
         {
            this.§5[§ = param2;
         }
         this.§2!+§[param1] = param2;
      }
      
      override public function addFrame(param1:§ !N§) : void
      {
         this.§5[§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : § !N§
      {
         return this.§5[§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§5[§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §8!W§
      {
         if(this.§2!+§[param1])
         {
            return this.§2!+§[param1];
         }
         return this.§5[§;
      }
   }
}
