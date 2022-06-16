package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §"#1§ extends §]o§
   {
      
      public static const §1C§:String = "TEMPORARY_BLOCK";
       
      
      private var §'$3§:String;
      
      public function §"#1§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§'$3§ = param5.type;
      }
      
      public function get §?#x§() : String
      {
         return this.§'$3§;
      }
   }
}
