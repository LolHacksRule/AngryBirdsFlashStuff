package §#S§
{
   import flash.utils.Dictionary;
   
   public class §[!§ extends §-$§
   {
       
      
      private var §5">§:Dictionary;
      
      private var §^,§:§-$§;
      
      public function §[!§()
      {
         this.§5">§ = new Dictionary();
         super();
      }
      
      public function §`9§(param1:String, param2:§-$§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§^,§)
         {
            this.§^,§ = param2;
         }
         this.§5">§[param1] = param2;
      }
      
      override public function addFrame(param1:§6!r§) : void
      {
         this.§^,§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §6!r§
      {
         return this.§^,§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§^,§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §-$§
      {
         if(this.§5">§[param1])
         {
            return this.§5">§[param1];
         }
         return this.§^,§;
      }
   }
}
