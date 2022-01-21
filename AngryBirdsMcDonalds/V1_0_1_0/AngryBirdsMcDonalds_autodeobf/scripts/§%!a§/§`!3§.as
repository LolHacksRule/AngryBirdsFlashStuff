package §%!a§
{
   import §&[§.§&!m§;
   import §2!g§.Sprite;
   
   public class §`!3§
   {
      
      public static const §6!$§:String = "setreferencesize";
      
      public static const §@!K§:String = "createsprite";
      
      public static const §1!`§:String = "scroll";
      
      public static const §!!A§:String = "zoom";
      
      public static const §'!V§:String = "playsound";
      
      public static const §[!1§:String = "fitwidth";
      
      public static const §6!b§:String = "fitheight";
      
      public static const §^!Y§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §=!<§:Number;
      
      private var §1!9§:Number;
      
      public function §`!3§(param1:Number, param2:Number)
      {
         super();
         this.§=!<§ = param1;
         this.§1!9§ = param2;
         if(isNaN(this.§1!9§))
         {
            this.§1!9§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§=!<§;
      }
      
      public function get duration() : Number
      {
         return this.§1!9§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§&!m§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §`!3§
      {
         return new §`!3§(this.time,this.duration);
      }
   }
}
