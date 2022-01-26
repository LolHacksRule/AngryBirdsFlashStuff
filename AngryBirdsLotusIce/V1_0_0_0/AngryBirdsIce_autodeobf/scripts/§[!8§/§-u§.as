package §[!8§
{
   import §&V§.§,w§;
   import §@!=§.Sprite;
   
   public class §-u§
   {
      
      public static const §@m§:String = "setreferencesize";
      
      public static const §!Y§:String = "createsprite";
      
      public static const §%-§:String = "scroll";
      
      public static const §=!?§:String = "zoom";
      
      public static const §3'§:String = "playsound";
      
      public static const §8!E§:String = "fitwidth";
      
      public static const §8v§:String = "fitheight";
      
      public static const §4e§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §`+§:Number;
      
      private var §"!<§:Number;
      
      public function §-u§(param1:Number, param2:Number)
      {
         super();
         this.§`+§ = param1;
         this.§"!<§ = param2;
         if(isNaN(this.§"!<§))
         {
            this.§"!<§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§`+§;
      }
      
      public function get duration() : Number
      {
         return this.§"!<§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§,w§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §-u§
      {
         return new §-u§(this.time,this.duration);
      }
   }
}
