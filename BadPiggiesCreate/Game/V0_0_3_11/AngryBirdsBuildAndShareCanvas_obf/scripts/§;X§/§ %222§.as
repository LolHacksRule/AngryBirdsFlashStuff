package §;X§
{
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class § "2§ extends Sprite
   {
      
      private static var §&!_§:Boolean = false;
      
      private static const §@u§:String = "Mouse_Cursors";
      
      private static var §;!3§:Sprite;
      
      private static var §9!<§:MovieClip;
      
      private static var §1A§:String;
      
      private static var §each §:String = "";
      
      private static var §,"'§:Boolean = false;
       
      
      public function § "2§()
      {
         super();
      }
      
      public static function §0!n§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§1A§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §1A§ = "";
         §,"'§ = false;
         if(!§&!_§ || !§9!<§)
         {
            if(!§`!Y§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §9!<§.numChildren)
         {
            §9!<§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §9!<§.getChildByName(param1) as Sprite))
         {
            §9!<§.visible = false;
            Mouse.show();
            return false;
         }
         §1A§ = param1;
         §9!<§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§1A§ + "_Up"))
         {
            §,"'§ = true;
         }
         if(§,"'§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§1A§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §`!Y§() : Boolean
      {
         var _loc1_:Class = §]!S§.§?! §(§@u§);
         §9!<§ = new _loc1_();
         if(§9!<§)
         {
            §;!3§.addChild(§9!<§);
            §;!3§.mouseChildren = false;
            §9!<§.mouseEnabled = false;
            §;!3§.mouseEnabled = false;
            §9!<§.enabled = false;
            §9!<§.cacheAsBitmap = true;
         }
         return §9!<§ != null;
      }
      
      public static function §=i§() : Boolean
      {
         return §]!>§("_Down");
      }
      
      public static function §'9§() : Boolean
      {
         return §]!>§("_Up");
      }
      
      private static function §]!>§(param1:String) : Boolean
      {
         if(!§9!<§ || §1A§.length < 1 || !§,"'§)
         {
            return false;
         }
         var _loc2_:Sprite = §9!<§.getChildByName(§1A§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§1A§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§1A§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§&!_§)
         {
            return §;!3§;
         }
         §;!3§ = new Sprite();
         §&!_§ = true;
         return §;!3§;
      }
      
      public static function §=!X§(param1:Number, param2:Number) : void
      {
         if(!§&!_§ || !§9!<§ || !§9!<§.visible)
         {
            return;
         }
         §;!3§.x = param1;
         §;!3§.y = param2;
      }
      
      public static function §?!_§() : void
      {
         if(§9!<§)
         {
            if(§9!<§.visible)
            {
               §each § = §1A§;
            }
            §0!n§("");
         }
      }
      
      public static function §=I§() : void
      {
         if(§9!<§)
         {
            if(!§9!<§.visible)
            {
               §0!n§(§each §);
            }
         }
      }
   }
}
