package §<T§
{
   import flash.utils.Dictionary;
   
   public class §1"S§ extends §4!N§
   {
       
      
      private var §>"5§:Dictionary;
      
      private var §!;§:§4!N§;
      
      public function §1"S§()
      {
         this.§>"5§ = new Dictionary();
         super();
      }
      
      public function §-x§(param1:String, param2:§4!N§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§!;§)
         {
            this.§!;§ = param2;
         }
         this.§>"5§[param1] = param2;
      }
      
      override public function addFrame(param1:§^"5§) : void
      {
         this.§!;§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §^"5§
      {
         return this.§!;§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§!;§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4!N§
      {
         if(this.§>"5§[param1])
         {
            return this.§>"5§[param1];
         }
         return this.§!;§;
      }
   }
}
