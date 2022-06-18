package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §]$1§ extends §;"i§
   {
      
      public static const §["A§:String = "TEMPORARY_BLOCK";
       
      
      private var §^"`§:String;
      
      public function §]$1§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§^"`§ = param5.type;
      }
      
      public function get §#"x§() : String
      {
         return this.§^"`§;
      }
   }
}
