package §`#C§
{
   public class §'#g§ extends §-$'§
   {
       
      
      protected var §#!p§:Boolean;
      
      protected var §="[§:Boolean;
      
      protected var §`"D§:Boolean;
      
      public function §'#g§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§#!p§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§="[§ = param1.overlay;
         }
         else
         {
            this.§="[§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§`"D§ = param1.inFrontObject;
         }
         else
         {
            this.§`"D§ = false;
         }
      }
      
      public function get §1"Z§() : Boolean
      {
         return this.§#!p§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§`"D§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§="[§;
      }
   }
}
