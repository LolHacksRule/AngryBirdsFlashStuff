package §=I§
{
   import §=`§.§6!I§;
   import §`g§.Sprite;
   
   public class §?!t§
   {
      
      public static const §-;§:String = "setreferencesize";
      
      public static const §^k§:String = "createsprite";
      
      public static const §0!u§:String = "scroll";
      
      public static const §]!e§:String = "zoom";
      
      public static const §;X§:String = "playsound";
      
      public static const §else §:String = "fitwidth";
      
      public static const §,h§:String = "fitheight";
      
      public static const §&+§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §!!L§:Number;
      
      private var §&!`§:Number;
      
      public function §?!t§(param1:Number, param2:Number)
      {
         super();
         this.§!!L§ = param1;
         this.§&!`§ = param2;
         if(isNaN(this.§&!`§))
         {
            this.§&!`§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§!!L§;
      }
      
      public function get duration() : Number
      {
         return this.§&!`§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §?!t§
      {
         return new §?!t§(this.time,this.duration);
      }
   }
}
