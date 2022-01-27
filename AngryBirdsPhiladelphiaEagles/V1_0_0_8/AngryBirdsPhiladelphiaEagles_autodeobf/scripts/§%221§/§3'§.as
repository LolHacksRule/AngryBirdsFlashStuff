package §"1§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §3'§
   {
      
      public static const §87§:Boolean = true;
      
      public static const §%6§:Boolean = true;
      
      public static const §`<§:int = 0;
      
      public static const §5!J§:int = 1;
      
      public static const §@!G§:int = 500;
      
      private static var §3!C§:Array = null;
      
      private static var §[?§:Number = 0;
      
      public static var §1m§:int = Keyboard.F1;
      
      public static var §]Y§:int = Keyboard.F3;
      
      public static var §`!5§:int = Keyboard.F2;
      
      public static var §for §:int = Keyboard.F4;
      
      public static var §3l§:Boolean = false;
      
      public static var §,%§:Sprite = null;
      
      private static var §2!2§:TextField = null;
      
      private static var §^!H§:TextField = null;
      
      private static var §6!2§:TextField = null;
      
      private static var §^B§:TextField = null;
      
      public static var § !J§:int = -1;
      
      public static var §>4§:String = "version: Unknown";
      
      public static var §&!7§:String = "";
      
      {
         init();
      }
      
      public function §3'§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§87§)
         {
            return;
         }
         §3!C§ = new Array(§@!G§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§87§)
         {
            _loc3_ = §[?§++ % §@!G§;
            §3!C§[_loc3_] = [param1,param2];
            if(param2 == § !J§ || § !J§ < 0)
            {
               §?G§();
            }
         }
         if(§%6§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §#w§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §?G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§87§)
         {
            return;
         }
         if(§,%§ && §,%§.visible)
         {
            if(§ !J§ < 0)
            {
               §6!2§.text = "Current channel: ALL";
            }
            else
            {
               §6!2§.text = "Current channel: " + § !J§;
            }
            if(§>4§ != null)
            {
               §^B§.text = §>4§;
            }
            _loc1_ = true;
            if(§2!2§.scrollV != §2!2§.numLines - int(§2!2§.height / (§2!2§.textHeight / §2!2§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §@!G§)
            {
               _loc4_ = (§[?§ + _loc3_ + 1) % 500;
               if(§3!C§[_loc4_] != null)
               {
                  if(§ !J§ < 0 || §3!C§[_loc4_][1] == § !J§)
                  {
                     _loc2_ += §3!C§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §2!2§.text = _loc2_;
            if(_loc1_)
            {
               §2!2§.scrollV = §2!2§.numLines;
            }
         }
      }
      
      public static function §%!C§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§87§)
         {
            return;
         }
         §,%§ = new Sprite();
         §,%§.visible = false;
         param1.addChild(§,%§);
         var _loc7_:Graphics;
         (_loc7_ = §,%§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §2!2§ = new TextField();
         §2!2§.width = param4;
         §2!2§.height = param5 - 40;
         §2!2§.x = param2;
         §2!2§.y = param3 + 40;
         §2!2§.wordWrap = true;
         §,%§.addChild(§2!2§);
         §^!H§ = new TextField();
         §^!H§.x = param2 + param4 / 2;
         §^!H§.y = param3;
         §^!H§.width = param4 / 2;
         §^!H§.height = 20;
         §^!H§.text = "LOGGER CAPTURING INPUT, F4";
         §^!H§.border = true;
         §^!H§.borderColor = 16711680;
         §,%§.addChild(§^!H§);
         §6!2§ = new TextField();
         §6!2§.width = param4;
         §6!2§.height = 20;
         §6!2§.x = param2;
         §6!2§.y = param3;
         §,%§.addChild(§6!2§);
         §^B§ = new TextField();
         §^B§.width = param4;
         §^B§.height = 20;
         §^B§.x = param2;
         §^B§.y = param3 + 20;
         §,%§.addChild(§^B§);
         §]d§(§3l§);
         if(param6 >= 0)
         {
            param1.addChildAt(§,%§,param6);
         }
         else
         {
            param1.addChild(§,%§);
         }
      }
      
      public static function §]d§(param1:Boolean) : void
      {
         if(!§87§)
         {
            return;
         }
         §3l§ = param1;
         §,%§.mouseChildren = §3l§;
         §,%§.mouseEnabled = §3l§;
         §6!2§.mouseEnabled = §3l§;
         §^B§.mouseEnabled = §3l§;
         §2!2§.mouseEnabled = §3l§;
         §^!H§.visible = §3l§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§87§)
         {
            return;
         }
      }
      
      public static function §+'§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §1m§ = param1;
         §`!5§ = param2;
         §]Y§ = param3;
      }
      
      public static function §@!>§(param1:String) : void
      {
         §>4§ = param1;
      }
   }
}
