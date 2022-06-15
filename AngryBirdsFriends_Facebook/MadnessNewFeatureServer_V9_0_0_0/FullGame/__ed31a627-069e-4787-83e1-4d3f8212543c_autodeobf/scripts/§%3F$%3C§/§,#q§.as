package §?$<§
{
   public class §,#q§ extends §[S§
   {
       
      
      protected var §`#a§:Boolean;
      
      protected var §8"Z§:Boolean;
      
      protected var §^!d§:Boolean;
      
      public function §,#q§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§`#a§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§8"Z§ = param1.overlay;
         }
         else
         {
            this.§8"Z§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§^!d§ = param1.inFrontObject;
         }
         else
         {
            this.§^!d§ = false;
         }
      }
      
      public function get § _§() : Boolean
      {
         return this.§`#a§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§^!d§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§8"Z§;
      }
   }
}
