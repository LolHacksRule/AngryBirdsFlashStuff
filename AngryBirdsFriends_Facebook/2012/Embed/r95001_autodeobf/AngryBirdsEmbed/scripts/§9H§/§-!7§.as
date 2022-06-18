package §9H§
{
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §-!7§ extends Sprite
   {
      
      private static var §,<§:Boolean = false;
      
      private static const §,s§:String = "Mouse_Cursors";
      
      private static var §'4§:Sprite;
      
      private static var §+V§:MovieClip;
      
      private static var §3!G§:String;
      
      private static var §30§:String = "";
      
      private static var §5'§:Boolean = false;
       
      
      public function §-!7§()
      {
         super();
      }
      
      public static function §#,§(param1:String) : Boolean
      {
         if(§3!G§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §3!G§ = "";
         §5'§ = false;
         if(!§,<§ || !§+V§)
         {
            if(!§@=§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §+V§.numChildren)
         {
            §+V§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §+V§.getChildByName(param1) as Sprite))
         {
            §+V§.visible = false;
            Mouse.show();
            return false;
         }
         §3!G§ = param1;
         §+V§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§3!G§ + "_Up"))
         {
            §5'§ = true;
         }
         if(§5'§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§3!G§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §@=§() : Boolean
      {
         var _loc1_:Class = § 3§.§+i§(§,s§);
         §+V§ = new _loc1_();
         if(§+V§)
         {
            §'4§.addChild(§+V§);
            §'4§.mouseChildren = false;
            §+V§.mouseEnabled = false;
            §'4§.mouseEnabled = false;
            §+V§.enabled = false;
            §+V§.cacheAsBitmap = true;
         }
         return §+V§ != null;
      }
      
      public static function §8!#§() : Boolean
      {
         return §?M§("_Down");
      }
      
      public static function §]!$§() : Boolean
      {
         return §?M§("_Up");
      }
      
      private static function §?M§(param1:String) : Boolean
      {
         if(!§+V§ || §3!G§.length < 1 || !§5'§)
         {
            return false;
         }
         var _loc2_:Sprite = §+V§.getChildByName(§3!G§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§3!G§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§3!G§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§,<§)
         {
            return §'4§;
         }
         §'4§ = new Sprite();
         §,<§ = true;
         return §'4§;
      }
      
      public static function §0C§(param1:Number, param2:Number) : void
      {
         if(!§,<§ || !§+V§ || !§+V§.visible)
         {
            return;
         }
         §'4§.x = param1;
         §'4§.y = param2;
      }
      
      public static function §+^§() : void
      {
         if(§+V§)
         {
            if(§+V§.visible)
            {
               §30§ = §3!G§;
            }
            §#,§("");
         }
      }
      
      public static function §4!;§() : void
      {
         if(§+V§)
         {
            if(!§+V§.visible)
            {
               §#,§(§30§);
            }
         }
      }
   }
}
