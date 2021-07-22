package §6t§
{
   import §5" §.§5u§;
   import §5" §.§=n§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §+=§ extends Event
   {
      
      public static const §+!P§:String = "tabClicked";
      
      public static const §-#D§:String = "itemBuy";
       
      
      private var §3$@§:§=n§;
      
      private var §?!M§:§5u§;
      
      private var §'$8§:Point;
      
      private var §@+§:String;
      
      public function §+=§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§=n§ = null, param6:§5u§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§3$@§ = param5;
         this.§?!M§ = param6;
         this.§'$8§ = param7;
         this.§@+§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§'$8§;
      }
      
      public function get pricePoint() : §5u§
      {
         return this.§?!M§;
      }
      
      public function get §6!-§() : §=n§
      {
         return this.§3$@§;
      }
      
      public function get §&E§() : String
      {
         return this.§@+§;
      }
   }
}
