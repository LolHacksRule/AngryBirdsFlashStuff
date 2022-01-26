package §'m§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §^S§
   {
      
      public static const §`f§:Boolean = true;
      
      public static const §<l§:Boolean = true;
      
      public static const §true §:int = 0;
      
      public static const §?@§:int = 1;
      
      public static const §;M§:int = 500;
      
      private static var §[8§:Array = null;
      
      private static var §8;§:Number = 0;
      
      public static var §'j§:int = Keyboard.F1;
      
      public static var §[;§:int = Keyboard.F3;
      
      public static var §;^§:int = Keyboard.F2;
      
      public static var §2V§:int = Keyboard.F4;
      
      public static var §[@§:Boolean = false;
      
      public static var §7!§:Sprite = null;
      
      private static var §@D§:TextField = null;
      
      private static var §'I§:TextField = null;
      
      private static var §^s§:TextField = null;
      
      private static var §`A§:TextField = null;
      
      public static var §?!2§:int = -1;
      
      public static var §?!G§:String = "version: Unknown";
      
      public static var §5!9§:String = "";
      
      {
         init();
      }
      
      public function §^S§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§`f§)
         {
            return;
         }
         §[8§ = new Array(§;M§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§`f§)
         {
            _loc3_ = §8;§++ % §;M§;
            §[8§[_loc3_] = [param1,param2];
            if(param2 == §?!2§ || §?!2§ < 0)
            {
               §!w§();
            }
         }
         if(§<l§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §2F§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §!w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§`f§)
         {
            return;
         }
         if(§7!§ && §7!§.visible)
         {
            if(§?!2§ < 0)
            {
               §^s§.text = "Current channel: ALL";
            }
            else
            {
               §^s§.text = "Current channel: " + §?!2§;
            }
            if(§?!G§ != null)
            {
               §`A§.text = §?!G§;
            }
            _loc1_ = true;
            if(§@D§.scrollV != §@D§.numLines - int(§@D§.height / (§@D§.textHeight / §@D§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §;M§)
            {
               _loc4_ = (§8;§ + _loc3_ + 1) % 500;
               if(§[8§[_loc4_] != null)
               {
                  if(§?!2§ < 0 || §[8§[_loc4_][1] == §?!2§)
                  {
                     _loc2_ += §[8§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §@D§.text = _loc2_;
            if(_loc1_)
            {
               §@D§.scrollV = §@D§.numLines;
            }
         }
      }
      
      public static function §96§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§`f§)
         {
            return;
         }
         §7!§ = new Sprite();
         §7!§.visible = false;
         param1.addChild(§7!§);
         var _loc7_:Graphics;
         (_loc7_ = §7!§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §@D§ = new TextField();
         §@D§.width = param4;
         §@D§.height = param5 - 40;
         §@D§.x = param2;
         §@D§.y = param3 + 40;
         §@D§.wordWrap = true;
         §7!§.addChild(§@D§);
         §'I§ = new TextField();
         §'I§.x = param2 + param4 / 2;
         §'I§.y = param3;
         §'I§.width = param4 / 2;
         §'I§.height = 20;
         §'I§.text = "LOGGER CAPTURING INPUT, F4";
         §'I§.border = true;
         §'I§.borderColor = 16711680;
         §7!§.addChild(§'I§);
         §^s§ = new TextField();
         §^s§.width = param4;
         §^s§.height = 20;
         §^s§.x = param2;
         §^s§.y = param3;
         §7!§.addChild(§^s§);
         §`A§ = new TextField();
         §`A§.width = param4;
         §`A§.height = 20;
         §`A§.x = param2;
         §`A§.y = param3 + 20;
         §7!§.addChild(§`A§);
         §=X§(§[@§);
         if(param6 >= 0)
         {
            param1.addChildAt(§7!§,param6);
         }
         else
         {
            param1.addChild(§7!§);
         }
      }
      
      public static function §=X§(param1:Boolean) : void
      {
         if(!§`f§)
         {
            return;
         }
         §[@§ = param1;
         §7!§.mouseChildren = §[@§;
         §7!§.mouseEnabled = §[@§;
         §^s§.mouseEnabled = §[@§;
         §`A§.mouseEnabled = §[@§;
         §@D§.mouseEnabled = §[@§;
         §'I§.visible = §[@§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§`f§)
         {
            return;
         }
      }
      
      public static function § !>§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §'j§ = param1;
         §;^§ = param2;
         §[;§ = param3;
      }
      
      public static function §;l§(param1:String) : void
      {
         §?!G§ = param1;
      }
   }
}
