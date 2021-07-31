package §<h§
{
   import flash.utils.Dictionary;
   
   public class §7p§ extends §<@§
   {
       
      
      private var §`Q§:Dictionary;
      
      private var §'x§:§<@§;
      
      public function §7p§()
      {
         this.§`Q§ = new Dictionary();
         super();
      }
      
      public function §;!D§(param1:String, param2:§<@§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'x§)
         {
            this.§'x§ = param2;
         }
         this.§`Q§[param1] = param2;
      }
      
      override public function addFrame(param1:§]^§) : void
      {
         this.§'x§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §]^§
      {
         return this.§'x§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§'x§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §<@§
      {
         if(this.§`Q§[param1])
         {
            return this.§`Q§[param1];
         }
         return this.§'x§;
      }
   }
}
