package §"x§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §-8§
   {
      
      public static const §9Z§:Boolean = true;
      
      public static const §%2§:Boolean = true;
      
      public static const §-S§:int = 0;
      
      public static const §>!Z§:int = 1;
      
      public static const §]§:int = 500;
      
      private static var §+!w§:Array = null;
      
      private static var §#H§:Number = 0;
      
      public static var §0!L§:int = Keyboard.F1;
      
      public static var §[`§:int = Keyboard.F3;
      
      public static var §0!&§:int = Keyboard.F2;
      
      public static var §5Q§:int = Keyboard.F4;
      
      public static var §2!p§:Boolean = false;
      
      public static var §-!<§:Sprite = null;
      
      private static var §%!W§:TextField = null;
      
      private static var native:TextField = null;
      
      private static var §'!b§:TextField = null;
      
      private static var §9![§:TextField = null;
      
      public static var §super§:int = -1;
      
      public static var §9g§:String = "version: Unknown";
      
      public static var §3! §:String = "";
      
      {
         init();
      }
      
      public function §-8§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§9Z§)
         {
            return;
         }
         §+!w§ = new Array(§]§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§9Z§)
         {
            _loc3_ = §#H§++ % §]§;
            §+!w§[_loc3_] = [param1,param2];
            if(param2 == §super§ || §super§ < 0)
            {
               §0!1§();
            }
         }
         if(§%2§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §"!4§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §0!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§9Z§)
         {
            return;
         }
         if(§-!<§ && §-!<§.visible)
         {
            if(§super§ < 0)
            {
               §'!b§.text = "Current channel: ALL";
            }
            else
            {
               §'!b§.text = "Current channel: " + §super§;
            }
            if(§9g§ != null)
            {
               §9![§.text = §9g§;
            }
            _loc1_ = true;
            if(§%!W§.scrollV != §%!W§.numLines - int(§%!W§.height / (§%!W§.textHeight / §%!W§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §]§)
            {
               _loc4_ = (§#H§ + _loc3_ + 1) % 500;
               if(§+!w§[_loc4_] != null)
               {
                  if(§super§ < 0 || §+!w§[_loc4_][1] == §super§)
                  {
                     _loc2_ += §+!w§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §%!W§.text = _loc2_;
            if(_loc1_)
            {
               §%!W§.scrollV = §%!W§.numLines;
            }
         }
      }
      
      public static function §4!2§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§9Z§)
         {
            return;
         }
         §-!<§ = new Sprite();
         §-!<§.visible = false;
         param1.addChild(§-!<§);
         var _loc7_:Graphics;
         (_loc7_ = §-!<§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §%!W§ = new TextField();
         §%!W§.width = param4;
         §%!W§.height = param5 - 40;
         §%!W§.x = param2;
         §%!W§.y = param3 + 40;
         §%!W§.wordWrap = true;
         §-!<§.addChild(§%!W§);
         native = new TextField();
         native.x = param2 + param4 / 2;
         native.y = param3;
         native.width = param4 / 2;
         native.height = 20;
         native.text = "LOGGER CAPTURING INPUT, F4";
         native.border = true;
         native.borderColor = 16711680;
         §-!<§.addChild(native);
         §'!b§ = new TextField();
         §'!b§.width = param4;
         §'!b§.height = 20;
         §'!b§.x = param2;
         §'!b§.y = param3;
         §-!<§.addChild(§'!b§);
         §9![§ = new TextField();
         §9![§.width = param4;
         §9![§.height = 20;
         §9![§.x = param2;
         §9![§.y = param3 + 20;
         §-!<§.addChild(§9![§);
         §76§(§2!p§);
         if(param6 >= 0)
         {
            param1.addChildAt(§-!<§,param6);
         }
         else
         {
            param1.addChild(§-!<§);
         }
      }
      
      public static function §76§(param1:Boolean) : void
      {
         if(!§9Z§)
         {
            return;
         }
         §2!p§ = param1;
         §-!<§.mouseChildren = §2!p§;
         §-!<§.mouseEnabled = §2!p§;
         §'!b§.mouseEnabled = §2!p§;
         §9![§.mouseEnabled = §2!p§;
         §%!W§.mouseEnabled = §2!p§;
         native.visible = §2!p§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§9Z§)
         {
            return;
         }
      }
      
      public static function §?Y§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §0!L§ = param1;
         §0!&§ = param2;
         §[`§ = param3;
      }
      
      public static function §%?§(param1:String) : void
      {
         §9g§ = param1;
      }
   }
}
