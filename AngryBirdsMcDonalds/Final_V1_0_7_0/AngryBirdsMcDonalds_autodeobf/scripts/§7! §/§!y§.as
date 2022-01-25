package §7! §
{
   import flash.utils.Dictionary;
   
   public class §!y§ extends §;!7§
   {
       
      
      private var §=!U§:Dictionary;
      
      private var §5>§:§;!7§;
      
      public function §!y§()
      {
         this.§=!U§ = new Dictionary();
         super();
      }
      
      public function §9!a§(param1:String, param2:§;!7§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§5>§)
         {
            this.§5>§ = param2;
         }
         this.§=!U§[param1] = param2;
      }
      
      override public function addFrame(param1:§%!h§) : void
      {
         this.§5>§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §%!h§
      {
         return this.§5>§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§5>§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §;!7§
      {
         if(this.§=!U§[param1])
         {
            return this.§=!U§[param1];
         }
         return this.§5>§;
      }
   }
}
