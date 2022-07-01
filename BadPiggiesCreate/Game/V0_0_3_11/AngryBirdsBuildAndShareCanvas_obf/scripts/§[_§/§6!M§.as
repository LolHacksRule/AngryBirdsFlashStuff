package §[_§
{
   import flash.utils.Dictionary;
   
   public class §6!M§ extends §+!P§
   {
       
      
      private var §0D§:Dictionary;
      
      private var §`2§:§+!P§;
      
      public function §6!M§()
      {
         this.§0D§ = new Dictionary();
         super();
      }
      
      public function §]N§(param1:String, param2:§+!P§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§`2§)
         {
            this.§`2§ = param2;
         }
         this.§0D§[param1] = param2;
      }
      
      override public function addFrame(param1:§'!N§) : void
      {
         this.§`2§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §'!N§
      {
         return this.§`2§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§`2§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+!P§
      {
         if(this.§0D§[param1])
         {
            return this.§0D§[param1];
         }
         return this.§`2§;
      }
   }
}
