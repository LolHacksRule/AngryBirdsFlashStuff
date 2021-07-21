package §#?§
{
   import flash.utils.Dictionary;
   
   public class §!g§ extends §7!A§
   {
       
      
      private var §%!6§:Dictionary;
      
      private var §@!D§:§7!A§;
      
      public function §!g§()
      {
         this.§%!6§ = new Dictionary();
         super();
      }
      
      public function §0!N§(param1:String, param2:§7!A§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§@!D§)
         {
            this.§@!D§ = param2;
         }
         this.§%!6§[param1] = param2;
      }
      
      override public function addFrame(param1:§^@§) : void
      {
         this.§@!D§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §^@§
      {
         return this.§@!D§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§@!D§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §7!A§
      {
         if(this.§%!6§[param1])
         {
            return this.§%!6§[param1];
         }
         return this.§@!D§;
      }
   }
}
