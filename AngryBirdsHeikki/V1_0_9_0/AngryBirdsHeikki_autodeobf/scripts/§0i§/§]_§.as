package §0i§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §]_§
   {
      
      public static const §-!C§:Boolean = true;
      
      public static const §75§:Boolean = true;
      
      public static const §2!X§:int = 0;
      
      public static const §3K§:int = 1;
      
      public static const §>!`§:int = 500;
      
      private static var §@!V§:Array = null;
      
      private static var §[G§:Number = 0;
      
      public static var §?![§:int = Keyboard.F1;
      
      public static var § `§:int = Keyboard.F3;
      
      public static var §`!E§:int = Keyboard.F2;
      
      public static var §'6§:int = Keyboard.F4;
      
      public static var §%j§:Boolean = false;
      
      public static var § !I§:Sprite = null;
      
      private static var §&!N§:TextField = null;
      
      private static var §1D§:TextField = null;
      
      private static var §[!a§:TextField = null;
      
      private static var §#G§:TextField = null;
      
      public static var §5!>§:int = -1;
      
      public static var § !H§:String = "version: Unknown";
      
      public static var §-"§:String = "";
      
      {
         init();
      }
      
      public function §]_§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§-!C§)
         {
            return;
         }
         §@!V§ = new Array(§>!`§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§-!C§)
         {
            _loc3_ = §[G§++ % §>!`§;
            §@!V§[_loc3_] = [param1,param2];
            if(param2 == §5!>§ || §5!>§ < 0)
            {
               §]4§();
            }
         }
         if(§75§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §3M§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §]4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§-!C§)
         {
            return;
         }
         if(§ !I§ && § !I§.visible)
         {
            if(§5!>§ < 0)
            {
               §[!a§.text = "Current channel: ALL";
            }
            else
            {
               §[!a§.text = "Current channel: " + §5!>§;
            }
            if(§ !H§ != null)
            {
               §#G§.text = § !H§;
            }
            _loc1_ = true;
            if(§&!N§.scrollV != §&!N§.numLines - int(§&!N§.height / (§&!N§.textHeight / §&!N§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §>!`§)
            {
               _loc4_ = (§[G§ + _loc3_ + 1) % 500;
               if(§@!V§[_loc4_] != null)
               {
                  if(§5!>§ < 0 || §@!V§[_loc4_][1] == §5!>§)
                  {
                     _loc2_ += §@!V§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §&!N§.text = _loc2_;
            if(_loc1_)
            {
               §&!N§.scrollV = §&!N§.numLines;
            }
         }
      }
      
      public static function §0!E§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§-!C§)
         {
            return;
         }
         § !I§ = new Sprite();
         § !I§.visible = false;
         param1.addChild(§ !I§);
         var _loc7_:Graphics;
         (_loc7_ = § !I§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §&!N§ = new TextField();
         §&!N§.width = param4;
         §&!N§.height = param5 - 40;
         §&!N§.x = param2;
         §&!N§.y = param3 + 40;
         §&!N§.wordWrap = true;
         § !I§.addChild(§&!N§);
         §1D§ = new TextField();
         §1D§.x = param2 + param4 / 2;
         §1D§.y = param3;
         §1D§.width = param4 / 2;
         §1D§.height = 20;
         §1D§.text = "LOGGER CAPTURING INPUT, F4";
         §1D§.border = true;
         §1D§.borderColor = 16711680;
         § !I§.addChild(§1D§);
         §[!a§ = new TextField();
         §[!a§.width = param4;
         §[!a§.height = 20;
         §[!a§.x = param2;
         §[!a§.y = param3;
         § !I§.addChild(§[!a§);
         §#G§ = new TextField();
         §#G§.width = param4;
         §#G§.height = 20;
         §#G§.x = param2;
         §#G§.y = param3 + 20;
         § !I§.addChild(§#G§);
         §'!K§(§%j§);
         if(param6 >= 0)
         {
            param1.addChildAt(§ !I§,param6);
         }
         else
         {
            param1.addChild(§ !I§);
         }
      }
      
      public static function §'!K§(param1:Boolean) : void
      {
         if(!§-!C§)
         {
            return;
         }
         §%j§ = param1;
         § !I§.mouseChildren = §%j§;
         § !I§.mouseEnabled = §%j§;
         §[!a§.mouseEnabled = §%j§;
         §#G§.mouseEnabled = §%j§;
         §&!N§.mouseEnabled = §%j§;
         §1D§.visible = §%j§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§-!C§)
         {
            return;
         }
      }
      
      public static function §!6§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §?![§ = param1;
         §`!E§ = param2;
         § `§ = param3;
      }
      
      public static function §"I§(param1:String) : void
      {
         § !H§ = param1;
      }
   }
}
