package §>^§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!6§
   {
      
      public static const §0I§:Boolean = true;
      
      public static const §%!B§:Boolean = true;
      
      public static const § G§:int = 0;
      
      public static const §#!V§:int = 1;
      
      public static const §'J§:int = 500;
      
      private static var §8!i§:Array = null;
      
      private static var §2H§:Number = 0;
      
      public static var §;v§:int = Keyboard.F1;
      
      public static var §,E§:int = Keyboard.F3;
      
      public static var §=!<§:int = Keyboard.F2;
      
      public static var §6!$§:int = Keyboard.F4;
      
      public static var §7!Z§:Boolean = false;
      
      public static var §8I§:Sprite = null;
      
      private static var §^e§:TextField = null;
      
      private static var §"!V§:TextField = null;
      
      private static var §3!P§:TextField = null;
      
      private static var §1p§:TextField = null;
      
      public static var §'[§:int = -1;
      
      public static var §[J§:String = "version: Unknown";
      
      public static var §+>§:String = "";
      
      {
         init();
      }
      
      public function §!6§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0I§)
         {
            return;
         }
         §8!i§ = new Array(§'J§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0I§)
         {
            _loc3_ = §2H§++ % §'J§;
            §8!i§[_loc3_] = [param1,param2];
            if(param2 == §'[§ || §'[§ < 0)
            {
               §]!6§();
            }
         }
         if(§%!B§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §=,§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §]!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0I§)
         {
            return;
         }
         if(§8I§ && §8I§.visible)
         {
            if(§'[§ < 0)
            {
               §3!P§.text = "Current channel: ALL";
            }
            else
            {
               §3!P§.text = "Current channel: " + §'[§;
            }
            if(§[J§ != null)
            {
               §1p§.text = §[J§;
            }
            _loc1_ = true;
            if(§^e§.scrollV != §^e§.numLines - int(§^e§.height / (§^e§.textHeight / §^e§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §'J§)
            {
               _loc4_ = (§2H§ + _loc3_ + 1) % 500;
               if(§8!i§[_loc4_] != null)
               {
                  if(§'[§ < 0 || §8!i§[_loc4_][1] == §'[§)
                  {
                     _loc2_ += §8!i§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §^e§.text = _loc2_;
            if(_loc1_)
            {
               §^e§.scrollV = §^e§.numLines;
            }
         }
      }
      
      public static function §7K§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0I§)
         {
            return;
         }
         §8I§ = new Sprite();
         §8I§.visible = false;
         param1.addChild(§8I§);
         var _loc7_:Graphics;
         (_loc7_ = §8I§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §^e§ = new TextField();
         §^e§.width = param4;
         §^e§.height = param5 - 40;
         §^e§.x = param2;
         §^e§.y = param3 + 40;
         §^e§.wordWrap = true;
         §8I§.addChild(§^e§);
         §"!V§ = new TextField();
         §"!V§.x = param2 + param4 / 2;
         §"!V§.y = param3;
         §"!V§.width = param4 / 2;
         §"!V§.height = 20;
         §"!V§.text = "LOGGER CAPTURING INPUT, F4";
         §"!V§.border = true;
         §"!V§.borderColor = 16711680;
         §8I§.addChild(§"!V§);
         §3!P§ = new TextField();
         §3!P§.width = param4;
         §3!P§.height = 20;
         §3!P§.x = param2;
         §3!P§.y = param3;
         §8I§.addChild(§3!P§);
         §1p§ = new TextField();
         §1p§.width = param4;
         §1p§.height = 20;
         §1p§.x = param2;
         §1p§.y = param3 + 20;
         §8I§.addChild(§1p§);
         §+F§(§7!Z§);
         if(param6 >= 0)
         {
            param1.addChildAt(§8I§,param6);
         }
         else
         {
            param1.addChild(§8I§);
         }
      }
      
      public static function §+F§(param1:Boolean) : void
      {
         if(!§0I§)
         {
            return;
         }
         §7!Z§ = param1;
         §8I§.mouseChildren = §7!Z§;
         §8I§.mouseEnabled = §7!Z§;
         §3!P§.mouseEnabled = §7!Z§;
         §1p§.mouseEnabled = §7!Z§;
         §^e§.mouseEnabled = §7!Z§;
         §"!V§.visible = §7!Z§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0I§)
         {
            return;
         }
      }
      
      public static function §[z§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §;v§ = param1;
         §=!<§ = param2;
         §,E§ = param3;
      }
      
      public static function §,!;§(param1:String) : void
      {
         §[J§ = param1;
      }
   }
}
