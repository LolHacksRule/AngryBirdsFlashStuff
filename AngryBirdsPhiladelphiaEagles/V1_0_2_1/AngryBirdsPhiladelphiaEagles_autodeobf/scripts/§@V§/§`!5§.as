package §@V§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §`!5§
   {
      
      public static const §@>§:Boolean = true;
      
      public static const §!$§:Boolean = true;
      
      public static const §>p§:int = 0;
      
      public static const §`6§:int = 1;
      
      public static const §class§:int = 500;
      
      private static var §4j§:Array = null;
      
      private static var §%p§:Number = 0;
      
      public static var §1?§:int = Keyboard.F1;
      
      public static var §'!J§:int = Keyboard.F3;
      
      public static var §0G§:int = Keyboard.F2;
      
      public static var § g§:int = Keyboard.F4;
      
      public static var §?U§:Boolean = false;
      
      public static var §[I§:Sprite = null;
      
      private static var §@W§:TextField = null;
      
      private static var §?[§:TextField = null;
      
      private static var §'!F§:TextField = null;
      
      private static var §?!F§:TextField = null;
      
      public static var §#!2§:int = -1;
      
      public static var §%u§:String = "version: Unknown";
      
      public static var §4G§:String = "";
      
      {
         init();
      }
      
      public function §`!5§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§@>§)
         {
            return;
         }
         §4j§ = new Array(§class§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§@>§)
         {
            _loc3_ = §%p§++ % §class§;
            §4j§[_loc3_] = [param1,param2];
            if(param2 == §#!2§ || §#!2§ < 0)
            {
               §3k§();
            }
         }
         if(§!$§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §'a§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §3k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§@>§)
         {
            return;
         }
         if(§[I§ && §[I§.visible)
         {
            if(§#!2§ < 0)
            {
               §'!F§.text = "Current channel: ALL";
            }
            else
            {
               §'!F§.text = "Current channel: " + §#!2§;
            }
            if(§%u§ != null)
            {
               §?!F§.text = §%u§;
            }
            _loc1_ = true;
            if(§@W§.scrollV != §@W§.numLines - int(§@W§.height / (§@W§.textHeight / §@W§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §class§)
            {
               _loc4_ = (§%p§ + _loc3_ + 1) % 500;
               if(§4j§[_loc4_] != null)
               {
                  if(§#!2§ < 0 || §4j§[_loc4_][1] == §#!2§)
                  {
                     _loc2_ += §4j§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §@W§.text = _loc2_;
            if(_loc1_)
            {
               §@W§.scrollV = §@W§.numLines;
            }
         }
      }
      
      public static function §#! §(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§@>§)
         {
            return;
         }
         §[I§ = new Sprite();
         §[I§.visible = false;
         param1.addChild(§[I§);
         var _loc7_:Graphics;
         (_loc7_ = §[I§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §@W§ = new TextField();
         §@W§.width = param4;
         §@W§.height = param5 - 40;
         §@W§.x = param2;
         §@W§.y = param3 + 40;
         §@W§.wordWrap = true;
         §[I§.addChild(§@W§);
         §?[§ = new TextField();
         §?[§.x = param2 + param4 / 2;
         §?[§.y = param3;
         §?[§.width = param4 / 2;
         §?[§.height = 20;
         §?[§.text = "LOGGER CAPTURING INPUT, F4";
         §?[§.border = true;
         §?[§.borderColor = 16711680;
         §[I§.addChild(§?[§);
         §'!F§ = new TextField();
         §'!F§.width = param4;
         §'!F§.height = 20;
         §'!F§.x = param2;
         §'!F§.y = param3;
         §[I§.addChild(§'!F§);
         §?!F§ = new TextField();
         §?!F§.width = param4;
         §?!F§.height = 20;
         §?!F§.x = param2;
         §?!F§.y = param3 + 20;
         §[I§.addChild(§?!F§);
         §#S§(§?U§);
         if(param6 >= 0)
         {
            param1.addChildAt(§[I§,param6);
         }
         else
         {
            param1.addChild(§[I§);
         }
      }
      
      public static function §#S§(param1:Boolean) : void
      {
         if(!§@>§)
         {
            return;
         }
         §?U§ = param1;
         §[I§.mouseChildren = §?U§;
         §[I§.mouseEnabled = §?U§;
         §'!F§.mouseEnabled = §?U§;
         §?!F§.mouseEnabled = §?U§;
         §@W§.mouseEnabled = §?U§;
         §?[§.visible = §?U§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§@>§)
         {
            return;
         }
      }
      
      public static function § 7§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §1?§ = param1;
         §0G§ = param2;
         §'!J§ = param3;
      }
      
      public static function §2W§(param1:String) : void
      {
         §%u§ = param1;
      }
   }
}
