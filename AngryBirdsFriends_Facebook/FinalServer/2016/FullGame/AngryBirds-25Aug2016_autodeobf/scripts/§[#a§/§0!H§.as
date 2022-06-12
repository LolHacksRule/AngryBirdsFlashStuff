package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §0!H§ extends §=,§
   {
      
      public static const §%!H§:String = "TEMPORARY_BLOCK";
       
      
      private var §+!4§:String;
      
      public function §0!H§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§+!4§ = param5.type;
      }
      
      public function get § o§() : String
      {
         return this.§+!4§;
      }
   }
}
