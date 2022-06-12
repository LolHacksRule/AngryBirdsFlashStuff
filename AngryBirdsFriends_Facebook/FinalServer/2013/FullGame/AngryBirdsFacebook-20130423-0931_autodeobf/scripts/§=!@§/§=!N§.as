package §=!@§
{
   import §59§.§#l§;
   import §59§.§="C§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §=!N§ extends Event
   {
      
      public static const §9o§:String = "tabClicked";
      
      public static const §[",§:String = "itemBuy";
       
      
      private var §>"#§:§="C§;
      
      private var §9!5§:§#l§;
      
      private var §0">§:Point;
      
      public function §=!N§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:§="C§ = null, param5:§#l§ = null, param6:Point = null)
      {
         super(param1,param2,param3);
         this.§>"#§ = param4;
         this.§9!5§ = param5;
         this.§0">§ = param6;
      }
      
      public function get point() : Point
      {
         return this.§0">§;
      }
      
      public function get §5j§() : §#l§
      {
         return this.§9!5§;
      }
      
      public function get §;"R§() : §="C§
      {
         return this.§>"#§;
      }
   }
}
