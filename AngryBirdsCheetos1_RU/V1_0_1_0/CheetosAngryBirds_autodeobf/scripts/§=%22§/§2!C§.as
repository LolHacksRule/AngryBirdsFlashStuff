package §="§
{
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   
   public class §2!C§
   {
      
      public static const §0!F§:String = "setreferencesize";
      
      public static const §+!Y§:String = "createsprite";
      
      public static const §7!R§:String = "scroll";
      
      public static const §91§:String = "zoom";
      
      public static const §5!T§:String = "playsound";
      
      public static const §<A§:String = "fitwidth";
      
      public static const §^!P§:String = "fitheight";
      
      public static const §]#§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §9!6§:Number;
      
      private var §4!H§:Number;
      
      public function §2!C§(param1:Number, param2:Number)
      {
         super();
         this.§9!6§ = param1;
         this.§4!H§ = param2;
         if(isNaN(this.§4!H§))
         {
            this.§4!H§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§9!6§;
      }
      
      public function get duration() : Number
      {
         return this.§4!H§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'![§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §2!C§
      {
         return new §2!C§(this.time,this.duration);
      }
   }
}
