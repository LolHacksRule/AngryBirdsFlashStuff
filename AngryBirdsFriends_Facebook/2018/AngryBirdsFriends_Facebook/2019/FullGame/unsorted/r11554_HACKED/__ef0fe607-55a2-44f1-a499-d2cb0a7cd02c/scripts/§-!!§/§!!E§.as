package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §!!E§ extends §,!h§
   {
      
      public static const §9!O§:String = "TEMPORARY_BLOCK";
       
      
      private var §^u§:String;
      
      public function §!!E§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§^u§ = param5.type;
      }
      
      public function get §-"R§() : String
      {
         return this.§^u§;
      }
   }
}
