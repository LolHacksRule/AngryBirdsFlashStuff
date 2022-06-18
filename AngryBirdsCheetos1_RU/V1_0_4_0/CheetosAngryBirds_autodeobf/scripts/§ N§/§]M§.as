package § N§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §]M§
   {
      
      public static const §-!E§:Boolean = true;
      
      public static const §,!b§:Boolean = true;
      
      public static const §&!U§:int = 0;
      
      public static const §'!L§:int = 1;
      
      public static const §;!K§:int = 500;
      
      private static var §[B§:Array = null;
      
      private static var §,!`§:Number = 0;
      
      public static var §[![§:int = Keyboard.F1;
      
      public static var §5K§:int = Keyboard.F3;
      
      public static var §'!§:int = Keyboard.F2;
      
      public static var §`N§:int = Keyboard.F4;
      
      public static var §^![§:Boolean = false;
      
      public static var §>p§:Sprite = null;
      
      private static var §+!"§:TextField = null;
      
      private static var §]_§:TextField = null;
      
      private static var §`!b§:TextField = null;
      
      private static var §"!V§:TextField = null;
      
      public static var §74§:int = -1;
      
      public static var §4"§:String = "version: Unknown";
      
      public static var §&S§:String = "";
      
      {
         init();
      }
      
      public function §]M§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§-!E§)
         {
            return;
         }
         §[B§ = new Array(§;!K§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§-!E§)
         {
            _loc3_ = §,!`§++ % §;!K§;
            §[B§[_loc3_] = [param1,param2];
            if(param2 == §74§ || §74§ < 0)
            {
               §]!_§();
            }
         }
         if(§,!b§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §8!2§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §]!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§-!E§)
         {
            return;
         }
         if(§>p§ && §>p§.visible)
         {
            if(§74§ < 0)
            {
               §`!b§.text = "Current channel: ALL";
            }
            else
            {
               §`!b§.text = "Current channel: " + §74§;
            }
            if(§4"§ != null)
            {
               §"!V§.text = §4"§;
            }
            _loc1_ = true;
            if(§+!"§.scrollV != §+!"§.numLines - int(§+!"§.height / (§+!"§.textHeight / §+!"§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §;!K§)
            {
               _loc4_ = (§,!`§ + _loc3_ + 1) % 500;
               if(§[B§[_loc4_] != null)
               {
                  if(§74§ < 0 || §[B§[_loc4_][1] == §74§)
                  {
                     _loc2_ += §[B§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §+!"§.text = _loc2_;
            if(_loc1_)
            {
               §+!"§.scrollV = §+!"§.numLines;
            }
         }
      }
      
      public static function §`[§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§-!E§)
         {
            return;
         }
         §>p§ = new Sprite();
         §>p§.visible = false;
         param1.addChild(§>p§);
         var _loc7_:Graphics;
         (_loc7_ = §>p§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §+!"§ = new TextField();
         §+!"§.width = param4;
         §+!"§.height = param5 - 40;
         §+!"§.x = param2;
         §+!"§.y = param3 + 40;
         §+!"§.wordWrap = true;
         §>p§.addChild(§+!"§);
         §]_§ = new TextField();
         §]_§.x = param2 + param4 / 2;
         §]_§.y = param3;
         §]_§.width = param4 / 2;
         §]_§.height = 20;
         §]_§.text = "LOGGER CAPTURING INPUT, F4";
         §]_§.border = true;
         §]_§.borderColor = 16711680;
         §>p§.addChild(§]_§);
         §`!b§ = new TextField();
         §`!b§.width = param4;
         §`!b§.height = 20;
         §`!b§.x = param2;
         §`!b§.y = param3;
         §>p§.addChild(§`!b§);
         §"!V§ = new TextField();
         §"!V§.width = param4;
         §"!V§.height = 20;
         §"!V§.x = param2;
         §"!V§.y = param3 + 20;
         §>p§.addChild(§"!V§);
         §`!"§(§^![§);
         if(param6 >= 0)
         {
            param1.addChildAt(§>p§,param6);
         }
         else
         {
            param1.addChild(§>p§);
         }
      }
      
      public static function §`!"§(param1:Boolean) : void
      {
         if(!§-!E§)
         {
            return;
         }
         §^![§ = param1;
         §>p§.mouseChildren = §^![§;
         §>p§.mouseEnabled = §^![§;
         §`!b§.mouseEnabled = §^![§;
         §"!V§.mouseEnabled = §^![§;
         §+!"§.mouseEnabled = §^![§;
         §]_§.visible = §^![§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§-!E§)
         {
            return;
         }
      }
      
      public static function §[;§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §[![§ = param1;
         §'!§ = param2;
         §5K§ = param3;
      }
      
      public static function §,!G§(param1:String) : void
      {
         §4"§ = param1;
      }
   }
}
