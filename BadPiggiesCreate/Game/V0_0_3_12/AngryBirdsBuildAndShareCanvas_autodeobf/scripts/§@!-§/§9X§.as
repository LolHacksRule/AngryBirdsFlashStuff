package §@!-§
{
   import flash.utils.Dictionary;
   
   public class §9X§ extends §5A§
   {
       
      
      private var §[!7§:Dictionary;
      
      private var §-!P§:§5A§;
      
      public function §9X§()
      {
         this.§[!7§ = new Dictionary();
         super();
      }
      
      public function §%!&§(param1:String, param2:§5A§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§-!P§)
         {
            this.§-!P§ = param2;
         }
         this.§[!7§[param1] = param2;
      }
      
      override public function addFrame(param1:§"K§) : void
      {
         this.§-!P§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §"K§
      {
         return this.§-!P§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-!P§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §5A§
      {
         if(this.§[!7§[param1])
         {
            return this.§[!7§[param1];
         }
         return this.§-!P§;
      }
   }
}
