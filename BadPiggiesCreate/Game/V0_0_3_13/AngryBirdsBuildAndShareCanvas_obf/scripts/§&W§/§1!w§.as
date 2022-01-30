package §&W§
{
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §1!w§ extends Sprite
   {
      
      private static var § "0§:Boolean = false;
      
      private static const §1!9§:String = "Mouse_Cursors";
      
      private static var §=D§:Sprite;
      
      private static var §7J§:MovieClip;
      
      private static var §]!]§:String;
      
      private static var §[!^§:String = "";
      
      private static var §1#§:Boolean = false;
       
      
      public function §1!w§()
      {
         super();
      }
      
      public static function §9",§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§]!]§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §]!]§ = "";
         §1#§ = false;
         if(!§ "0§ || !§7J§)
         {
            if(!§2^§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §7J§.numChildren)
         {
            §7J§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §7J§.getChildByName(param1) as Sprite))
         {
            §7J§.visible = false;
            Mouse.show();
            return false;
         }
         §]!]§ = param1;
         §7J§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§]!]§ + "_Up"))
         {
            §1#§ = true;
         }
         if(§1#§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§]!]§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §2^§() : Boolean
      {
         var _loc1_:Class = §=#§.§1v§(§1!9§);
         §7J§ = new _loc1_();
         if(§7J§)
         {
            §=D§.addChild(§7J§);
            §=D§.mouseChildren = false;
            §7J§.mouseEnabled = false;
            §=D§.mouseEnabled = false;
            §7J§.enabled = false;
            §7J§.cacheAsBitmap = true;
         }
         return §7J§ != null;
      }
      
      public static function §@I§() : Boolean
      {
         return §<-§("_Down");
      }
      
      public static function §9i§() : Boolean
      {
         return §<-§("_Up");
      }
      
      private static function §<-§(param1:String) : Boolean
      {
         if(!§7J§ || §]!]§.length < 1 || !§1#§)
         {
            return false;
         }
         var _loc2_:Sprite = §7J§.getChildByName(§]!]§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§]!]§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§]!]§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§ "0§)
         {
            return §=D§;
         }
         §=D§ = new Sprite();
         § "0§ = true;
         return §=D§;
      }
      
      public static function §2!R§(param1:Number, param2:Number) : void
      {
         if(!§ "0§ || !§7J§ || !§7J§.visible)
         {
            return;
         }
         §=D§.x = param1;
         §=D§.y = param2;
      }
      
      public static function §`!y§() : void
      {
         if(§7J§)
         {
            if(§7J§.visible)
            {
               §[!^§ = §]!]§;
            }
            §9",§("");
         }
      }
      
      public static function §@!&§() : void
      {
         if(§7J§)
         {
            if(!§7J§.visible)
            {
               §9",§(§[!^§);
            }
         }
      }
   }
}
