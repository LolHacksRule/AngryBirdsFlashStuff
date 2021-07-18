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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §=!N§)
         {
            §9o§ = "tabClicked";
            do
            {
               §[",§ = "itemBuy";
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §>"#§:§="C§;
      
      private var §9!5§:§#l§;
      
      private var §0">§:Point;
      
      public function §=!N§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:§="C§ = null, param5:§#l§ = null, param6:Point = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2,param3);
         }
         loop0:
         do
         {
            this.§>"#§ = param4;
            while(true)
            {
               this.§9!5§ = param5;
               while(_loc8_ || this)
               {
                  this.§0">§ = param6;
                  if(!(_loc7_ && param1))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc7_);
         
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
