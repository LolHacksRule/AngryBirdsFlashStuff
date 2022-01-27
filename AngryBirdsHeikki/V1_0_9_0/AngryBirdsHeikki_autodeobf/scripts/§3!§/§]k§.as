package §3!§
{
   import flash.utils.Dictionary;
   
   public class §]k§ extends §3!W§
   {
       
      
      private var §]S§:Dictionary;
      
      private var § !b§:§3!W§;
      
      public function §]k§()
      {
         this.§]S§ = new Dictionary();
         super();
      }
      
      public function §6!§(param1:String, param2:§3!W§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§ !b§)
         {
            this.§ !b§ = param2;
         }
         this.§]S§[param1] = param2;
      }
      
      override public function addFrame(param1:§2!$§) : void
      {
         this.§ !b§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §2!$§
      {
         return this.§ !b§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§ !b§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §3!W§
      {
         if(this.§]S§[param1])
         {
            return this.§]S§[param1];
         }
         return this.§ !b§;
      }
   }
}
