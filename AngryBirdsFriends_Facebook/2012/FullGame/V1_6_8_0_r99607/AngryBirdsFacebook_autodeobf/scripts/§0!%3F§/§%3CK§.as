package §0!?§
{
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §<K§ extends Sprite
   {
      
      private static var §57§:Boolean = false;
      
      private static const §2!m§:String = "Mouse_Cursors";
      
      private static var §4"1§:Sprite;
      
      private static var §&§:MovieClip;
      
      private static var §,J§:String;
      
      private static var §3"#§:String = "";
      
      private static var §!"5§:Boolean = false;
       
      
      public function §<K§()
      {
         super();
      }
      
      public static function §5!7§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§,J§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §,J§ = "";
         §!"5§ = false;
         if(!§57§ || !§&§)
         {
            if(!§4"<§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §&§.numChildren)
         {
            §&§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §&§.getChildByName(param1) as Sprite))
         {
            §&§.visible = false;
            Mouse.show();
            return false;
         }
         §,J§ = param1;
         §&§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§,J§ + "_Up"))
         {
            §!"5§ = true;
         }
         if(§!"5§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§,J§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §4"<§() : Boolean
      {
         var _loc1_:Class = §#!J§.§1!Y§(§2!m§);
         §&§ = new _loc1_();
         if(§&§)
         {
            §4"1§.addChild(§&§);
            §4"1§.mouseChildren = false;
            §&§.mouseEnabled = false;
            §4"1§.mouseEnabled = false;
            §&§.enabled = false;
            §&§.cacheAsBitmap = true;
         }
         return §&§ != null;
      }
      
      public static function §%L§() : Boolean
      {
         return §%!C§("_Down");
      }
      
      public static function §#K§() : Boolean
      {
         return §%!C§("_Up");
      }
      
      private static function §%!C§(param1:String) : Boolean
      {
         if(!§&§ || §,J§.length < 1 || !§!"5§)
         {
            return false;
         }
         var _loc2_:Sprite = §&§.getChildByName(§,J§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§,J§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§,J§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§57§)
         {
            return §4"1§;
         }
         §4"1§ = new Sprite();
         §57§ = true;
         return §4"1§;
      }
      
      public static function §<P§(param1:Number, param2:Number) : void
      {
         if(!§57§ || !§&§ || !§&§.visible)
         {
            return;
         }
         §4"1§.x = param1;
         §4"1§.y = param2;
      }
      
      public static function §@"9§() : void
      {
         if(§&§)
         {
            if(§&§.visible)
            {
               §3"#§ = §,J§;
            }
            §5!7§("");
         }
      }
      
      public static function §3!B§() : void
      {
         if(§&§)
         {
            if(!§&§.visible)
            {
               §5!7§(§3"#§);
            }
         }
      }
   }
}
