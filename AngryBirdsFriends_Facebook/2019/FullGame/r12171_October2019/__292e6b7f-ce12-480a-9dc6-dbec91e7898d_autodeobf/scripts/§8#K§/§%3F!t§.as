package §8#K§
{
   public class §?!t§ extends §@"M§
   {
       
      
      protected var §@"F§:Boolean;
      
      protected var §3#9§:Boolean;
      
      protected var §0$$§:Boolean;
      
      public function §?!t§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§@"F§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§3#9§ = param1.overlay;
         }
         else
         {
            this.§3#9§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§0$$§ = param1.inFrontObject;
         }
         else
         {
            this.§0$$§ = false;
         }
      }
      
      public function get §>"t§() : Boolean
      {
         return this.§@"F§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§0$$§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§3#9§;
      }
   }
}
