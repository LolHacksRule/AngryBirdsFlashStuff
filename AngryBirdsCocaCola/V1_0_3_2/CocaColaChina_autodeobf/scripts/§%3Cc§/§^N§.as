package §<c§
{
   import §8r§.§@V§;
   import §;t§.Sprite;
   
   public class §^N§
   {
      
      public static const §%!a§:String = "setreferencesize";
      
      public static const §'y§:String = "createsprite";
      
      public static const §4!2§:String = "scroll";
      
      public static const §#!!§:String = "zoom";
      
      public static const §,!"§:String = "playsound";
      
      public static const §7!b§:String = "fitwidth";
      
      public static const §in §:String = "fitheight";
      
      public static const §7o§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §>!+§:Number;
      
      private var §88§:Number;
      
      public function §^N§(param1:Number, param2:Number)
      {
         super();
         this.§>!+§ = param1;
         this.§88§ = param2;
         if(isNaN(this.§88§))
         {
            this.§88§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§>!+§;
      }
      
      public function get duration() : Number
      {
         return this.§88§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§@V§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §^N§
      {
         return new §^N§(this.time,this.duration);
      }
   }
}
