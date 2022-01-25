package §6!Q§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §7!7§
   {
      
      public static const §7P§:Boolean = true;
      
      public static const §7W§:Boolean = true;
      
      public static const §[A§:int = 0;
      
      public static const §?!I§:int = 1;
      
      public static const §3!L§:int = 500;
      
      private static var §9! §:Array = null;
      
      private static var §`"§:Number = 0;
      
      public static var §&1§:int = Keyboard.F1;
      
      public static var §0F§:int = Keyboard.F3;
      
      public static var §+0§:int = Keyboard.F2;
      
      public static var §<H§:int = Keyboard.F4;
      
      public static var §7!R§:Boolean = false;
      
      public static var §2!#§:Sprite = null;
      
      private static var §#!O§:TextField = null;
      
      private static var §%!#§:TextField = null;
      
      private static var §6!0§:TextField = null;
      
      private static var §9y§:TextField = null;
      
      public static var §;$§:int = -1;
      
      public static var §[!Q§:String = "version: Unknown";
      
      public static var §1!4§:String = "";
      
      {
         init();
      }
      
      public function §7!7§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§7P§)
         {
            return;
         }
         §9! § = new Array(§3!L§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§7P§)
         {
            _loc3_ = §`"§++ % §3!L§;
            §9! §[_loc3_] = [param1,param2];
            if(param2 == §;$§ || §;$§ < 0)
            {
               § ?§();
            }
         }
         if(§7W§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §4U§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function § ?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§7P§)
         {
            return;
         }
         if(§2!#§ && §2!#§.visible)
         {
            if(§;$§ < 0)
            {
               §6!0§.text = "Current channel: ALL";
            }
            else
            {
               §6!0§.text = "Current channel: " + §;$§;
            }
            if(§[!Q§ != null)
            {
               §9y§.text = §[!Q§;
            }
            _loc1_ = true;
            if(§#!O§.scrollV != §#!O§.numLines - int(§#!O§.height / (§#!O§.textHeight / §#!O§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §3!L§)
            {
               _loc4_ = (§`"§ + _loc3_ + 1) % 500;
               if(§9! §[_loc4_] != null)
               {
                  if(§;$§ < 0 || §9! §[_loc4_][1] == §;$§)
                  {
                     _loc2_ += §9! §[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §#!O§.text = _loc2_;
            if(_loc1_)
            {
               §#!O§.scrollV = §#!O§.numLines;
            }
         }
      }
      
      public static function §7#§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§7P§)
         {
            return;
         }
         §2!#§ = new Sprite();
         §2!#§.visible = false;
         param1.addChild(§2!#§);
         var _loc7_:Graphics;
         (_loc7_ = §2!#§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §#!O§ = new TextField();
         §#!O§.width = param4;
         §#!O§.height = param5 - 40;
         §#!O§.x = param2;
         §#!O§.y = param3 + 40;
         §#!O§.wordWrap = true;
         §2!#§.addChild(§#!O§);
         §%!#§ = new TextField();
         §%!#§.x = param2 + param4 / 2;
         §%!#§.y = param3;
         §%!#§.width = param4 / 2;
         §%!#§.height = 20;
         §%!#§.text = "LOGGER CAPTURING INPUT, F4";
         §%!#§.border = true;
         §%!#§.borderColor = 16711680;
         §2!#§.addChild(§%!#§);
         §6!0§ = new TextField();
         §6!0§.width = param4;
         §6!0§.height = 20;
         §6!0§.x = param2;
         §6!0§.y = param3;
         §2!#§.addChild(§6!0§);
         §9y§ = new TextField();
         §9y§.width = param4;
         §9y§.height = 20;
         §9y§.x = param2;
         §9y§.y = param3 + 20;
         §2!#§.addChild(§9y§);
         §]C§(§7!R§);
         if(param6 >= 0)
         {
            param1.addChildAt(§2!#§,param6);
         }
         else
         {
            param1.addChild(§2!#§);
         }
      }
      
      public static function §]C§(param1:Boolean) : void
      {
         if(!§7P§)
         {
            return;
         }
         §7!R§ = param1;
         §2!#§.mouseChildren = §7!R§;
         §2!#§.mouseEnabled = §7!R§;
         §6!0§.mouseEnabled = §7!R§;
         §9y§.mouseEnabled = §7!R§;
         §#!O§.mouseEnabled = §7!R§;
         §%!#§.visible = §7!R§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§7P§)
         {
            return;
         }
      }
      
      public static function §>s§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §&1§ = param1;
         §+0§ = param2;
         §0F§ = param3;
      }
      
      public static function §&!C§(param1:String) : void
      {
         §[!Q§ = param1;
      }
   }
}
