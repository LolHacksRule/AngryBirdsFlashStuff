package §3!a§
{
   import §9$§.Sprite;
   import §@"§.§&!=§;
   
   public class §`#K§
   {
      
      public static const §3#o§:String = "setreferencesize";
      
      public static const §!R§:String = "createsprite";
      
      public static const § "z§:String = "scroll";
      
      public static const §^-§:String = "zoom";
      
      public static const §@"?§:String = "playsound";
      
      public static const §<"@§:String = "fitwidth";
      
      public static const §<"R§:String = "fitheight";
      
      public static const §%"N§:String = "set_bg_colour";
      
      public static const §]!E§:String = "end";
       
      
      private var §-_§:Number;
      
      private var §,!n§:Number;
      
      public function §`#K§(param1:Number, param2:Number)
      {
         super();
         this.§-_§ = param1;
         this.§,!n§ = param2;
         if(isNaN(this.§,!n§))
         {
            this.§,!n§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§-_§;
      }
      
      public function get duration() : Number
      {
         return this.§,!n§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§&!=§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §`#K§
      {
         return new §`#K§(this.time,this.duration);
      }
   }
}
