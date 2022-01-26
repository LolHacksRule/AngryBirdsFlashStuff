package §'m§
{
   import com.rovio.assets.§-!1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §<7§ extends Sprite
   {
      
      private static var §#Y§:Boolean = false;
      
      private static const §%+§:String = "Mouse_Cursors";
      
      private static var § !,§:Sprite;
      
      private static var §'!"§:MovieClip;
      
      private static var §]l§:String;
      
      private static var §!9§:String = "";
      
      private static var §,!8§:Boolean = false;
       
      
      public function §<7§()
      {
         super();
      }
      
      public static function §#?§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§]l§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §]l§ = "";
         §,!8§ = false;
         if(!§#Y§ || !§'!"§)
         {
            if(!§6G§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'!"§.numChildren)
         {
            §'!"§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'!"§.getChildByName(param1) as Sprite))
         {
            §'!"§.visible = false;
            Mouse.show();
            return false;
         }
         §]l§ = param1;
         §'!"§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§]l§ + "_Up"))
         {
            §,!8§ = true;
         }
         if(§,!8§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§]l§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §6G§() : Boolean
      {
         var _loc1_:Class = §-!1§.§-T§(§%+§);
         §'!"§ = new _loc1_();
         if(§'!"§)
         {
            § !,§.addChild(§'!"§);
            § !,§.mouseChildren = false;
            §'!"§.mouseEnabled = false;
            § !,§.mouseEnabled = false;
            §'!"§.enabled = false;
            §'!"§.cacheAsBitmap = true;
         }
         return §'!"§ != null;
      }
      
      public static function §6!7§() : Boolean
      {
         return §0f§("_Down");
      }
      
      public static function §=c§() : Boolean
      {
         return §0f§("_Up");
      }
      
      private static function §0f§(param1:String) : Boolean
      {
         if(!§'!"§ || §]l§.length < 1 || !§,!8§)
         {
            return false;
         }
         var _loc2_:Sprite = §'!"§.getChildByName(§]l§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§]l§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§]l§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§#Y§)
         {
            return § !,§;
         }
         § !,§ = new Sprite();
         §#Y§ = true;
         return § !,§;
      }
      
      public static function §-0§(param1:Number, param2:Number) : void
      {
         if(!§#Y§ || !§'!"§ || !§'!"§.visible)
         {
            return;
         }
         § !,§.x = param1;
         § !,§.y = param2;
      }
      
      public static function §7O§() : void
      {
         if(§'!"§)
         {
            if(§'!"§.visible)
            {
               §!9§ = §]l§;
            }
            §#?§("");
         }
      }
      
      public static function §2'§() : void
      {
         if(§'!"§)
         {
            if(!§'!"§.visible)
            {
               §#?§(§!9§);
            }
         }
      }
   }
}
