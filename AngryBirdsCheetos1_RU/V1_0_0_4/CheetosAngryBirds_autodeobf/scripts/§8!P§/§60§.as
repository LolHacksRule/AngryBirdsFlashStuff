package §8!P§
{
   import §1!A§.Sprite;
   import §8K§.§>g§;
   
   public class §60§
   {
      
      public static const §9!`§:String = "setreferencesize";
      
      public static const §0M§:String = "createsprite";
      
      public static const §2!]§:String = "scroll";
      
      public static const §>=§:String = "zoom";
      
      public static const §3!O§:String = "playsound";
      
      public static const §@!P§:String = "fitwidth";
      
      public static const §5-§:String = "fitheight";
      
      public static const §=_§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §`Q§:Number;
      
      private var § !=§:Number;
      
      public function §60§(param1:Number, param2:Number)
      {
         super();
         this.§`Q§ = param1;
         this.§ !=§ = param2;
         if(isNaN(this.§ !=§))
         {
            this.§ !=§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§`Q§;
      }
      
      public function get duration() : Number
      {
         return this.§ !=§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§>g§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §60§
      {
         return new §60§(this.time,this.duration);
      }
   }
}
