package §9!$§
{
   import §-!`§.Sprite;
   import §=U§.§3p§;
   
   public class §&!W§
   {
      
      public static const §5b§:String = "setreferencesize";
      
      public static const §][§:String = "createsprite";
      
      public static const §5!u§:String = "scroll";
      
      public static const §9J§:String = "zoom";
      
      public static const §]V§:String = "playsound";
      
      public static const §%E§:String = "fitwidth";
      
      public static const §+!f§:String = "fitheight";
      
      public static const §#Y§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §8!N§:Number;
      
      private var §&!G§:Number;
      
      public function §&!W§(param1:Number, param2:Number)
      {
         super();
         this.§8!N§ = param1;
         this.§&!G§ = param2;
         if(isNaN(this.§&!G§))
         {
            this.§&!G§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§8!N§;
      }
      
      public function get duration() : Number
      {
         return this.§&!G§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §&!W§
      {
         return new §&!W§(this.time,this.duration);
      }
   }
}
