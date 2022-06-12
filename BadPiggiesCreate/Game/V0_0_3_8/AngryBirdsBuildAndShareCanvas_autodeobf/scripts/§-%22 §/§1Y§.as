package §-" §
{
   import § !V§.§7!P§;
   import com.rovio.assets.§%"4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §1Y§ extends Sprite
   {
      
      private static const §[W§:int = 30;
       
      
      private const §&e§:Number = 0.8;
      
      private const §9!R§:Number = 0.3;
      
      private var §2W§:Boolean;
      
      private var §`!^§:Bitmap;
      
      private var §0!^§:DisplayObject;
      
      private var §#!]§:DisplayObject;
      
      private var §9E§:String;
      
      public function §1Y§(param1:String, param2:Boolean)
      {
         super();
         this.§2W§ = param2;
         var _loc3_:BitmapData = §7!P§.§9j§.§+"#§(param1);
         this.§`!^§ = new Bitmap(_loc3_,"auto",true);
         this.§`!^§.smoothing = true;
         this.§`!^§.width = Math.min(this.§`!^§.width,§[W§);
         this.§`!^§.scaleY = this.§`!^§.scaleX;
         var _loc4_:Class = §%"4§.§>!v§("checkMark");
         this.§0!^§ = new _loc4_();
         var _loc5_:Class = §%"4§.§>!v§("crossMark");
         this.§#!]§ = new _loc5_();
         this.§9E§ = param1;
         addChild(this.§`!^§);
         this.§0!^§.x = this.§`!^§.width / 2;
         this.§0!^§.y = this.§`!^§.height / 2;
         this.§#!]§.x = this.§`!^§.width / 2;
         this.§#!]§.y = this.§`!^§.height / 2;
         addChild(this.§0!^§);
         addChild(this.§#!]§);
      }
      
      public function get §^c§() : Boolean
      {
         return this.§2W§;
      }
      
      public function get §@Q§() : String
      {
         return this.§9E§;
      }
      
      public function §-!<§(param1:Boolean) : void
      {
         this.§0!^§.visible = param1;
         this.§#!]§.visible = !this.§2W§ && !param1;
         this.§`!^§.alpha = !!param1 ? Number(this.§9!R§) : Number(this.§&e§);
      }
      
      public function get §[!#§() : Boolean
      {
         return this.§0!^§.visible;
      }
   }
}
