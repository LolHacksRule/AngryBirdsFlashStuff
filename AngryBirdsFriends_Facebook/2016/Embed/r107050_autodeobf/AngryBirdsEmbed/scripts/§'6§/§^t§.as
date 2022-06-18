package §'6§
{
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §^t§ extends Sprite
   {
      
      private static var §'z§:Boolean = false;
      
      private static const §"g§:String = "Mouse_Cursors";
      
      private static var §2!9§:Sprite;
      
      private static var §8!!§:MovieClip;
      
      private static var §"!J§:String;
      
      private static var §#x§:String = "";
      
      private static var §`!8§:Boolean = false;
       
      
      public function §^t§()
      {
         super();
      }
      
      public static function §@!A§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§"!J§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §"!J§ = "";
         §`!8§ = false;
         if(!§'z§ || !§8!!§)
         {
            if(!§0Y§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §8!!§.numChildren)
         {
            §8!!§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §8!!§.getChildByName(param1) as Sprite))
         {
            §8!!§.visible = false;
            Mouse.show();
            return false;
         }
         §"!J§ = param1;
         §8!!§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§"!J§ + "_Up"))
         {
            §`!8§ = true;
         }
         if(§`!8§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§"!J§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §0Y§() : Boolean
      {
         var _loc1_:Class = §%!?§.§4"§(§"g§);
         §8!!§ = new _loc1_();
         if(§8!!§)
         {
            §2!9§.addChild(§8!!§);
            §2!9§.mouseChildren = false;
            §8!!§.mouseEnabled = false;
            §2!9§.mouseEnabled = false;
            §8!!§.enabled = false;
            §8!!§.cacheAsBitmap = true;
         }
         return §8!!§ != null;
      }
      
      public static function §'x§() : Boolean
      {
         return §-!3§("_Down");
      }
      
      public static function §@=§() : Boolean
      {
         return §-!3§("_Up");
      }
      
      private static function §-!3§(param1:String) : Boolean
      {
         if(!§8!!§ || §"!J§.length < 1 || !§`!8§)
         {
            return false;
         }
         var _loc2_:Sprite = §8!!§.getChildByName(§"!J§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§"!J§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§"!J§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§'z§)
         {
            return §2!9§;
         }
         §2!9§ = new Sprite();
         §'z§ = true;
         return §2!9§;
      }
      
      public static function §%!=§(param1:Number, param2:Number) : void
      {
         if(!§'z§ || !§8!!§ || !§8!!§.visible)
         {
            return;
         }
         §2!9§.x = param1;
         §2!9§.y = param2;
      }
      
      public static function §4p§() : void
      {
         if(§8!!§)
         {
            if(§8!!§.visible)
            {
               §#x§ = §"!J§;
            }
            §@!A§("");
         }
      }
      
      public static function §]! §() : void
      {
         if(§8!!§)
         {
            if(!§8!!§.visible)
            {
               §@!A§(§#x§);
            }
         }
      }
   }
}
