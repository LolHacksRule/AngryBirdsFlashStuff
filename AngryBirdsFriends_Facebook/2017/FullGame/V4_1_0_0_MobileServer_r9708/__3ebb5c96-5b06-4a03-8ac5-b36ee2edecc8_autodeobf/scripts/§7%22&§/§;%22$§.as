package §7"&§
{
   public class §;"$§ extends §?"B§
   {
       
      
      protected var §0"S§:Boolean;
      
      protected var §,q§:Boolean;
      
      protected var §@U§:Boolean;
      
      public function §;"$§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§0"S§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§,q§ = param1.overlay;
         }
         else
         {
            this.§,q§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§@U§ = param1.inFrontObject;
         }
         else
         {
            this.§@U§ = false;
         }
      }
      
      public function get §[#b§() : Boolean
      {
         return this.§0"S§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§@U§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§,q§;
      }
   }
}
