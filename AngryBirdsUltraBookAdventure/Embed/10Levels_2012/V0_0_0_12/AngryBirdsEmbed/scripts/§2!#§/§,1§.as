package §2!#§
{
   import §-!0§.§'!3§;
   import §?^§.Sprite;
   
   public class §,1§
   {
      
      public static const §>L§:String = "setreferencesize";
      
      public static const §@8§:String = "createsprite";
      
      public static const §3M§:String = "scroll";
      
      public static const §2Y§:String = "zoom";
      
      public static const §&!3§:String = "playsound";
      
      public static const §]-§:String = "fitwidth";
      
      public static const §&>§:String = "fitheight";
      
      public static const §1§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §=,§:Number;
      
      private var §8!F§:Number;
      
      public function §,1§(param1:Number, param2:Number)
      {
         super();
         this.§=,§ = param1;
         this.§8!F§ = param2;
         if(isNaN(this.§8!F§))
         {
            this.§8!F§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§=,§;
      }
      
      public function get duration() : Number
      {
         return this.§8!F§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,1§
      {
         return new §,1§(this.time,this.duration);
      }
   }
}
