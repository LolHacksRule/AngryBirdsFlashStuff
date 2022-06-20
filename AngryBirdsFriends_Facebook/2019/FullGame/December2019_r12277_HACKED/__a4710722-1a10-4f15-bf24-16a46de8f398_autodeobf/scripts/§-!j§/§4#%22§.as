package §-!j§
{
   public class §4#"§ extends §@U§
   {
       
      
      protected var §;!F§:Boolean;
      
      protected var §-!C§:Boolean;
      
      protected var §6!k§:Boolean;
      
      public function §4#"§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§;!F§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§-!C§ = param1.overlay;
         }
         else
         {
            this.§-!C§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§6!k§ = param1.inFrontObject;
         }
         else
         {
            this.§6!k§ = false;
         }
      }
      
      public function get §3#d§() : Boolean
      {
         return this.§;!F§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§6!k§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§-!C§;
      }
   }
}
