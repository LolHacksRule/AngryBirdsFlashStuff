package §8"L§
{
   public class §3"s§ extends §3#N§
   {
       
      
      protected var §=#t§:Boolean;
      
      protected var §&"n§:Boolean;
      
      protected var §0"y§:Boolean;
      
      public function §3"s§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§=#t§ = param1.reticle;
         if(param1.hasOwnProperty("overlay"))
         {
            this.§&"n§ = param1.overlay;
         }
         else
         {
            this.§&"n§ = false;
         }
         if(param1.hasOwnProperty("inFrontObject"))
         {
            this.§0"y§ = param1.inFrontObject;
         }
         else
         {
            this.§0"y§ = false;
         }
      }
      
      public function get §#"B§() : Boolean
      {
         return this.§=#t§;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.§0"y§;
      }
      
      public function get overlay() : Boolean
      {
         return this.§&"n§;
      }
   }
}
