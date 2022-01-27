package §""<§
{
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9!p§ extends Sprite
   {
      
      private static var §"!D§:Boolean = false;
      
      private static const §%>§:String = "Mouse_Cursors";
      
      private static var §#k§:Sprite;
      
      private static var §1! §:MovieClip;
      
      private static var § null§:String;
      
      private static var §`7§:String = "";
      
      private static var §@"=§:Boolean = false;
       
      
      public function §9!p§()
      {
         super();
      }
      
      public static function §>!'§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§ null§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         § null§ = "";
         §@"=§ = false;
         if(!§"!D§ || !§1! §)
         {
            if(!§5!9§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §1! §.numChildren)
         {
            §1! §.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §1! §.getChildByName(param1) as Sprite))
         {
            §1! §.visible = false;
            Mouse.show();
            return false;
         }
         § null§ = param1;
         §1! §.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§ null§ + "_Up"))
         {
            §@"=§ = true;
         }
         if(§@"=§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§ null§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §5!9§() : Boolean
      {
         var _loc1_:Class = §2!3§.dynamic(§%>§);
         §1! § = new _loc1_();
         if(§1! §)
         {
            §#k§.addChild(§1! §);
            §#k§.mouseChildren = false;
            §1! §.mouseEnabled = false;
            §#k§.mouseEnabled = false;
            §1! §.enabled = false;
            §1! §.cacheAsBitmap = true;
         }
         return §1! § != null;
      }
      
      public static function §5!y§() : Boolean
      {
         return §7l§("_Down");
      }
      
      public static function §&1§() : Boolean
      {
         return §7l§("_Up");
      }
      
      private static function §7l§(param1:String) : Boolean
      {
         if(!§1! § || § null§.length < 1 || !§@"=§)
         {
            return false;
         }
         var _loc2_:Sprite = §1! §.getChildByName(§ null§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§ null§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§ null§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§"!D§)
         {
            return §#k§;
         }
         §#k§ = new Sprite();
         §"!D§ = true;
         return §#k§;
      }
      
      public static function §]k§(param1:Number, param2:Number) : void
      {
         if(!§"!D§ || !§1! § || !§1! §.visible)
         {
            return;
         }
         §#k§.x = param1;
         §#k§.y = param2;
      }
      
      public static function §-"3§() : void
      {
         if(§1! §)
         {
            if(§1! §.visible)
            {
               §`7§ = § null§;
            }
            §>!'§("");
         }
      }
      
      public static function §2"1§() : void
      {
         if(§1! §)
         {
            if(!§1! §.visible)
            {
               §>!'§(§`7§);
            }
         }
      }
   }
}
