package §6]§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §,"0§
   {
      
      public static const §>X§:Boolean = true;
      
      public static const §!!M§:Boolean = true;
      
      public static const §'!E§:int = 0;
      
      public static const §1"-§:int = 1;
      
      public static const §;!P§:int = 500;
      
      private static var §-P§:Array = null;
      
      private static var §#!H§:Number = 0;
      
      public static var §!"=§:int = Keyboard.F1;
      
      public static var §>P§:int = Keyboard.F3;
      
      public static var § !M§:int = Keyboard.F2;
      
      public static var §^^§:int = Keyboard.F4;
      
      public static var §;"2§:Boolean = false;
      
      public static var §6!#§:Sprite = null;
      
      private static var §4!f§:TextField = null;
      
      private static var §[O§:TextField = null;
      
      private static var §=!>§:TextField = null;
      
      private static var §2R§:TextField = null;
      
      public static var §!!_§:int = -1;
      
      public static var §+9§:String = "version: Unknown";
      
      public static var §5i§:String = "";
      
      {
         init();
      }
      
      public function §,"0§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§>X§)
         {
            return;
         }
         §-P§ = new Array(§;!P§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§>X§)
         {
            _loc3_ = §#!H§++ % §;!P§;
            §-P§[_loc3_] = [param1,param2];
            if(param2 == §!!_§ || §!!_§ < 0)
            {
               §2]§();
            }
         }
         if(§!!M§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function § p§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §2]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§>X§)
         {
            return;
         }
         if(§6!#§ && §6!#§.visible)
         {
            if(§!!_§ < 0)
            {
               §=!>§.text = "Current channel: ALL";
            }
            else
            {
               §=!>§.text = "Current channel: " + §!!_§;
            }
            if(§+9§ != null)
            {
               §2R§.text = §+9§;
            }
            _loc1_ = true;
            if(§4!f§.scrollV != §4!f§.numLines - int(§4!f§.height / (§4!f§.textHeight / §4!f§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §;!P§)
            {
               _loc4_ = (§#!H§ + _loc3_ + 1) % 500;
               if(§-P§[_loc4_] != null)
               {
                  if(§!!_§ < 0 || §-P§[_loc4_][1] == §!!_§)
                  {
                     _loc2_ += §-P§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §4!f§.text = _loc2_;
            if(_loc1_)
            {
               §4!f§.scrollV = §4!f§.numLines;
            }
         }
      }
      
      public static function §-§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§>X§)
         {
            return;
         }
         §6!#§ = new Sprite();
         §6!#§.visible = false;
         param1.addChild(§6!#§);
         var _loc7_:Graphics;
         (_loc7_ = §6!#§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §4!f§ = new TextField();
         §4!f§.width = param4;
         §4!f§.height = param5 - 40;
         §4!f§.x = param2;
         §4!f§.y = param3 + 40;
         §4!f§.wordWrap = true;
         §6!#§.addChild(§4!f§);
         §[O§ = new TextField();
         §[O§.x = param2 + param4 / 2;
         §[O§.y = param3;
         §[O§.width = param4 / 2;
         §[O§.height = 20;
         §[O§.text = "LOGGER CAPTURING INPUT, F4";
         §[O§.border = true;
         §[O§.borderColor = 16711680;
         §6!#§.addChild(§[O§);
         §=!>§ = new TextField();
         §=!>§.width = param4;
         §=!>§.height = 20;
         §=!>§.x = param2;
         §=!>§.y = param3;
         §6!#§.addChild(§=!>§);
         §2R§ = new TextField();
         §2R§.width = param4;
         §2R§.height = 20;
         §2R§.x = param2;
         §2R§.y = param3 + 20;
         §6!#§.addChild(§2R§);
         §;!;§(§;"2§);
         if(param6 >= 0)
         {
            param1.addChildAt(§6!#§,param6);
         }
         else
         {
            param1.addChild(§6!#§);
         }
      }
      
      public static function §;!;§(param1:Boolean) : void
      {
         if(!§>X§)
         {
            return;
         }
         §;"2§ = param1;
         §6!#§.mouseChildren = §;"2§;
         §6!#§.mouseEnabled = §;"2§;
         §=!>§.mouseEnabled = §;"2§;
         §2R§.mouseEnabled = §;"2§;
         §4!f§.mouseEnabled = §;"2§;
         §[O§.visible = §;"2§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§>X§)
         {
            return;
         }
      }
      
      public static function §10§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §!"=§ = param1;
         § !M§ = param2;
         §>P§ = param3;
      }
      
      public static function §&!u§(param1:String) : void
      {
         §+9§ = param1;
      }
   }
}
