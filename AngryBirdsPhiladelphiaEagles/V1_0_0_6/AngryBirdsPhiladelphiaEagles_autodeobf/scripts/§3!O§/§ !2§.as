package §3!O§
{
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class § !2§ extends Sprite
   {
      
      private static var §`T§:Boolean = false;
      
      private static const §@!A§:String = "Mouse_Cursors";
      
      private static var §>m§:Sprite;
      
      private static var §3J§:MovieClip;
      
      private static var §[M§:String;
      
      private static var §=!9§:String = "";
      
      private static var §,N§:Boolean = false;
       
      
      public function § !2§()
      {
         super();
      }
      
      public static function §&!§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§[M§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §[M§ = "";
         §,N§ = false;
         if(!§`T§ || !§3J§)
         {
            if(!§4]§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §3J§.numChildren)
         {
            §3J§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §3J§.getChildByName(param1) as Sprite))
         {
            §3J§.visible = false;
            Mouse.show();
            return false;
         }
         §[M§ = param1;
         §3J§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§[M§ + "_Up"))
         {
            §,N§ = true;
         }
         if(§,N§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§[M§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §4]§() : Boolean
      {
         var _loc1_:Class = §^3§.§+_§(§@!A§);
         §3J§ = new _loc1_();
         if(§3J§)
         {
            §>m§.addChild(§3J§);
            §>m§.mouseChildren = false;
            §3J§.mouseEnabled = false;
            §>m§.mouseEnabled = false;
            §3J§.enabled = false;
            §3J§.cacheAsBitmap = true;
         }
         return §3J§ != null;
      }
      
      public static function §8S§() : Boolean
      {
         return § in§("_Down");
      }
      
      public static function §@+§() : Boolean
      {
         return § in§("_Up");
      }
      
      private static function § in§(param1:String) : Boolean
      {
         if(!§3J§ || §[M§.length < 1 || !§,N§)
         {
            return false;
         }
         var _loc2_:Sprite = §3J§.getChildByName(§[M§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§[M§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§[M§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§`T§)
         {
            return §>m§;
         }
         §>m§ = new Sprite();
         §`T§ = true;
         return §>m§;
      }
      
      public static function §9#§(param1:Number, param2:Number) : void
      {
         if(!§`T§ || !§3J§ || !§3J§.visible)
         {
            return;
         }
         §>m§.x = param1;
         §>m§.y = param2;
      }
      
      public static function §?z§() : void
      {
         if(§3J§)
         {
            if(§3J§.visible)
            {
               §=!9§ = §[M§;
            }
            §&!§("");
         }
      }
      
      public static function §]=§() : void
      {
         if(§3J§)
         {
            if(!§3J§.visible)
            {
               §&!§(§=!9§);
            }
         }
      }
   }
}
