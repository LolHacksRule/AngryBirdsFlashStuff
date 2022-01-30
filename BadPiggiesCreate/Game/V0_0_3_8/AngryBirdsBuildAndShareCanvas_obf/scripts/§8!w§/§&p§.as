package §8!w§
{
   import § !V§.§7!P§;
   import §]!2§.Sprite;
   
   public class §&p§
   {
      
      public static const §<+§:String = "setreferencesize";
      
      public static const §=!k§:String = "createsprite";
      
      public static const §;!c§:String = "scroll";
      
      public static const § !Z§:String = "zoom";
      
      public static const §3h§:String = "playsound";
      
      public static const §?=§:String = "fitwidth";
      
      public static const §3!1§:String = "fitheight";
      
      public static const §;b§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §<h§:Number;
      
      private var §8!h§:Number;
      
      public function §&p§(param1:Number, param2:Number)
      {
         super();
         this.§<h§ = param1;
         this.§8!h§ = param2;
         if(isNaN(this.§8!h§))
         {
            this.§8!h§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§<h§;
      }
      
      public function get duration() : Number
      {
         return this.§8!h§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §&p§
      {
         return new §&p§(this.time,this.duration);
      }
   }
}
