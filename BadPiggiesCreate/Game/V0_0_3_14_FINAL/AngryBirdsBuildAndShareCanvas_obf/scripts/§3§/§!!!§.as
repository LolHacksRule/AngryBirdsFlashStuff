package §3§
{
   import §&"5§.§7!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §!!!§ extends Sprite
   {
      
      private static const §!"+§:int = 30;
       
      
      private const §3!h§:Number = 0.8;
      
      private const §?"#§:Number = 0.3;
      
      private var §%g§:Boolean;
      
      private var §'"1§:Bitmap;
      
      private var § !T§:DisplayObject;
      
      private var §]"7§:DisplayObject;
      
      private var §,!E§:String;
      
      public function §!!!§(param1:String, param2:Boolean)
      {
         super();
         this.§%g§ = param2;
         var _loc3_:BitmapData = §7!P§.§2=§.§"k§(param1);
         this.§'"1§ = new Bitmap(_loc3_,"auto",true);
         this.§'"1§.smoothing = true;
         this.§'"1§.width = Math.min(this.§'"1§.width,§!"+§);
         this.§'"1§.scaleY = this.§'"1§.scaleX;
         var _loc4_:Class = §>!]§.§1!8§("checkMark");
         this.§ !T§ = new _loc4_();
         var _loc5_:Class = §>!]§.§1!8§("crossMark");
         this.§]"7§ = new _loc5_();
         this.§,!E§ = param1;
         addChild(this.§'"1§);
         this.§ !T§.x = this.§'"1§.width / 2;
         this.§ !T§.y = this.§'"1§.height / 2;
         this.§]"7§.x = this.§'"1§.width / 2;
         this.§]"7§.y = this.§'"1§.height / 2;
         addChild(this.§ !T§);
         addChild(this.§]"7§);
      }
      
      public function get §,"8§() : Boolean
      {
         return this.§%g§;
      }
      
      public function get §@!h§() : String
      {
         return this.§,!E§;
      }
      
      public function §,!$§(param1:Boolean) : void
      {
         this.§ !T§.visible = param1;
         this.§]"7§.visible = !this.§%g§ && !param1;
         this.§'"1§.alpha = !!param1 ? Number(this.§?"#§) : Number(this.§3!h§);
      }
      
      public function get §7!q§() : Boolean
      {
         return this.§ !T§.visible;
      }
   }
}
