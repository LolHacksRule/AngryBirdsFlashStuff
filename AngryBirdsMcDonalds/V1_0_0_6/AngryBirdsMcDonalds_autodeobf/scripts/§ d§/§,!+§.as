package § d§
{
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   
   public class §,!+§
   {
      
      public static const §#Y§:String = "setreferencesize";
      
      public static const §&!Z§:String = "createsprite";
      
      public static const §8!j§:String = "scroll";
      
      public static const §4!0§:String = "zoom";
      
      public static const §[S§:String = "playsound";
      
      public static const §=F§:String = "fitwidth";
      
      public static const §?5§:String = "fitheight";
      
      public static const §`Y§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §>!b§:Number;
      
      private var §<S§:Number;
      
      public function §,!+§(param1:Number, param2:Number)
      {
         super();
         this.§>!b§ = param1;
         this.§<S§ = param2;
         if(isNaN(this.§<S§))
         {
            this.§<S§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§>!b§;
      }
      
      public function get duration() : Number
      {
         return this.§<S§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§<!'§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,!+§
      {
         return new §,!+§(this.time,this.duration);
      }
   }
}
