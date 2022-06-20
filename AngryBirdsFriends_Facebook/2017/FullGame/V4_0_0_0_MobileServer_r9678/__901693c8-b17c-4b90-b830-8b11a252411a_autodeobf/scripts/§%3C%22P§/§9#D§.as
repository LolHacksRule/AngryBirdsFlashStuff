package §<"p§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9#D§ extends Sprite
   {
      
      private static var §8#I§:Boolean = false;
      
      private static const §'#k§:String = "Mouse_Cursors";
      
      private static var §?!K§:Sprite;
      
      private static var §`S§:MovieClip;
      
      private static var §<!l§:String;
      
      private static var §>"X§:String = "";
      
      private static var §-H§:Boolean = false;
       
      
      public function §9#D§()
      {
         super();
      }
      
      public static function §^!l§(param1:String) : Boolean
      {
         if(§<!l§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §<!l§ = "";
         §-H§ = false;
         if(!§8#I§ || !§`S§)
         {
            if(!§=#&§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §`S§.numChildren)
         {
            §`S§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §`S§.getChildByName(param1) as Sprite))
         {
            §`S§.visible = false;
            Mouse.show();
            return false;
         }
         §<!l§ = param1;
         §`S§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§<!l§ + "_Up"))
         {
            §-H§ = true;
         }
         if(§-H§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§<!l§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §=#&§() : Boolean
      {
         var _loc1_:Class = §+$#§.§["`§(§'#k§);
         §`S§ = new _loc1_();
         if(§`S§)
         {
            §?!K§.addChild(§`S§);
            §?!K§.mouseChildren = false;
            §`S§.mouseEnabled = false;
            §?!K§.mouseEnabled = false;
            §`S§.enabled = false;
            §`S§.cacheAsBitmap = true;
         }
         return §`S§ != null;
      }
      
      public static function §9#q§() : Boolean
      {
         return §^$=§("_Down");
      }
      
      public static function §4!E§() : Boolean
      {
         return §^$=§("_Up");
      }
      
      private static function §^$=§(param1:String) : Boolean
      {
         if(!§`S§ || §<!l§.length < 1 || !§-H§)
         {
            return false;
         }
         var _loc2_:Sprite = §`S§.getChildByName(§<!l§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§<!l§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§<!l§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§8#I§)
         {
            return §?!K§;
         }
         §?!K§ = new Sprite();
         §8#I§ = true;
         return §?!K§;
      }
      
      public static function §&#W§(param1:Number, param2:Number) : void
      {
         if(!§8#I§ || !§`S§ || !§`S§.visible)
         {
            return;
         }
         §?!K§.x = param1;
         §?!K§.y = param2;
      }
      
      public static function § !O§() : void
      {
         if(§`S§)
         {
            if(§`S§.visible)
            {
               §>"X§ = §<!l§;
            }
            §^!l§("");
         }
      }
      
      public static function §3#c§() : void
      {
         if(§`S§)
         {
            if(!§`S§.visible)
            {
               §^!l§(§>"X§);
            }
         }
      }
   }
}
