package §'k§
{
   import flash.utils.Dictionary;
   
   public class §!§ extends §7x§
   {
       
      
      private var §!6§:Dictionary;
      
      private var §-`§:§7x§;
      
      public function §!§()
      {
         this.§!6§ = new Dictionary();
         super();
      }
      
      public function §<y§(param1:String, param2:§7x§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§-`§)
         {
            this.§-`§ = param2;
         }
         this.§!6§[param1] = param2;
      }
      
      override public function addFrame(param1:§2v§) : void
      {
         this.§-`§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §2v§
      {
         return this.§-`§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-`§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §7x§
      {
         if(this.§!6§[param1])
         {
            return this.§!6§[param1];
         }
         return this.§-`§;
      }
   }
}
