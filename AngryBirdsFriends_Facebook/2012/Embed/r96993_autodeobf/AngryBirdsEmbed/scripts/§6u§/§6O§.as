package §6u§
{
   import flash.utils.Dictionary;
   
   public class §6O§ extends §@h§
   {
       
      
      private var §87§:Dictionary;
      
      private var §2!G§:§@h§;
      
      public function §6O§()
      {
         this.§87§ = new Dictionary();
         super();
      }
      
      public function §%;§(param1:String, param2:§@h§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§2!G§)
         {
            this.§2!G§ = param2;
         }
         this.§87§[param1] = param2;
      }
      
      override public function addFrame(param1:§!B§) : void
      {
         this.§2!G§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §!B§
      {
         return this.§2!G§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§2!G§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §@h§
      {
         if(this.§87§[param1])
         {
            return this.§87§[param1];
         }
         return this.§2!G§;
      }
   }
}
