package §5h§
{
   import §@!-§.§3"1§;
   import com.rovio.assets.§!"'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §>!!§ extends Sprite
   {
      
      private static const §>!%§:int = 30;
       
      
      private const §7r§:Number = 0.8;
      
      private const §-I§:Number = 0.3;
      
      private var §5F§:Boolean;
      
      private var §7!d§:Bitmap;
      
      private var §?!b§:DisplayObject;
      
      private var §"!1§:DisplayObject;
      
      private var §#>§:String;
      
      public function §>!!§(param1:String, param2:Boolean)
      {
         super();
         this.§5F§ = param2;
         var _loc3_:BitmapData = §3"1§.§ "!§.§!5§(param1);
         this.§7!d§ = new Bitmap(_loc3_,"auto",true);
         this.§7!d§.smoothing = true;
         this.§7!d§.width = Math.min(this.§7!d§.width,§>!%§);
         this.§7!d§.scaleY = this.§7!d§.scaleX;
         var _loc4_:Class = §!"'§.§%!Q§("checkMark");
         this.§?!b§ = new _loc4_();
         var _loc5_:Class = §!"'§.§%!Q§("crossMark");
         this.§"!1§ = new _loc5_();
         this.§#>§ = param1;
         addChild(this.§7!d§);
         this.§?!b§.x = this.§7!d§.width / 2;
         this.§?!b§.y = this.§7!d§.height / 2;
         this.§"!1§.x = this.§7!d§.width / 2;
         this.§"!1§.y = this.§7!d§.height / 2;
         addChild(this.§?!b§);
         addChild(this.§"!1§);
      }
      
      public function get §@!v§() : Boolean
      {
         return this.§5F§;
      }
      
      public function get §%!;§() : String
      {
         return this.§#>§;
      }
      
      public function §3!^§(param1:Boolean) : void
      {
         this.§?!b§.visible = param1;
         this.§"!1§.visible = !this.§5F§ && !param1;
         this.§7!d§.alpha = !!param1 ? Number(this.§-I§) : Number(this.§7r§);
      }
      
      public function get §while§() : Boolean
      {
         return this.§?!b§.visible;
      }
   }
}
