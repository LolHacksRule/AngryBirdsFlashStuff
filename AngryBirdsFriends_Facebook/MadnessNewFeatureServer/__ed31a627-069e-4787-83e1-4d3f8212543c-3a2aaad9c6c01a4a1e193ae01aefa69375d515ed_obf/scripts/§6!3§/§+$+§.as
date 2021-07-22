package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §+$+§ extends §^#x§
   {
      
      public static const § !V§:String = "TEMPORARY_BLOCK";
       
      
      private var §+#p§:String;
      
      public function §+$+§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§+#p§ = param5.type;
      }
      
      public function get §8!L§() : String
      {
         return this.§+#p§;
      }
   }
}
