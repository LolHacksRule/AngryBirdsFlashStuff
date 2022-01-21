package §&[§
{
   import flash.utils.Dictionary;
   
   public class §]!k§ extends §'!$§
   {
       
      
      private var §^4§:Dictionary;
      
      private var §9!§:§'!$§;
      
      public function §]!k§()
      {
         this.§^4§ = new Dictionary();
         super();
      }
      
      public function §`W§(param1:String, param2:§'!$§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§9!§)
         {
            this.§9!§ = param2;
         }
         this.§^4§[param1] = param2;
      }
      
      override public function addFrame(param1:§,!"§) : void
      {
         this.§9!§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §,!"§
      {
         return this.§9!§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§9!§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §'!$§
      {
         if(this.§^4§[param1])
         {
            return this.§^4§[param1];
         }
         return this.§9!§;
      }
   }
}
