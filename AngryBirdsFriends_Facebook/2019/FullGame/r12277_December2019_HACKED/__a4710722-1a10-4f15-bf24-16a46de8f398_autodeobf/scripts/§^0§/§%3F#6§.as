package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §?#6§ extends §%N§
   {
      
      public static const §&";§:String = "TEMPORARY_BLOCK";
       
      
      private var §<#@§:String;
      
      public function §?#6§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§<#@§ = param5.type;
      }
      
      public function get §`"Z§() : String
      {
         return this.§<#@§;
      }
   }
}
