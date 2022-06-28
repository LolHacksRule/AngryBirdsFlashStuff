package §?$§
{
   import §1!&§.Sprite;
   import §8!?§.TextureManager;
   
   public class §9!'§
   {
      
      public static const §9E§:String = "setreferencesize";
      
      public static const § !A§:String = "createsprite";
      
      public static const §`!R§:String = "scroll";
      
      public static const §;9§:String = "zoom";
      
      public static const §''§:String = "playsound";
      
      public static const §&2§:String = "fitwidth";
      
      public static const §4!,§:String = "fitheight";
      
      public static const §;!Q§:String = "set_bg_colour";
      
      public static const §=!Y§:String = "end";
       
      
      private var §>2§:Number;
      
      private var §4!M§:Number;
      
      public function §9!'§(param1:Number, param2:Number)
      {
         super();
         this.§>2§ = param1;
         this.§4!M§ = param2;
         if(isNaN(this.§4!M§))
         {
            this.§4!M§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§>2§;
      }
      
      public function get duration() : Number
      {
         return this.§4!M§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §9!'§
      {
         return new §9!'§(this.time,this.duration);
      }
   }
}
