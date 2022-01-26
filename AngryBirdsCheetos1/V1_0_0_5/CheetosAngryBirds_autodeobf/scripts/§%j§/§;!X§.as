package §%j§
{
   import §!!R§.Sprite;
   import §&!W§.§8!K§;
   
   public class §;!X§
   {
      
      public static const §'!U§:String = "setreferencesize";
      
      public static const §^r§:String = "createsprite";
      
      public static const §=!=§:String = "scroll";
      
      public static const §;t§:String = "zoom";
      
      public static const §7;§:String = "playsound";
      
      public static const §^-§:String = "fitwidth";
      
      public static const §+M§:String = "fitheight";
      
      public static const §5H§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §[R§:Number;
      
      private var §^n§:Number;
      
      public function §;!X§(param1:Number, param2:Number)
      {
         super();
         this.§[R§ = param1;
         this.§^n§ = param2;
         if(isNaN(this.§^n§))
         {
            this.§^n§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§[R§;
      }
      
      public function get duration() : Number
      {
         return this.§^n§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§8!K§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §;!X§
      {
         return new §;!X§(this.time,this.duration);
      }
   }
}
