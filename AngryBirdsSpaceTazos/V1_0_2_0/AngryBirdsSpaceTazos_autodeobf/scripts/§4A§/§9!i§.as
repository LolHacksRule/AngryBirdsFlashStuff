package §4A§
{
   import §'!&§.Sprite;
   import §8o§.§5"%§;
   
   public class §9!i§
   {
      
      public static const § !`§:String = "setreferencesize";
      
      public static const §>!V§:String = "createsprite";
      
      public static const §,!t§:String = "scroll";
      
      public static const § " §:String = "zoom";
      
      public static const §;!-§:String = "playsound";
      
      public static const §,!?§:String = "fitwidth";
      
      public static const §>!h§:String = "fitheight";
      
      public static const §@0§:String = "set_bg_colour";
      
      public static const §2!X§:String = "end";
       
      
      private var §&!5§:Number;
      
      private var §&!@§:Number;
      
      public function §9!i§(param1:Number, param2:Number)
      {
         super();
         this.§&!5§ = param1;
         this.§&!@§ = param2;
         if(isNaN(this.§&!@§))
         {
            this.§&!@§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§&!5§;
      }
      
      public function get duration() : Number
      {
         return this.§&!@§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5"%§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §9!i§
      {
         return new §9!i§(this.time,this.duration);
      }
   }
}
