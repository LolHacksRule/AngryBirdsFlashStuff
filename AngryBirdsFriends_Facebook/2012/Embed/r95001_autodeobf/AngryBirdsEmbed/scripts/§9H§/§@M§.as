package §9H§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §@M§
   {
      
      public static const §^§:Boolean = true;
      
      public static const §>]§:Boolean = true;
      
      public static const §2!B§:int = 0;
      
      public static const § S§:int = 1;
      
      public static const §'!#§:int = 500;
      
      private static var §[x§:Array = null;
      
      private static var §+9§:Number = 0;
      
      public static var § do§:int = Keyboard.F1;
      
      public static var §"K§:int = Keyboard.F3;
      
      public static var §;[§:int = Keyboard.F2;
      
      public static var §4!,§:int = Keyboard.F4;
      
      public static var §-I§:Boolean = false;
      
      public static var §,^§:Sprite = null;
      
      private static var §=>§:TextField = null;
      
      private static var §=w§:TextField = null;
      
      private static var §=t§:TextField = null;
      
      private static var §4!?§:TextField = null;
      
      public static var §'!F§:int = -1;
      
      public static var §?T§:String = "version: Unknown";
      
      public static var §if §:String = "";
      
      {
         init();
      }
      
      public function §@M§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§^§)
         {
            return;
         }
         §[x§ = new Array(§'!#§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§^§)
         {
            _loc3_ = §+9§++ % §'!#§;
            §[x§[_loc3_] = [param1,param2];
            if(param2 == §'!F§ || §'!F§ < 0)
            {
               §']§();
            }
         }
         if(§>]§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §`F§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §']§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§^§)
         {
            return;
         }
         if(§,^§ && §,^§.visible)
         {
            if(§'!F§ < 0)
            {
               §=t§.text = "Current channel: ALL";
            }
            else
            {
               §=t§.text = "Current channel: " + §'!F§;
            }
            if(§?T§ != null)
            {
               §4!?§.text = §?T§;
            }
            _loc1_ = true;
            if(§=>§.scrollV != §=>§.numLines - int(§=>§.height / (§=>§.textHeight / §=>§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §'!#§)
            {
               _loc4_ = (§+9§ + _loc3_ + 1) % 500;
               if(§[x§[_loc4_] != null)
               {
                  if(§'!F§ < 0 || §[x§[_loc4_][1] == §'!F§)
                  {
                     _loc2_ += §[x§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §=>§.text = _loc2_;
            if(_loc1_)
            {
               §=>§.scrollV = §=>§.numLines;
            }
         }
      }
      
      public static function §+!E§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§^§)
         {
            return;
         }
         §,^§ = new Sprite();
         §,^§.visible = false;
         param1.addChild(§,^§);
         var _loc7_:Graphics;
         (_loc7_ = §,^§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §=>§ = new TextField();
         §=>§.width = param4;
         §=>§.height = param5 - 40;
         §=>§.x = param2;
         §=>§.y = param3 + 40;
         §=>§.wordWrap = true;
         §,^§.addChild(§=>§);
         §=w§ = new TextField();
         §=w§.x = param2 + param4 / 2;
         §=w§.y = param3;
         §=w§.width = param4 / 2;
         §=w§.height = 20;
         §=w§.text = "LOGGER CAPTURING INPUT, F4";
         §=w§.border = true;
         §=w§.borderColor = 16711680;
         §,^§.addChild(§=w§);
         §=t§ = new TextField();
         §=t§.width = param4;
         §=t§.height = 20;
         §=t§.x = param2;
         §=t§.y = param3;
         §,^§.addChild(§=t§);
         §4!?§ = new TextField();
         §4!?§.width = param4;
         §4!?§.height = 20;
         §4!?§.x = param2;
         §4!?§.y = param3 + 20;
         §,^§.addChild(§4!?§);
         §@K§(§-I§);
         if(param6 >= 0)
         {
            param1.addChildAt(§,^§,param6);
         }
         else
         {
            param1.addChild(§,^§);
         }
      }
      
      public static function §@K§(param1:Boolean) : void
      {
         if(!§^§)
         {
            return;
         }
         §-I§ = param1;
         §,^§.mouseChildren = §-I§;
         §,^§.mouseEnabled = §-I§;
         §=t§.mouseEnabled = §-I§;
         §4!?§.mouseEnabled = §-I§;
         §=>§.mouseEnabled = §-I§;
         §=w§.visible = §-I§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§^§)
         {
            return;
         }
      }
      
      public static function §67§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         § do§ = param1;
         §;[§ = param2;
         §"K§ = param3;
      }
      
      public static function §!!B§(param1:String) : void
      {
         §?T§ = param1;
      }
   }
}
