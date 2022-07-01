package §;X§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class § do§
   {
      
      public static const §@6§:Boolean = true;
      
      public static const §<+§:Boolean = true;
      
      public static const §9e§:int = 0;
      
      public static const §"#§:int = 1;
      
      public static const §5!'§:int = 500;
      
      private static var §0"6§:Array = null;
      
      private static var §," §:Number = 0;
      
      public static var §-0§:int = Keyboard.F1;
      
      public static var §4"!§:int = Keyboard.F3;
      
      public static var §"!6§:int = Keyboard.F2;
      
      public static var §<!H§:int = Keyboard.F4;
      
      public static var §4!H§:Boolean = false;
      
      public static var §]!Z§:Sprite = null;
      
      private static var §`!e§:TextField = null;
      
      private static var §8!5§:TextField = null;
      
      private static var §"h§:TextField = null;
      
      private static var §3&§:TextField = null;
      
      public static var §0d§:int = -1;
      
      public static var §&b§:String = "version: Unknown";
      
      public static var §^!H§:String = "";
      
      {
         init();
      }
      
      public function § do§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§@6§)
         {
            return;
         }
         §0"6§ = new Array(§5!'§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§@6§)
         {
            _loc3_ = §," §++ % §5!'§;
            §0"6§[_loc3_] = [param1,param2];
            if(param2 == §0d§ || §0d§ < 0)
            {
               §=!l§();
            }
         }
         if(§<+§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function § !>§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §=!l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§@6§)
         {
            return;
         }
         if(§]!Z§ && §]!Z§.visible)
         {
            if(§0d§ < 0)
            {
               §"h§.text = "Current channel: ALL";
            }
            else
            {
               §"h§.text = "Current channel: " + §0d§;
            }
            if(§&b§ != null)
            {
               §3&§.text = §&b§;
            }
            _loc1_ = true;
            if(§`!e§.scrollV != §`!e§.numLines - int(§`!e§.height / (§`!e§.textHeight / §`!e§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §5!'§)
            {
               _loc4_ = (§," § + _loc3_ + 1) % 500;
               if(§0"6§[_loc4_] != null)
               {
                  if(§0d§ < 0 || §0"6§[_loc4_][1] == §0d§)
                  {
                     _loc2_ += §0"6§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §`!e§.text = _loc2_;
            if(_loc1_)
            {
               §`!e§.scrollV = §`!e§.numLines;
            }
         }
      }
      
      public static function §=!0§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§@6§)
         {
            return;
         }
         §]!Z§ = new Sprite();
         §]!Z§.visible = false;
         param1.addChild(§]!Z§);
         var _loc7_:Graphics;
         (_loc7_ = §]!Z§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §`!e§ = new TextField();
         §`!e§.width = param4;
         §`!e§.height = param5 - 40;
         §`!e§.x = param2;
         §`!e§.y = param3 + 40;
         §`!e§.wordWrap = true;
         §]!Z§.addChild(§`!e§);
         §8!5§ = new TextField();
         §8!5§.x = param2 + param4 / 2;
         §8!5§.y = param3;
         §8!5§.width = param4 / 2;
         §8!5§.height = 20;
         §8!5§.text = "LOGGER CAPTURING INPUT, F4";
         §8!5§.border = true;
         §8!5§.borderColor = 16711680;
         §]!Z§.addChild(§8!5§);
         §"h§ = new TextField();
         §"h§.width = param4;
         §"h§.height = 20;
         §"h§.x = param2;
         §"h§.y = param3;
         §]!Z§.addChild(§"h§);
         §3&§ = new TextField();
         §3&§.width = param4;
         §3&§.height = 20;
         §3&§.x = param2;
         §3&§.y = param3 + 20;
         §]!Z§.addChild(§3&§);
         §%5§(§4!H§);
         if(param6 >= 0)
         {
            param1.addChildAt(§]!Z§,param6);
         }
         else
         {
            param1.addChild(§]!Z§);
         }
      }
      
      public static function §%5§(param1:Boolean) : void
      {
         if(!§@6§)
         {
            return;
         }
         §4!H§ = param1;
         §]!Z§.mouseChildren = §4!H§;
         §]!Z§.mouseEnabled = §4!H§;
         §"h§.mouseEnabled = §4!H§;
         §3&§.mouseEnabled = §4!H§;
         §`!e§.mouseEnabled = §4!H§;
         §8!5§.visible = §4!H§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§@6§)
         {
            return;
         }
      }
      
      public static function §'!$§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §-0§ = param1;
         §"!6§ = param2;
         §4"!§ = param3;
      }
      
      public static function §0X§(param1:String) : void
      {
         §&b§ = param1;
      }
   }
}
