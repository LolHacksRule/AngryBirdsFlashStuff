package §%%§
{
   import §&"5§.§7!P§;
   import §default§.Sprite;
   
   public class §#K§
   {
      
      public static const §@"9§:String = "setreferencesize";
      
      public static const §5L§:String = "createsprite";
      
      public static const §;!W§:String = "scroll";
      
      public static const §-!i§:String = "zoom";
      
      public static const §-v§:String = "playsound";
      
      public static const §9b§:String = "fitwidth";
      
      public static const §5X§:String = "fitheight";
      
      public static const §`i§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §7A§:Number;
      
      private var §7X§:Number;
      
      public function §#K§(param1:Number, param2:Number)
      {
         super();
         this.§7A§ = param1;
         this.§7X§ = param2;
         if(isNaN(this.§7X§))
         {
            this.§7X§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§7A§;
      }
      
      public function get duration() : Number
      {
         return this.§7X§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §#K§
      {
         return new §#K§(this.time,this.duration);
      }
   }
}
