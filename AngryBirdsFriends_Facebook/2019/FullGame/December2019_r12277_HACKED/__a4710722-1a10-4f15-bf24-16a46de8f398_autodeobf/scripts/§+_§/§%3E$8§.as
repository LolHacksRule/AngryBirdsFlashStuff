package §+_§
{
   import §#Z§.Sprite;
   import §9#M§.§%"=§;
   
   public class §>$8§
   {
      
      public static const §@#o§:String = "setreferencesize";
      
      public static const §%"G§:String = "createsprite";
      
      public static const §&#&§:String = "scroll";
      
      public static const §7L§:String = "zoom";
      
      public static const §`#0§:String = "playsound";
      
      public static const § "&§:String = "fitwidth";
      
      public static const §8!7§:String = "fitheight";
      
      public static const §#-§:String = "set_bg_colour";
      
      public static const §&!8§:String = "end";
       
      
      private var §[#2§:Number;
      
      private var §8g§:Number;
      
      public function §>$8§(param1:Number, param2:Number)
      {
         super();
         this.§[#2§ = param1;
         this.§8g§ = param2;
         if(isNaN(this.§8g§))
         {
            this.§8g§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§[#2§;
      }
      
      public function get duration() : Number
      {
         return this.§8g§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§%"=§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §>$8§
      {
         return new §>$8§(this.time,this.duration);
      }
   }
}
