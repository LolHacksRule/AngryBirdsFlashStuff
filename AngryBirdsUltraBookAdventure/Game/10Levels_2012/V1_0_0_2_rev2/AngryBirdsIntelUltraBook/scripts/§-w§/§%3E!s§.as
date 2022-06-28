package §-w§
{
   import flash.utils.Dictionary;
   
   public class §>!s§ extends §1!;§
   {
       
      
      private var §[%§:Dictionary;
      
      private var §4!j§:§1!;§;
      
      public function §>!s§()
      {
         this.§[%§ = new Dictionary();
         super();
      }
      
      public function §1V§(param1:String, param2:§1!;§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§4!j§)
         {
            this.§4!j§ = param2;
         }
         this.§[%§[param1] = param2;
      }
      
      override public function addFrame(param1:§+W§) : void
      {
         this.§4!j§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §+W§
      {
         return this.§4!j§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§4!j§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §1!;§
      {
         if(this.§[%§[param1])
         {
            return this.§[%§[param1];
         }
         return this.§4!j§;
      }
   }
}
