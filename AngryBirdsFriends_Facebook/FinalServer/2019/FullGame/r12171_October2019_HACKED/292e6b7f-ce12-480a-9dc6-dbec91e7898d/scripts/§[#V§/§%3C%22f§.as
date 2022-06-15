package §[#V§
{
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §<"f§ extends Event
   {
      
      public static const §;"n§:String = "tabClicked";
      
      public static const §5"n§:String = "itemBuy";
       
      
      private var §@l§:§2_§;
      
      private var §`!Q§:§'"j§;
      
      private var §`$ §:Point;
      
      private var §6$C§:String;
      
      public function §<"f§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§2_§ = null, param6:§'"j§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§@l§ = param5;
         this.§`!Q§ = param6;
         this.§`$ § = param7;
         this.§6$C§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§`$ §;
      }
      
      public function get pricePoint() : §'"j§
      {
         return this.§`!Q§;
      }
      
      public function get §@" §() : §2_§
      {
         return this.§@l§;
      }
      
      public function get §<"S§() : String
      {
         return this.§6$C§;
      }
   }
}
