package §""<§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §#N§
   {
      
      public static const §9"B§:Boolean = true;
      
      public static const §1y§:Boolean = true;
      
      public static const §0!N§:int = 0;
      
      public static const §=!-§:int = 1;
      
      public static const §!5§:int = 500;
      
      private static var §1!#§:Array = null;
      
      private static var §=u§:Number = 0;
      
      public static var §;!K§:int = Keyboard.F1;
      
      public static var §=b§:int = Keyboard.F3;
      
      public static var §1q§:int = Keyboard.F2;
      
      public static var §8!7§:int = Keyboard.F4;
      
      public static var §>"&§:Boolean = false;
      
      public static var §-o§:Sprite = null;
      
      private static var §%_§:TextField = null;
      
      private static var § H§:TextField = null;
      
      private static var §[!L§:TextField = null;
      
      private static var §=!o§:TextField = null;
      
      public static var §#![§:int = -1;
      
      public static var §6>§:String = "version: Unknown";
      
      public static var §65§:String = "";
      
      {
         init();
      }
      
      public function §#N§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§9"B§)
         {
            return;
         }
         §1!#§ = new Array(§!5§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§9"B§)
         {
            _loc3_ = §=u§++ % §!5§;
            §1!#§[_loc3_] = [param1,param2];
            if(param2 == §#![§ || §#![§ < 0)
            {
               §3_§();
            }
         }
         if(§1y§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §'>§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §3_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§9"B§)
         {
            return;
         }
         if(§-o§ && §-o§.visible)
         {
            if(§#![§ < 0)
            {
               §[!L§.text = "Current channel: ALL";
            }
            else
            {
               §[!L§.text = "Current channel: " + §#![§;
            }
            if(§6>§ != null)
            {
               §=!o§.text = §6>§;
            }
            _loc1_ = true;
            if(§%_§.scrollV != §%_§.numLines - int(§%_§.height / (§%_§.textHeight / §%_§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §!5§)
            {
               _loc4_ = (§=u§ + _loc3_ + 1) % 500;
               if(§1!#§[_loc4_] != null)
               {
                  if(§#![§ < 0 || §1!#§[_loc4_][1] == §#![§)
                  {
                     _loc2_ += §1!#§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §%_§.text = _loc2_;
            if(_loc1_)
            {
               §%_§.scrollV = §%_§.numLines;
            }
         }
      }
      
      public static function §`"7§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§9"B§)
         {
            return;
         }
         §-o§ = new Sprite();
         §-o§.visible = false;
         param1.addChild(§-o§);
         var _loc7_:Graphics;
         (_loc7_ = §-o§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §%_§ = new TextField();
         §%_§.width = param4;
         §%_§.height = param5 - 40;
         §%_§.x = param2;
         §%_§.y = param3 + 40;
         §%_§.wordWrap = true;
         §-o§.addChild(§%_§);
         § H§ = new TextField();
         § H§.x = param2 + param4 / 2;
         § H§.y = param3;
         § H§.width = param4 / 2;
         § H§.height = 20;
         § H§.text = "LOGGER CAPTURING INPUT, F4";
         § H§.border = true;
         § H§.borderColor = 16711680;
         §-o§.addChild(§ H§);
         §[!L§ = new TextField();
         §[!L§.width = param4;
         §[!L§.height = 20;
         §[!L§.x = param2;
         §[!L§.y = param3;
         §-o§.addChild(§[!L§);
         §=!o§ = new TextField();
         §=!o§.width = param4;
         §=!o§.height = 20;
         §=!o§.x = param2;
         §=!o§.y = param3 + 20;
         §-o§.addChild(§=!o§);
         §>!?§(§>"&§);
         if(param6 >= 0)
         {
            param1.addChildAt(§-o§,param6);
         }
         else
         {
            param1.addChild(§-o§);
         }
      }
      
      public static function §>!?§(param1:Boolean) : void
      {
         if(!§9"B§)
         {
            return;
         }
         §>"&§ = param1;
         §-o§.mouseChildren = §>"&§;
         §-o§.mouseEnabled = §>"&§;
         §[!L§.mouseEnabled = §>"&§;
         §=!o§.mouseEnabled = §>"&§;
         §%_§.mouseEnabled = §>"&§;
         § H§.visible = §>"&§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§9"B§)
         {
            return;
         }
      }
      
      public static function § !m§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §;!K§ = param1;
         §1q§ = param2;
         §=b§ = param3;
      }
      
      public static function §%`§(param1:String) : void
      {
         §6>§ = param1;
      }
   }
}
