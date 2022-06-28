package §'N§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class Log
   {
      
      public static const §[Z§:Boolean = true;
      
      public static const §-!;§:Boolean = true;
      
      public static const §2i§:int = 0;
      
      public static const §<!f§:int = 1;
      
      public static const §3![§:int = 500;
      
      private static var §]o§:Array = null;
      
      private static var §93§:Number = 0;
      
      public static var §[!d§:int = Keyboard.F1;
      
      public static var §#Y§:int = Keyboard.F3;
      
      public static var §?I§:int = Keyboard.F2;
      
      public static var §^!9§:int = Keyboard.F4;
      
      public static var §"`§:Boolean = false;
      
      public static var §0V§:Sprite = null;
      
      private static var §1z§:TextField = null;
      
      private static var §`Z§:TextField = null;
      
      private static var §6l§:TextField = null;
      
      private static var §5g§:TextField = null;
      
      public static var §7C§:int = -1;
      
      public static var §;h§:String = "version: Unknown";
      
      public static var §8"§:String = "";
      
      {
         init();
      }
      
      public function Log()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§[Z§)
         {
            return;
         }
         §]o§ = new Array(§3![§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§[Z§)
         {
            _loc3_ = §93§++ % §3![§;
            §]o§[_loc3_] = [param1,param2];
            if(param2 == §7C§ || §7C§ < 0)
            {
               §#!^§();
            }
         }
         if(§-!;§)
         {
            if(param1)
            {
            }
         }
      }
      
      public static function §<=§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §#!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§[Z§)
         {
            return;
         }
         if(§0V§ && §0V§.visible)
         {
            if(§7C§ < 0)
            {
               §6l§.text = "Current channel: ALL";
            }
            else
            {
               §6l§.text = "Current channel: " + §7C§;
            }
            if(§;h§ != null)
            {
               §5g§.text = §;h§;
            }
            _loc1_ = true;
            if(§1z§.scrollV != §1z§.numLines - int(§1z§.height / (§1z§.textHeight / §1z§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §3![§)
            {
               _loc4_ = (§93§ + _loc3_ + 1) % 500;
               if(§]o§[_loc4_] != null)
               {
                  if(§7C§ < 0 || §]o§[_loc4_][1] == §7C§)
                  {
                     _loc2_ += §]o§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §1z§.text = _loc2_;
            if(_loc1_)
            {
               §1z§.scrollV = §1z§.numLines;
            }
         }
      }
      
      public static function §]!B§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§[Z§)
         {
            return;
         }
         §0V§ = new Sprite();
         §0V§.visible = false;
         param1.addChild(§0V§);
         var _loc7_:Graphics = §0V§.graphics;
         _loc7_.beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §1z§ = new TextField();
         §1z§.width = param4;
         §1z§.height = param5 - 40;
         §1z§.x = param2;
         §1z§.y = param3 + 40;
         §1z§.wordWrap = true;
         §0V§.addChild(§1z§);
         §`Z§ = new TextField();
         §`Z§.x = param2 + param4 / 2;
         §`Z§.y = param3;
         §`Z§.width = param4 / 2;
         §`Z§.height = 20;
         §`Z§.text = "LOGGER CAPTURING INPUT, F4";
         §`Z§.border = true;
         §`Z§.borderColor = 16711680;
         §0V§.addChild(§`Z§);
         §6l§ = new TextField();
         §6l§.width = param4;
         §6l§.height = 20;
         §6l§.x = param2;
         §6l§.y = param3;
         §0V§.addChild(§6l§);
         §5g§ = new TextField();
         §5g§.width = param4;
         §5g§.height = 20;
         §5g§.x = param2;
         §5g§.y = param3 + 20;
         §0V§.addChild(§5g§);
         §6!D§(§"`§);
         if(param6 >= 0)
         {
            param1.addChildAt(§0V§,param6);
         }
         else
         {
            param1.addChild(§0V§);
         }
      }
      
      public static function §6!D§(param1:Boolean) : void
      {
         if(!§[Z§)
         {
            return;
         }
         §"`§ = param1;
         §0V§.mouseChildren = §"`§;
         §0V§.mouseEnabled = §"`§;
         §6l§.mouseEnabled = §"`§;
         §5g§.mouseEnabled = §"`§;
         §1z§.mouseEnabled = §"`§;
         §`Z§.visible = §"`§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§[Z§)
         {
            return;
         }
      }
      
      public static function §,1§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §[!d§ = param1;
         §?I§ = param2;
         §#Y§ = param3;
      }
      
      public static function §-3§(param1:String) : void
      {
         §;h§ = param1;
      }
   }
}
