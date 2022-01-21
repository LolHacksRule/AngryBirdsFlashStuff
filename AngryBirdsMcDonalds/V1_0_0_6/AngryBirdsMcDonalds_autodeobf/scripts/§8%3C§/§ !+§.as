package §8<§
{
   import §7!k§.§%!_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class § !+§ extends Sprite
   {
      
      private static var §3?§:Boolean = false;
      
      private static const §5d§:String = "Mouse_Cursors";
      
      private static var §[Y§:Sprite;
      
      private static var §'! §:MovieClip;
      
      private static var §=V§:String;
      
      private static var §,L§:String = "";
      
      private static var §7!%§:Boolean = false;
       
      
      public function § !+§()
      {
         super();
      }
      
      public static function §8!8§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§=V§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §=V§ = "";
         §7!%§ = false;
         if(!§3?§ || !§'! §)
         {
            if(!§3Q§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'! §.numChildren)
         {
            §'! §.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'! §.getChildByName(param1) as Sprite))
         {
            §'! §.visible = false;
            Mouse.show();
            return false;
         }
         §=V§ = param1;
         §'! §.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§=V§ + "_Up"))
         {
            §7!%§ = true;
         }
         if(§7!%§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§=V§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §3Q§() : Boolean
      {
         var _loc1_:Class = §%!_§.§1$§(§5d§);
         §'! § = new _loc1_();
         if(§'! §)
         {
            §[Y§.addChild(§'! §);
            §[Y§.mouseChildren = false;
            §'! §.mouseEnabled = false;
            §[Y§.mouseEnabled = false;
            §'! §.enabled = false;
            §'! §.cacheAsBitmap = true;
         }
         return §'! § != null;
      }
      
      public static function §1,§() : Boolean
      {
         return §[![§("_Down");
      }
      
      public static function §4!,§() : Boolean
      {
         return §[![§("_Up");
      }
      
      private static function §[![§(param1:String) : Boolean
      {
         if(!§'! § || §=V§.length < 1 || !§7!%§)
         {
            return false;
         }
         var _loc2_:Sprite = §'! §.getChildByName(§=V§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§=V§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§=V§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§3?§)
         {
            return §[Y§;
         }
         §[Y§ = new Sprite();
         §3?§ = true;
         return §[Y§;
      }
      
      public static function §1!3§(param1:Number, param2:Number) : void
      {
         if(!§3?§ || !§'! § || !§'! §.visible)
         {
            return;
         }
         §[Y§.x = param1;
         §[Y§.y = param2;
      }
      
      public static function §9!>§() : void
      {
         if(§'! §)
         {
            if(§'! §.visible)
            {
               §,L§ = §=V§;
            }
            §8!8§("");
         }
      }
      
      public static function §;R§() : void
      {
         if(§'! §)
         {
            if(!§'! §.visible)
            {
               §8!8§(§,L§);
            }
         }
      }
   }
}
