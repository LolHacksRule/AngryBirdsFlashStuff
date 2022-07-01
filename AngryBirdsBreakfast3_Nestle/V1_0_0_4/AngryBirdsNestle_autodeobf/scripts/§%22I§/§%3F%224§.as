package §"I§
{
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §?"4§ extends Sprite
   {
      
      private static var § !X§:Boolean = false;
      
      private static const §<!&§:String = "Mouse_Cursors";
      
      private static var §1!U§:Sprite;
      
      private static var §9=§:MovieClip;
      
      private static var §3! §:String;
      
      private static var §,p§:String = "";
      
      private static var §`!f§:Boolean = false;
       
      
      public function §?"4§()
      {
         super();
      }
      
      public static function §6!R§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§3! § == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §3! § = "";
         §`!f§ = false;
         if(!§ !X§ || !§9=§)
         {
            if(!§;!o§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §9=§.numChildren)
         {
            §9=§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §9=§.getChildByName(param1) as Sprite))
         {
            §9=§.visible = false;
            Mouse.show();
            return false;
         }
         §3! § = param1;
         §9=§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§3! § + "_Up"))
         {
            §`!f§ = true;
         }
         if(§`!f§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§3! § + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §;!o§() : Boolean
      {
         var _loc1_:Class = §&!2§.§0!O§(§<!&§);
         §9=§ = new _loc1_();
         if(§9=§)
         {
            §1!U§.addChild(§9=§);
            §1!U§.mouseChildren = false;
            §9=§.mouseEnabled = false;
            §1!U§.mouseEnabled = false;
            §9=§.enabled = false;
            §9=§.cacheAsBitmap = true;
         }
         return §9=§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §]!M§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §]!M§("_Up");
      }
      
      private static function §]!M§(param1:String) : Boolean
      {
         if(!§9=§ || §3! §.length < 1 || !§`!f§)
         {
            return false;
         }
         var _loc2_:Sprite = §9=§.getChildByName(§3! §) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§3! § + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§3! § + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§ !X§)
         {
            return §1!U§;
         }
         §1!U§ = new Sprite();
         § !X§ = true;
         return §1!U§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§ !X§ || !§9=§ || !§9=§.visible)
         {
            return;
         }
         §1!U§.x = param1;
         §1!U§.y = param2;
      }
      
      public static function §=?§() : void
      {
         if(§9=§)
         {
            if(§9=§.visible)
            {
               §,p§ = §3! §;
            }
            §6!R§("");
         }
      }
      
      public static function §,!5§() : void
      {
         if(§9=§)
         {
            if(!§9=§.visible)
            {
               §6!R§(§,p§);
            }
         }
      }
   }
}
