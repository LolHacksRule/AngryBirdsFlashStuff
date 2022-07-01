package §7=§
{
   import §[_§.§2!B§;
   import com.rovio.assets.§]!S§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class §,!m§ extends Sprite
   {
      
      private static const §?t§:int = 30;
       
      
      private const §0"'§:Number = 0.8;
      
      private const §#""§:Number = 0.3;
      
      private var §>v§:Boolean;
      
      private var §^!1§:Bitmap;
      
      private var §2%§:DisplayObject;
      
      private var §>L§:DisplayObject;
      
      private var §"W§:String;
      
      public function §,!m§(param1:String, param2:Boolean)
      {
         super();
         this.§>v§ = param2;
         var _loc3_:BitmapData = §2!B§.§if §.§#"6§(param1);
         this.§^!1§ = new Bitmap(_loc3_,"auto",true);
         this.§^!1§.smoothing = true;
         this.§^!1§.width = Math.min(this.§^!1§.width,§?t§);
         this.§^!1§.scaleY = this.§^!1§.scaleX;
         var _loc4_:Class = §]!S§.§?! §("checkMark");
         this.§2%§ = new _loc4_();
         var _loc5_:Class = §]!S§.§?! §("crossMark");
         this.§>L§ = new _loc5_();
         this.§"W§ = param1;
         addChild(this.§^!1§);
         this.§2%§.x = this.§^!1§.width / 2;
         this.§2%§.y = this.§^!1§.height / 2;
         this.§>L§.x = this.§^!1§.width / 2;
         this.§>L§.y = this.§^!1§.height / 2;
         addChild(this.§2%§);
         addChild(this.§>L§);
      }
      
      public function get §@"9§() : Boolean
      {
         return this.§>v§;
      }
      
      public function get §>0§() : String
      {
         return this.§"W§;
      }
      
      public function §-!<§(param1:Boolean) : void
      {
         this.§2%§.visible = param1;
         this.§>L§.visible = !this.§>v§ && !param1;
         this.§^!1§.alpha = !!param1 ? Number(this.§#""§) : Number(this.§0"'§);
      }
      
      public function get §?f§() : Boolean
      {
         return this.§2%§.visible;
      }
   }
}
