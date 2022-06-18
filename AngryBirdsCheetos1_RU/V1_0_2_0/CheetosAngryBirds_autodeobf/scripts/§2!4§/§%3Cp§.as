package §2!4§
{
   import flash.utils.Dictionary;
   
   public class §<p§ extends §`!7§
   {
       
      
      private var §6J§:Dictionary;
      
      private var §8Y§:§`!7§;
      
      public function §<p§()
      {
         this.§6J§ = new Dictionary();
         super();
      }
      
      public function §#!§(param1:String, param2:§`!7§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§8Y§)
         {
            this.§8Y§ = param2;
         }
         this.§6J§[param1] = param2;
      }
      
      override public function addFrame(param1:§>5§) : void
      {
         this.§8Y§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §>5§
      {
         return this.§8Y§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8Y§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §`!7§
      {
         if(this.§6J§[param1])
         {
            return this.§6J§[param1];
         }
         return this.§8Y§;
      }
   }
}
