package §?§#3
{
   public class §["+§ extends §6!M§
   {
       
      
      protected var §!m§:Boolean;
      
      protected var §3#b§:Boolean;
      
      protected var §]k§:Boolean;
      
      public function §["+§(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§!m§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§3#b§ = param1.overlay;
         }
         else
         {
            this.§3#b§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§]k§ = param1.inFrontObject;
         }
         else
         {
            this.§]k§ = false;
         }
      }
      
      public function get § P§() : Boolean
      {
         return this.§!m§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§]k§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§3#b§;
      }
   }
}
