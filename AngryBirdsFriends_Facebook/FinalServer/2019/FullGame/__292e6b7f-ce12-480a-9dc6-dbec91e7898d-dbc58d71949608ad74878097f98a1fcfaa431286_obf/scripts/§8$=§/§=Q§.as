package §8$=§
{
   import §,#e§.Sprite;
   import §7"T§.§#"^§;
   
   public class §=Q§
   {
      
      public static const §,"-§:String = "setreferencesize";
      
      public static const §4M§:String = "createsprite";
      
      public static const §0!I§:String = "scroll";
      
      public static const §9l§:String = "zoom";
      
      public static const §#!b§:String = "playsound";
      
      public static const §7!C§:String = "fitwidth";
      
      public static const §3!l§:String = "fitheight";
      
      public static const §^M§:String = "set_bg_colour";
      
      public static const §-""§:String = "end";
       
      
      private var §'"w§:Number;
      
      private var §32§:Number;
      
      public function §=Q§(param1:Number, param2:Number)
      {
         super();
         this.§'"w§ = param1;
         this.§32§ = param2;
         if(isNaN(this.§32§))
         {
            this.§32§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§'"w§;
      }
      
      public function get duration() : Number
      {
         return this.§32§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§#"^§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §=Q§
      {
         return new §=Q§(this.time,this.duration);
      }
   }
}
