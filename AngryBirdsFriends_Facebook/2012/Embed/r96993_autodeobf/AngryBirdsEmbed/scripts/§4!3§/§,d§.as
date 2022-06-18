package §4!3§
{
   import §6u§.§3W§;
   import §]!6§.Sprite;
   
   public class §,d§
   {
      
      public static const §0'§:String = "setreferencesize";
      
      public static const §<`§:String = "createsprite";
      
      public static const §@$§:String = "scroll";
      
      public static const §[!&§:String = "zoom";
      
      public static const §@1§:String = "playsound";
      
      public static const §^W§:String = "fitwidth";
      
      public static const §<!-§:String = "fitheight";
      
      public static const §44§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §8]§:Number;
      
      private var §=E§:Number;
      
      public function §,d§(param1:Number, param2:Number)
      {
         super();
         this.§8]§ = param1;
         this.§=E§ = param2;
         if(isNaN(this.§=E§))
         {
            this.§=E§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§8]§;
      }
      
      public function get duration() : Number
      {
         return this.§=E§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§3W§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,d§
      {
         return new §,d§(this.time,this.duration);
      }
   }
}
