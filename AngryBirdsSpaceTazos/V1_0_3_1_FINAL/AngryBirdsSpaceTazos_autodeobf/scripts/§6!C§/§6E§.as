package §6!C§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §6E§
   {
      
      public static const §!E§:Boolean = true;
      
      public static const §="=§:Boolean = true;
      
      public static const §2!H§:int = 0;
      
      public static const §'L§:int = 1;
      
      public static const §]!I§:int = 500;
      
      private static var §1!3§:Array = null;
      
      private static var §8!q§:Number = 0;
      
      public static var §!!%§:int = Keyboard.F1;
      
      public static var §2?§:int = Keyboard.F3;
      
      public static var §4"<§:int = Keyboard.F2;
      
      public static var §[S§:int = Keyboard.F4;
      
      public static var §#4§:Boolean = false;
      
      public static var §&!B§:Sprite = null;
      
      private static var §+!e§:TextField = null;
      
      private static var §>6§:TextField = null;
      
      private static var §<]§:TextField = null;
      
      private static var §=$§:TextField = null;
      
      public static var §@7§:int = -1;
      
      public static var §]u§:String = "version: Unknown";
      
      public static var §7k§:String = "";
      
      {
         init();
      }
      
      public function §6E§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§!E§)
         {
            return;
         }
         §1!3§ = new Array(§]!I§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§!E§)
         {
            _loc3_ = §8!q§++ % §]!I§;
            §1!3§[_loc3_] = [param1,param2];
            if(param2 == §@7§ || §@7§ < 0)
            {
               §,!L§();
            }
         }
         if(§="=§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §%!t§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§!E§)
         {
            return;
         }
         if(§&!B§ && §&!B§.visible)
         {
            if(§@7§ < 0)
            {
               §<]§.text = "Current channel: ALL";
            }
            else
            {
               §<]§.text = "Current channel: " + §@7§;
            }
            if(§]u§ != null)
            {
               §=$§.text = §]u§;
            }
            _loc1_ = true;
            if(§+!e§.scrollV != §+!e§.numLines - int(§+!e§.height / (§+!e§.textHeight / §+!e§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §]!I§)
            {
               _loc4_ = (§8!q§ + _loc3_ + 1) % 500;
               if(§1!3§[_loc4_] != null)
               {
                  if(§@7§ < 0 || §1!3§[_loc4_][1] == §@7§)
                  {
                     _loc2_ += §1!3§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §+!e§.text = _loc2_;
            if(_loc1_)
            {
               §+!e§.scrollV = §+!e§.numLines;
            }
         }
      }
      
      public static function §]Q§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§!E§)
         {
            return;
         }
         §&!B§ = new Sprite();
         §&!B§.visible = false;
         param1.addChild(§&!B§);
         var _loc7_:Graphics;
         (_loc7_ = §&!B§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §+!e§ = new TextField();
         §+!e§.width = param4;
         §+!e§.height = param5 - 40;
         §+!e§.x = param2;
         §+!e§.y = param3 + 40;
         §+!e§.wordWrap = true;
         §&!B§.addChild(§+!e§);
         §>6§ = new TextField();
         §>6§.x = param2 + param4 / 2;
         §>6§.y = param3;
         §>6§.width = param4 / 2;
         §>6§.height = 20;
         §>6§.text = "LOGGER CAPTURING INPUT, F4";
         §>6§.border = true;
         §>6§.borderColor = 16711680;
         §&!B§.addChild(§>6§);
         §<]§ = new TextField();
         §<]§.width = param4;
         §<]§.height = 20;
         §<]§.x = param2;
         §<]§.y = param3;
         §&!B§.addChild(§<]§);
         §=$§ = new TextField();
         §=$§.width = param4;
         §=$§.height = 20;
         §=$§.x = param2;
         §=$§.y = param3 + 20;
         §&!B§.addChild(§=$§);
         §`"D§(§#4§);
         if(param6 >= 0)
         {
            param1.addChildAt(§&!B§,param6);
         }
         else
         {
            param1.addChild(§&!B§);
         }
      }
      
      public static function §`"D§(param1:Boolean) : void
      {
         if(!§!E§)
         {
            return;
         }
         §#4§ = param1;
         §&!B§.mouseChildren = §#4§;
         §&!B§.mouseEnabled = §#4§;
         §<]§.mouseEnabled = §#4§;
         §=$§.mouseEnabled = §#4§;
         §+!e§.mouseEnabled = §#4§;
         §>6§.visible = §#4§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§!E§)
         {
            return;
         }
      }
      
      public static function §#m§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §!!%§ = param1;
         §4"<§ = param2;
         §2?§ = param3;
      }
      
      public static function §%N§(param1:String) : void
      {
         §]u§ = param1;
      }
   }
}
