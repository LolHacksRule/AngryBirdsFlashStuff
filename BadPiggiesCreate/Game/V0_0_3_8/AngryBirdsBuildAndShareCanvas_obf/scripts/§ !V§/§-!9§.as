package § !V§
{
   import flash.utils.Dictionary;
   
   public class §-!9§ extends §%!T§
   {
       
      
      private var §?!;§:Dictionary;
      
      private var §0!H§:§%!T§;
      
      public function §-!9§()
      {
         this.§?!;§ = new Dictionary();
         super();
      }
      
      public function §^!x§(param1:String, param2:§%!T§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§0!H§)
         {
            this.§0!H§ = param2;
         }
         this.§?!;§[param1] = param2;
      }
      
      override public function addFrame(param1:§=!g§) : void
      {
         this.§0!H§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §=!g§
      {
         return this.§0!H§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§0!H§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §%!T§
      {
         if(this.§?!;§[param1])
         {
            return this.§?!;§[param1];
         }
         return this.§0!H§;
      }
   }
}
