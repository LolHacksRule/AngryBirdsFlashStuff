package §<!!§
{
   import § !K§.§'h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §<!B§ extends Sprite
   {
      
      private static var §1!L§:Boolean = false;
      
      private static const §4h§:String = "Mouse_Cursors";
      
      private static var §+!A§:Sprite;
      
      private static var §!!,§:MovieClip;
      
      private static var §&o§:String;
      
      private static var §7!J§:String = "";
      
      private static var §2!M§:Boolean = false;
       
      
      public function §<!B§()
      {
         super();
      }
      
      public static function §"G§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§&o§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §&o§ = "";
         §2!M§ = false;
         if(!§1!L§ || !§!!,§)
         {
            if(!§=%§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §!!,§.numChildren)
         {
            §!!,§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §!!,§.getChildByName(param1) as Sprite))
         {
            §!!,§.visible = false;
            Mouse.show();
            return false;
         }
         §&o§ = param1;
         §!!,§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§&o§ + "_Up"))
         {
            §2!M§ = true;
         }
         if(§2!M§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§&o§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §=%§() : Boolean
      {
         var _loc1_:Class = §'h§.§`E§(§4h§);
         §!!,§ = new _loc1_();
         if(§!!,§)
         {
            §+!A§.addChild(§!!,§);
            §+!A§.mouseChildren = false;
            §!!,§.mouseEnabled = false;
            §+!A§.mouseEnabled = false;
            §!!,§.enabled = false;
            §!!,§.cacheAsBitmap = true;
         }
         return §!!,§ != null;
      }
      
      public static function §8!M§() : Boolean
      {
         return §"!V§("_Down");
      }
      
      public static function §^!`§() : Boolean
      {
         return §"!V§("_Up");
      }
      
      private static function §"!V§(param1:String) : Boolean
      {
         if(!§!!,§ || §&o§.length < 1 || !§2!M§)
         {
            return false;
         }
         var _loc2_:Sprite = §!!,§.getChildByName(§&o§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§&o§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§&o§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§1!L§)
         {
            return §+!A§;
         }
         §+!A§ = new Sprite();
         §1!L§ = true;
         return §+!A§;
      }
      
      public static function §;;§(param1:Number, param2:Number) : void
      {
         if(!§1!L§ || !§!!,§ || !§!!,§.visible)
         {
            return;
         }
         §+!A§.x = param1;
         §+!A§.y = param2;
      }
      
      public static function §3@§() : void
      {
         if(§!!,§)
         {
            if(§!!,§.visible)
            {
               §7!J§ = §&o§;
            }
            §"G§("");
         }
      }
      
      public static function §^!#§() : void
      {
         if(§!!,§)
         {
            if(!§!!,§.visible)
            {
               §"G§(§7!J§);
            }
         }
      }
   }
}
