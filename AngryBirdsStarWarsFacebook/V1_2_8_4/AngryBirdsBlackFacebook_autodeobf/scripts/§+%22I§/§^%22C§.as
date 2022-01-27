package §+"I§
{
   import §!!k§.§0!B§;
   import §use§.Sprite;
   
   public class §^"C§
   {
      
      public static const § a§:String = "setreferencesize";
      
      public static const §!##§:String = "createsprite";
      
      public static const §<!3§:String = "scroll";
      
      public static const §>!R§:String = "zoom";
      
      public static const §@z§:String = "playsound";
      
      public static const §#r§:String = "fitwidth";
      
      public static const §;!M§:String = "fitheight";
      
      public static const §&"M§:String = "set_bg_colour";
      
      public static const §7"v§:String = "end";
       
      
      private var §3!f§:Number;
      
      private var §7a§:Number;
      
      public function §^"C§(param1:Number, param2:Number)
      {
         super();
         this.§3!f§ = param1;
         this.§7a§ = param2;
         if(isNaN(this.§7a§))
         {
            this.§7a§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§3!f§;
      }
      
      public function get duration() : Number
      {
         return this.§7a§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§0!B§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §^"C§
      {
         return new §^"C§(this.time,this.duration);
      }
   }
}
